.class public Lcom/mqunar/necro/agent/task/NecroSenderProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/necro/agent/task/IHttpSender;


# static fields
.field private static final log:Lcom/mqunar/necro/agent/logging/AgentLog;


# instance fields
.field private jsonData:Ljava/lang/String;

.field private mCParam:Ljava/lang/String;

.field private mHostUrl:Ljava/lang/String;

.field private mPitcherUrl:Ljava/lang/String;

.field private mRequestId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    invoke-static {}, Lcom/mqunar/necro/agent/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/necro/agent/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->mHostUrl:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->mPitcherUrl:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->mCParam:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->mRequestId:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->jsonData:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->mHostUrl:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->mPitcherUrl:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->mCParam:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->mRequestId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private deleteFile(Ljava/io/File;)V
    .registers 5

    .prologue
    .line 117
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 118
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 119
    sget-object v0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete file failed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 122
    :cond_2a
    return-void
.end method

.method private getFormParts(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lqunar/lego/utils/FormPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v1, Lqunar/lego/utils/FormPart;

    const-string v2, "c"

    iget-object v3, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->mCParam:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "X-ClientEncoding"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lqunar/lego/utils/FormPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lqunar/lego/utils/FormPart;

    const-string v2, "monitor"

    const-string v3, "application/octet-stream"

    invoke-direct {v1, v2, p1, v3}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "X-ClientEncoding"

    const-string v3, "gzip"

    invoke-virtual {v1, v2, v3}, Lqunar/lego/utils/FormPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    return-object v0
.end method


# virtual methods
.method public send(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 51
    if-eqz p2, :cond_c

    .line 53
    invoke-static {p2}, Lcom/mqunar/necro/agent/util/NecroFileUtils;->file2Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->jsonData:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->jsonData:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 98
    :cond_c
    :goto_c
    return-void

    .line 58
    :cond_d
    invoke-static {}, Lcom/mqunar/necro/agent/util/SafeUtils;->canEncryption()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 59
    iget-object v0, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->jsonData:Ljava/lang/String;

    invoke-static {v0}, Lcom/mqunar/necro/agent/util/SafeUtils;->da(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->jsonData:Ljava/lang/String;

    .line 62
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    sget-object v1, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d1\u9001 JSON\u6570\u636e\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->jsonData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mqunar/necro/agent/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->jsonData:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mqunar/necro/agent/util/NecroCompressUtils;->doCompressString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->jsonData:Ljava/lang/String;

    .line 66
    sget-object v1, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send necro file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mqunar/necro/agent/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 67
    new-instance v1, Lqunar/lego/utils/HttpHeader;

    invoke-direct {v1}, Lqunar/lego/utils/HttpHeader;-><init>()V

    .line 68
    iget-object v2, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->mRequestId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 69
    const-string v2, "qrid"

    iget-object v3, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->mRequestId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lqunar/lego/utils/HttpHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_7c
    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->getFormParts(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 74
    new-instance v3, Lqunar/lego/utils/Pitcher;

    iget-object v4, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->mHostUrl:Ljava/lang/String;

    invoke-direct {v3, p1, v4, v2, v1}, Lqunar/lego/utils/Pitcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lqunar/lego/utils/HttpHeader;)V

    .line 76
    iget-object v1, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->mPitcherUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 77
    iget-object v1, p0, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->mPitcherUrl:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lqunar/lego/utils/Pitcher;->setProxyUrl(Ljava/lang/String;)Lqunar/lego/utils/Pitcher;

    .line 80
    :cond_94
    invoke-virtual {v3}, Lqunar/lego/utils/Pitcher;->request()Lqunar/lego/utils/PitcherResponse;

    move-result-object v1

    .line 81
    iget-object v2, v1, Lqunar/lego/utils/PitcherResponse;->e:Ljava/lang/Exception;

    if-eqz v2, :cond_ca

    .line 82
    sget-object v2, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send necro file error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lqunar/lego/utils/PitcherResponse;->e:Ljava/lang/Exception;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 84
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->deleteFile(Ljava/io/File;)V

    goto/16 :goto_c

    .line 85
    :cond_ca
    iget v2, v1, Lqunar/lego/utils/PitcherResponse;->respcode:I

    const/16 v3, 0x190

    if-le v2, v3, :cond_fe

    .line 86
    sget-object v2, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send necro file failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  resCode is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Lqunar/lego/utils/PitcherResponse;->respcode:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 88
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->deleteFile(Ljava/io/File;)V

    goto/16 :goto_c

    .line 90
    :cond_fe
    sget-object v1, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send necro file success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mqunar/necro/agent/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 92
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->deleteFile(Ljava/io/File;)V

    .line 93
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/task/NecroSenderProxy;->deleteFile(Ljava/io/File;)V

    goto/16 :goto_c
.end method
