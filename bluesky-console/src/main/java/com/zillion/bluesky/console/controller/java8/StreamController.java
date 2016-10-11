package com.zillion.bluesky.console.controller.java8;

import com.google.common.base.Function;
import com.zillion.bluesky.model.po.mbg.User;

import java.util.*;
import java.util.stream.Collectors;

/**
 * Created by lucoo on 2016/10/9.
 */
public class StreamController {
    private static void stream() {
        List<List<User>> lists = new ArrayList<>();
        List<User> list = new ArrayList<>();
        for (int i = 0; i < 5; i++) {
            User user = new User();
            user.setXm(Integer.toString(i));
            list.add(user);
        }
        lists.add(list);
        lists.stream().flatMap(users -> users.stream()).forEach(user -> System.out.println(user.getXm()));
        lists.stream().flatMap(users -> users.stream())
                .map(user -> user.getXm().equals("1") ? new User() : user)
                .forEach(user -> System.out.println(user.getXm()));
        List<String> strXm = lists.stream().flatMap(users -> users.stream())
                .map(user -> user.getXm()).collect(Collectors.toList());
        strXm.stream().forEach(s -> System.out.println(s));
        System.out.println(lists.stream().flatMap(users -> users.stream())
                .filter(user -> user.getXm().equals("1")).toString());

        Map<String, String> map = new HashMap<>();
        Map<String, String> map2 = new HashMap<>();
        map.forEach((id, val) -> map2.put(id, val));
    }

    private static void optional() {
        Optional<String> optional = Optional.ofNullable("lucoo");
        Function<String, Integer> stringIntegerFunction = Integer::valueOf;
    }


    public static void main(String[] args) {
        stream();
    }

}
