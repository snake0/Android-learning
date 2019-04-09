package com.baidu.tts.f;

public enum n {
    ONLINE_ENGINE_AUTH_FAILURE(a.b, -1, "online engine auth failure"),
    ONLINE_ENGINE_HTTP_REQUEST_FAILURE(a.b, -2, "request failure"),
    ONLINE_ENGINE_CANCEL_FAILURE(a.b, -3, "cancel failure"),
    ONLINE_AUTH_INTERRUPTED_EXCEPTION(a.b, -4, "InterruptedException"),
    ONLINE_AUTH_EXECUTION_EXCEPTION(a.b, -5, "ExecutionException"),
    ONLINE_AUTH_TIMEOUT_EXCEPTION(a.b, -6, "TimeoutException"),
    ONLINE_ENGINE_REQUEST_RESULT_ERROR(a.b, -7, "request result contains error message"),
    ONLINE_TOKEN_IS_NULL(a.b, -8, "access token is null, please check your apikey and secretkey or product id"),
    ONLINE_ENGINE_UNINITIALIZED(a.b, -9, "online engine is not initial"),
    ONLINE_ENGINE_CALL_EXCEPTION(a.b, -10, "online engine call synthesize exception"),
    ONLINE_UNSUPPORTED_OPERATION(a.b, -11, "this method is not supported by online mode(please use other mode)"),
    ONLINE_ENGINE_HTTP_REQUEST_PARSE_ERROR(a.b, -12, "request result parse error may responsebag is null"),
    ONLINE_ENGINE_GET_INTERRUPTED(a.b, -13, "online synthesize get was interrupted"),
    ONLINE_ENGINE_GET_EXECUTION_EXCEPTION(a.b, -14, "online synthesize get exception"),
    ONLINE_ENGINE_GET_TIMEOUT(a.b, -15, "online synthesize get was timeout"),
    ONLINE_AUTH_CANCELLATION_EXCEPTION(a.b, -16, "CancellationException"),
    ONLINE_ENGINE_SERVER_IP_IS_NULL(a.b, -17, "online engine server ip is null"),
    OFFLINE_ENGINE_AUTH_FAILURE(a.c, -100, "offline engine auth failure,please check you offline auth params"),
    OFFLINE_ENGINE_CANCEL_FAILURE(a.c, -101, "offline engine cancel failure"),
    OFFLINE_ENGINE_DOWNLOAD_LICENSE_FAILED(a.c, -102, "offline engine download license failure"),
    OFFLINE_ENGINE_AUTH_NULL(a.c, -103, "offline engine auth authinfo is null"),
    OFFLINE_AUTH_INTERRUPTED_EXCEPTION(a.c, -105, "InterruptedException"),
    OFFLINE_AUTH_EXECUTION_EXCEPTION(a.c, -106, "ExecutionException"),
    OFFLINE_AUTH_TIMEOUT_EXCEPTION(a.c, -107, "TimeoutException"),
    OFFLINE_ENGINE_INIT_FAILED(a.c, -108, "bdTTSEngineInit failed,please check you offline params"),
    OFFLINE_ENGINE_UNINITIALIZED(a.c, -109, "offline engine is uninitialized,please invoke initTts() method"),
    OFFLINE_ENGINE_CALL_EXCEPTION(a.c, -110, "offline engine call synthesize exception"),
    OFFLINE_ENGINE_SYNTHESIZE_ERROR(a.c, -111, "offline engine synthesize result not 0"),
    OFFLINE_ENGINE_AUTH_EXPIRED(a.c, -112, "offline engine auth verify expired,formal expired or temp expired"),
    OFFLINE_ENGINE_AUTH_PACKAGE_UNMATCH(a.c, -113, "package name is unmatch"),
    OFFLINE_ENGINE_AUTH_SIGN_UNMATCH(a.c, -114, "app sign is unmatch"),
    OFFLINE_ENGINE_AUTH_CUID_UNMATCH(a.c, -115, "devices cuid is unmatch"),
    OFFLINE_ENGINE_AUTH_PLATFORM_ERROR(a.c, -116, "platform is unmatch"),
    OFFLINE_ENGINE_AUTH_LICENSE_FILE_INVALID(a.c, -117, "license file not exist or file length is 0 (download license fail)"),
    OFFLINE_AUTH_CANCELLATION_EXCEPTION(a.b, -118, "CancellationException"),
    MIX_ENGINE_AUTH_FAILURE(a.a, -200, "both online and offline engine auth failue"),
    MIX_AUTH_INTERRUPTED_EXCEPTION(a.a, -201, "InterruptedException"),
    MIX_AUTH_EXECUTION_EXCEPTION(a.a, -202, "ExecutionException"),
    MIX_AUTH_TIMEOUT_EXCEPTION(a.a, -203, "TimeoutException"),
    MIX_ENGINE_OFFLINE_INIT_FAILURE(a.a, -204, "mix engine initTTS, the offline init failure"),
    MIX_AUTH_CANCELLATION_EXCEPTION(a.a, -205, "CancellationException"),
    TEXT_IS_EMPTY(a.d, -300, "text is null or empty double quotation marks"),
    TEXT_IS_TOO_LONG(a.d, -301, "text length in gbk is more than 1024, the text is too long, cut it short than 1024"),
    TEXT_ENCODE_IS_WRONG(a.d, -302, "text encode is not gbk, please use gbk text"),
    TTS_UNINITIAL(a.e, -400, "tts has not been initialized,invoke in a wrong state"),
    TTS_MODE_ILLEGAL(a.e, -401, "tts mode unset or not the spechified value"),
    TTS_QUEUE_IS_FULL(a.e, -402, "队列长度小于MAX_QUEUE_SIZE时才能加入合成队列"),
    TTS_LIST_IS_TOO_LONG(a.e, -403, "list的size小于MAX_LIST_SIZE时才有效"),
    TTS_ENGINE_STOP_FAILURE(a.e, -404, "引擎停止失败"),
    TTS_APP_ID_IS_INVALID(a.e, -405, "app id is invalid,must be less than int(11)"),
    TTS_PARAMETER_INVALID(a.e, -406, "arguments of the method is invalid"),
    APP_RESOURCE_IS_NULL(a.f, -500, "context was released or persistent app value is null"),
    PLAYER_IS_NULL(a.g, -600, "player is null"),
    MODEL_PARAMS_ERROR(a.h, -1000, "params is wrong"),
    MODEL_REQUEST_ERROR(a.h, -1001, "request error"),
    MODEL_SERVER_ERROR(a.h, -1002, "server error"),
    MODEL_DB_MODEL_INVALID(a.h, -1003, "model item in db is invalid(fileids is empty)"),
    MODEL_DB_MODEL_FILE_PATHS_INVALID(a.h, -1004, "model file in db is invalid(abspath is empty)"),
    MODEL_EXISTS(a.h, -1005, "this model exists(have downloaded success ever)"),
    MODEL_BAGS_EMPTY(a.h, -1006, "can't get server model info,maybe modelid invalid or request failure"),
    MODEL_FILE_BAG_EMPTY(a.h, -1007, "can't get server file info,maybe fileid invalid or request failure"),
    MODEL_CHECK_EXCEPTION(a.h, -1008, "CheckWork exception happened"),
    MODEL_FILE_DOWNLOAD_EXCEPTION(a.h, -1009, "exception happens when file downloadwork execute"),
    TTS_ERROR_UNKNOW(a.i, -9999, "unknow");
    
    private final a am;
    private final int an;
    private final String ao;

    public enum a {
        public static final a a = null;
        public static final a b = null;
        public static final a c = null;
        public static final a d = null;
        public static final a e = null;
        public static final a f = null;
        public static final a g = null;
        public static final a h = null;
        public static final a i = null;
        private static final /* synthetic */ a[] j = null;

        private a(String str, int i) {
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) j.clone();
        }

        static {
            a = new a("MIX_ERROR", 0);
            b = new a("ONLINE_ENGINE_ERROR", 1);
            c = new a("OFFLINE_ENGINE_ERROR", 2);
            d = new a("TEXT", 3);
            e = new a("TTS", 4);
            f = new a("APP", 5);
            g = new a("PLAYER", 6);
            h = new a("MODEL", 7);
            i = new a("UNKNOW", 8);
            j = new a[]{a, b, c, d, e, f, g, h, i};
        }
    }

    private n(a aVar, int i, String str) {
        this.am = aVar;
        this.an = i;
        this.ao = str;
    }

    public a a() {
        return this.am;
    }

    public int b() {
        return this.an;
    }

    public String c() {
        return this.ao;
    }
}
