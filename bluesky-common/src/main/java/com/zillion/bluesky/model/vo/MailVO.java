package com.zillion.bluesky.model.vo;

/**
 * Created by lucoo on 2016/10/9.
 */
public class MailVO {
    //收件
    private String to;
    //抄送
    private String cc;
    //暗抄送
    private String bcc;
    //主题
    private String subject;
    //内容
    private String content;
    //附件url
    private String attachUrl;

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getCc() {
        return cc;
    }

    public void setCc(String cc) {
        this.cc = cc;
    }

    public String getBcc() {
        return bcc;
    }

    public void setBcc(String bcc) {
        this.bcc = bcc;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAttachUrl() {
        return attachUrl;
    }

    public void setAttachUrl(String attachUrl) {
        this.attachUrl = attachUrl;
    }
}
