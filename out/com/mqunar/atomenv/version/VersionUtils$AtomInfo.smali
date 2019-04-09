.class public Lcom/mqunar/atomenv/version/VersionUtils$AtomInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


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
    .registers 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/mqunar/atomenv/version/VersionUtils$AtomInfo;->type:B

    .line 102
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mqunar/atomenv/version/VersionUtils$AtomInfo;->downloadFlag:B

    return-void
.end method
