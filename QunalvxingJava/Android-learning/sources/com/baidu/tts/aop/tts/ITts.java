package com.baidu.tts.aop.tts;

import android.content.Context;
import com.baidu.tts.aop.ttslistener.TtsListener;
import com.baidu.tts.auth.AuthInfo;
import com.baidu.tts.f.m;
import com.baidu.tts.j.b;
import com.baidu.tts.m.e;
import com.baidu.tts.m.f;
import com.baidu.tts.m.g;
import com.baidu.tts.m.i;
import com.baidu.tts.m.j;

public interface ITts extends b {
    AuthInfo auth(m mVar);

    int freeCustomResource(e eVar);

    m getMode();

    TtsListener getTtsListener();

    j getTtsParams();

    int loadCustomResource(e eVar);

    int loadEnglishModel(f fVar);

    int loadModel(g gVar);

    int setAudioStreamType(int i);

    void setContext(Context context);

    void setMode(m mVar);

    int setParam(com.baidu.tts.f.g gVar, String str);

    int setStereoVolume(float f, float f2);

    void setTtsListener(TtsListener ttsListener);

    void speak(i iVar);

    void synthesize(i iVar);
}
