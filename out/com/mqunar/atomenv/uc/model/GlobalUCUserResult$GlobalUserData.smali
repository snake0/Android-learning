.class public Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private user:Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;->user:Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;

    return-void
.end method


# virtual methods
.method public getUinfo()Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;->user:Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;

    return-object v0
.end method

.method public setUinfo(Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;->user:Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;

    .line 24
    return-void
.end method

.method public setUser(Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;->user:Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;

    .line 28
    return-void
.end method
