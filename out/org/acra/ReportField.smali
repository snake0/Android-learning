.class public enum Lorg/acra/ReportField;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/acra/ReportField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/acra/ReportField;

.field public static final enum ACRA_VERSION:Lorg/acra/ReportField;

.field public static final enum ANDROID_VERSION:Lorg/acra/ReportField;

.field public static final enum APPLICATION_LOG:Lorg/acra/ReportField;

.field public static final enum APP_VERSION_CODE:Lorg/acra/ReportField;

.field public static final enum APP_VERSION_NAME:Lorg/acra/ReportField;

.field public static final enum AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

.field public static final enum BRAND:Lorg/acra/ReportField;

.field public static final enum BUILD:Lorg/acra/ReportField;

.field public static final enum BUILD_CONFIG:Lorg/acra/ReportField;

.field public static final enum CRASH_CONFIGURATION:Lorg/acra/ReportField;

.field public static final enum CUSTOM_DATA:Lorg/acra/ReportField;

.field public static final enum DEVICE_FEATURES:Lorg/acra/ReportField;

.field public static final enum DEVICE_ID:Lorg/acra/ReportField;

.field public static final enum DISPLAY:Lorg/acra/ReportField;

.field public static final enum DROPBOX:Lorg/acra/ReportField;

.field public static final enum DUMPSYS_MEMINFO:Lorg/acra/ReportField;

.field public static final enum ENV:Lorg/acra/ReportField;

.field public static final enum ENVIRONMENT:Lorg/acra/ReportField;

.field public static final enum EVENTSLOG:Lorg/acra/ReportField;

.field public static final enum FILE_PATH:Lorg/acra/ReportField;

.field public static final enum INITIAL_CONFIGURATION:Lorg/acra/ReportField;

.field public static final enum INSTALLATION_ID:Lorg/acra/ReportField;

.field public static final enum IS_ROOT:Lorg/acra/ReportField;

.field public static final enum IS_SILENT:Lorg/acra/ReportField;

.field public static final enum JAVA_STACK_TRACE:Lorg/acra/ReportField;

.field public static final enum LOGCAT:Lorg/acra/ReportField;

.field public static final enum MEDIA_CODEC_LIST:Lorg/acra/ReportField;

.field public static final enum NATIVE_CRASH:Lorg/acra/ReportField;

.field public static final enum NETWORK_STATE:Lorg/acra/ReportField;

.field public static final enum PACKAGE_NAME:Lorg/acra/ReportField;

.field public static final enum PHONE_MODEL:Lorg/acra/ReportField;

.field public static final enum PROCESS_ID:Lorg/acra/ReportField;

.field public static final enum PROCESS_NAME:Lorg/acra/ReportField;

.field public static final enum PRODUCT:Lorg/acra/ReportField;

.field public static final enum PROPERTY:Lorg/acra/ReportField;

.field public static final enum RADIOLOG:Lorg/acra/ReportField;

.field public static final enum REPORT_ID:Lorg/acra/ReportField;

.field public static final enum SCREENSHOT:Lorg/acra/ReportField;

.field public static final enum SETTINGS_GLOBAL:Lorg/acra/ReportField;

.field public static final enum SETTINGS_SECURE:Lorg/acra/ReportField;

.field public static final enum SETTINGS_SYSTEM:Lorg/acra/ReportField;

.field public static final enum SHARED_PREFERENCES:Lorg/acra/ReportField;

.field public static final enum STACK_TRACE:Lorg/acra/ReportField;

.field public static final enum STACK_TRACE_HASH:Lorg/acra/ReportField;

.field public static final enum THREAD_DETAILS:Lorg/acra/ReportField;

.field public static final enum TOTAL_MEM_SIZE:Lorg/acra/ReportField;

.field public static final enum TRACES_FILE:Lorg/acra/ReportField;

.field public static final enum USER_APP_START_DATE:Lorg/acra/ReportField;

.field public static final enum USER_COMMENT:Lorg/acra/ReportField;

