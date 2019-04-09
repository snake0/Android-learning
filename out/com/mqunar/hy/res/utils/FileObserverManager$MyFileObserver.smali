.class Lcom/mqunar/hy/res/utils/FileObserverManager$MyFileObserver;
.super Landroid/os/FileObserver;
.source "SourceFile"


# instance fields
.field private pa:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 47
    const/16 v0, 0xfff

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/FileObserverManager$MyFileObserver;->pa:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 52
    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    const/16 v0, 0x200

    if-eq p1, v0, :cond_17

    const/16 v0, 0x80

    if-eq p1, v0, :cond_17

    const/16 v0, 0x40

    if-eq p1, v0, :cond_17

    const/16 v0, 0x400

    if-eq p1, v0, :cond_17

    const/16 v0, 0x800

    if-ne p1, v0, :cond_1c

    .line 54
    :cond_17
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FileObserverManager$MyFileObserver;->pa:Ljava/lang/String;

    invoke-static {v0}, Lcom/mqunar/hy/res/utils/FileObserverManager;->removeObserver(Ljava/lang/String;)V

    .line 56
    :cond_1c
    return-void
.end method
