package com.zillion.bluesky.console.service.jms;

import com.zillion.bluesky.console.listener.jms.ConsumerSessionAwareMesasgeListener;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Service;

import javax.jms.*;

/**
 * Created by lucoo on 2016/10/10.
 */
@Service
public class ProduceService {
    private Logger logger = Logger.getLogger(ProduceService.class);
    @Autowired
    private JmsTemplate jmsTemplate;

    public void sendMessage(Destination destination, final String message) {
        jmsTemplate.send(destination, new MessageCreator() {
            @Override
            public Message createMessage(Session session) throws JMSException {
                System.out.println("====================生产者发送了消息" + message);
                return session.createObjectMessage(message);
            }
        });

        ConsumerSessionAwareMesasgeListener<TextMessage> mesasgeListener = new ConsumerSessionAwareMesasgeListener<TextMessage>() {
            @Override
            public void onMessage(TextMessage textMessage, Session session) throws JMSException {
                System.out.println("====================接受到消息：" + textMessage.getText());
                MessageProducer messageProducer = session.createProducer(destination);
                Message reMsg = session.createTextMessage("回复的消息");
                messageProducer.send(reMsg);
            }
        };
    }

}
