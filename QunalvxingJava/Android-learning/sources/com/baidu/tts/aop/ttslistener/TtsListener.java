package com.baidu.tts.aop.ttslistener;

import com.baidu.tts.m.h;

public interface TtsListener {
    void onError(h hVar);

    void onPlayFinished(h hVar);

    void onPlayProgressUpdate(h hVar);

    void onPlayStart(h hVar);

    void onSynthesizeDataArrived(h hVar);

    void onSynthesizeFinished(h hVar);

    void onSynthesizeStart(h hVar);
}
