.class public Lcom/mqunar/hy/res/model/HybridFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public length:I

.field public mimeType:Ljava/lang/String;

.field public start:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/mqunar/hy/res/model/HybridManifest$ResItem;I)V
    .registers 5

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridManifest$ResItem;->getSl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 21
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, p2

    iput v1, p0, Lcom/mqunar/hy/res/model/HybridFile;->start:I

    .line 22
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mqunar/hy/res/model/HybridFile;->length:I

    .line 23
    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridManifest$ResItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/hy/res/utils/QHepburnMimeTypeUtils;->obtainMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/model/HybridFile;->mimeType:Ljava/lang/String;

    .line 24
    return-void
.end method
