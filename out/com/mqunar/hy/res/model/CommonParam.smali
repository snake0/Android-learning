.class public Lcom/mqunar/hy/res/model/CommonParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public cid:Ljava/lang/String;

.field public gid:Ljava/lang/String;

.field public lat:Ljava/lang/String;

.field public lgt:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public nt:Ljava/lang/String;

.field public osVersion:Ljava/lang/String;

.field public pid:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "10010"

    iput-object v0, p0, Lcom/mqunar/hy/res/model/CommonParam;->pid:Ljava/lang/String;

    .line 11
    const-string v0, "60001095"

    iput-object v0, p0, Lcom/mqunar/hy/res/model/CommonParam;->vid:Ljava/lang/String;

    return-void
.end method
