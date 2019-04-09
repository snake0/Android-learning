.class public Lcom/mqunar/atomenv/uc/model/GlobalUCookie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field public qcookie:Ljava/lang/String;

.field public tcookie:Ljava/lang/String;

.field public vcookie:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCookie;->qcookie:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCookie;->vcookie:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCookie;->tcookie:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getQcookie()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCookie;->qcookie:Ljava/lang/String;

    return-object v0
.end method

.method public getTcookie()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCookie;->tcookie:Ljava/lang/String;

    return-object v0
.end method

.method public getVcookie()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCookie;->vcookie:Ljava/lang/String;

    return-object v0
.end method
