.class public Lorg/acra/anr/ANRException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public ANRInfo:Ljava/lang/String;

.field public mainThreadInfo:Ljava/lang/String;

.field public monitorMode:I

.field public tracesFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    const-string v0, "ANRException"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lorg/acra/anr/ANRException;->tracesFilePath:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lorg/acra/anr/ANRException;->ANRInfo:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lorg/acra/anr/ANRException;->ANRInfo:Ljava/lang/String;

    .line 25
    return-void
.end method
