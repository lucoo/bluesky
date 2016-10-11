package com.zillion.bluesky.console.listener.jms;

import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.ObjectMessage;

/**
 * Created by lucoo on 2016/10/10.
 */
public class ConsumerMessageListener implements MessageListener {
    @Override
    public void onMessage(Message message) {
        ObjectMessage objectMessage = (ObjectMessage) message;
        System.out.println("=========================监听接收到的消息：" + message.toString());
    }
}
