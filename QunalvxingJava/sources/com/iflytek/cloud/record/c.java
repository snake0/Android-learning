package com.iflytek.cloud.record;

import android.content.Context;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.thirdparty.bw;
import com.iflytek.cloud.thirdparty.cb;

public class c {
    private boolean A = false;
    private boolean B = false;
    private int C = 0;
    private Handler D = new Handler(Looper.getMainLooper()) {
        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    if (c.this.f != null) {
                        c.this.f.a((SpeechError) message.obj);
                        c.this.f = null;
                        return;
                    }
                    return;
                case 1:
                    if (c.this.f != null) {
                        c.this.f.a();
                        return;
                    }
                    return;
                case 2:
                    if (c.this.f != null) {
                        c.this.f.b();
                        return;
                    }
                    return;
                case 3:
                    if (c.this.f != null) {
                        c.this.f.a(message.arg1, message.arg2, c.this.C);
                        return;
                    }
                    return;
                case 4:
                    if (c.this.f != null) {
                        c.this.f.c();
                        c.this.f = null;
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };
    OnAudioFocusChangeListener a = new OnAudioFocusChangeListener() {
        public void onAudioFocusChange(int i) {
            if (i == -2 || i == -3 || i == -1) {
                cb.a("PcmPlayer", "pause start");
                if (c.this.c()) {
                    cb.a("PcmPlayer", "pause success");
                    c.this.l = true;
                    if (c.this.f != null) {
                        c.this.f.a();
                    }
                }
            } else if (i == 1) {
                cb.a("PcmPlayer", "resume start");
                if (c.this.l) {
                    c.this.l = false;
                    if (c.this.d()) {
                        cb.a("PcmPlayer", "resume success");
                        if (c.this.f != null) {
                            c.this.f.b();
                        }
                    }
                }
            }
        }
    };
    private AudioTrack b = null;
    private b c = null;
    private Context d = null;
    private b e = null;
    private a f = null;
    private volatile int g = 0;
    private int h = 3;
    private boolean i = true;
    private int j;
    private boolean k = false;
    private boolean l = false;
    private Object m = new Object();
    private Object n = this;
    private final int o = 2;
    private final int p = 500;
    private final int q = 50;
    private int r = 1600;
    private final float s = 1.0f;
    private final float t = 0.0f;
    private final float u = 0.1f;
    private int v = (this.r * 10);
    private float w = 0.0f;
    private float x = 1.0f;
    private float y = 0.1f;
    private boolean z = false;

    public interface a {
        void a();

        void a(int i, int i2, int i3);

        void a(SpeechError speechError);

        void b();

        void c();
    }

    class b extends Thread {
        private int b;

        private b() {
            this.b = c.this.h;
        }

        /* synthetic */ b(c cVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        public int a() {
            return this.b;
        }

        public void a(int i) {
            this.b = i;
        }

        public void run() {
            try {
                cb.a("PcmPlayer", "start player");
                cb.a("PcmPlayer", "mAudioFocus= " + c.this.i);
                if (c.this.i) {
                    bw.a(c.this.d, Boolean.valueOf(c.this.k), c.this.a);
                } else {
                    bw.a(c.this.d, Boolean.valueOf(c.this.k), null);
                }
                c.this.c.c();
                synchronized (c.this.n) {
                    if (!(c.this.g == 4 || c.this.g == 3)) {
                        c.this.g = 2;
                    }
                }
                c.this.f();
                while (true) {
                    c.this.k();
                    if (c.this.g == 2 || c.this.g == 1 || c.this.z) {
                        if (c.this.c.g()) {
                            if (c.this.a(1, 2)) {
                                Message.obtain(c.this.D, 2).sendToTarget();
                                cb.a("BUFFERING to PLAYING  fading ");
                                c.this.f();
                            }
                            int d = c.this.c.d();
                            com.iflytek.cloud.record.b.a e = c.this.c.e();
                            if (e != null) {
                                c.this.C = e.d;
                                Message.obtain(c.this.D, 3, d, e.c).sendToTarget();
                            }
                            if (c.this.b.getPlayState() != 3) {
                                c.this.b.play();
                            }
                            if (c.this.A) {
                                if (!c.this.c.h() && !c.this.c.b(c.this.v) && Math.abs(c.this.x - 0.0f) >= 0.1f) {
                                    cb.a("no more size  fading ");
                                    c.this.g();
                                } else if (2 == c.this.g && ((c.this.c.h() || c.this.c.b(c.this.v)) && Math.abs(c.this.x - 1.0f) >= 0.1f)) {
                                    cb.a("has buffer  fading ");
                                    c.this.f();
                                }
                            }
                            if (c.this.z) {
                                c.this.h();
                            }
                            c.this.c.a(c.this.b, c.this.r);
                        } else if (c.this.c.f()) {
                            cb.a("play stoped");
                            c.this.g = 4;
                            Message.obtain(c.this.D, 4).sendToTarget();
                            c.this.z = false;
                            break;
                        } else if (c.this.z) {
                            c.this.z = false;
                        } else {
                            if (c.this.a(2, 1)) {
                                cb.a("play onpaused!");
                                Message.obtain(c.this.D, 1).sendToTarget();
                            }
                            sleep(5);
                        }
                    } else if (c.this.g == 3) {
                        if (2 != c.this.b.getPlayState()) {
                            c.this.b.pause();
                            if (c.this.z) {
                                c.this.i();
                            }
                        }
                        sleep(5);
                    } else if (4 == c.this.g) {
                        c.this.i();
                        break;
                    }
                }
                if (c.this.b != null) {
                    c.this.b.stop();
                }
                synchronized (c.this.n) {
                    c.this.g = 4;
                }
                if (c.this.b != null) {
                    c.this.b.release();
                    c.this.b = null;
                }
                if (c.this.i) {
                    bw.b(c.this.d, Boolean.valueOf(c.this.k), c.this.a);
                } else {
                    bw.b(c.this.d, Boolean.valueOf(c.this.k), null);
                }
                c.this.e = null;
                cb.a("PcmPlayer", "player stopped");
            } catch (Exception e2) {
                cb.a(e2);
                Message.obtain(c.this.D, 0, new SpeechError(20011)).sendToTarget();
                synchronized (c.this.n) {
                    c.this.g = 4;
                    if (c.this.b != null) {
                        c.this.b.release();
                        c.this.b = null;
                    }
                    if (c.this.i) {
                        bw.b(c.this.d, Boolean.valueOf(c.this.k), c.this.a);
                    } else {
                        bw.b(c.this.d, Boolean.valueOf(c.this.k), null);
                    }
                    c.this.e = null;
                    cb.a("PcmPlayer", "player stopped");
                }
            } catch (Throwable th) {
                synchronized (c.this.n) {
                    c.this.g = 4;
                    if (c.this.b != null) {
                        c.this.b.release();
                        c.this.b = null;
                    }
                    if (c.this.i) {
                        bw.b(c.this.d, Boolean.valueOf(c.this.k), c.this.a);
                    } else {
                        bw.b(c.this.d, Boolean.valueOf(c.this.k), null);
                    }
                    c.this.e = null;
                    cb.a("PcmPlayer", "player stopped");
                }
            }
        }
    }

    public c(Context context) {
        this.d = context;
    }

    public c(Context context, int i, boolean z, boolean z2, boolean z3) {
        this.d = context;
        this.h = i;
        this.k = z;
        this.B = z2;
        this.A = z3;
    }

    private boolean a(int i, int i2) {
        boolean z = false;
        synchronized (this.n) {
            if (i == this.g) {
                this.g = i2;
                z = true;
            }
        }
        return z;
    }

    private void j() {
        cb.a("PcmPlayer", "createAudio start");
        int a = this.c.a();
        this.j = AudioTrack.getMinBufferSize(a, 2, 2);
        this.r = ((a / 1000) * 2) * 50;
        this.v = this.r * 10;
        if (this.b != null) {
            b();
        }
        cb.a("PcmPlayer", "createAudio || mStreamType = " + this.h + ", buffer size: " + this.j);
        this.b = new AudioTrack(this.h, a, 2, 2, this.j * 2, 1);
        if (this.j == -2 || this.j == -1) {
            throw new Exception();
        }
        cb.a("PcmPlayer", "createAudio end");
    }

    private void k() {
        b bVar = this.e;
        if (this.b == null || !(bVar == null || bVar.a() == this.h)) {
            cb.a("PcmPlayer", "prepAudioPlayer || audiotrack is null or stream type is change.");
            j();
            if (bVar != null) {
                bVar.a(this.h);
            }
        }
    }

    public int a() {
        return this.g;
    }

    public boolean a(b bVar, a aVar) {
        cb.a("PcmPlayer", "play mPlaytate= " + this.g + ",mAudioFocus= " + this.i);
        boolean z = true;
        synchronized (this.n) {
            if (this.g == 4 || this.g == 0 || this.g == 3 || this.e == null) {
                this.c = bVar;
                this.f = aVar;
                this.e = new b(this, null);
                this.e.start();
            } else {
                z = false;
            }
        }
        return z;
    }

    public void b() {
        synchronized (this.m) {
            if (this.b != null) {
                if (this.b.getPlayState() == 3) {
                    this.b.stop();
                }
                this.b.release();
                this.b = null;
            }
            cb.a("PcmPlayer", "mAudioTrack released");
        }
    }

    public boolean c() {
        if (this.g == 4 || this.g == 3) {
            return false;
        }
        cb.a("pause start fade out");
        g();
        this.g = 3;
        return true;
    }

    public boolean d() {
        boolean a = a(3, 2);
        bw.a(this.d, Boolean.valueOf(this.k), this.a);
        if (a) {
            cb.a("resume start fade in");
            f();
        }
        return a;
    }

    public void e() {
        if (4 != this.g) {
            cb.a("stop start fade out");
            g();
        }
        synchronized (this.n) {
            this.g = 4;
        }
    }

    public void f() {
        if (this.B) {
            synchronized (this.n) {
                cb.a("start fade in");
                this.z = true;
                this.x = 1.0f;
                this.y = 0.1f;
            }
        }
    }

    public void g() {
        if (this.B) {
            synchronized (this.n) {
                cb.a("start fade out");
                this.z = true;
                this.x = 0.0f;
                this.y = -0.1f;
            }
        }
    }

    public void h() {
        if (this.B) {
            synchronized (this.n) {
                if (Math.abs(this.x - this.w) < 0.1f) {
                    this.w = this.x;
                    this.z = false;
                    cb.a("fading finish");
                } else {
                    this.w += this.y;
                }
            }
            this.b.setStereoVolume(this.w, this.w);
            return;
        }
        this.z = false;
    }

    public void i() {
        cb.a("fading set silence");
        synchronized (this.n) {
            if (Math.abs(0.0f - this.x) < 0.1f) {
                this.w = 0.0f;
                this.z = false;
            }
        }
        this.b.setStereoVolume(this.w, this.w);
    }
}
