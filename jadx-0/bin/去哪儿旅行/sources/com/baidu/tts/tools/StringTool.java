package com.baidu.tts.tools;

import java.util.Iterator;
import java.util.List;

public class StringTool {
    public static String addDivider(List<String> list, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = list.iterator();
        if (it.hasNext()) {
            stringBuilder.append((String) it.next());
        }
        while (it.hasNext()) {
            String str2 = (String) it.next();
            stringBuilder.append(str);
            stringBuilder.append(str2);
        }
        return stringBuilder.toString();
    }

    public static String addDivider(int[] iArr, String str) {
        if (iArr == null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(iArr[0]);
        for (int i = 1; i < iArr.length; i++) {
            stringBuilder.append(str);
            stringBuilder.append(iArr[i]);
        }
        return stringBuilder.toString();
    }

    public static boolean isEmpty(String str) {
        if (str != null && str.trim().length() > 0) {
            return false;
        }
        return true;
    }

    public static boolean isAllNumber(String str) {
        if (str != null) {
            return str.matches("^[0-9]{1,20}$");
        }
        return false;
    }

    public static boolean isEqual(String str, String str2) {
        if (str == null) {
            return str2 == null;
        } else {
            return str.equals(str2);
        }
    }
}
