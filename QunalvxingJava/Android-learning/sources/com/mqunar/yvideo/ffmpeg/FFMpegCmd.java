package com.mqunar.yvideo.ffmpeg;

public class FFMpegCmd {
    public static native int ffmpegRun(String[] strArr);

    public static native String getFFmpegConfig();

    static {
        System.loadLibrary("avutil");
        System.loadLibrary("fdk-aac");
        System.loadLibrary("avcodec");
        System.loadLibrary("avformat");
        System.loadLibrary("swscale");
        System.loadLibrary("swresample");
        System.loadLibrary("avfilter");
        System.loadLibrary("ffmpegcmd");
    }
}
