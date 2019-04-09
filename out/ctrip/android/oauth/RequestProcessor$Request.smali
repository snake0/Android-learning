.class public Lctrip/android/oauth/RequestProcessor$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bundle:Landroid/os/Bundle;

.field public flags:I

.field public messageContent:Ljava/lang/String;

.field public targetClassName:Ljava/lang/String;

.field public targetPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lctrip/android/oauth/RequestProcessor$Request;->flags:I

    return-void
.end method
