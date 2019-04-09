.class public Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TAG:Ljava/lang/String; = "GlobalUCUserResult"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private data:Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getData()Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult;->data:Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;

    return-object v0
.end method

.method public setData(Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult;->data:Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;

    .line 37
    return-void
.end method
