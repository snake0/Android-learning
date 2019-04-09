package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONToken;
import java.lang.reflect.Type;

public class StackTraceElementDeserializer implements ObjectDeserializer {
    public static final StackTraceElementDeserializer instance = new StackTraceElementDeserializer();

    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        JSONLexer lexer = defaultJSONParser.getLexer();
        if (lexer.token() == 8) {
            lexer.nextToken();
            return null;
        } else if (lexer.token() == 12 || lexer.token() == 16) {
            String str = null;
            String str2 = null;
            String str3 = null;
            int i = 0;
            while (true) {
                String scanSymbol = lexer.scanSymbol(defaultJSONParser.getSymbolTable());
                if (scanSymbol == null) {
                    if (lexer.token() == 13) {
                        lexer.nextToken(16);
                        break;
                    } else if (lexer.token() == 16 && lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                    }
                }
                lexer.nextTokenWithColon(4);
                if ("className".equals(scanSymbol)) {
                    if (lexer.token() == 8) {
                        str = null;
                    } else if (lexer.token() == 4) {
                        str = lexer.stringVal();
                    } else {
                        throw new JSONException("syntax error");
                    }
                } else if ("methodName".equals(scanSymbol)) {
                    if (lexer.token() == 8) {
                        str2 = null;
                    } else if (lexer.token() == 4) {
                        str2 = lexer.stringVal();
                    } else {
                        throw new JSONException("syntax error");
                    }
                } else if ("fileName".equals(scanSymbol)) {
                    if (lexer.token() == 8) {
                        str3 = null;
                    } else if (lexer.token() == 4) {
                        str3 = lexer.stringVal();
                    } else {
                        throw new JSONException("syntax error");
                    }
                } else if ("lineNumber".equals(scanSymbol)) {
                    if (lexer.token() == 8) {
                        i = 0;
                    } else if (lexer.token() == 2) {
                        i = lexer.intValue();
                    } else {
                        throw new JSONException("syntax error");
                    }
                } else if ("nativeMethod".equals(scanSymbol)) {
                    if (lexer.token() == 8) {
                        lexer.nextToken(16);
                    } else if (lexer.token() == 6) {
                        lexer.nextToken(16);
                    } else if (lexer.token() == 7) {
                        lexer.nextToken(16);
                    } else {
                        throw new JSONException("syntax error");
                    }
                } else if (scanSymbol != JSON.DEFAULT_TYPE_KEY) {
                    throw new JSONException("syntax error : " + scanSymbol);
                } else if (lexer.token() == 4) {
                    scanSymbol = lexer.stringVal();
                    if (!scanSymbol.equals("java.lang.StackTraceElement")) {
                        throw new JSONException("syntax error : " + scanSymbol);
                    }
                } else if (lexer.token() != 8) {
                    throw new JSONException("syntax error");
                }
                if (lexer.token() == 13) {
                    lexer.nextToken(16);
                    break;
                }
            }
            return new StackTraceElement(str, str2, str3, i);
        } else {
            throw new JSONException("syntax error: " + JSONToken.name(lexer.token()));
        }
    }

    public int getFastMatchToken() {
        return 12;
    }
}
