package com.zillion.bluesky.model.dict.enums;

/**
 * Created by lucoo on 16/9/27.
 */
public interface EnumIntType<E extends EnumIntType<E>> {
    int intValue();

    String getName();

    E getNull();
}
