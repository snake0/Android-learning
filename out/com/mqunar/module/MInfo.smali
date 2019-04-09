.class public Lcom/mqunar/module/MInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public downloadFlag:B

.field public fileName:Ljava/lang/String;

.field public md5:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public patchUrl:Ljava/lang/String;

.field public restart:B

.field public touch:Ljava/lang/String;

.field public type:B

.field public url:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-byte v1, p0, Lcom/mqunar/module/MInfo;->type:B

    .line 14
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mqunar/module/MInfo;->downloadFlag:B

    .line 23
    iput-byte v1, p0, Lcom/mqunar/module/MInfo;->type:B

    .line 24
    return-void
.end method
