package model;

import java.net.InetAddress;

public class LogInfo {
    private int LogInfoId;
    private int CustomerId;
    private String LogDate;
    private String IPAdress;

    public LogInfo(int customerId, String logDate, String IPAdress) {
        CustomerId = customerId;
        LogDate = logDate;
        this.IPAdress = IPAdress;
    }

    public LogInfo(int logInfoId, int customerId, String logDate,
                   String IPAdress) {
        LogInfoId = logInfoId;
        CustomerId = customerId;
        LogDate = logDate;
        this.IPAdress = IPAdress;
    }

    public int getLogInfoId() {
        return LogInfoId;
    }

    public void setLogInfoId(int logInfoId) {
        LogInfoId = logInfoId;
    }

    public int getCustomerId() {
        return CustomerId;
    }

    public void setCustomerId(int customerId) {
        CustomerId = customerId;
    }

    public String getLogDate() {
        return LogDate;
    }

    public void setLogDate(String logDate) {
        LogDate = logDate;
    }

    public String getIPAdress() {
        return IPAdress;
    }

    public void setIPAdress(String IPAdress) {
        this.IPAdress = IPAdress;
    }

    @Override
    public String toString() {
        return "LogInfo{" +
                "CustomerId=" + CustomerId +
                ", LogDate='" + LogDate + '\'' +
                ", IPAdress='" + IPAdress + '\'' +
                '}';
    }
}
