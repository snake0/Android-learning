.class public final enum Lcom/baidu/tts/f/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/tts/f/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/f/d;

.field public static final enum b:Lcom/baidu/tts/f/d;

.field public static final enum c:Lcom/baidu/tts/f/d;

.field public static final enum d:Lcom/baidu/tts/f/d;

.field public static final enum e:Lcom/baidu/tts/f/d;

.field private static final synthetic h:[Lcom/baidu/tts/f/d;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/baidu/tts/f/d;

    const-string v1, "GB18030"

    const-string v2, "gb18030"

    const-string v3, "0"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/baidu/tts/f/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/d;->a:Lcom/baidu/tts/f/d;

    .line 11
    new-instance v0, Lcom/baidu/tts/f/d;

    const-string v1, "BIG5"

    const-string v2, "big5"

    const-string v3, "1"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/baidu/tts/f/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/d;->b:Lcom/baidu/tts/f/d;

    .line 12
    new-instance v0, Lcom/baidu/tts/f/d;

    const-string v1, "UTF8"

    const-string v2, "utf-8"

    const-string v3, "2"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/baidu/tts/f/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/d;->c:Lcom/baidu/tts/f/d;

    .line 13
    new-instance v0, Lcom/baidu/tts/f/d;

    const-string v1, "GBK"

    const-string v2, "gbk"

    const-string v3, "4"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/baidu/tts/f/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/d;->d:Lcom/baidu/tts/f/d;

    .line 14
    new-instance v0, Lcom/baidu/tts/f/d;

    const-string v1, "UNICODE"

    const-string v2, "unicode"

    const-string v3, "5"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/baidu/tts/f/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/d;->e:Lcom/baidu/tts/f/d;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/tts/f/d;

    sget-object v1, Lcom/baidu/tts/f/d;->a:Lcom/baidu/tts/f/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/tts/f/d;->b:Lcom/baidu/tts/f/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/tts/f/d;->c:Lcom/baidu/tts/f/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/tts/f/d;->d:Lcom/baidu/tts/f/d;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/tts/f/d;->e:Lcom/baidu/tts/f/d;

    aput-object v1, v0, v8

    sput-object v0, Lcom/baidu/tts/f/d;->h:[Lcom/baidu/tts/f/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/baidu/tts/f/d;->f:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/baidu/tts/f/d;->g:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/tts/f/d;
    .registers 6

    .prologue
    .line 42
    invoke-static {}, Lcom/baidu/tts/f/d;->values()[Lcom/baidu/tts/f/d;

    move-result-object v2

    .line 43
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_1a

    aget-object v0, v2, v1

    .line 44
    invoke-virtual {v0}, Lcom/baidu/tts/f/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 48
    :goto_15
    return-object v0

    .line 43
    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 48
    :cond_1a
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/d;
    .registers 2

    .prologue
    .line 9
    const-class v0, Lcom/baidu/tts/f/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/f/d;

    return-object v0
.end method

.method public static values()[Lcom/baidu/tts/f/d;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/baidu/tts/f/d;->h:[Lcom/baidu/tts/f/d;

    invoke-virtual {v0}, [Lcom/baidu/tts/f/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/f/d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/tts/f/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/tts/f/d;->g:Ljava/lang/String;

    return-object v0
.end method
