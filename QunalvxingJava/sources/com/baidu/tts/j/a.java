package com.baidu.tts.j;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public abstract class a implements b {
    protected final Lock d = new ReentrantLock();
    protected final Condition e = this.d.newCondition();

    public interface a {
        void a();
    }

    public abstract TtsError g();

    public abstract void h();

    public abstract void i();

    public abstract void j();

    public abstract void k();

    public abstract void l();

    public abstract boolean m();

    public abstract boolean n();

    public synchronized TtsError b() {
        return g();
    }

    public synchronized void A() {
        h();
    }

    public synchronized void c() {
        i();
        try {
            this.d.lock();
            this.e.signalAll();
            this.d.unlock();
        } catch (Exception e) {
            e.printStackTrace();
            this.d.unlock();
        } catch (Throwable th) {
            this.d.unlock();
        }
        return;
    }

    public synchronized void d() {
        j();
    }

    public synchronized void e() {
        k();
    }

    public synchronized void f() {
        l();
    }

    public void a(a aVar) {
        while (m()) {
            b(aVar);
        }
    }

    public void b(a aVar) {
        try {
            this.d.lock();
            if (aVar != null) {
                aVar.a();
            }
            LoggerProxy.d("ASafeLife", "before await");
            this.e.await();
            LoggerProxy.d("ASafeLife", "after await");
        } finally {
            this.d.unlock();
        }
    }

    public void B() {
        Thread.currentThread().interrupt();
    }

    public boolean C() {
        try {
            a(null);
        } catch (InterruptedException e) {
            B();
        }
        if (n()) {
            return false;
        }
        return true;
    }
}
