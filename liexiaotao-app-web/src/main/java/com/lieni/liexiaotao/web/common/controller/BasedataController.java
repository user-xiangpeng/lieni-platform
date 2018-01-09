package com.lieni.liexiaotao.web.common.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.lieni.basedata.bean.DegreeLevel;
import com.lieni.basedata.remote.IBasedataRemoteService;
import com.lieni.core.web.response.JsonResult;
import com.lieni.liexiaotao.web.base.controller.BaseController;

@RestController
@RequestMapping("basedata")
public class BasedataController extends BaseController {

    @Autowired
    private IBasedataRemoteService basedataRemoteService;

    @RequestMapping(value = "v1/locations", method = RequestMethod.GET)
    public JsonResult locations(HttpServletRequest request, HttpServletResponse response) {
        JsonResult result = new JsonResult();
        result.setData(basedataRemoteService.allLocations());
        return result;
    }

    @RequestMapping(value = "v1/hotLocations", method = RequestMethod.GET)
    public JsonResult hotLocations(HttpServletRequest request, HttpServletResponse response) {
        JsonResult result = new JsonResult();
        result.setData(basedataRemoteService.hotLocations());
        return result;
    }

    @RequestMapping(value = "v1/industrys", method = RequestMethod.GET)
    public JsonResult industrys(HttpServletRequest request, HttpServletResponse response) {
        JsonResult result = new JsonResult();
        result.setData(basedataRemoteService.allIndustrys());
        return result;
    }

    @RequestMapping(value = "v1/degrees", method = RequestMethod.GET)
    public JsonResult degrees(HttpServletRequest request, HttpServletResponse response) {
        JsonResult result = new JsonResult();
        result.setData(basedataRemoteService.allDegrees(DegreeLevel.LOW));
        return result;
    }

    @RequestMapping(value = "v1/degrees/high", method = RequestMethod.GET)
    public JsonResult highDegrees(HttpServletRequest request, HttpServletResponse response) {
        JsonResult result = new JsonResult();
        result.setData(basedataRemoteService.allDegrees(DegreeLevel.ADVANCED));
        return result;
    }

    @RequestMapping(value = "v1/languages", method = RequestMethod.GET)
    public JsonResult languages(HttpServletRequest request, HttpServletResponse response) {
        JsonResult result = new JsonResult();
        result.setData(basedataRemoteService.allLanguages());
        return result;
    }

    @RequestMapping(value = "v1/realms", method = RequestMethod.GET)
    public JsonResult realms(HttpServletRequest request, HttpServletResponse response) {
        JsonResult result = new JsonResult();
        result.setData(basedataRemoteService.allRealms());
        return result;
    }

    @RequestMapping(value = "v1/functions", method = RequestMethod.GET)
    public JsonResult functions(HttpServletRequest request, HttpServletResponse response) {
        JsonResult result = new JsonResult();
        result.setData(basedataRemoteService.allFunctions());
        return result;
    }

    @RequestMapping(value = "v1/version", method = RequestMethod.GET)
    public JsonResult version(HttpServletRequest request, HttpServletResponse response) {
        JsonResult result = new JsonResult();
        result.setData(basedataRemoteService.getBaseDataVersions());
        return result;
    }
}
