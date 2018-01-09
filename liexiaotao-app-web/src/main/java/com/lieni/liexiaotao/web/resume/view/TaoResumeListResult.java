package com.lieni.liexiaotao.web.resume.view;

import java.io.Serializable;
import java.util.List;

public class TaoResumeListResult implements Serializable {

    private static final long serialVersionUID = -3073271064469998941L;

    private Integer total;
    private List<TaoResumeListView> views;
    private Object extraObject;

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public List<TaoResumeListView> getViews() {
        return views;
    }

    public void setViews(List<TaoResumeListView> views) {
        this.views = views;
    }

    public Object getExtraObject() {
        return extraObject;
    }

    public void setExtraObject(Object extraObject) {
        this.extraObject = extraObject;
    }

}
