package com.baidu.tts.n;

public abstract class a<T> implements b<T> {
    public T y() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            return null;
        }
    }
}
