package com.squareup.wire;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;

final class ExtensionMap<T extends ExtendableMessage<?>> {
    private final Map<Extension<T, ?>, Object> map = new TreeMap();

    public ExtensionMap(ExtensionMap<T> extensionMap) {
        this.map.putAll(extensionMap.map);
    }

    public List<Extension<T, ?>> getExtensions() {
        return Collections.unmodifiableList(new ArrayList(this.map.keySet()));
    }

    public <E> E get(Extension<T, E> extension) {
        return this.map.get(extension);
    }

    public <E> void put(Extension<T, E> extension, E e) {
        this.map.put(extension, e);
    }

    public boolean equals(Object obj) {
        return (obj instanceof ExtensionMap) && this.map.equals(((ExtensionMap) obj).map);
    }

    public int hashCode() {
        return this.map.hashCode();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("{");
        String str = "";
        Iterator it = this.map.entrySet().iterator();
        while (true) {
            String str2 = str;
            if (it.hasNext()) {
                Entry entry = (Entry) it.next();
                stringBuilder.append(str2);
                stringBuilder.append(((Extension) entry.getKey()).getTag());
                stringBuilder.append("=");
                stringBuilder.append(entry.getValue());
                str = ", ";
            } else {
                stringBuilder.append("}");
                return stringBuilder.toString();
            }
        }
    }
}
