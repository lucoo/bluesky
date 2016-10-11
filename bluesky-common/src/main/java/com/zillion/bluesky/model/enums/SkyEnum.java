package com.zillion.bluesky.model.enums;

import com.zillion.bluesky.model.dict.enums.EnumIntType;
import org.apache.commons.lang3.ObjectUtils;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * Created by lucoo on 16/9/27.
 */
public enum SkyEnum implements EnumIntType<SkyEnum> {
    GREY(1, "", null),

    NULL(-1, "", null);

    private int id;
    private String name;
    private String serialCode;

    /**
     * 私有构造函数
     *
     * @param id
     * @param name
     * @param serialCode
     */
    private SkyEnum(int id, String name, String serialCode) {
        this.id = id;
        this.name = name;
        this.serialCode = serialCode;
    }

    //字典代码缓存
    private static final Map<Integer, SkyEnum> map = new HashMap<>(values().length);
    //串行代码缓存
    private static final Map<String, SkyEnum> mapSerialCode = new HashMap<>(values().length);

    static {
        for (SkyEnum e : values()) {
            map.put(e.getId(), e);
            mapSerialCode.put(e.getSerialCode(), e);
        }
    }

    public static List<SkyEnum> getAllEnum() {
        List<SkyEnum> list = new LinkedList<>();
        for (SkyEnum e : values()) {
            if (!e.isNull()) {
                list.add(e);
            }
        }
        return list;
    }

    public static SkyEnum valueToObj(Integer value) {
        SkyEnum e = map.get(value);
        return e == NULL ? null : e;
    }

    public boolean isNull() {
        return this == NULL;
    }

    @Override
    public int intValue() {
        return 0;
    }

    @Override
    public String getName() {
        return null;
    }

    @Override
    public SkyEnum getNull() {
        return null;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSerialCode() {
        return serialCode;
    }

    public void setSerialCode(String serialCode) {
        this.serialCode = serialCode;
    }
}
