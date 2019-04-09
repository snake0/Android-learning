.class public Lcom/mqunar/necro/agent/util/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HOST_URL:Ljava/lang/String; = "http://mloganalysts.corp.qunar.com/api/log/unifiedLog"

.field public static final HOST_URL_BETA:Ljava/lang/String; = "http://l-acra1.wap.beta.cn0.qunar.com:9099/api/log/unifiedLog"

.field public static cid:Ljava/lang/String;

.field public static pid:Ljava/lang/String;

.field public static pitcher:Ljava/lang/String;

.field public static t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-string v0, ""

    sput-object v0, Lcom/mqunar/necro/agent/util/Config;->pid:Ljava/lang/String;

    .line 11
    const-string v0, ""

    sput-object v0, Lcom/mqunar/necro/agent/util/Config;->cid:Ljava/lang/String;

    .line 12
    const-string v0, "http://front.pitcher.beta.qunar.com/pitcher-proxy"

    sput-object v0, Lcom/mqunar/necro/agent/util/Config;->pitcher:Ljava/lang/String;

    .line 14
    const-string v0, "http://l-wap6.wap.beta.cn6.qunar.com:9088/api/log/androidPerformanceLog"

    sput-object v0, Lcom/mqunar/necro/agent/util/Config;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
