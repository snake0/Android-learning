package com.baidu.tts.f;

import com.iflytek.aiui.AIUIConstant;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechEvent;
import org.apache.http.cookie.ClientCookie;

public enum g {
    STATE(null, "state", null),
    CODE(null, "code", null),
    DATA(null, SpeechEvent.KEY_EVENT_RECORD_DATA, null),
    IVERSION(null, "iversion", null),
    URL(null, "url", null),
    MD5(null, "md5", null),
    LENGTH(null, "length", null),
    ABS_PATH(null, "absPath", null),
    ID(null, "id", null),
    GENDER(null, "gender", null),
    DOMAIN(null, "domain", null),
    QUALITY(null, "quality", null),
    DATA_COUNT(null, "data_count", null),
    DATA_LIST(null, "data_list", null),
    NAME(null, AIUIConstant.KEY_NAME, null),
    VERSION_MIN(null, "version_min", null),
    VERSION_MAX(null, "version_max", null),
    TEXT_DATA_ID(null, "text_data_id", null),
    SPEECH_DATA_ID(null, "speech_data_id", null),
    FUNCTION("func", "function", ""),
    MODELSINFO("modelsinfo", "modelsinfo", ""),
    ERROR_NUMBER("err_no", "errorNumber", ""),
    ERROR_MESSAGE("err_msg", "errorMessage", ""),
    MIX_MODE(null, "mixMode", null),
    NOTIFICATION_COUNT_PER_SECOND("ncps", "notificationCountPerSecond", ""),
    PERCENT("pct", "percent", ""),
    APP_CODE("ac", "appCode", ""),
    PACKAGE_NAME("pn", "packageName", "app_name"),
    PLATFORM("", "platform", ""),
    SPEED("spd", SpeechConstant.SPEED, ""),
    VOLUME("vol", SpeechConstant.VOLUME, ""),
    PITCH("pit", SpeechConstant.PITCH, ""),
    LANGUAGE("lan", "language", ""),
    TEXT_ENCODE("cod", "textEncode", ""),
    STREAM_TYPE("st", "streamType", ""),
    AUDIO_ENCODE("aue", "audioEncode", ""),
    BITRATE("rate", "audioRate", ""),
    SPEAKER("per", "speaker", ""),
    STYLE("sty", "style", ""),
    BACKGROUND("bcg", "background", ""),
    PRODUCT_ID("pdt", "productId", ""),
    TEXT_DAT_PATH("tdp", "textDatPath", ""),
    SPEECH_DAT_PATH("sdp", "speechDatPath", ""),
    TTS_LICENSE_FILE_PATH("tlfp", "ttsLicenseFilePath", ""),
    CUSTOM_SYNTH("cs", "custom_synth", ""),
    OPEN_XML("xml", "open_xml", ""),
    TTS_VOCODER_OPTIMIZATION("tvo", "ttsVocoderOptimzation", ""),
    SAMPLE_RATE("sr", "sampleRate", ""),
    SERIAL_NUMBER("sn", "serialNumber", ""),
    INDEX("idx", "index", ""),
    TEXT("tex", "text", ""),
    CTP("ctp", "clientPath", ""),
    CUID("cuid", "deviceId", "wise_cuid"),
    VERSION("ver", ClientCookie.VERSION_ATTR, "sdk_version"),
    NUMBER("num", "number", ""),
    ENGINE("en", "engine", ""),
    TERRITORY("ter", "territory", ""),
    PUNCTUATION("puc", "punctuation", ""),
    CONTEXT("ctx", "context", ""),
    API_KEY("", MapViewConstants.ATTR_API_KEY, ""),
    SECRET_KEY("", "secretKey", ""),
    TOKEN("tok", "token", ""),
    SPEC("spec", "spec", "");
    
    private final String al;
    private final String am;
    private final String an;

    private g(String str, String str2, String str3) {
        this.al = str;
        this.am = str2;
        this.an = str3;
    }

    public String a() {
        return this.al;
    }

    public String b() {
        return this.am;
    }

    public static String a(g gVar) {
        return gVar == null ? null : gVar.name();
    }
}
