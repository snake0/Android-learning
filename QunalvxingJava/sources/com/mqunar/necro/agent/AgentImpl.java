package com.mqunar.necro.agent;

import com.mqunar.necro.agent.bean.BaseData;

public interface AgentImpl {
    void dealData(BaseData baseData);

    void disable();

    String getCparam();

    String getNetworkCarrier();

    String getNetworkWanType();

    boolean isDisabled();

    void sendDataNow();

    void start();

    void stop();
}
