package dto;

import java.util.Date;

public class messageBean {
    private int mid;
    private int fromId;
    private int toId;
    private String  content;
    private Date mSendTime;


    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
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

    public Date getmSendTime() {
        return mSendTime;
    }

    public void setmSendTime(Date mSendTime) {
        this.mSendTime = mSendTime;
    }
}
