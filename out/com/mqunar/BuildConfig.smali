.class public final Lcom/mqunar/BuildConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.Qunar"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final EMITNUR:Ljava/lang/String; = "qdr"

.field public static final EPYT_DLIUB:Ljava/lang/String; = "release"

.field public static final EPYT_YOLPED:Ljava/lang/String; = "prepare"

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final MILESTONE:Ljava/lang/String; = "20181218113750"

.field public static final SIGNATURE_DEBUG:Ljava/lang/Boolean;

.field public static final SPIDER_DEPENDENCIES:[Ljava/lang/String;

.field public static final VERSION_CODE:I = 0xb1

.field public static final VERSION_NAME:Ljava/lang/String; = "8.9.0"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 14
    const/16 v0, 0x6a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.qunar.spider.atomenv"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "1.2.6"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.qunar.spider.qmapapi"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "5.2.0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.qunar.spider.nethttp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "1.1.7"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.qunar.spider.hallua"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "1.0.4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.qunar.spider.goblin"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "3.1.14"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.qunar.spider.basectx"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "1.3.0"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.qunar.spider.storage"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "1.1.0"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.qunar.spider.tools"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "1.3.0"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.qunar.spider.tools-logger"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "2.0.1"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.qunar.spider.adrfastjson"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "1.1.45"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.qunar.spider.json"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "1.0.0"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.qunar.spider.commonio"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "2.4.0"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.squareup.wire.wire-runtime"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "1.3.1"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.qunar.spider.diffpatch"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "1.0.4"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.qunar.spider.yvideo"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "1.3.0"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.qunar.spider.qcookie"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "1.0.0"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.qunar.spider.hyres"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "1.17.2"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.qunar.yacca.clientsdk"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "1.1.0"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.qunar.spider.libtask"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "1.1.0"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.parse.bolts.bolts-android"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "1.1.4"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.nineoldandroids.library"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "2.4.0"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "com.qunar.3dparty.baidumapapi"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "5.1.0"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "com.qunar.3dparty.iflytek-dictation"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "1.1.0"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "com.qunar.3dparty.baidu-speech-synthesis"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "1.1.0"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "com.squareup.okhttp3.okhttp"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "3.6.0"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "com.squareup.okhttp3.okhttp-urlconnection"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "3.6.0"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "com.squareup.okio.okio"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "1.13.0"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "org.apache.httpcomponents.httpmime"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "4.2.5"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "com.facebook.fresco.imagepipeline-okhttp3"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "1.3.0"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "com.android.support.support-v4"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "23.0.1"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "com.android.optional.org.apache.http.legacy"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "1.0.0"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "com.qunar.spider.remote"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "1.0.2"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "com.qunar.spider.qbase64"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "1.0.0"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "com.android.support.gridlayout-v7"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "21.0.3"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "com.qunar.spider.acra"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "2.1.3"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "com.qunar.spider.dbutils"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "1.1.7"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "com.qunar.spider.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "1.3.0"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "com.qunar.gradle.agent.qnecro"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "0.3.0"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "com.qunar.gradle.agent.qapm"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "1.0.3"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "com.qunar.ctrip.oauth"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "1.1.1"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "com.qunar.spider.idscan"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "3.0.0"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "com.qunar.spider.lgt"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "1.0.0"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "com.qunar.3dparty.meglive"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "1.0.1"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "com.qunar.spider.qwifi"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "1.0.0"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "com.qunar.spider.cock"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "1.0.4"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "com.qunar.spider.qutui"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "1.1.0"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "com.qunar.spider.imp"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "1.0.0"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "com.qunar.spider.splash"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "1.0.537"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "com.qunar.3dparty.techain"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "3.1.61"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "com.qunar.3dparth.dalvikpatch"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "1.0.0.4"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "com.qunar.3dparth.android-art-interpret"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "3.0.0"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "com.qunar.3dparth.dalvik_hack"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "3.0.0.5"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "com.qunar.qchat.libjingle"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "0.0.2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mqunar/BuildConfig;->SPIDER_DEPENDENCIES:[Ljava/lang/String;

    .line 20
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mqunar/BuildConfig;->SIGNATURE_DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
