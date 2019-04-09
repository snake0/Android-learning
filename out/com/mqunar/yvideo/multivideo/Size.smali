.class public Lcom/mqunar/yvideo/multivideo/Size;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/mqunar/yvideo/multivideo/Size;->mWidth:I

    .line 10
    iput p2, p0, Lcom/mqunar/yvideo/multivideo/Size;->mHeight:I

    .line 11
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .prologue
    .line 18
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/Size;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 14
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/Size;->mWidth:I

    return v0
.end method
