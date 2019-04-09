package com.mqunar.hy.res.utils;

import android.net.Uri;
import android.text.TextUtils;
import com.mqunar.contacts.basis.model.Contact;
import java.net.URISyntaxException;
import java.nio.charset.Charset;

public abstract class UriCodec {
    private static final char[] DIGITS = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    private static final char[] UPPER_CASE_DIGITS = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
    static final Charset UTF_8 = Charset.forName("UTF-8");

    public abstract boolean isRetained(char c);

    public final String validate(String str, int i, int i2, String str2) {
        int i3 = i;
        while (i3 < i2) {
            char charAt = str.charAt(i3);
            if ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || ((charAt >= '0' && charAt <= '9') || isRetained(charAt)))) {
                i3++;
            } else if (charAt != '%') {
                throw new URISyntaxException(str, "Illegal character in " + str2, i3);
            } else if (i3 + 2 >= i2) {
                throw new URISyntaxException(str, "Incomplete % sequence in " + str2, i3);
            } else {
                int hexToInt = hexToInt(str.charAt(i3 + 1));
                int hexToInt2 = hexToInt(str.charAt(i3 + 2));
                if (hexToInt == -1 || hexToInt2 == -1) {
                    throw new URISyntaxException(str, "Invalid % sequence: " + str.substring(i3, i3 + 3) + " in " + str2, i3);
                }
                i3 += 3;
            }
        }
        return str.substring(i, i2);
    }

    public static void validateSimple(String str, String str2) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if ((charAt < 'a' || charAt > 'z') && ((charAt < 'A' || charAt > 'Z') && ((charAt < '0' || charAt > '9') && str2.indexOf(charAt) <= -1))) {
                throw new URISyntaxException(str, "Illegal character", i);
            }
        }
    }

    private void appendEncoded(StringBuilder stringBuilder, String str, Charset charset, boolean z) {
        if (str == null) {
            throw new NullPointerException();
        }
        int i = 0;
        int i2 = -1;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || ((charAt >= '0' && charAt <= '9') || isRetained(charAt) || (charAt == '%' && z)))) {
                if (i2 != -1) {
                    appendHex(stringBuilder, str.substring(i2, i), charset);
                    i2 = -1;
                }
                if (charAt == '%' && z) {
                    stringBuilder.append(str, i, i + 3);
                    i += 2;
                } else if (charAt == ' ') {
                    stringBuilder.append('+');
                } else {
                    stringBuilder.append(charAt);
                }
            } else if (i2 == -1) {
                i2 = i;
            }
            i++;
        }
        if (i2 != -1) {
            appendHex(stringBuilder, str.substring(i2, str.length()), charset);
        }
    }

    public final String encode(String str, Charset charset) {
        StringBuilder stringBuilder = new StringBuilder(str.length() + 16);
        appendEncoded(stringBuilder, str, charset, false);
        return stringBuilder.toString();
    }

    public final void appendEncoded(StringBuilder stringBuilder, String str) {
        appendEncoded(stringBuilder, str, UTF_8, false);
    }

    public final void appendPartiallyEncoded(StringBuilder stringBuilder, String str) {
        appendEncoded(stringBuilder, str, UTF_8, true);
    }

    /* JADX WARNING: Removed duplicated region for block: B:44:0x0066 A:{SYNTHETIC, EDGE_INSN: B:44:0x0066->B:24:0x0066 ?: BREAK  } */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0060 A:{Catch:{ UnsupportedEncodingException -> 0x00a0 }} */
    public static java.lang.String decode(java.lang.String r10, boolean r11, java.nio.charset.Charset r12, boolean r13) {
        /*
        r9 = 43;
        r8 = 37;
        r2 = 0;
        r7 = -1;
        r0 = r10.indexOf(r8);
        if (r0 != r7) goto L_0x0015;
    L_0x000c:
        if (r11 == 0) goto L_0x0014;
    L_0x000e:
        r0 = r10.indexOf(r9);
        if (r0 != r7) goto L_0x0015;
    L_0x0014:
        return r10;
    L_0x0015:
        r3 = new java.lang.StringBuilder;
        r0 = r10.length();
        r3.<init>(r0);
        r4 = new java.io.ByteArrayOutputStream;	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r4.<init>();	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r1 = r2;
    L_0x0024:
        r0 = r10.length();	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        if (r1 >= r0) goto L_0x00a6;
    L_0x002a:
        r0 = r10.charAt(r1);	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        if (r0 != r8) goto L_0x00bc;
    L_0x0030:
        r0 = r1;
    L_0x0031:
        r1 = r0 + 2;
        r5 = r10.length();	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        if (r1 >= r5) goto L_0x007b;
    L_0x0039:
        r1 = r0 + 1;
        r1 = r10.charAt(r1);	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r1 = hexToInt(r1);	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        if (r1 == r7) goto L_0x007b;
    L_0x0045:
        r5 = r0 + 2;
        r5 = r10.charAt(r5);	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r5 = hexToInt(r5);	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        if (r5 == r7) goto L_0x007b;
    L_0x0051:
        r1 = r1 << 4;
        r1 = r1 + r5;
        r1 = (byte) r1;	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r4.write(r1);	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
    L_0x0058:
        r0 = r0 + 3;
        r1 = r10.length();	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        if (r0 >= r1) goto L_0x0066;
    L_0x0060:
        r1 = r10.charAt(r0);	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        if (r1 == r8) goto L_0x0031;
    L_0x0066:
        r1 = new java.lang.String;	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r5 = r4.toByteArray();	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r6 = r12.name();	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r1.<init>(r5, r6);	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r3.append(r1);	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r4.reset();	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
    L_0x0079:
        r1 = r0;
        goto L_0x0024;
    L_0x007b:
        if (r13 == 0) goto L_0x00ac;
    L_0x007d:
        r1 = new java.lang.IllegalArgumentException;	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r4 = new java.lang.StringBuilder;	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r4.<init>();	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r5 = "Invalid % sequence at ";
        r4 = r4.append(r5);	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r0 = r4.append(r0);	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r4 = ": ";
        r0 = r0.append(r4);	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r0 = r0.append(r10);	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r0 = r0.toString();	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r1.<init>(r0);	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        throw r1;	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
    L_0x00a0:
        r0 = move-exception;
        r1 = new java.lang.Object[r2];
        com.mqunar.hy.res.logger.Timber.e(r0, r1);
    L_0x00a6:
        r10 = r3.toString();
        goto L_0x0014;
    L_0x00ac:
        r1 = "�";
        r5 = r12.name();	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r1 = r1.getBytes(r5);	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r5 = 0;
        r6 = r1.length;	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r4.write(r1, r5, r6);	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        goto L_0x0058;
    L_0x00bc:
        if (r11 == 0) goto L_0x00c2;
    L_0x00be:
        if (r0 != r9) goto L_0x00c2;
    L_0x00c0:
        r0 = 32;
    L_0x00c2:
        r3.append(r0);	 Catch:{ UnsupportedEncodingException -> 0x00a0 }
        r0 = r1 + 1;
        goto L_0x0079;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.hy.res.utils.UriCodec.decode(java.lang.String, boolean, java.nio.charset.Charset, boolean):java.lang.String");
    }

    private static int hexToInt(char c) {
        if ('0' <= c && c <= '9') {
            return c - 48;
        }
        if ('a' <= c && c <= 'f') {
            return (c + 10) - 97;
        }
        if ('A' > c || c > 'F') {
            return -1;
        }
        return (c + 10) - 65;
    }

    public static String decode(String str) {
        return decode(str, false, UTF_8, true);
    }

    private static void appendHex(StringBuilder stringBuilder, String str, Charset charset) {
        for (byte appendHex : str.getBytes(charset.name())) {
            appendHex(stringBuilder, appendHex);
        }
    }

    private static void appendHex(StringBuilder stringBuilder, byte b) {
        stringBuilder.append('%');
        stringBuilder.append(byteToHexString(b, true));
    }

    public static String byteToHexString(byte b, boolean z) {
        char[] cArr = z ? UPPER_CASE_DIGITS : DIGITS;
        return new String(new char[]{cArr[(b >> 4) & 15], cArr[b & 15]}, 0, 2);
    }

    public static String getUrlWithOutQueryAndHash(String str) {
        int i = 268435455;
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (!trim.contains("//")) {
            return trim;
        }
        String substring;
        int indexOf = !trim.contains("?") ? 268435455 : trim.indexOf("?");
        if (trim.contains(Contact.NUMBER)) {
            i = trim.indexOf(Contact.NUMBER);
        }
        if (indexOf >= i) {
            indexOf = i;
        }
        if (indexOf < trim.length()) {
            substring = trim.substring(0, indexOf);
        } else {
            substring = trim;
        }
        if (substring.endsWith("/")) {
            return substring.substring(0, substring.length() - 1);
        }
        return substring;
    }

    public static boolean compareWithoutQuery(Uri uri, String str) {
        if (uri == null || uri.isOpaque() || TextUtils.isEmpty(str)) {
            return false;
        }
        Uri parse = Uri.parse(str);
        if (parse.isOpaque()) {
            return false;
        }
        if (TextUtils.isEmpty(uri.getScheme())) {
            if (!TextUtils.isEmpty(parse.getScheme())) {
                return false;
            }
        } else if (!uri.getScheme().equals(parse.getScheme())) {
            return false;
        }
        if (TextUtils.isEmpty(uri.getAuthority())) {
            if (!TextUtils.isEmpty(parse.getAuthority())) {
                return false;
            }
        } else if (!uri.getAuthority().equals(parse.getAuthority())) {
            return false;
        }
        String path = uri.getPath();
        if (path == null || path.equals("/")) {
            path = "";
        }
        Object path2 = parse.getPath();
        if (path2 == null || path2.equals("/")) {
            path2 = "";
        }
        return path.equals(path2);
    }
}
