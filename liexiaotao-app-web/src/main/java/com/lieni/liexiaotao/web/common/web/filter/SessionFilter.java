package com.lieni.liexiaotao.web.common.web.filter;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Component;

import com.lieni.auth.bean.AuthSession;
import com.lieni.auth.remote.IAuthorizeSessionRemoteService;
import com.lieni.core.Constants;
import com.lieni.core.exception.BaseException;
import com.lieni.core.exception.NeedLoginException;
import com.lieni.core.util.JsonUtil;
import com.lieni.core.web.cookies.CookiesManager;
import com.lieni.core.web.response.JsonResult;

@Component
public class SessionFilter implements Filter {

    protected static final Logger logger = LoggerFactory.getLogger(SessionFilter.class);
    // 请求头token
    public static final String ACCESS_TOKEN = "accessToken";

    private Set<Pattern> freeURIRegexPatternSet;

    @Resource
    private Set<String> freeURIRegexSet;
    @Autowired
    private MessageSource messageSource;
    @Autowired
    private IAuthorizeSessionRemoteService authorizeSessionRemoteService;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        logger.info(" filter init ......");
    }

    @PostConstruct
    public void postConstruct() {
        if (freeURIRegexPatternSet == null) {
            freeURIRegexPatternSet = new HashSet<Pattern>();
            for (String regex : freeURIRegexSet) {
                freeURIRegexPatternSet.add(Pattern.compile(regex));
            }
        }
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse rep = (HttpServletResponse) response;
        try {
            rep.setHeader("Content-Type", "application/json;charset=utf-8");

            String accessToken = req.getHeader(ACCESS_TOKEN);
            if (StringUtils.isEmpty(accessToken)) {
                // 尝试从cookie取
                accessToken = CookiesManager.getCookie(req, ACCESS_TOKEN);
            }
            if (StringUtils.isEmpty(accessToken)) {
                // 尝试参数里获取
                accessToken = req.getParameter(ACCESS_TOKEN);
            }
            logger.info("token is : {}", accessToken);

            AuthSession authSession = null;
            String userId = null;
            if (StringUtils.isNotEmpty(accessToken)) {
                authSession = authorizeSessionRemoteService.getSession(accessToken);
                if (authSession != null && authSession.getNumberUserId() >= 0) {
                    userId = authSession.getUserId();
                }
            }
            req.setAttribute("authSession", authSession);

            // 防止用户已冻结或删除时自动登录
            // if (userId > 0) {
            // Passport passport = passportRemoteService.getById(userId);
            // if (passport == null || passport.getLived() != UserLived.NORMAL.getLive()) {
            // userId = 0L;
            // }
            // }

            boolean freeStyle = false;
            if (StringUtils.isBlank(userId)) {
                // 过滤掉不需要登录请求通过的路径
                for (Pattern pattern : freeURIRegexPatternSet) {
                    Matcher matcher = pattern.matcher(req.getRequestURI());
                    if (matcher.find()) {
                        freeStyle = true;
                        break;
                    }
                }
            }

            if (StringUtils.isBlank(userId) && !freeStyle) {
                // 返回错误401，未授权
                rep.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            } else {
                chain.doFilter(request, response);
            }
        } catch (Exception e) {
            // 未登录处理
            if (NeedLoginException.class.equals(e.getCause().getClass())) {
                // 返回错误401，未授权
                rep.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            }
            logger.error(e.getMessage(), e);
            String errorResult = JsonUtil.toJson(JsonResult.error(BaseException.SYSTEM_ERROR, messageSource));
            logger.info(errorResult);
            rep.setCharacterEncoding(Constants.UTF8);
            rep.setContentType("application/json;charset=UTF-8");
            rep.getWriter().write(errorResult);
        }
    }

    @Override
    public void destroy() {
        logger.info(" filter destroy ......");
    }

}
