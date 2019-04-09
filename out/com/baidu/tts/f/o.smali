.class public abstract enum Lcom/baidu/tts/f/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/tts/f/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/f/o;

.field public static final enum b:Lcom/baidu/tts/f/o;

.field public static final enum c:Lcom/baidu/tts/f/o;

.field private static final synthetic e:[Lcom/baidu/tts/f/o;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/baidu/tts/f/o$1;

    const-string v1, "TTS_SERVER"

    const-string v2, "https://tts.baidu.com/text2audio"

    invoke-direct {v0, v1, v3, v2}, Lcom/baidu/tts/f/o$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/o;->a:Lcom/baidu/tts/f/o;

    .line 24
    new-instance v0, Lcom/baidu/tts/f/o$2;

    const-string v1, "MODEL_SERVER"

    const-string v2, "https://tts.baidu.com/bos/story.php?"

    invoke-direct {v0, v1, v4, v2}, Lcom/baidu/tts/f/o$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/o;->b:Lcom/baidu/tts/f/o;

    .line 33
    new-instance v0, Lcom/baidu/tts/f/o$3;

    const-string v1, "STATISTICS_SERVER"

    const-string v2, "https://upl.baidu.com/ttsdlstats.php"

    invoke-direct {v0, v1, v5, v2}, Lcom/baidu/tts/f/o$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/o;->c:Lcom/baidu/tts/f/o;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/tts/f/o;

    sget-object v1, Lcom/baidu/tts/f/o;->a:Lcom/baidu/tts/f/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/tts/f/o;->b:Lcom/baidu/tts/f/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/tts/f/o;->c:Lcom/baidu/tts/f/o;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/tts/f/o;->e:[Lcom/baidu/tts/f/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/baidu/tts/f/o;->d:Ljava/lang/String;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/baidu/tts/f/o$1;)V
    .registers 5

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/tts/f/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 65
    :goto_8
    return-object v0

    .line 63
    :catch_9
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/o;
    .registers 2

    .prologue
    .line 11
    const-class v0, Lcom/baidu/tts/f/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/f/o;

    return-object v0
.end method

.method public static values()[Lcom/baidu/tts/f/o;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/baidu/tts/f/o;->e:[Lcom/baidu/tts/f/o;

    invoke-virtual {v0}, [Lcom/baidu/tts/f/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/f/o;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/tts/f/o;->d:Ljava/lang/String;

    return-object v0
.end method

.method public abstract b()Ljava/lang/String;
.end method
