package org.apache.commons.codecc.binary;

import java.io.UnsupportedEncodingException;
import org.apache.commons.codecc.BinaryDecoder;
import org.apache.commons.codecc.BinaryEncoder;
import org.apache.commons.codecc.DecoderException;
import org.apache.commons.codecc.EncoderException;

public class Hex implements BinaryDecoder, BinaryEncoder {
    public static final String DEFAULT_CHARSET_NAME = "UTF-8";
    private static final char[] DIGITS_LOWER = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final char[] DIGITS_UPPER = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private final String charsetName;

    public static byte[] decodeHex(char[] cArr) {
        int i = 0;
        int length = cArr.length;
        if ((length & 1) != 0) {
            throw new DecoderException("Odd number of characters.");
        }
        byte[] bArr = new byte[(length >> 1)];
        int i2 = 0;
        while (i < length) {
            i++;
            i++;
            bArr[i2] = (byte) (((toDigit(cArr[i], i) << 4) | toDigit(cArr[i], i)) & 255);
            i2++;
        }
        return bArr;
    }

    public static char[] encodeHex(byte[] bArr) {
        return encodeHex(bArr, true);
    }

    public static char[] encodeHex(byte[] bArr, boolean z) {
        return encodeHex(bArr, z ? DIGITS_LOWER : DIGITS_UPPER);
    }

    protected static char[] encodeHex(byte[] bArr, char[] cArr) {
        int i = 0;
        int length = bArr.length;
        char[] cArr2 = new char[(length << 1)];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i + 1;
            cArr2[i] = cArr[(bArr[i2] & 240) >>> 4];
            i = i3 + 1;
            cArr2[i3] = cArr[bArr[i2] & 15];
        }
        return cArr2;
    }

    public static String encodeHexString(byte[] bArr) {
        return new String(encodeHex(bArr));
    }

    protected static int toDigit(char c, int i) {
        int digit = Character.digit(c, 16);
        if (digit != -1) {
            return digit;
        }
        throw new DecoderException("Illegal hexadecimal character " + c + " at index " + i);
    }

    public Hex() {
        this.charsetName = "UTF-8";
    }

    public Hex(String str) {
        this.charsetName = str;
    }

    public byte[] decode(byte[] bArr) {
        try {
            return decodeHex(new String(bArr, getCharsetName()).toCharArray());
        } catch (UnsupportedEncodingException e) {
            throw new DecoderException(e.getMessage(), e);
        }
    }

    public Object decode(Object obj) {
        try {
            return decodeHex(obj instanceof String ? ((String) obj).toCharArray() : (char[]) obj);
        } catch (ClassCastException e) {
            throw new DecoderException(e.getMessage(), e);
        }
    }

    public byte[] encode(byte[] bArr) {
        return StringUtils.getBytesUnchecked(encodeHexString(bArr), getCharsetName());
    }

    public Object encode(Object obj) {
        try {
            return encodeHex(obj instanceof String ? ((String) obj).getBytes(getCharsetName()) : (byte[]) obj);
        } catch (ClassCastException e) {
            throw new EncoderException(e.getMessage(), e);
        } catch (UnsupportedEncodingException e2) {
            throw new EncoderException(e2.getMessage(), e2);
        }
    }

    public String getCharsetName() {
        return this.charsetName;
    }

    public String toString() {
        return super.toString() + "[charsetName=" + this.charsetName + "]";
    }
}
