package com.zillion.bluesky.model.dict.enums;

/**
 * Created by lucoo on 16/9/27.
 */
public class Enumeration {
    private String code;
    private String name;

    public Enumeration() {

    }

    public Enumeration(String code) {
        this(code, null);
    }

    public Enumeration(String code, String name) {
        this.code = code;
        this.name = name;
    }

    @Override
    public int hashCode() {
        return code == null ? super.hashCode() : code.hashCode();
    }

    @Override
    public boolean equals(Object other) {
        if (other == null) {
            return false;
        }
        if (other == this) {
            return true;
        }
        if (code == null || "".equals(code.trim())) {
            return false;
        }
        if (other instanceof String) {
            return code.equals(other);
        }
        if (other instanceof Enumeration) {
            if (((Enumeration) other).getCode() == null || "".equals(((Enumeration) other).getCode().trim())) {
                return false;
            }
            return code.equals(((Enumeration) other).getCode());
        }

        if (getClass().getPackage() != other.getClass().getPackage()) {
            return false;
        }
        if (hashCode() == other.hashCode()) {
            return true;
        }
        return false;
    }

    @Override
    public String toString() {
        return code.toString();
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
