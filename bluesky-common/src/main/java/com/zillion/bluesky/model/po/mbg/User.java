package com.zillion.bluesky.model.po.mbg;

import java.io.Serializable;

/**
 * Created by lucoo on 16/9/23.
 */
public class User implements Serializable {
    private Long bh;
    private String xm;
    private String mm;
    private String yghm;

    public Long getBh() {
        return bh;
    }

    public void setBh(Long bh) {
        this.bh = bh;
    }

    public String getXm() {
        return xm;
    }

    public void setXm(String xm) {
        this.xm = xm;
    }

    public String getMm() {
        return mm;
    }

    public void setMm(String mm) {
        this.mm = mm;
    }

    public String getYghm() {
        return yghm;
    }

    public void setYghm(String yghm) {
        this.yghm = yghm;
    }
}
