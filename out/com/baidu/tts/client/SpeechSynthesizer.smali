.class public Lcom/baidu/tts/client/SpeechSynthesizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUDIO_BITRATE_AMR_12K65:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_14K25:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_15K85:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_18K25:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_19K85:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_23K05:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_23K85:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_6K6:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_8K85:Ljava/lang/String;

.field public static final AUDIO_BITRATE_BV_16K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_16K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_18K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_20K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_24K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_32K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_8K:Ljava/lang/String;

.field public static final AUDIO_ENCODE_AMR:Ljava/lang/String;

.field public static final AUDIO_ENCODE_BV:Ljava/lang/String;

.field public static final AUDIO_ENCODE_OPUS:Ljava/lang/String;

.field public static final ERROR_APP_ID_IS_INVALID:I

.field public static final ERROR_LIST_IS_TOO_LONG:I

.field public static final ERROR_QUEUE_IS_FULL:I

.field public static final ERROR_TEXT_ENCODE_IS_WRONG:I

.field public static final ERROR_TEXT_IS_EMPTY:I

.field public static final ERROR_TEXT_IS_TOO_LONG:I

.field public static final LANGUAGE_EN:Ljava/lang/String;

.field public static final LANGUAGE_ZH:Ljava/lang/String;

.field public static final MAX_LIST_SIZE:I = 0x64

.field public static final MAX_QUEUE_SIZE:I = 0x3a98

.field public static final MIX_MODE_DEFAULT:Ljava/lang/String;

.field public static final MIX_MODE_HIGH_SPEED_NETWORK:Ljava/lang/String;

.field public static final MIX_MODE_HIGH_SPEED_SYNTHESIZE:Ljava/lang/String;

.field public static final MIX_MODE_HIGH_SPEED_SYNTHESIZE_WIFI:Ljava/lang/String;

.field public static final PARAM_AUDIO_ENCODE:Ljava/lang/String;

.field public static final PARAM_AUDIO_RATE:Ljava/lang/String;

.field public static final PARAM_CUSTOM_SYNTH:Ljava/lang/String;

.field public static final PARAM_LANGUAGE:Ljava/lang/String;

.field public static final PARAM_MIX_MODE:Ljava/lang/String;

.field public static final PARAM_OPEN_XML:Ljava/lang/String;

.field public static final PARAM_PITCH:Ljava/lang/String;

.field public static final PARAM_PRODUCT_ID:Ljava/lang/String;

.field public static final PARAM_SPEAKER:Ljava/lang/String;

.field public static final PARAM_SPEC:Ljava/lang/String;

.field public static final PARAM_SPEED:Ljava/lang/String;

.field public static final PARAM_TTS_LICENCE_FILE:Ljava/lang/String;

.field public static final PARAM_TTS_SPEECH_MODEL_FILE:Ljava/lang/String;

.field public static final PARAM_TTS_TEXT_MODEL_FILE:Ljava/lang/String;

.field public static final PARAM_VOCODER_OPTIM_LEVEL:Ljava/lang/String;

.field public static final PARAM_VOLUME:Ljava/lang/String;

.field public static final TEXT_ENCODE_BIG5:Ljava/lang/String;

.field public static final TEXT_ENCODE_GBK:Ljava/lang/String;

.field public static final TEXT_ENCODE_UTF8:Ljava/lang/String;

.field private static volatile a:Lcom/baidu/tts/client/SpeechSynthesizer;


