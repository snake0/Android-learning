package com.baidu.tts.b.b.b;

import android.media.AudioTrack;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.e;
import com.baidu.tts.f.k;
import com.baidu.tts.m.c;
import com.baidu.tts.m.h;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class b extends a {
    protected final Lock b = new ReentrantLock();
    protected final Condition c = this.b.newCondition();
    private volatile AudioTrack d;
    private a e;
    private com.baidu.tts.i.a.b f = new com.baidu.tts.i.a.b();
    private boolean g = false;
    private int h;

    public class a extends c<a> {
        private k a = k.HZ16K;
        private int b = 4;
        private int c = 2;
        private int d = 1;
        private float e = 1.0f;
        private float f = 1.0f;

        public int a() {
            return this.a.a();
        }

        public int b() {
            return this.b;
        }

        public int c() {
            return this.c;
        }

        public int d() {
            return this.d;
        }

        public float e() {
            return this.e;
        }

        public void a(float f) {
            this.e = f;
        }

        public float f() {
            return this.f;
        }

        public void b(float f) {
            this.f = f;
        }
    }

    public void a(com.baidu.tts.b.b.a aVar) {
        this.a = aVar;
    }

    public <AudioTrackPlayerParams> void a(AudioTrackPlayerParams audioTrackPlayerParams) {
        this.e = (a) audioTrackPlayerParams;
    }

    public TtsError a() {
        int a = this.e.a();
        int b = this.e.b();
        int c = this.e.c();
        this.d = new AudioTrack(this.e.g(), a, b, c, a(a, b, c), this.e.d());
        this.d.setStereoVolume(this.e.e(), this.e.f());
        return null;
    }

    private int a(int i, int i2, int i3) {
        int i4;
        int i5 = 2;
        int minBufferSize = AudioTrack.getMinBufferSize(i, i2, i3) * 2;
        switch (i2) {
            case 1:
            case 2:
            case 4:
                i4 = 1;
                break;
            case 3:
            case 12:
                i4 = 2;
                break;
            default:
                i4 = Integer.bitCount(i2);
                break;
        }
        if (i3 == 3) {
            i5 = 1;
        }
        if (minBufferSize % (i5 * i4) != 0 || minBufferSize < 1) {
            return 5120;
        }
        return minBufferSize;
    }

    public int a(int i) {
        if (i != this.e.g()) {
            int a = this.e.a();
            int b = this.e.b();
            int c = this.e.c();
            int i2 = i;
            this.d = new AudioTrack(i2, a, b, c, a(a, b, c), this.e.d());
            this.e.a(i);
            this.d.setStereoVolume(this.e.e(), this.e.f());
            this.d.play();
        }
        return 0;
    }

    public void b() {
        if (this.d != null) {
            this.d.play();
        }
    }

    public void c() {
        this.g = true;
        if (this.d != null) {
            this.d.pause();
        }
    }

    public void d() {
        this.g = false;
        if (this.d != null) {
            this.d.play();
        }
        g();
    }

    private void g() {
        try {
            this.b.lock();
            this.c.signalAll();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            this.b.unlock();
        }
    }

    public void e() {
        if (this.g) {
            this.g = false;
            g();
        }
        if (this.d != null) {
            this.d.pause();
            this.d.flush();
            this.d.stop();
        }
    }

    public TtsError f() {
        e();
        if (this.d != null) {
            this.d.release();
        }
        this.d = null;
        return null;
    }

    public int a(float f, float f2) {
        int stereoVolume = this.d.setStereoVolume(f, f2);
        this.e.a(f);
        this.e.b(f2);
        return stereoVolume;
    }

    public TtsError a(h hVar) {
        LoggerProxy.d("AudioTrackPlayer", "enter put");
        if (hVar != null) {
            h hVar2;
            e g = hVar.g();
            if (g == e.SYN_START) {
                b(hVar);
            }
            if (g == e.SYN_DATA) {
                this.f.c(hVar.c());
            }
            byte[] d = hVar.d();
            if (d != null) {
                this.f.b(d.length);
            }
            loop3:
            while (this.f.hasNext()) {
                com.baidu.tts.i.a.a c = this.f.next();
                int i = 0;
                int a = c.a();
                int b = c.b();
                while (i < b && this.d.getPlayState() != 1) {
                    int i2 = b - i;
                    LoggerProxy.d("AudioTrackPlayer", "before write");
                    i2 = this.d.write(d, i + a, i2);
                    LoggerProxy.d("AudioTrackPlayer", "writtenbytes=" + i2 + "--offset=" + i + "--dataLength=" + b);
                    if (i2 >= 0) {
                        i += i2;
                    }
                    while (this.g) {
                        try {
                            this.b.lock();
                            LoggerProxy.d("AudioTrackPlayer", "await before" + System.currentTimeMillis());
                            this.c.await();
                            LoggerProxy.d("AudioTrackPlayer", "await after" + System.currentTimeMillis());
                        } catch (Exception e) {
                            e.printStackTrace();
                        } finally {
                            this.b.unlock();
                        }
                    }
                }
                if (this.d.getPlayState() == 1) {
                    break loop3;
                } else if (c.c()) {
                    i = hVar.c();
                    float d2 = c.d();
                    i = Math.round(((float) i) * d2);
                    int b2 = b(i);
                    LoggerProxy.d("AudioTrackPlayer", "percent=" + d2 + "--currentProgress=" + i + "--progress=" + b2);
                    hVar2 = (h) hVar.y();
                    hVar2.d(b2);
                    e(hVar2);
                }
            }
            if (g == e.SYN_FINISH) {
                hVar2 = (h) hVar.y();
                hVar2.d(this.f.d());
                e(hVar2);
                c(hVar);
            }
            LoggerProxy.d("AudioTrackPlayer", "end put");
        } else {
            LoggerProxy.d("AudioTrackPlayer", "put responseBag=null");
            LoggerProxy.d("AudioTrackPlayer", "end put");
        }
        return null;
    }

    private int h() {
        return (this.e.a() * 2) / this.e.h();
    }

    private void b(h hVar) {
        this.f.a(h());
        this.f.a();
        this.h = 0;
        d(hVar);
    }

    private void c(h hVar) {
        this.f.b();
        f(hVar);
    }

    private int b(int i) {
        if (i > this.h) {
            this.h = i;
        }
        return this.h;
    }

    private void d(h hVar) {
        if (this.a != null) {
            this.a.a(hVar);
        }
    }

    private void e(h hVar) {
        if (this.a != null) {
            this.a.b(hVar);
        }
    }

    private void f(h hVar) {
        if (this.a != null) {
            this.a.c(hVar);
        }
    }
}
