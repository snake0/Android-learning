package com.iflytek.cloud.thirdparty;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.iflytek.aiui.AIUIEvent;
import com.iflytek.aiui.AIUIListener;
import com.iflytek.aiui.AIUIMessage;

public class p {
    private af a;
    private Handler b;
    private HandlerThread c = new HandlerThread("AIUI:AudioThrowThread");
    private Context d;
    private AIUIListener e;
    private AIUIListener f;
    private HandlerThread g;
    private Handler h = new Handler(Looper.getMainLooper()) {
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    if (p.this.f != null) {
                        AIUIEvent aIUIEvent = (AIUIEvent) message.obj;
                        if (2 != aIUIEvent.eventType || (10141 != aIUIEvent.arg1 && 10142 != aIUIEvent.arg1)) {
                            p.this.f.onEvent(aIUIEvent);
                            return;
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };

    public p(Context context) {
        this.d = context;
    }

    public int a(String str, AIUIListener aIUIListener) {
        this.f = aIUIListener;
        this.c.start();
        this.b = new Handler(this.c.getLooper()) {
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        if (p.this.f != null) {
                            p.this.f.onEvent((AIUIEvent) message.obj);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        };
        this.e = new AIUIListener() {
            public void onEvent(AIUIEvent aIUIEvent) {
                if (aIUIEvent.eventType == 9) {
                    Message.obtain(p.this.b, 1, aIUIEvent).sendToTarget();
                } else {
                    Message.obtain(p.this.h, 1, aIUIEvent).sendToTarget();
                }
            }
        };
        this.g = new HandlerThread("AIUI:SchedulerThread");
        this.g.start();
        this.a = new af(this.d, this.g.getLooper(), str, this.e);
        return this.a.a(true);
    }

    public void a() {
        if (this.g != null) {
            this.g.quit();
        }
        if (this.a != null) {
            this.a.b();
            this.a = null;
        }
        this.c.getLooper().quit();
    }

    public void a(AIUIMessage aIUIMessage) {
        Message obtain = Message.obtain();
        obtain.what = 2;
        obtain.obj = aIUIMessage;
        if (this.a != null) {
            this.a.sendMessage(obtain);
        }
    }
}