# instance fields
.field private b:Lcom/baidu/tts/a/b/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/baidu/tts/f/n;->U:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_QUEUE_IS_FULL:I

    .line 31
    sget-object v0, Lcom/baidu/tts/f/n;->V:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_LIST_IS_TOO_LONG:I

    .line 33
    sget-object v0, Lcom/baidu/tts/f/n;->P:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_TEXT_IS_EMPTY:I

    .line 35
    sget-object v0, Lcom/baidu/tts/f/n;->Q:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_TEXT_IS_TOO_LONG:I

    .line 37
    sget-object v0, Lcom/baidu/tts/f/n;->R:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_TEXT_ENCODE_IS_WRONG:I

    .line 39
    sget-object v0, Lcom/baidu/tts/f/n;->X:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_APP_ID_IS_INVALID:I

    .line 47
    sget-object v0, Lcom/baidu/tts/f/g;->D:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_SPEED:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/baidu/tts/f/g;->F:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_PITCH:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/baidu/tts/f/g;->E:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_VOLUME:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/baidu/tts/f/g;->ak:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_SPEC:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/baidu/tts/f/g;->P:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_TTS_TEXT_MODEL_FILE:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/baidu/tts/f/g;->Q:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_TTS_SPEECH_MODEL_FILE:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/baidu/tts/f/g;->R:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_TTS_LICENCE_FILE:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/baidu/tts/f/g;->U:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_VOCODER_OPTIM_LEVEL:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/baidu/tts/f/g;->S:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_CUSTOM_SYNTH:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/baidu/tts/f/g;->T:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_OPEN_XML:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/baidu/tts/f/g;->O:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_PRODUCT_ID:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/baidu/tts/f/g;->G:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_LANGUAGE:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/baidu/tts/f/g;->J:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_AUDIO_ENCODE:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/baidu/tts/f/g;->K:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_AUDIO_RATE:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/baidu/tts/f/g;->L:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_SPEAKER:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/baidu/tts/f/g;->x:Lcom/baidu/tts/f/g;

    invoke-static {v0}, Lcom/baidu/tts/f/g;->a(Lcom/baidu/tts/f/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_MIX_MODE:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/baidu/tts/f/j;->a:Lcom/baidu/tts/f/j;

    invoke-virtual {v0}, Lcom/baidu/tts/f/j;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->MIX_MODE_DEFAULT:Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/baidu/tts/f/j;->b:Lcom/baidu/tts/f/j;

    invoke-virtual {v0}, Lcom/baidu/tts/f/j;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->MIX_MODE_HIGH_SPEED_NETWORK:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/baidu/tts/f/j;->c:Lcom/baidu/tts/f/j;

    invoke-virtual {v0}, Lcom/baidu/tts/f/j;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->MIX_MODE_HIGH_SPEED_SYNTHESIZE:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/baidu/tts/f/j;->d:Lcom/baidu/tts/f/j;

    invoke-virtual {v0}, Lcom/baidu/tts/f/j;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->MIX_MODE_HIGH_SPEED_SYNTHESIZE_WIFI:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/baidu/tts/f/h;->a:Lcom/baidu/tts/f/h;

    invoke-virtual {v0}, Lcom/baidu/tts/f/h;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->LANGUAGE_ZH:Ljava/lang/String;

    .line 107
    sget-object v0, Lcom/baidu/tts/f/h;->b:Lcom/baidu/tts/f/h;

    invoke-virtual {v0}, Lcom/baidu/tts/f/h;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->LANGUAGE_EN:Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/baidu/tts/f/d;->a:Lcom/baidu/tts/f/d;

    invoke-virtual {v0}, Lcom/baidu/tts/f/d;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->TEXT_ENCODE_GBK:Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/baidu/tts/f/d;->b:Lcom/baidu/tts/f/d;

    invoke-virtual {v0}, Lcom/baidu/tts/f/d;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->TEXT_ENCODE_BIG5:Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/baidu/tts/f/d;->c:Lcom/baidu/tts/f/d;

    invoke-virtual {v0}, Lcom/baidu/tts/f/d;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->TEXT_ENCODE_UTF8:Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/baidu/tts/f/b;->a:Lcom/baidu/tts/f/b;

    invoke-virtual {v0}, Lcom/baidu/tts/f/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_ENCODE_BV:Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/baidu/tts/f/b;->b:Lcom/baidu/tts/f/b;

    invoke-virtual {v0}, Lcom/baidu/tts/f/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_ENCODE_AMR:Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/baidu/tts/f/b;->c:Lcom/baidu/tts/f/b;

    invoke-virtual {v0}, Lcom/baidu/tts/f/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_ENCODE_OPUS:Ljava/lang/String;

    .line 124
    sget-object v0, Lcom/baidu/tts/f/c;->a:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_BV_16K:Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/baidu/tts/f/c;->b:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_6K6:Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/baidu/tts/f/c;->c:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_8K85:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/baidu/tts/f/c;->d:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_12K65:Ljava/lang/String;

    .line 132
    sget-object v0, Lcom/baidu/tts/f/c;->e:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_14K25:Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/baidu/tts/f/c;->f:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_15K85:Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/baidu/tts/f/c;->g:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_18K25:Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/baidu/tts/f/c;->h:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_19K85:Ljava/lang/String;

    .line 140
    sget-object v0, Lcom/baidu/tts/f/c;->i:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_23K05:Ljava/lang/String;

    .line 142
    sget-object v0, Lcom/baidu/tts/f/c;->j:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_23K85:Ljava/lang/String;

    .line 144
    sget-object v0, Lcom/baidu/tts/f/c;->k:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_8K:Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/baidu/tts/f/c;->l:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_16K:Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/baidu/tts/f/c;->m:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_18K:Ljava/lang/String;

    .line 150
    sget-object v0, Lcom/baidu/tts/f/c;->n:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_20K:Ljava/lang/String;

    .line 152
    sget-object v0, Lcom/baidu/tts/f/c;->o:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_24K:Ljava/lang/String;

    .line 154
    sget-object v0, Lcom/baidu/tts/f/c;->p:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_32K:Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Lcom/baidu/tts/a/b/a;

    invoke-direct {v0}, Lcom/baidu/tts/a/b/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    .line 161
    return-void
.end method

.method public static getInstance()Lcom/baidu/tts/client/SpeechSynthesizer;
    .registers 2

    .prologue
    .line 169
    sget-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    if-nez v0, :cond_13

    .line 170
    const-class v1, Lcom/baidu/tts/client/SpeechSynthesizer;

    monitor-enter v1

    .line 171
    :try_start_7
    sget-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    if-nez v0, :cond_12

    .line 172
    new-instance v0, Lcom/baidu/tts/client/SpeechSynthesizer;

    invoke-direct {v0}, Lcom/baidu/tts/client/SpeechSynthesizer;-><init>()V

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    .line 174
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 176
    :cond_13
    sget-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    return-object v0

    .line 174
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public auth(Lcom/baidu/tts/client/TtsMode;)Lcom/baidu/tts/auth/AuthInfo;
    .registers 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/client/TtsMode;)Lcom/baidu/tts/auth/AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public batchSpeak(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/SpeechSynthesizeBag;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 439
    invoke-static {p1}, Lcom/baidu/tts/tools/DataTool;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 440
    sget-object v0, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    .line 442
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Ljava/util/List;)I

    move-result v0

    goto :goto_c
