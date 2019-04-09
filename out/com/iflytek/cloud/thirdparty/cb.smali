.class public Lcom/iflytek/cloud/thirdparty/cb;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/iflytek/cloud/thirdparty/cb$a;

.field private static c:Z

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "MscSpeechLog"

    sput-object v0, Lcom/iflytek/cloud/thirdparty/cb;->a:Ljava/lang/String;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cb$a;->c:Lcom/iflytek/cloud/thirdparty/cb$a;

    sput-object v0, Lcom/iflytek/cloud/thirdparty/cb;->b:Lcom/iflytek/cloud/thirdparty/cb$a;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iflytek/cloud/thirdparty/cb;->c:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/cloud/thirdparty/cb;->d:Z

    return-void
.end method

.method public static a(Lcom/iflytek/cloud/thirdparty/cb$a;)V
    .registers 1

    sput-object p0, Lcom/iflytek/cloud/thirdparty/cb;->b:Lcom/iflytek/cloud/thirdparty/cb$a;

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->c()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cb;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 2

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    return-void
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/iflytek/cloud/thirdparty/cb;->c:Z

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->c()V

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/iflytek/cloud/thirdparty/cb;->c:Z

    return v0
.end method

.method public static b()Lcom/iflytek/cloud/thirdparty/cb$a;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cb;->b:Lcom/iflytek/cloud/thirdparty/cb$a;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cb;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static b(Ljava/lang/Throwable;)V
    .registers 2

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    return-void
.end method

.method public static c()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->e()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_13
    invoke-static {v0}, Lcom/iflytek/msc/MSC;->DebugLog(Z)I

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cb;->b:Lcom/iflytek/cloud/thirdparty/cb$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cb$a;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/iflytek/msc/MSC;->SetLogLevel(I)I
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_22

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    const/4 v0, 0x0

    goto :goto_13

    :catch_22
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateJniLogStatus exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public static c(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cb;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cb;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private static d()Z
    .registers 2

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cb$a;->e:Lcom/iflytek/cloud/thirdparty/cb$a;

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->b()Lcom/iflytek/cloud/thirdparty/cb$a;

    move-result-object v1

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/cb;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/iflytek/cloud/thirdparty/cb;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private static e()Z
    .registers 2

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->b()Lcom/iflytek/cloud/thirdparty/cb$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cb$a;->ordinal()I

    move-result v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cb$a;->c:Lcom/iflytek/cloud/thirdparty/cb$a;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/cb$a;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static f()Z
    .registers 2

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->b()Lcom/iflytek/cloud/thirdparty/cb$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cb$a;->ordinal()I

    move-result v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/cb$a;->b:Lcom/iflytek/cloud/thirdparty/cb$a;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/cb$a;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static g()Z
    .registers 1

    sget-boolean v0, Lcom/iflytek/cloud/thirdparty/cb;->d:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/cb;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
