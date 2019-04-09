package com.mqunar.qapm.logging;

public class AgentLogManager {
    private static DefaultAgentLog a = new DefaultAgentLog();

    public static AgentLog getAgentLog() {
        return a;
    }

    public static void setAgentLog(AgentLog agentLog) {
        a.setImpl(agentLog);
    }
}
