.class public Lorg/acra/ne/NativeException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private crashFileDirectory:Ljava/lang/String;

.field public noSendDmp:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/acra/ne/NativeException;->noSendDmp:Z

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lorg/acra/ne/NativeException;->crashFileDirectory:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lorg/acra/ne/NativeException;->crashFileDirectory:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getCrashFileDirectory()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lorg/acra/ne/NativeException;->crashFileDirectory:Ljava/lang/String;

    return-object v0
.end method

.method setCrashFileDirectory(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    iput-object p1, p0, Lorg/acra/ne/NativeException;->crashFileDirectory:Ljava/lang/String;

    .line 24
    return-void
.end method
