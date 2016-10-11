package com.zillion.bluesky.console.controller.java8;

/**
 * Created by lucoo on 2016/10/9.
 */
public interface NewInterface {
    void test();

    default void demo() {
        System.out.println("so strange!");
    }

    default void demo2() {
        System.out.println("second strange!");
    }
}
