.class Lcom/qunar/qwifi/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qunar/qwifi/b;->a:Z

    return-void
.end method

.method static a(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 22
    sget-boolean v0, Lcom/qunar/qwifi/b;->a:Z

    if-eqz v0, :cond_b

    .line 23
    const-string v0, "QWifi"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 25
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
