package com.baidu.techain.core;

import java.util.Random;

public final class i {
    private static String a = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

    public static byte[] a() {
        char[] toCharArray = a.toCharArray();
        char[] cArr = new char[16];
        for (int i = 0; i < 16; i++) {
            cArr[i] = toCharArray[new Random().nextInt(62)];
        }
        return new String(cArr).getBytes();
    }
}
