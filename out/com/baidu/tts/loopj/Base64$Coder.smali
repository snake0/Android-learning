.class abstract Lcom/baidu/tts/loopj/Base64$Coder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public op:I

.field public output:[B


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract maxOutputSize(I)I
.end method

.method public abstract process([BIIZ)Z
.end method
