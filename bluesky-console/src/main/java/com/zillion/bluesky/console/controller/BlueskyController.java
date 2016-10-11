package com.zillion.bluesky.console.controller;

import com.zillion.bluesky.console.listener.jms.ConsumerSessionAwareMesasgeListener;
import com.zillion.bluesky.console.service.BlueskyService;
import com.zillion.bluesky.console.service.jms.ProduceService;
import com.zillion.bluesky.model.po.mbg.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jms.*;

/**
 * Created by lucoo on 16/9/23.
 */
@Controller
public class BlueskyController {
    @Autowired
    private BlueskyService blueskyService;

    @Autowired
    private ProduceService produceService;

    @Autowired
    @Qualifier("queueDestination")
    private Destination destination;

    @RequestMapping(value = "/login")
    public String login() {
        return "/login";
    }

    @RequestMapping(value = "/index")
    public String index(Model model) {
        User user = blueskyService.selectUser();
        model.addAttribute("user", user);
        return "/index";
    }

    @RequestMapping(value = "/sendMessage")
    public void sendMessage() {
        produceService.sendMessage(destination, "hello world!");
    }

    public static void main(String[] args) {

    }
}
