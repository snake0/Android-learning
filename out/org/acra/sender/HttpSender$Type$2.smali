.class final enum Lorg/acra/sender/HttpSender$Type$2;
.super Lorg/acra/sender/HttpSender$Type;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/acra/sender/HttpSender$Type;-><init>(Ljava/lang/String;ILorg/acra/sender/HttpSender$1;)V

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 96
    const-string v0, "application/json"

    return-object v0
.end method
