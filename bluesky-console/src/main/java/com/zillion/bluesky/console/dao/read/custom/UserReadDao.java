package com.zillion.bluesky.console.dao.read.custom;

import com.zillion.bluesky.model.po.mbg.User;

import java.util.List;

/**
 * Created by lucoo on 16/9/23.
 */
public interface UserReadDao {
    List<User> selectByIdCard();
}
