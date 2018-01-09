package com.lieni.liexiaotao.web.resume.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lieni.auth.bean.VoucherObjType;
import com.lieni.auth.bean.VoucherType;
import com.lieni.auth.remote.IUniqueVoucherCodeRemoteService;
import com.lieni.liexiaotao.web.resume.service.IResumeForwardService;

@Service
public class ResumeForwardService implements IResumeForwardService {

    @Autowired
    private IUniqueVoucherCodeRemoteService uniqueVoucherCodeRemoteService;

    @Override
    public Map<String, String> getUserIdAndResumeIdByCode(String voucherCode) {
        // 解析voucherCode获得其中的用户id和简历id
        String identitys = uniqueVoucherCodeRemoteService.getIdentity(VoucherType.FORWARD_CANDIDATE,
                VoucherObjType.CANDIDATE, voucherCode);
        // identitys中包含用户id和简历id，用英文逗号分隔的
        if (StringUtils.isBlank(identitys)) {
            return null;
        }
        String[] ids = identitys.split(com.lieni.core.util.StringUtils.ENGLISH_COMMA);
        if (ArrayUtils.isEmpty(ids)) {
            return null;
        }
        Map<String, String> map = new HashMap<String, String>();
        map.put(USER_ID, ids[0]);
        map.put(RESUME_ID, ids[1]);
        return map;
    }

}
