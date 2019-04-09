package com.mqunar.qapm.utils;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Random;

public class StringUtils {
    public static final String ACTIVITY_BACKGROUND_METRIC_PREFIX = "Mobile/Activity/Background/Name/";
    public static final String ACTIVITY_DISPLAY_NAME_PREFIX = "Display ";
    public static final String ACTIVITY_METRIC_PREFIX = "Mobile/Activity/Name/";
    private static final Random a = new Random();

    public static String slurp(InputStream inputStream) {
        char[] cArr = new char[8192];
        StringBuilder stringBuilder = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        while (true) {
            int read = bufferedReader.read(cArr);
            if (read < 0) {
                return stringBuilder.toString();
            }
            stringBuilder.append(cArr, 0, read);
        }
    }

    public static String sanitizeUrl(String str) {
        if (str == null) {
            return null;
        }
        return str;
    }

    public static Random getRandom() {
        return a;
    }

    public static String formatActivityMetricName(String str) {
        return "Mobile/Activity/Name/" + str;
    }

    public static String formatActivityBackgroundMetricName(String str) {
        return "Mobile/Activity/Background/Name/" + str;
    }

    public static String formatActivityDisplayName(String str) {
        return "Display " + str;
    }

    public static String null2String(String str) {
        return str == null ? "" : str;
    }
}
