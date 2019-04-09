.class public Lcom/mqunar/necro/agent/util/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTIVITY_BACKGROUND_METRIC_PREFIX:Ljava/lang/String; = "Mobile/Activity/Background/Name/"

.field public static final ACTIVITY_DISPLAY_NAME_PREFIX:Ljava/lang/String; = "Display "

.field public static final ACTIVITY_METRIC_PREFIX:Ljava/lang/String; = "Mobile/Activity/Name/"

.field private static final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/mqunar/necro/agent/util/Util;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static formatActivityBackgroundMetricName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile/Activity/Background/Name/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatActivityDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatActivityMetricName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile/Activity/Name/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRandom()Ljava/util/Random;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/mqunar/necro/agent/util/Util;->random:Ljava/util/Random;

    return-object v0
.end method

.method public static null2String(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 84
    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method public static sanitizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 41
    if-nez p0, :cond_3

    .line 42
    const/4 p0, 0x0

    .line 63
    :cond_3
    return-object p0
.end method

.method public static slurp(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 26
    const/16 v0, 0x2000

    new-array v0, v0, [C

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 31
    :goto_13
    invoke-virtual {v2, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    .line 32
    if-gez v3, :cond_1e

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_1e
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_13
.end method
