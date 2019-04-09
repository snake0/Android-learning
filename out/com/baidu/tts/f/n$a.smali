.class public final enum Lcom/baidu/tts/f/n$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/tts/f/n$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/f/n$a;

.field public static final enum b:Lcom/baidu/tts/f/n$a;

.field public static final enum c:Lcom/baidu/tts/f/n$a;

.field public static final enum d:Lcom/baidu/tts/f/n$a;

.field public static final enum e:Lcom/baidu/tts/f/n$a;

.field public static final enum f:Lcom/baidu/tts/f/n$a;

.field public static final enum g:Lcom/baidu/tts/f/n$a;

.field public static final enum h:Lcom/baidu/tts/f/n$a;

.field public static final enum i:Lcom/baidu/tts/f/n$a;

.field private static final synthetic j:[Lcom/baidu/tts/f/n$a;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    new-instance v0, Lcom/baidu/tts/f/n$a;

    const-string v1, "MIX_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/baidu/tts/f/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/n$a;->a:Lcom/baidu/tts/f/n$a;

    .line 119
    new-instance v0, Lcom/baidu/tts/f/n$a;

    const-string v1, "ONLINE_ENGINE_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/baidu/tts/f/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/n$a;->b:Lcom/baidu/tts/f/n$a;

    .line 120
    new-instance v0, Lcom/baidu/tts/f/n$a;

    const-string v1, "OFFLINE_ENGINE_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/baidu/tts/f/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/n$a;->c:Lcom/baidu/tts/f/n$a;

    .line 121
    new-instance v0, Lcom/baidu/tts/f/n$a;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v6}, Lcom/baidu/tts/f/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/n$a;->d:Lcom/baidu/tts/f/n$a;

    .line 122
    new-instance v0, Lcom/baidu/tts/f/n$a;

    const-string v1, "TTS"

    invoke-direct {v0, v1, v7}, Lcom/baidu/tts/f/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/n$a;->e:Lcom/baidu/tts/f/n$a;

    .line 123
    new-instance v0, Lcom/baidu/tts/f/n$a;

    const-string v1, "APP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/baidu/tts/f/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/n$a;->f:Lcom/baidu/tts/f/n$a;

    .line 124
    new-instance v0, Lcom/baidu/tts/f/n$a;

    const-string v1, "PLAYER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/baidu/tts/f/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/n$a;->g:Lcom/baidu/tts/f/n$a;

    .line 125
    new-instance v0, Lcom/baidu/tts/f/n$a;

    const-string v1, "MODEL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/baidu/tts/f/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/n$a;->h:Lcom/baidu/tts/f/n$a;

    .line 126
    new-instance v0, Lcom/baidu/tts/f/n$a;

    const-string v1, "UNKNOW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/baidu/tts/f/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/f/n$a;->i:Lcom/baidu/tts/f/n$a;

    .line 117
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/baidu/tts/f/n$a;

    sget-object v1, Lcom/baidu/tts/f/n$a;->a:Lcom/baidu/tts/f/n$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/tts/f/n$a;->b:Lcom/baidu/tts/f/n$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/tts/f/n$a;->c:Lcom/baidu/tts/f/n$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/tts/f/n$a;->d:Lcom/baidu/tts/f/n$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/tts/f/n$a;->e:Lcom/baidu/tts/f/n$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/tts/f/n$a;->f:Lcom/baidu/tts/f/n$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/tts/f/n$a;->g:Lcom/baidu/tts/f/n$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/tts/f/n$a;->h:Lcom/baidu/tts/f/n$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/baidu/tts/f/n$a;->i:Lcom/baidu/tts/f/n$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/tts/f/n$a;->j:[Lcom/baidu/tts/f/n$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/n$a;
    .registers 2

    .prologue
    .line 117
    const-class v0, Lcom/baidu/tts/f/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/f/n$a;

    return-object v0
.end method

.method public static values()[Lcom/baidu/tts/f/n$a;
    .registers 1

    .prologue
    .line 117
    sget-object v0, Lcom/baidu/tts/f/n$a;->j:[Lcom/baidu/tts/f/n$a;

    invoke-virtual {v0}, [Lcom/baidu/tts/f/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/f/n$a;

    return-object v0
.end method
