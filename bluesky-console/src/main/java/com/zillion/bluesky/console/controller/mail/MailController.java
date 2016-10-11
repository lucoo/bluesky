package com.zillion.bluesky.console.controller.mail;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by lucoo on 2016/10/9.
 */
@Controller
@RequestMapping(value = "/mail")
public class MailController {
    @RequestMapping(value = "/list")
    public String page() {
        return "/mail/list";
    }
}
