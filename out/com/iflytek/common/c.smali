.class final Lcom/iflytek/common/c;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/iflytek/cloud/thirdparty/do;


# direct methods
.method protected static a()Lcom/iflytek/cloud/thirdparty/do;
    .registers 2

    sget-object v0, Lcom/iflytek/common/c;->a:Lcom/iflytek/cloud/thirdparty/do;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/iflytek/common/c;->a:Lcom/iflytek/cloud/thirdparty/do;

    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    const-string v0, "com.iflytek.common.push.impl.PushImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/do;

    sput-object v0, Lcom/iflytek/common/c;->a:Lcom/iflytek/cloud/thirdparty/do;

    if-eqz v0, :cond_22

    sget-object v0, Lcom/iflytek/common/c;->a:Lcom/iflytek/cloud/thirdparty/do;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_1a

    goto :goto_6

    :catch_1a
    move-exception v0

    const-string v0, "PushFactory"

    const-string v1, "getPushInstance not found push instance."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 v0, 0x0

    goto :goto_6
.end method
