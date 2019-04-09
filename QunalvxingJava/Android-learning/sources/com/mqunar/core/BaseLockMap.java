package com.mqunar.core;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class BaseLockMap<K, V> {
    private ReentrantReadWriteLock a = new ReentrantReadWriteLock();
    protected Map<K, V> map = new LinkedHashMap();

    /* Access modifiers changed, original: protected|final */
    public final void readLock() {
        this.a.readLock().lock();
    }

    /* Access modifiers changed, original: protected|final */
    public final void readUnlock() {
        this.a.readLock().unlock();
    }

    /* Access modifiers changed, original: protected|final */
    public final void writeLock() {
        this.a.writeLock().lock();
    }

    /* Access modifiers changed, original: protected|final */
    public final void writeUnlock() {
        this.a.writeLock().unlock();
    }

    public boolean isWriteLocked() {
        return this.a.isWriteLocked();
    }

    public void put(K k, V v) {
        writeLock();
        this.map.put(k, v);
        writeUnlock();
    }

    public void putAll(Map<K, V> map) {
        writeLock();
        this.map.putAll(map);
        writeUnlock();
    }

    public V get(K k) {
        readLock();
        Object obj = this.map.get(k);
        readUnlock();
        return obj;
    }

    public Map<K, V> mapCopy() {
        readLock();
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.map);
        readUnlock();
        return linkedHashMap;
    }

    public List<K> copyKeys() {
        readLock();
        ArrayList arrayList = new ArrayList(this.map.keySet());
        readUnlock();
        return arrayList;
    }

    public boolean hasItem(K k) {
        readLock();
        boolean containsKey = this.map.containsKey(k);
        readUnlock();
        return containsKey;
    }

    public int size() {
        readLock();
        int size = this.map.size();
        readUnlock();
        return size;
    }
}
