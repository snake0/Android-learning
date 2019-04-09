.class public final enum Lcom/baidu/tts/f/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/tts/f/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/f/h;

.field public static final enum b:Lcom/baidu/tts/f/h;

.field private static final synthetic e:[Lcom/baidu/tts/f/h;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/baidu/tts/f/h;

    const-string v1, "ZH"

    const-string v2, "chinese"

    const-string v3, "ZH"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/baidu/tts/f/h;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/h;->a:Lcom/baidu/tts/f/h;

    .line 11
    new-instance v0, Lcom/baidu/tts/f/h;

    const-string v1, "EN"

    const-string v2, "english"

    const-string v3, "EN"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/baidu/tts/f/h;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/f/h;->b:Lcom/baidu/tts/f/h;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/tts/f/h;

    sget-object v1, Lcom/baidu/tts/f/h;->a:Lcom/baidu/tts/f/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/tts/f/h;->b:Lcom/baidu/tts/f/h;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/tts/f/h;->e:[Lcom/baidu/tts/f/h;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/baidu/tts/f/h;->c:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/baidu/tts/f/h;->d:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/h;
    .registers 2

    .prologue
    .line 9
    const-class v0, Lcom/baidu/tts/f/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/f/h;

    return-object v0
.end method

.method public static values()[Lcom/baidu/tts/f/h;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/baidu/tts/f/h;->e:[Lcom/baidu/tts/f/h;

    invoke-virtual {v0}, [Lcom/baidu/tts/f/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/f/h;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/tts/f/h;->d:Ljava/lang/String;

    return-object v0
.end method
