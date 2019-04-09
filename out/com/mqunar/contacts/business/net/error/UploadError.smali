.class public Lcom/mqunar/contacts/business/net/error/UploadError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_EMPTY_PARAM_FAILURE:I = 0x3

.field public static final TYPE_LICENSES_FAILURE:I = 0x1

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_VALIDATE_FAILURE:I = 0x2


# instance fields
.field public error:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/mqunar/contacts/business/net/error/UploadError;->type:I

    .line 19
    iput p1, p0, Lcom/mqunar/contacts/business/net/error/UploadError;->type:I

    .line 20
    iput-object p2, p0, Lcom/mqunar/contacts/business/net/error/UploadError;->error:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 24
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/mqunar/contacts/business/net/error/UploadError;-><init>(ILjava/lang/String;)V

    .line 25
    return-void
.end method
