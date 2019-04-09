.class public Lcom/mqunar/exception/ResNotFoundException;
.super Landroid/content/res/Resources$NotFoundException;
.source "SourceFile"


# instance fields
.field public notFoundException:Landroid/content/res/Resources$NotFoundException;

.field public resId:I


# direct methods
.method public constructor <init>(ILandroid/content/res/Resources$NotFoundException;)V
    .registers 5

    .prologue
    .line 12
    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource ID #0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    invoke-direct {p0, v0, p1, p2}, Lcom/mqunar/exception/ResNotFoundException;-><init>(Ljava/lang/String;ILandroid/content/res/Resources$NotFoundException;)V

    .line 13
    return-void

    .line 12
    :cond_1d
    invoke-virtual {p2}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/content/res/Resources$NotFoundException;)V
    .registers 5

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 16
    iput p2, p0, Lcom/mqunar/exception/ResNotFoundException;->resId:I

    .line 17
    iput-object p3, p0, Lcom/mqunar/exception/ResNotFoundException;->notFoundException:Landroid/content/res/Resources$NotFoundException;

    .line 18
    if-eqz p3, :cond_10

    .line 20
    :try_start_9
    invoke-virtual {p3}, Landroid/content/res/Resources$NotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/exception/ResNotFoundException;->setStackTrace([Ljava/lang/StackTraceElement;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    .line 25
    :cond_10
    :goto_10
    return-void

    .line 21
    :catch_11
    move-exception v0

    goto :goto_10
.end method
