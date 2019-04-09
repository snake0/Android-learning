.class public Lcom/mqunar/cock/network/tcpmodel/MemberInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public id:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 16
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    .line 21
    :goto_3
    return v0

    .line 17
    :cond_4
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    .line 19
    :cond_12
    check-cast p1, Lcom/mqunar/cock/network/tcpmodel/MemberInfo;

    .line 21
    iget-object v0, p0, Lcom/mqunar/cock/network/tcpmodel/MemberInfo;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/mqunar/cock/network/tcpmodel/MemberInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mqunar/cock/network/tcpmodel/MemberInfo;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
