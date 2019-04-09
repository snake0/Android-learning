.class public Lcom/mqunar/contacts/business/net/Hotdog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/contacts/basis/upload/IUpload;


# static fields
.field private static final MAX:I = 0x1f4


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/mqunar/contacts/business/net/Hotdog;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private getMax(Ljava/util/List;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    mul-int/lit16 v1, v1, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public request(Ljava/util/List;Lcom/mqunar/contacts/basis/upload/UploadListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;",
            "Lcom/mqunar/contacts/basis/upload/UploadListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 85
    new-instance v0, Lcom/mqunar/libtask/HotdogConductor;

    new-array v1, v4, [Lcom/mqunar/libtask/TaskCallback;

    new-instance v2, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;

    invoke-direct {v2, p1, p2}, Lcom/mqunar/contacts/business/net/Hotdog$ContactsTaskCallback;-><init>(Ljava/util/List;Lcom/mqunar/contacts/basis/upload/UploadListener;)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lcom/mqunar/libtask/HotdogConductor;-><init>([Lcom/mqunar/libtask/TaskCallback;)V

    .line 86
    new-instance v1, Lcom/mqunar/contacts/business/net/param/UploadParam;

    invoke-direct {v1}, Lcom/mqunar/contacts/business/net/param/UploadParam;-><init>()V

    .line 87
    iput-object p1, v1, Lcom/mqunar/contacts/business/net/param/UploadParam;->phoneContacts:Ljava/util/List;

    .line 88
    invoke-static {}, Lcom/mqunar/patch/util/UCUtils;->getInstance()Lcom/mqunar/patch/util/UCUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mqunar/patch/util/UCUtils;->getUuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mqunar/contacts/business/net/param/UploadParam;->uuid:Ljava/lang/String;

    .line 89
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mqunar/atomenv/GlobalEnv;->getHotDogUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "p_addPhoneContact"

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/mqunar/libtask/HotdogConductor;->setParams([Ljava/lang/Object;)V

    .line 90
    invoke-static {}, Lcom/mqunar/libtask/ChiefGuard;->getInstance()Lcom/mqunar/libtask/ChiefGuard;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/contacts/business/net/Hotdog;->mContext:Landroid/content/Context;

    new-array v3, v4, [Lcom/mqunar/libtask/Ticket$RequestFeature;

    sget-object v4, Lcom/mqunar/libtask/Ticket$RequestFeature;->ADD_ONORDER:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v0, v3}, Lcom/mqunar/libtask/ChiefGuard;->addTask(Landroid/content/Context;Lcom/mqunar/libtask/AbsConductor;[Lcom/mqunar/libtask/Ticket$RequestFeature;)V

    .line 91
    return-void
.end method

.method public uploadContacts(Ljava/util/List;Ljava/lang/String;Lcom/mqunar/contacts/basis/upload/UploadListener;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/contacts/basis/model/Contact;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/mqunar/contacts/basis/upload/UploadListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x1f4

    const/4 v1, 0x0

    .line 44
    :try_start_3
    invoke-static {p1}, Lcom/mqunar/tools/CheckUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 45
    if-eqz p3, :cond_f

    .line 46
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/mqunar/contacts/basis/upload/UploadListener;->onFailure(Ljava/lang/String;)V

    .line 78
    :cond_f
    :goto_f
    return-void

    .line 51
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_27

    .line 52
    invoke-virtual {p0, p1, p3}, Lcom/mqunar/contacts/business/net/Hotdog;->request(Ljava/util/List;Lcom/mqunar/contacts/basis/upload/UploadListener;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1a

    goto :goto_f

    .line 75
    :catch_1a
    move-exception v0

    .line 76
    const-string v2, "Contacts"

    invoke-static {v0}, Lcom/mqunar/contacts/basis/utils/CrashUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 57
    :cond_27
    :try_start_27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 59
    div-int/lit16 v0, v2, 0x1f4

    .line 61
    mul-int/lit16 v3, v0, 0x1f4

    if-eq v3, v2, :cond_77

    .line 63
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 66
    :goto_34
    const/4 v0, 0x4

    if-le v2, v0, :cond_42

    .line 68
    const/4 v0, 0x0

    const/16 v2, 0x1f4

    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/mqunar/contacts/business/net/Hotdog;->request(Ljava/util/List;Lcom/mqunar/contacts/basis/upload/UploadListener;)V

    goto :goto_f

    .line 70
    :cond_42
    const-string v0, "Contacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upload HOTDOG , need count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 71
    :goto_5e
    if-ge v0, v2, :cond_f

    .line 72
    mul-int/lit16 v3, v0, 0x1f4

    invoke-direct {p0, p1, v0}, Lcom/mqunar/contacts/business/net/Hotdog;->getMax(Ljava/util/List;I)I

    move-result v4

    invoke-interface {p1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mqunar/contacts/basis/upload/MutiPartUploadListener;

    add-int/lit8 v5, v0, 0x1

    invoke-direct {v4, v5, v2, p3}, Lcom/mqunar/contacts/basis/upload/MutiPartUploadListener;-><init>(IILcom/mqunar/contacts/basis/upload/UploadListener;)V

    invoke-virtual {p0, v3, v4}, Lcom/mqunar/contacts/business/net/Hotdog;->request(Ljava/util/List;Lcom/mqunar/contacts/basis/upload/UploadListener;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_74} :catch_1a

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    :cond_77
    move v2, v0

    goto :goto_34
.end method
