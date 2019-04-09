package com.mqunar.qapm;

import com.mqunar.qapm.network.sender.ISender;
import java.util.Map;

public interface IQAPM {
    void addNetMonitor(Map<String, String> map);

    void addUIMonitor(Map<String, String> map);

    String getCParam();

    ISender getSender();

    void release();

    void setSender(ISender iSender);

    void upload(boolean z);
}
