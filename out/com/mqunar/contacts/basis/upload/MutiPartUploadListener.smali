.class public Lcom/mqunar/contacts/basis/upload/MutiPartUploadListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/contacts/basis/upload/UploadListener;


# instance fields
.field public curIndex:I

.field private listener:Lcom/mqunar/contacts/basis/upload/UploadListener;

.field public total:I


# direct methods
.method public constructor <init>(IILcom/mqunar/contacts/basis/upload/UploadListener;)V
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/mqunar/contacts/basis/upload/MutiPartUploadListener;->total:I

    .line 15
    iput v0, p0, Lcom/mqunar/contacts/basis/upload/MutiPartUploadListener;->curIndex:I

    .line 18
    iput-object p3, p0, Lcom/mqunar/contacts/basis/upload/MutiPartUploadListener;->listener:Lcom/mqunar/contacts/basis/upload/UploadListener;

    .line 19
    iput p1, p0, Lcom/mqunar/contacts/basis/upload/MutiPartUploadListener;->curIndex:I

    .line 20
    iput p2, p0, Lcom/mqunar/contacts/basis/upload/MutiPartUploadListener;->total:I

    .line 21
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mqunar/contacts/basis/upload/MutiPartUploadListener;->listener:Lcom/mqunar/contacts/basis/upload/UploadListener;

    invoke-interface {v0, p1}, Lcom/mqunar/contacts/basis/upload/UploadListener;->onFailure(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onSuccess(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mqunar/contacts/basis/upload/MutiPartUploadListener;->listener:Lcom/mqunar/contacts/basis/upload/UploadListener;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/contacts/basis/upload/UploadListener;->onSuccess(Ljava/util/List;Ljava/lang/String;)V

    .line 26
    return-void
.end method
