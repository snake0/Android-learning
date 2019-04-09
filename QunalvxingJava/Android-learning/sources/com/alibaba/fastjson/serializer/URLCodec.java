package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import java.lang.reflect.Type;
import java.net.MalformedURLException;
import java.net.URL;

public class URLCodec implements ObjectDeserializer, ObjectSerializer {
    public static final URLCodec instance = new URLCodec();

    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type) {
        if (obj == null) {
            jSONSerializer.writeNull();
        } else {
            jSONSerializer.write(obj.toString());
        }
    }

    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        String str = (String) defaultJSONParser.parse();
        if (str == null) {
            return null;
        }
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new JSONException("create url error", e);
        }
    }

    public int getFastMatchToken() {
        return 4;
    }
}
