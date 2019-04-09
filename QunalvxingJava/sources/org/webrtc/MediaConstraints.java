package org.webrtc;

import java.util.LinkedList;
import java.util.List;

public class MediaConstraints {
    public final List<KeyValuePair> mandatory = new LinkedList();
    public final List<KeyValuePair> optional = new LinkedList();

    public class KeyValuePair {
        private final String key;
        private final String value;

        public KeyValuePair(String str, String str2) {
            this.key = str;
            this.value = str2;
        }

        public String getKey() {
            return this.key;
        }

        public String getValue() {
            return this.value;
        }

        public String toString() {
            return this.key + ": " + this.value;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            KeyValuePair keyValuePair = (KeyValuePair) obj;
            if (this.key.equals(keyValuePair.key) && this.value.equals(keyValuePair.value)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.key.hashCode() + this.value.hashCode();
        }
    }

    private static String stringifyKeyValuePairList(List<KeyValuePair> list) {
        StringBuilder stringBuilder = new StringBuilder("[");
        for (KeyValuePair keyValuePair : list) {
            if (stringBuilder.length() > 1) {
                stringBuilder.append(", ");
            }
            stringBuilder.append(keyValuePair.toString());
        }
        return stringBuilder.append("]").toString();
    }

    public String toString() {
        return "mandatory: " + stringifyKeyValuePairList(this.mandatory) + ", optional: " + stringifyKeyValuePairList(this.optional);
    }
}
