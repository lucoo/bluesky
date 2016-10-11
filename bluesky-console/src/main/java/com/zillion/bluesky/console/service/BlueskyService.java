package com.zillion.bluesky.console.service;

import com.zillion.bluesky.console.dao.read.custom.UserReadDao;
import com.zillion.bluesky.console.dao.write.custom.UserWriteDao;
import com.zillion.bluesky.model.po.mbg.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.Collections;
import java.util.List;

/**
 * Created by lucoo on 16/9/23.
 */
@Service
public class BlueskyService {
    @Autowired
    private UserReadDao userReadDao;
    @Autowired
    private UserWriteDao userWriteDao;

    public User selectUser() {
        List<User> list = userReadDao.selectByIdCard();
        if (!CollectionUtils.isEmpty(list)) {
            return list.get(0);
        } else {
            return new User();
        }
    }
}
