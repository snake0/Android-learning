.class public Lcom/mqunar/hy/res/libtask/Ticket;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADD_CANCELSAMET:I = 0x3

.field public static final ADD_INSERT2HEAD:I = 0x1

.field public static final ADD_ONORDER:I = 0x0

.field public static final CACHE_DEP:I = 0x2

.field public static final CACHE_DOB:I = 0x3

.field public static final CACHE_FORCE:I = 0x1

.field public static final CACHE_NEVER:I


# instance fields
.field public final addType:I

.field public final cacheType:I

.field public final cancelable:Z

.field public final multiTrasnfer:Z

.field public final progress:Z


# direct methods
.method public varargs constructor <init>([Lcom/mqunar/hy/res/libtask/Ticket$RequestFeature;)V
    .registers 15

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v7, 0x3

    .line 57
    if-eqz p1, :cond_4f

    array-length v0, p1

    if-eqz v0, :cond_4f

    .line 60
    array-length v9, p1

    move v8, v3

    move v0, v3

    move v2, v3

    move v4, v3

    move v5, v3

    move v6, v3

    :goto_12
    if-ge v8, v9, :cond_52

    aget-object v10, p1, v8

    .line 61
    if-nez v10, :cond_1b

    .line 60
    :goto_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 64
    :cond_1b
    sget-object v11, Lcom/mqunar/hy/res/libtask/Ticket$1;->$SwitchMap$com$mqunar$hy$res$libtask$Ticket$RequestFeature:[I

    invoke-virtual {v10}, Lcom/mqunar/hy/res/libtask/Ticket$RequestFeature;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_5e

    goto :goto_18

    :pswitch_27
    move v5, v1

    .line 67
    goto :goto_18

    .line 71
    :pswitch_29
    if-nez v2, :cond_32

    .line 72
    invoke-virtual {v10}, Lcom/mqunar/hy/res/libtask/Ticket$RequestFeature;->getCode()I

    move-result v2

    move v7, v2

    move v2, v1

    .line 73
    goto :goto_18

    .line 75
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duplicate ADD type is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :pswitch_3a
    if-nez v0, :cond_43

    .line 83
    invoke-virtual {v10}, Lcom/mqunar/hy/res/libtask/Ticket$RequestFeature;->getCode()I

    move-result v0

    move v6, v0

    move v0, v1

    .line 84
    goto :goto_18

    .line 86
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duplicate CACHE type is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4b
    move v4, v1

    .line 91
    goto :goto_18

    :pswitch_4d
    move v3, v1

    .line 94
    goto :goto_18

    :cond_4f
    move v4, v3

    move v5, v3

    move v6, v3

    .line 100
    :cond_52
    iput v7, p0, Lcom/mqunar/hy/res/libtask/Ticket;->addType:I

    .line 101
    iput v6, p0, Lcom/mqunar/hy/res/libtask/Ticket;->cacheType:I

    .line 102
    iput-boolean v5, p0, Lcom/mqunar/hy/res/libtask/Ticket;->cancelable:Z

    .line 103
    iput-boolean v4, p0, Lcom/mqunar/hy/res/libtask/Ticket;->multiTrasnfer:Z

    .line 104
    iput-boolean v3, p0, Lcom/mqunar/hy/res/libtask/Ticket;->progress:Z

    .line 105
    return-void

    .line 64
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_4b
        :pswitch_4d
    .end packed-switch
.end method
