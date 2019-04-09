package com.mqunar.yvideo;

import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.mqunar.yvideo.ffmpeg.FFMpegCmdHelper;

public class YVideoManager {
    private static final int MAX_SIZE = 640;

    class InstanceHolder {
        private static final YVideoManager INSTANCE = new YVideoManager();

        private InstanceHolder() {
        }
    }

    /* synthetic */ YVideoManager(AnonymousClass1 anonymousClass1) {
        this();
    }

    private YVideoManager() {
    }

    private boolean canCompress(String str) {
        MediaExtractor mediaExtractor = new MediaExtractor();
        mediaExtractor.setDataSource(str);
        for (int i = 0; i < mediaExtractor.getTrackCount(); i++) {
            String string = mediaExtractor.getTrackFormat(i).getString("mime");
            if (!TextUtils.isEmpty(string) && string.contains("avc")) {
                return true;
            }
        }
        return false;
    }

    public void compressVideo(String str, String str2, boolean z, CompressCallBack compressCallBack) {
        final String str3 = str;
        final String str4 = str2;
        final CompressCallBack compressCallBack2 = compressCallBack;
        final boolean z2 = z;
        new Thread(new Runnable() {
            public void run() {
                int i = YVideoManager.MAX_SIZE;
                try {
                    if ((TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) && compressCallBack2 != null) {
                        compressCallBack2.onError("输入输出路径不能为空！");
                    }
                    if (YVideoManager.this.canCompress(str3)) {
                        String extractMetadata;
                        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                        mediaMetadataRetriever.setDataSource(str3);
                        String extractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
                        String extractMetadata3 = mediaMetadataRetriever.extractMetadata(18);
                        if (VERSION.SDK_INT > 17) {
                            extractMetadata = mediaMetadataRetriever.extractMetadata(24);
                        } else {
                            extractMetadata = null;
                        }
                        int parseInt = Integer.parseInt(extractMetadata2);
                        int parseInt2 = Integer.parseInt(extractMetadata3);
                        Object obj = parseInt > parseInt2 ? 1 : null;
                        if (parseInt < YVideoManager.MAX_SIZE && parseInt2 < YVideoManager.MAX_SIZE) {
                            i = parseInt;
                        } else if (obj != null) {
                            parseInt2 = (int) (((double) parseInt2) / ((double) (((float) parseInt) / 640.0f)));
                        } else {
                            i = (int) (((double) parseInt) / ((double) (((float) parseInt2) / 640.0f)));
                            parseInt2 = YVideoManager.MAX_SIZE;
                        }
                        i -= i % 2;
                        parseInt2 -= parseInt2 % 2;
                        FFMpegCmdHelper fFMpegCmdHelper = new FFMpegCmdHelper();
                        fFMpegCmdHelper.addInputPath(str3);
                        fFMpegCmdHelper.addOutputPath(str4);
                        if (z2) {
                            fFMpegCmdHelper.enableLog();
                        }
                        fFMpegCmdHelper.addParam("-s", parseInt2 + MapViewConstants.ATTR_X + i);
                        fFMpegCmdHelper.addParam("-threads", "5");
                        if (extractMetadata != null) {
                            if (extractMetadata.equals("90")) {
                                fFMpegCmdHelper.addParam("-vf", "transpose=2");
                            } else if (extractMetadata.equals("180")) {
                                fFMpegCmdHelper.addParam("-vf", "vflip,hflip");
                            } else if (extractMetadata.equals("270")) {
                                fFMpegCmdHelper.addParam("-vf", "transpose=1");
                            }
                        }
                        fFMpegCmdHelper.addParam("-r", "24");
                        fFMpegCmdHelper.addParam("-profile:v", "baseline");
                        fFMpegCmdHelper.addParam("-c:a", "copy");
                        if (extractMetadata != null) {
                            if (extractMetadata.equals("90")) {
                                fFMpegCmdHelper.addParam("-metadata:s:v:0", "rotate=90");
                            } else if (extractMetadata.equals("180")) {
                                fFMpegCmdHelper.addParam("-metadata:s:v:0", "rotate=180");
                            } else if (extractMetadata.equals("270")) {
                                fFMpegCmdHelper.addParam("-metadata:s:v:0", "rotate=270");
                            }
                        }
                        fFMpegCmdHelper.addParam("-c:v", "libx264");
                        fFMpegCmdHelper.addParam("-preset", "ultrafast");
                        fFMpegCmdHelper.addParam("-crf", "23");
                        fFMpegCmdHelper.addParam("-y");
                        fFMpegCmdHelper.addParam("-tune:v", "fastdecode");
                        boolean execute = fFMpegCmdHelper.execute();
                        if (compressCallBack2 == null) {
                            return;
                        }
                        if (execute) {
                            compressCallBack2.onSuccess(str4);
                        } else {
                            compressCallBack2.onError("压缩失败");
                        }
                    } else if (compressCallBack2 != null) {
                        compressCallBack2.onError("该视频格式不支持压缩");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    if (compressCallBack2 != null) {
                        compressCallBack2.onError(e.getMessage());
                    }
                }
            }
        }).start();
    }

    public static YVideoManager getInstance() {
        return InstanceHolder.INSTANCE;
    }
}
