.class public final Lcom/baidu/techain/core/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    sput-object v0, Lcom/baidu/techain/core/i;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()[B
    .registers 6

    .prologue
    const/16 v5, 0x10

    .line 9
    sget-object v0, Lcom/baidu/techain/core/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 10
    new-array v2, v5, [C

    .line 11
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v5, :cond_1f

    .line 12
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 13
    aget-char v3, v1, v3

    aput-char v3, v2, v0

    .line 11
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 15
    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
