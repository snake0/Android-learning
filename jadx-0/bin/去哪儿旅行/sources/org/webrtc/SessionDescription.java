package org.webrtc;

public class SessionDescription {
    public final String description;
    public final Type type;

    public enum Type {
        OFFER,
        PRANSWER,
        ANSWER;

        public String canonicalForm() {
            return name().toLowerCase();
        }

        public static Type fromCanonicalForm(String str) {
            return (Type) valueOf(Type.class, str.toUpperCase());
        }
    }

    public SessionDescription(Type type, String str) {
        this.type = type;
        this.description = str;
    }
}
