package com.mqunar.yvideo.utils;

import java.io.File;

public class FileUtils {
    public static boolean fileIsExists(String str) {
        try {
            if (new File(str).exists()) {
                return true;
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }
}
