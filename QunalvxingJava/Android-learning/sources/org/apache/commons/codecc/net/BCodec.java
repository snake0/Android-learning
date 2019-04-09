package org.apache.commons.codecc.net;

import java.io.UnsupportedEncodingException;
import org.apache.commons.codecc.DecoderException;
import org.apache.commons.codecc.EncoderException;
import org.apache.commons.codecc.StringDecoder;
import org.apache.commons.codecc.StringEncoder;
import org.apache.commons.codecc.binary.Base64;

public class BCodec extends RFC1522Codec implements StringDecoder, StringEncoder {
    private final String charset;

    public BCodec() {
        this("UTF-8");
    }

    public BCodec(String str) {
        this.charset = str;
    }

    /* Access modifiers changed, original: protected */
    public String getEncoding() {
        return "B";
    }

    /* Access modifiers changed, original: protected */
    public byte[] doEncoding(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeBase64(bArr);
    }

    /* Access modifiers changed, original: protected */
    public byte[] doDecoding(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.decodeBase64(bArr);
    }

    public String encode(String str, String str2) {
        if (str == null) {
            return null;
        }
        try {
            return encodeText(str, str2);
        } catch (UnsupportedEncodingException e) {
            throw new EncoderException(e.getMessage(), e);
        }
    }

    public String encode(String str) {
        if (str == null) {
            return null;
        }
        return encode(str, getDefaultCharset());
    }

    public String decode(String str) {
        if (str == null) {
            return null;
        }
        try {
            return decodeText(str);
        } catch (UnsupportedEncodingException e) {
            throw new DecoderException(e.getMessage(), e);
        }
    }

    public Object encode(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            return encode((String) obj);
        }
        throw new EncoderException("Objects of type " + obj.getClass().getName() + " cannot be encoded using BCodec");
    }

    public Object decode(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            return decode((String) obj);
        }
        throw new DecoderException("Objects of type " + obj.getClass().getName() + " cannot be decoded using BCodec");
    }

    public String getDefaultCharset() {
        return this.charset;
    }
}
