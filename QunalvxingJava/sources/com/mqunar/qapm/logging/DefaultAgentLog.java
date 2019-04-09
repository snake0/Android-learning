package com.mqunar.qapm.logging;

public class DefaultAgentLog implements AgentLog {
    private AgentLog a = new NullAgentLog();

    public void setImpl(AgentLog agentLog) {
        synchronized (this) {
            this.a = agentLog;
        }
    }

    public void debug(String str) {
        synchronized (this) {
            this.a.debug(str);
        }
    }

    public void info(String str) {
        synchronized (this) {
            this.a.info(str);
        }
    }

    public void verbose(String str) {
        synchronized (this) {
            this.a.verbose(str);
        }
    }

    public void warning(String str) {
        synchronized (this) {
            this.a.warning(str);
        }
    }

    public void error(String str) {
        synchronized (this) {
            this.a.error(str);
        }
    }

    public void error(String str, Throwable th) {
        synchronized (this) {
            this.a.error(str, th);
        }
    }

    public int getLevel() {
        int level;
        synchronized (this) {
            level = this.a.getLevel();
        }
        return level;
    }

    public void setLevel(int i) {
        synchronized (this) {
            this.a.setLevel(i);
        }
    }
}
