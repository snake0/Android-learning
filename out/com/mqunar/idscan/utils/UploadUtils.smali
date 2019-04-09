.class public Lcom/mqunar/idscan/utils/UploadUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/mqunar/idscan/model/ScanPassportParam;Ljava/lang/String;)Lcom/mqunar/libtask/AbsConductor;
    .registers 4

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->getHotelUploadPicUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "f_passport_upload"

    invoke-static {v0, v1, p0, p1}, Lcom/mqunar/idscan/utils/UploadUtils;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/mqunar/idscan/model/ScanPassportParam;Ljava/lang/String;)Lcom/mqunar/libtask/AbsConductor;

    move-result-object v0

    return-object v0
.end method

.method public static uploadFailed(Landroid/content/Context;Lcom/mqunar/idscan/model/ScanPassportParam;)Lcom/mqunar/libtask/AbsConductor;
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "failedOcrImage.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mqunar/idscan/utils/UploadUtils;->a(Lcom/mqunar/idscan/model/ScanPassportParam;Ljava/lang/String;)Lcom/mqunar/libtask/AbsConductor;

    move-result-object v0

    :cond_1a
    return-object v0
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/mqunar/idscan/model/ScanPassportParam;Ljava/lang/String;)Lcom/mqunar/libtask/AbsConductor;
    .registers 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, ""

    if-eqz p2, :cond_a

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/mqunar/libtask/FormPart;

    const-string v3, "file"

    const-string v4, ""

    invoke-direct {v2, v3, p3, v4}, Lcom/mqunar/libtask/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mqunar/libtask/HotdogConductor;

    new-array v2, v6, [Lcom/mqunar/libtask/TaskCallback;

    new-instance v3, Lcom/mqunar/idscan/utils/c;

    invoke-direct {v3, p3}, Lcom/mqunar/idscan/utils/c;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    invoke-direct {v0, v2}, Lcom/mqunar/libtask/HotdogConductor;-><init>([Lcom/mqunar/libtask/TaskCallback;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mqunar/libtask/HotdogConductor;->setParams([Ljava/lang/Object;)V

    invoke-static {}, Lcom/mqunar/libtask/ChiefGuard;->getInstance()Lcom/mqunar/libtask/ChiefGuard;

    move-result-object v1

    invoke-static {}, Lcom/mqunar/idscan/a;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/mqunar/libtask/Ticket$RequestFeature;

    sget-object v4, Lcom/mqunar/libtask/Ticket$RequestFeature;->CACHE_NEVER:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v4, v3, v5

    sget-object v4, Lcom/mqunar/libtask/Ticket$RequestFeature;->CANCELABLE:Lcom/mqunar/libtask/Ticket$RequestFeature;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v0, v3}, Lcom/mqunar/libtask/ChiefGuard;->addTask(Landroid/content/Context;Lcom/mqunar/libtask/AbsConductor;[Lcom/mqunar/libtask/Ticket$RequestFeature;)V

    const-string v1, "UploadUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "success upload file :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static uploadSuccessed(Landroid/content/Context;Lcom/mqunar/idscan/model/ScanPassportParam;)Lcom/mqunar/libtask/AbsConductor;
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "successedOcrImage.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mqunar/idscan/utils/UploadUtils;->a(Lcom/mqunar/idscan/model/ScanPassportParam;Ljava/lang/String;)Lcom/mqunar/libtask/AbsConductor;

    move-result-object v0

    :cond_1a
    return-object v0
.end method
