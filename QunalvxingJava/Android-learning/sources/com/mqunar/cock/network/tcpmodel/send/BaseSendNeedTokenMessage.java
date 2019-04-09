package com.mqunar.cock.network.tcpmodel.send;

import com.mqunar.cock.network.tcpmodel.send.BaseSendMessage.Platform;

public class BaseSendNeedTokenMessage extends BaseSendMessage {

    class PlatformNew extends Platform {
        private PlatformNew() {
        }

        /* synthetic */ PlatformNew(BaseSendNeedTokenMessage baseSendNeedTokenMessage, a aVar) {
            this();
        }
    }

    BaseSendNeedTokenMessage() {
        setC(new PlatformNew(this, null));
    }
}
