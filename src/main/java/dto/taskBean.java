package dto;

import java.util.Date;

public class taskBean {
    private int tid;
    private int fromId;
    private int toId;
    private String  content;
    private Date tSendTime;
    private Date tStartTime;
    private Date tEndTime;

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public int getFromId() {
        return fromId;
    }

    public void setFromId(int fromId) {
        this.fromId = fromId;
    }

    public int getToId() {
        return toId;
    }

    public void setToId(int toId) {
        this.toId = toId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date gettSendTime() {
        return tSendTime;
    }

    public void settSendTime(Date tSendTime) {
        this.tSendTime = tSendTime;
    }

    public Date gettStartTime() {
        return tStartTime;
    }

    public void settStartTime(Date tStartTime) {
        this.tStartTime = tStartTime;
    }

    public Date gettEndTime() {
        return tEndTime;
    }

    public void settEndTime(Date tEndTime) {
        this.tEndTime = tEndTime;
    }
}