.end method

.method public freeCustomResource()I
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/a/b/a;->f()I

    move-result v0

    return v0
.end method

.method public declared-synchronized initTts(Lcom/baidu/tts/client/TtsMode;)I
    .registers 3

    .prologue
    .line 204
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/client/TtsMode;)Lcom/baidu/tts/aop/tts/TtsError;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-result-object v0

    .line 205
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    :try_start_c
    invoke-virtual {v0}, Lcom/baidu/tts/aop/tts/TtsError;->getDetailCode()I
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_11

    move-result v0

    goto :goto_a

    .line 204
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public libVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/a/b/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadCustomResource(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public loadEnglishModel(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 332
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/a/b/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public loadModel(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized pause()I
    .registers 2

    .prologue
    .line 262
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/a/b/a;->b()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()I
    .registers 2

    .prologue
    .line 289
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/a/b/a;->e()I

    .line 290
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    .line 291
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 289
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()I
    .registers 2

    .prologue
    .line 271
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/a/b/a;->c()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setApiKey(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 225
    sget-object v0, Lcom/baidu/tts/f/g;->ah:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v0, Lcom/baidu/tts/f/g;->ai:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public setAppId(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 237
    invoke-static {p1}, Lcom/baidu/tts/tools/StringTool;->isAllNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 238
    sget-object v0, Lcom/baidu/tts/f/g;->A:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, 0x0

    .line 241
    :goto_10
    return v0

    :cond_11
    sget v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_APP_ID_IS_INVALID:I

    goto :goto_10
.end method

.method public setAudioStreamType(I)I
    .registers 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/a;->a(I)I

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Landroid/content/Context;)V

    .line 195
    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpeechSynthesizerListener(Lcom/baidu/tts/client/SpeechSynthesizerListener;)V
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/client/SpeechSynthesizerListener;)V

    .line 186
    return-void
.end method

.method public setStereoVolume(FF)I
    .registers 4

    .prologue
    .line 463
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/a/b/a;->a(FF)I

    move-result v0

    return v0
.end method

.method public speak(Lcom/baidu/tts/client/SpeechSynthesizeBag;)I
    .registers 4

    .prologue
    .line 353
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getText()Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-virtual {p1}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getUtteranceId()Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/client/SpeechSynthesizer;->speak(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 357
    :goto_c
    return v0

    .line 356
    :catch_d
    move-exception v0

    .line 357
    sget-object v0, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    goto :goto_c
.end method

.method public speak(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->speak(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->speak(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 5

    .prologue
    .line 381
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/tts/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized stop()I
    .registers 2

    .prologue
    .line 280
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0}, Lcom/baidu/tts/a/b/a;->d()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthesize(Lcom/baidu/tts/client/SpeechSynthesizeBag;)I
    .registers 4

    .prologue
    .line 402
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getText()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual {p1}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getUtteranceId()Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-virtual {p0, v0, v1}, Lcom/baidu/tts/client/SpeechSynthesizer;->synthesize(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 406
    :goto_c
    return v0

    .line 405
    :catch_d
    move-exception v0

    .line 406
    sget-object v0, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    goto :goto_c
.end method

.method public synthesize(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->synthesize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthesize(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->synthesize(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public synthesize(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 5

    .prologue
    .line 430
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Lcom/baidu/tts/a/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/tts/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method
