.class Lcom/mqunar/hy/res/libtask/MsgDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final callbacks:[Lcom/mqunar/hy/res/libtask/TaskCallback;

.field private final ticket:Lcom/mqunar/hy/res/libtask/Ticket;


# direct methods
.method public varargs constructor <init>(Lcom/mqunar/hy/res/libtask/Ticket;[Lcom/mqunar/hy/res/libtask/TaskCallback;)V
    .registers 4

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->ticket:Lcom/mqunar/hy/res/libtask/Ticket;

    .line 16
    if-eqz p2, :cond_a

    array-length v0, p2

    if-nez v0, :cond_10

    .line 17
    :cond_a
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/mqunar/hy/res/libtask/TaskCallback;

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->callbacks:[Lcom/mqunar/hy/res/libtask/TaskCallback;

    .line 21
    :goto_f
    return-void

    .line 19
    :cond_10
    iput-object p2, p0, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->callbacks:[Lcom/mqunar/hy/res/libtask/TaskCallback;

    goto :goto_f
.end method


# virtual methods
.method public getCallbacks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/libtask/TaskCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->callbacks:[Lcom/mqunar/hy/res/libtask/TaskCallback;

    invoke-static {v0}, Lcom/mqunar/hy/res/utils/ArrayUtils;->asReadOnlyList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCallback(Lcom/mqunar/hy/res/libtask/TaskCallback;)Z
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->callbacks:[Lcom/mqunar/hy/res/libtask/TaskCallback;

    invoke-static {v0}, Lcom/mqunar/hy/res/utils/ArrayUtils;->asReadOnlyList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onMessage(Lcom/mqunar/hy/res/libtask/TaskCode;Lcom/mqunar/hy/res/libtask/AbsConductor;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p1, :cond_b

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "taskCode must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QTask #"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    .line 28
    :goto_1c
    sget-object v2, Lcom/mqunar/hy/res/libtask/MsgDispatcher$1;->$SwitchMap$com$mqunar$hy$res$libtask$TaskCode:[I

    invoke-virtual {p1}, Lcom/mqunar/hy/res/libtask/TaskCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_9c

    .line 71
    :cond_27
    return-void

    :cond_28
    move v0, v1

    .line 27
    goto :goto_1c

    .line 30
    :pswitch_2a
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->callbacks:[Lcom/mqunar/hy/res/libtask/TaskCallback;

    array-length v3, v2

    :goto_2d
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1

    .line 31
    invoke-interface {v4, p2, v0}, Lcom/mqunar/hy/res/libtask/TaskCallback;->onMsgCancel(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 35
    :pswitch_37
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->callbacks:[Lcom/mqunar/hy/res/libtask/TaskCallback;

    array-length v3, v2

    :goto_3a
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1

    .line 36
    invoke-interface {v4, p2, v0}, Lcom/mqunar/hy/res/libtask/TaskCallback;->onMsgRequest(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 40
    :pswitch_44
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->callbacks:[Lcom/mqunar/hy/res/libtask/TaskCallback;

    array-length v3, v2

    :goto_47
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1

    .line 41
    invoke-interface {v4, p2, v0}, Lcom/mqunar/hy/res/libtask/TaskCallback;->onMsgResult(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 45
    :pswitch_51
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->callbacks:[Lcom/mqunar/hy/res/libtask/TaskCallback;

    array-length v3, v2

    :goto_54
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1

    .line 46
    iget-object v5, p0, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->ticket:Lcom/mqunar/hy/res/libtask/Ticket;

    if-eqz v5, :cond_68

    iget-object v5, p0, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->ticket:Lcom/mqunar/hy/res/libtask/Ticket;

    iget-boolean v5, v5, Lcom/mqunar/hy/res/libtask/Ticket;->progress:Z

    if-eqz v5, :cond_68

    .line 47
    invoke-interface {v4, p2, v0}, Lcom/mqunar/hy/res/libtask/TaskCallback;->onMsgProgress(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V

    .line 45
    :cond_65
    :goto_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 50
    :cond_68
    invoke-virtual {p2}, Lcom/mqunar/hy/res/libtask/AbsConductor;->getProgress()I

    move-result v5

    const/high16 v6, -0x80000000

    if-ne v5, v6, :cond_74

    .line 51
    invoke-interface {v4, p2, v0}, Lcom/mqunar/hy/res/libtask/TaskCallback;->onMsgStart(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V

    goto :goto_65

    .line 52
    :cond_74
    invoke-virtual {p2}, Lcom/mqunar/hy/res/libtask/AbsConductor;->getProgress()I

    move-result v5

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_65

    .line 53
    invoke-interface {v4, p2, v0}, Lcom/mqunar/hy/res/libtask/TaskCallback;->onMsgEnd(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V

    goto :goto_65

    .line 59
    :pswitch_81
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->callbacks:[Lcom/mqunar/hy/res/libtask/TaskCallback;

    array-length v3, v2

    :goto_84
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1

    .line 60
    invoke-interface {v4, p2, v0}, Lcom/mqunar/hy/res/libtask/TaskCallback;->onMsgError(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 64
    :pswitch_8e
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->callbacks:[Lcom/mqunar/hy/res/libtask/TaskCallback;

    array-length v3, v2

    :goto_91
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1

    .line 65
    invoke-interface {v4, p2, v0}, Lcom/mqunar/hy/res/libtask/TaskCallback;->onMsgCacheHit(Lcom/mqunar/hy/res/libtask/AbsConductor;Z)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_91

    .line 28
    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_37
        :pswitch_44
        :pswitch_51
        :pswitch_81
        :pswitch_8e
    .end packed-switch
.end method