.field public static final enum USER_CRASH_DATE:Lorg/acra/ReportField;

.field public static final enum USER_EMAIL:Lorg/acra/ReportField;

.field public static final enum USER_IP:Lorg/acra/ReportField;

.field public static final enum VM_VERSION:Lorg/acra/ReportField;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "ACRA_VERSION"

    invoke-direct {v0, v1, v3}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->ACRA_VERSION:Lorg/acra/ReportField;

    .line 36
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "VM_VERSION"

    invoke-direct {v0, v1, v4}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->VM_VERSION:Lorg/acra/ReportField;

    .line 41
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "JAVA_STACK_TRACE"

    invoke-direct {v0, v1, v5}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->JAVA_STACK_TRACE:Lorg/acra/ReportField;

    .line 46
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "NATIVE_CRASH"

    invoke-direct {v0, v1, v6}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->NATIVE_CRASH:Lorg/acra/ReportField;

    .line 52
    new-instance v0, Lorg/acra/ReportField$1;

    const-string v1, "PROPERTY"

    invoke-direct {v0, v1, v7}, Lorg/acra/ReportField$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->PROPERTY:Lorg/acra/ReportField;

    .line 62
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "TRACES_FILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->TRACES_FILE:Lorg/acra/ReportField;

    .line 67
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "REPORT_ID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    .line 74
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "APP_VERSION_CODE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    .line 80
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "APP_VERSION_NAME"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    .line 86
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "PACKAGE_NAME"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    .line 92
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "FILE_PATH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    .line 98
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "PHONE_MODEL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    .line 104
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "ANDROID_VERSION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    .line 110
    new-instance v0, Lorg/acra/ReportField$2;

    const-string v1, "BUILD"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    .line 121
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "BRAND"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    .line 127
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "PRODUCT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    .line 131
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "TOTAL_MEM_SIZE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    .line 135
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "AVAILABLE_MEM_SIZE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    .line 140
    new-instance v0, Lorg/acra/ReportField$3;

    const-string v1, "BUILD_CONFIG"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->BUILD_CONFIG:Lorg/acra/ReportField;

    .line 150
    new-instance v0, Lorg/acra/ReportField$4;

    const-string v1, "CUSTOM_DATA"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    .line 159
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "STACK_TRACE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    .line 165
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "STACK_TRACE_HASH"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->STACK_TRACE_HASH:Lorg/acra/ReportField;

    .line 171
    new-instance v0, Lorg/acra/ReportField$5;

    const-string v1, "INITIAL_CONFIGURATION"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    .line 182
    new-instance v0, Lorg/acra/ReportField$6;

    const-string v1, "CRASH_CONFIGURATION"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    .line 193
    new-instance v0, Lorg/acra/ReportField$7;

    const-string v1, "DISPLAY"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    .line 203
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "USER_COMMENT"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    .line 207
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "USER_APP_START_DATE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->USER_APP_START_DATE:Lorg/acra/ReportField;

    .line 211
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "USER_CRASH_DATE"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    .line 215
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "DUMPSYS_MEMINFO"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    .line 220
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "DROPBOX"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    .line 224
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "LOGCAT"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    .line 228
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "EVENTSLOG"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    .line 232
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "RADIOLOG"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    .line 236
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "IS_SILENT"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    .line 240
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "DEVICE_ID"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    .line 245
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "INSTALLATION_ID"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    .line 250
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "USER_EMAIL"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    .line 254
    new-instance v0, Lorg/acra/ReportField$8;

    const-string v1, "DEVICE_FEATURES"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    .line 263
    new-instance v0, Lorg/acra/ReportField$9;

    const-string v1, "ENVIRONMENT"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    .line 272
    new-instance v0, Lorg/acra/ReportField$10;

    const-string v1, "SETTINGS_SYSTEM"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->SETTINGS_SYSTEM:Lorg/acra/ReportField;

    .line 281
    new-instance v0, Lorg/acra/ReportField$11;

    const-string v1, "SETTINGS_SECURE"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->SETTINGS_SECURE:Lorg/acra/ReportField;

    .line 290
    new-instance v0, Lorg/acra/ReportField$12;

    const-string v1, "SETTINGS_GLOBAL"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->SETTINGS_GLOBAL:Lorg/acra/ReportField;

    .line 299
    new-instance v0, Lorg/acra/ReportField$13;

    const-string v1, "SHARED_PREFERENCES"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField$13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    .line 311
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "APPLICATION_LOG"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->APPLICATION_LOG:Lorg/acra/ReportField;

    .line 317
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "MEDIA_CODEC_LIST"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->MEDIA_CODEC_LIST:Lorg/acra/ReportField;

    .line 321
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "THREAD_DETAILS"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->THREAD_DETAILS:Lorg/acra/ReportField;

    .line 325
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "USER_IP"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->USER_IP:Lorg/acra/ReportField;

    .line 330
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "SCREENSHOT"

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->SCREENSHOT:Lorg/acra/ReportField;

    .line 335
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "ENV"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->ENV:Lorg/acra/ReportField;

    .line 340
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "NETWORK_STATE"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->NETWORK_STATE:Lorg/acra/ReportField;

    .line 345
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "PROCESS_NAME"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->PROCESS_NAME:Lorg/acra/ReportField;

    .line 350
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "PROCESS_ID"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->PROCESS_ID:Lorg/acra/ReportField;

    .line 355
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "IS_ROOT"

    const/16 v2, 0x34

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->IS_ROOT:Lorg/acra/ReportField;

    .line 27
    const/16 v0, 0x35

    new-array v0, v0, [Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->ACRA_VERSION:Lorg/acra/ReportField;

    aput-object v1, v0, v3

    sget-object v1, Lorg/acra/ReportField;->VM_VERSION:Lorg/acra/ReportField;

    aput-object v1, v0, v4

    sget-object v1, Lorg/acra/ReportField;->JAVA_STACK_TRACE:Lorg/acra/ReportField;

    aput-object v1, v0, v5

    sget-object v1, Lorg/acra/ReportField;->NATIVE_CRASH:Lorg/acra/ReportField;

    aput-object v1, v0, v6

    sget-object v1, Lorg/acra/ReportField;->PROPERTY:Lorg/acra/ReportField;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/acra/ReportField;->TRACES_FILE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/acra/ReportField;->BUILD_CONFIG:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/acra/ReportField;->STACK_TRACE_HASH:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/acra/ReportField;->USER_APP_START_DATE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lorg/acra/ReportField;->SETTINGS_SYSTEM:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lorg/acra/ReportField;->SETTINGS_SECURE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lorg/acra/ReportField;->SETTINGS_GLOBAL:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lorg/acra/ReportField;->APPLICATION_LOG:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lorg/acra/ReportField;->MEDIA_CODEC_LIST:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lorg/acra/ReportField;->THREAD_DETAILS:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lorg/acra/ReportField;->USER_IP:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lorg/acra/ReportField;->SCREENSHOT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lorg/acra/ReportField;->ENV:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lorg/acra/ReportField;->NETWORK_STATE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lorg/acra/ReportField;->PROCESS_NAME:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lorg/acra/ReportField;->PROCESS_ID:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lorg/acra/ReportField;->IS_ROOT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    sput-object v0, Lorg/acra/ReportField;->$VALUES:[Lorg/acra/ReportField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/acra/ReportField$1;)V
    .registers 4

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/ReportField;
    .registers 2

    .prologue
    .line 27
    const-class v0, Lorg/acra/ReportField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/acra/ReportField;

    return-object v0
.end method

.method public static values()[Lorg/acra/ReportField;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lorg/acra/ReportField;->$VALUES:[Lorg/acra/ReportField;

    invoke-virtual {v0}, [Lorg/acra/ReportField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/acra/ReportField;

    return-object v0
.end method


# virtual methods
.method public containsKeyValuePairs()Z
    .registers 2

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method
