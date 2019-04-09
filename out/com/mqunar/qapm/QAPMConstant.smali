.class public Lcom/mqunar/qapm/QAPMConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final C_PARAM:Ljava/lang/String; = ""

.field public static final HOST_URL:Ljava/lang/String; = "http://mloganalysts.corp.qunar.com/api/log/unifiedLog"

.field public static final HOST_URL_BETA:Ljava/lang/String; = "http://l-acra1.wap.beta.cn0.qunar.com:9099/api/log/unifiedLog"

.field public static final LOG_TYPE:Ljava/lang/String; = "apm"

.field public static final PITCHER_URL:Ljava/lang/String; = "http://front.pitcher.beta.qunar.com/pitcher-proxy"

.field public static final PLATFORM:Ljava/lang/String; = "adr"

.field public static final REQUEST_ID:Ljava/lang/String; = ""

.field public static final THREAD_STORAGE:Ljava/lang/String; = "QAPM-Thread-storage"

.field public static final THREAD_UPLOAD:Ljava/lang/String; = "QAPM-Thread-upload"

.field public static final TRACE_ID:Ljava/lang/String; = "L-Uuid"

.field public static cid:Ljava/lang/String;

.field public static pid:Ljava/lang/String;

.field public static t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-string v0, "http://l-wap6.wap.beta.cn6.qunar.com:9088/api/log/androidPerformanceLog"

    sput-object v0, Lcom/mqunar/qapm/QAPMConstant;->t:Ljava/lang/String;

    .line 14
    const-string v0, ""

    sput-object v0, Lcom/mqunar/qapm/QAPMConstant;->pid:Ljava/lang/String;

    .line 16
    const-string v0, ""

    sput-object v0, Lcom/mqunar/qapm/QAPMConstant;->cid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
