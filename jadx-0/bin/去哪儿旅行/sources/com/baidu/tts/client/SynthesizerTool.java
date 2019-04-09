package com.baidu.tts.client;

import com.baidu.tts.jni.EmbeddedSynthesizerEngine;
import com.baidu.tts.tools.ResourceTools;
import com.baidu.tts.tools.StringTool;
import java.io.File;

public class SynthesizerTool {
    public static boolean verifyModelFile(String str) {
        if (StringTool.isEmpty(str)) {
            return false;
        }
        try {
            if (EmbeddedSynthesizerEngine.bdTTSVerifyDataFile(ResourceTools.stringToByteArrayAddNull(str)) >= 0) {
                return true;
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public static String getEngineInfo() {
        return EmbeddedSynthesizerEngine.bdTTSGetEngineParam();
    }

    public static int getEngineVersion() {
        return EmbeddedSynthesizerEngine.getEngineMinVersion();
    }

    public static String getModelInfo(String str) {
        if (!StringTool.isEmpty(str)) {
            File file = new File(str);
            if (file.exists() && file.canRead()) {
                return EmbeddedSynthesizerEngine.bdTTSGetDatParam(str);
            }
        }
        return null;
    }
}
