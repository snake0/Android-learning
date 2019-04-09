.class public final Lcom/mqunar/idscan/utils/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mqunar/idscan/utils/b;


# instance fields
.field private b:Lcom/alibaba/fastjson/JSONArray;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mqunar/idscan/utils/b;->c()Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method

.method public static a()Lcom/mqunar/idscan/utils/b;
    .registers 1

    sget-object v0, Lcom/mqunar/idscan/utils/b;->a:Lcom/mqunar/idscan/utils/b;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mqunar/idscan/utils/b;

    invoke-direct {v0}, Lcom/mqunar/idscan/utils/b;-><init>()V

    sput-object v0, Lcom/mqunar/idscan/utils/b;->a:Lcom/mqunar/idscan/utils/b;

    :cond_b
    sget-object v0, Lcom/mqunar/idscan/utils/b;->a:Lcom/mqunar/idscan/utils/b;

    return-object v0
.end method

.method private static c()Lcom/alibaba/fastjson/JSONArray;
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/mqunar/idscan/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mqunar/idscan/R$raw;->idscan_nation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_1f

    :catch_29
    move-exception v0

    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_2e
    return-object v0

    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_39} :catch_29

    move-result-object v0

    goto :goto_2e
.end method


# virtual methods
.method public final b()Lcom/alibaba/fastjson/JSONArray;
    .registers 2

    iget-object v0, p0, Lcom/mqunar/idscan/utils/b;->b:Lcom/alibaba/fastjson/JSONArray;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/mqunar/idscan/utils/b;->c()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/mqunar/idscan/utils/b;->b:Lcom/alibaba/fastjson/JSONArray;

    goto :goto_8
.end method
