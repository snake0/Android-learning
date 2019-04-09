package com.mqunar.necro.agent.tracing;

import com.mqunar.necro.agent.AgentImpl;

public class BackgroundTrace extends AbsBackgroundTrace {
    private static long sBackgroundTime;
    private static boolean sCurrentAppIsForeground = true;
    private static long sForegroundTime;
    private AgentImpl mAgent;

    public BackgroundTrace(AgentImpl agentImpl) {
        this.mAgent = agentImpl;
    }

    /* Access modifiers changed, original: protected */
    public void onForegroundListener() {
        sCurrentAppIsForeground = true;
        sForegroundTime = System.currentTimeMillis();
    }

    /* Access modifiers changed, original: protected */
    public void onBackgroundListener() {
        sCurrentAppIsForeground = false;
        sBackgroundTime = System.currentTimeMillis();
        this.mAgent.sendDataNow();
    }

    public static long getBackgroundTime() {
        return sBackgroundTime;
    }

    public static long getForegronudTime() {
        return sForegroundTime;
    }

    public static boolean appIsForeground() {
        return sCurrentAppIsForeground;
    }
}
