package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONScanner;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;

public class DateDeserializer extends AbstractDateDeserializer implements ObjectDeserializer {
    public static final DateDeserializer instance = new DateDeserializer();

    /* Access modifiers changed, original: protected */
    public <T> T cast(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2) {
        if (obj2 == null) {
            return null;
        }
        if (obj2 instanceof Date) {
            return obj2;
        }
        if (obj2 instanceof Number) {
            return new Date(((Number) obj2).longValue());
        }
        if (obj2 instanceof String) {
            T t = (String) obj2;
            if (t.length() == 0) {
                return null;
            }
            JSONScanner jSONScanner = new JSONScanner(t);
            try {
                if (jSONScanner.scanISO8601DateIfMatch(false)) {
                    t = jSONScanner.getCalendar();
                    if (type == Calendar.class) {
                        return t;
                    }
                    t = t.getTime();
                    jSONScanner.close();
                    return t;
                }
                jSONScanner.close();
                try {
                    return defaultJSONParser.getDateFormat().parse(t);
                } catch (ParseException e) {
                    return new Date(Long.parseLong(t));
                }
            } finally {
                jSONScanner.close();
            }
        } else {
            throw new JSONException("parse error");
        }
    }

    public int getFastMatchToken() {
        return 2;
    }
}
