.class public Lcom/mqunar/contacts/basis/db/ReadContactsError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_EMPTY_DATA:I = 0x2

.field public static final ERROR_LOGIN_FAILURE:I = 0x1

.field public static final ERROR_NONE:I


# instance fields
.field public e:Ljava/lang/Exception;

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/Exception;)V
    .registers 4

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/contacts/basis/db/ReadContactsError;->type:I

    .line 17
    iput p1, p0, Lcom/mqunar/contacts/basis/db/ReadContactsError;->type:I

    .line 18
    iput-object p2, p0, Lcom/mqunar/contacts/basis/db/ReadContactsError;->e:Ljava/lang/Exception;

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/mqunar/contacts/basis/db/ReadContactsError;-><init>(ILjava/lang/Exception;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/contacts/basis/db/ReadContactsError;->type:I

    .line 22
    iput-object p1, p0, Lcom/mqunar/contacts/basis/db/ReadContactsError;->e:Ljava/lang/Exception;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 30
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/mqunar/contacts/basis/db/ReadContactsError;-><init>(ILjava/lang/Exception;)V

    .line 31
    return-void
.end method
