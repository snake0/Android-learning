.class public Lcom/mqunar/qapm/network/sender/QAPMSender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/qapm/network/sender/ISender;


# static fields
.field private static final a:Lcom/mqunar/qapm/logging/AgentLog;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    invoke-static {}, Lcom/mqunar/qapm/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/qapm/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/qapm/network/sender/QAPMSender;->a:Lcom/mqunar/qapm/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->b:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->c:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->d:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->e:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->f:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->b:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->c:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->d:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->e:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/ArrayList;
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
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v1, Lqunar/lego/utils/FormPart;

    const-string v2, "p"

    const-string v3, "adr"

    invoke-direct {v1, v2, v3}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "X-ClientEncoding"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lqunar/lego/utils/FormPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lqunar/lego/utils/FormPart;

    const-string v2, "logType"

    const-string v3, "apm"

    invoke-direct {v1, v2, v3}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "X-ClientEncoding"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lqunar/lego/utils/FormPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Lqunar/lego/utils/FormPart;

    const-string v2, "b"

    invoke-direct {v1, v2, p1}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "X-ClientEncoding"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lqunar/lego/utils/FormPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Lqunar/lego/utils/FormPart;

    const-string v2, "c"

    iget-object v3, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v2, "X-ClientEncoding"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lqunar/lego/utils/FormPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 76
    if-eqz p2, :cond_c

    .line 77
    invoke-static {p2}, Lcom/mqunar/qapm/utils/IOUtils;->file2Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->f:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->f:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 103
    :cond_c
    :goto_c
    return-void

    .line 81
    :cond_d
    sget-object v0, Lcom/mqunar/qapm/network/sender/QAPMSender;->a:Lcom/mqunar/qapm/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u9001 JSON\u6570\u636e\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/qapm/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lqunar/lego/utils/HttpHeader;

    invoke-direct {v0}, Lqunar/lego/utils/HttpHeader;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 84
    const-string v1, "qrid"

    iget-object v2, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lqunar/lego/utils/HttpHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_3b
    iget-object v1, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->f:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mqunar/qapm/network/sender/QAPMSender;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 87
    new-instance v2, Lqunar/lego/utils/Pitcher;

    iget-object v3, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->b:Ljava/lang/String;

    invoke-direct {v2, p1, v3, v1, v0}, Lqunar/lego/utils/Pitcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lqunar/lego/utils/HttpHeader;)V

    .line 88
    iget-object v0, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 89
    iget-object v0, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lqunar/lego/utils/Pitcher;->setProxyUrl(Ljava/lang/String;)Lqunar/lego/utils/Pitcher;

    .line 91
    :cond_55
    invoke-virtual {v2}, Lqunar/lego/utils/Pitcher;->request()Lqunar/lego/utils/PitcherResponse;

    move-result-object v0

    .line 92
    iget-object v1, v0, Lqunar/lego/utils/PitcherResponse;->e:Ljava/lang/Exception;

    if-eqz v1, :cond_7b

    .line 93
    sget-object v1, Lcom/mqunar/qapm/network/sender/QAPMSender;->a:Lcom/mqunar/qapm/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send apm file error :  error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lqunar/lego/utils/PitcherResponse;->e:Ljava/lang/Exception;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/qapm/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 101
    :goto_77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/qapm/network/sender/QAPMSender;->f:Ljava/lang/String;

    goto :goto_c

    .line 95
    :cond_7b
    iget v1, v0, Lqunar/lego/utils/PitcherResponse;->respcode:I

    const/16 v2, 0x190

    if-le v1, v2, :cond_9c

    .line 96
    sget-object v1, Lcom/mqunar/qapm/network/sender/QAPMSender;->a:Lcom/mqunar/qapm/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send apm file failed :   resCode is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lqunar/lego/utils/PitcherResponse;->respcode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/qapm/logging/AgentLog;->info(Ljava/lang/String;)V

    goto :goto_77

    .line 99
    :cond_9c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/sender/QAPMSender;->a(Ljava/io/File;)V

    goto :goto_77
.end method

.method private a(Ljava/io/File;)V
    .registers 5

    .prologue
    .line 127
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 129
    sget-object v0, Lcom/mqunar/qapm/network/sender/QAPMSender;->a:Lcom/mqunar/qapm/logging/AgentLog;

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

    invoke-interface {v0, v1}, Lcom/mqunar/qapm/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 132
    :cond_2a
    return-void
.end method


# virtual methods
.method public send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 48
    invoke-static {p1}, Lcom/mqunar/qapm/utils/NetWorkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 72
    :cond_6
    return-void

    .line 52
    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/mqunar/qapm/network/sender/a;

    invoke-direct {v1, p0}, Lcom/mqunar/qapm/network/sender/a;-><init>(Lcom/mqunar/qapm/network/sender/QAPMSender;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_6

    array-length v0, v1

    if-lez v0, :cond_6

    .line 60
    new-instance v0, Lcom/mqunar/qapm/network/sender/b;

    invoke-direct {v0, p0}, Lcom/mqunar/qapm/network/sender/b;-><init>(Lcom/mqunar/qapm/network/sender/QAPMSender;)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 67
    array-length v2, v1

    const/4 v0, 0x0

    :goto_24
    if-ge v0, v2, :cond_6

    aget-object v3, v1, v0

    .line 68
    sget-object v4, Lcom/mqunar/qapm/network/sender/QAPMSender;->a:Lcom/mqunar/qapm/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send apm data : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mqunar/qapm/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/mqunar/qapm/network/sender/QAPMSender;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_24
.end method
