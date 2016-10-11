package com.zillion.bluesky.console.listener.jms;

import org.springframework.jms.listener.SessionAwareMessageListener;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;

/**
 * Created by lucoo on 2016/10/10.
 */
public abstract class ConsumerSessionAwareMesasgeListener<T extends Message> implements SessionAwareMessageListener<T> {
    @Override
    public void onMessage(T t, Session session) throws JMSException {

    }
}
