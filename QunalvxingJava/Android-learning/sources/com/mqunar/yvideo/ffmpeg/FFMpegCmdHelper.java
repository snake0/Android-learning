package com.mqunar.yvideo.ffmpeg;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public class FFMpegCmdHelper {
    private List<String> cmd = new ArrayList();
    private String inputPath;
    private boolean log = false;
    private String outputPath;

    public FFMpegCmdHelper() {
        this.cmd.add("ffmpeg");
    }

    public void addParam(String str) {
        this.cmd.add(str);
    }

    public void addParam(String str, String str2) {
        this.cmd.add(str);
        this.cmd.add(str2);
    }

    public void addInputPath(String str) {
        this.inputPath = str;
    }

    public void addOutputPath(String str) {
        this.outputPath = str;
    }

    public void enableLog() {
        this.log = true;
    }

    public boolean execute() {
        if (TextUtils.isEmpty(this.inputPath) || TextUtils.isEmpty(this.outputPath)) {
            return false;
        }
        this.cmd.add(1, "-i");
        this.cmd.add(2, this.inputPath);
        this.cmd.add(this.outputPath);
        if (this.log) {
            this.cmd.add(1, "-d");
        }
        return FFMpegCmd.ffmpegRun((String[]) this.cmd.toArray(new String[0])) == 0;
    }
}
