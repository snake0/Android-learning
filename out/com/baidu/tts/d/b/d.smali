.class public Lcom/baidu/tts/d/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Lcom/baidu/tts/d/b/a;

.field private f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/baidu/tts/client/model/DownloadHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/tts/d/b/d;->d:J

    .line 29
    invoke-static {}, Lcom/baidu/tts/d/b/a;->a()Lcom/baidu/tts/d/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/d/b/d;->e:Lcom/baidu/tts/d/b/a;

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/b/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 40
    iput-object p1, p0, Lcom/baidu/tts/d/b/d;->a:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private j()V
    .registers 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->e:Lcom/baidu/tts/d/b/a;

    iget-object v1, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/tts/d/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/d/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->e:Lcom/baidu/tts/d/b/a;

    iget-object v1, p0, Lcom/baidu/tts/d/b/d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/tts/d/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/d/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 75
    invoke-direct {p0}, Lcom/baidu/tts/d/b/d;->j()V

    .line 76
    return-void
.end method

.method public a(Lcom/baidu/tts/client/model/DownloadHandler;)V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_9

    .line 45
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_9
    return-void
.end method

.method public a(Lcom/baidu/tts/client/model/DownloadHandler;Lcom/baidu/tts/aop/tts/TtsError;)V
    .registers 3

    .prologue
    .line 175
    invoke-virtual {p1, p0, p2}, Lcom/baidu/tts/client/model/DownloadHandler;->updateFinish(Lcom/baidu/tts/d/b/d;Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/baidu/tts/d/b/d;->b(Lcom/baidu/tts/client/model/DownloadHandler;)V

    .line 177
    return-void
.end method

.method public a(Lcom/baidu/tts/client/model/ModelBags;Lcom/baidu/tts/database/a;)V
    .registers 3

    .prologue
    .line 131
    invoke-virtual {p2, p1}, Lcom/baidu/tts/database/a;->a(Lcom/baidu/tts/client/model/ModelBags;)V

    .line 132
    invoke-virtual {p0, p2}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/database/a;)Z

    .line 133
    return-void
.end method

.method public a(Lcom/baidu/tts/d/b/b;)V
    .registers 4

    .prologue
    .line 180
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_1a

    .line 181
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 182
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 183
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/DownloadHandler;

    .line 184
    invoke-virtual {v0, p0}, Lcom/baidu/tts/client/model/DownloadHandler;->updateProgress(Lcom/baidu/tts/d/b/d;)V

    goto :goto_a

    .line 187
    :cond_1a
    return-void
.end method

.method public a(Lcom/baidu/tts/d/b/b;Lcom/baidu/tts/aop/tts/TtsError;)V
    .registers 5

    .prologue
    .line 215
    const-string v0, "ModelFlyweight"

    const-string v1, "onFileDownloadFailure"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_21

    .line 217
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 218
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/DownloadHandler;

    .line 220
    invoke-virtual {p0, v0, p2}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/client/model/DownloadHandler;Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_11

    .line 223
    :cond_21
    return-void
.end method

.method public a(Lcom/baidu/tts/database/a;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lcom/baidu/tts/d/b/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/baidu/tts/database/a;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 125
    :cond_f
    :goto_f
    return v0

    .line 117
    :cond_10
    sget-object v2, Lcom/baidu/tts/f/g;->r:Lcom/baidu/tts/f/g;

    invoke-virtual {v2}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/tools/DataTool;->getMapValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/lang/String;

    .line 118
    sget-object v2, Lcom/baidu/tts/f/g;->s:Lcom/baidu/tts/f/g;

    invoke-virtual {v2}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/tools/DataTool;->getMapValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/tts/d/b/d;->c:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    .line 120
    iget-object v2, p0, Lcom/baidu/tts/d/b/d;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    .line 121
    if-nez v1, :cond_3a

    if-nez v2, :cond_3a

    .line 122
    const/4 v0, 0x1

    goto :goto_f

    .line 124
    :cond_3a
    iget-object v1, p0, Lcom/baidu/tts/d/b/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;)I

    goto :goto_f
.end method

.method public b()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 80
    invoke-static {}, Lcom/baidu/tts/d/b/e;->a()Lcom/baidu/tts/d/b/e;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/tts/d/b/e;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;

    move-result-object v2

    .line 82
    iget-object v3, p0, Lcom/baidu/tts/d/b/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/baidu/tts/d/b/e;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;

    move-result-object v1

    .line 83
    invoke-virtual {v2}, Lcom/baidu/tts/d/b/c;->a()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {v1}, Lcom/baidu/tts/d/b/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    return-object v0
.end method

.method public b(Lcom/baidu/tts/client/model/DownloadHandler;)V
    .registers 7

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0}, Lcom/baidu/tts/tools/DataTool;->isSetEmpty(Ljava/util/Set;)Z

    move-result v0

    .line 51
    const-string v1, "ModelFlyweight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterListener 1isEmpty="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    if-nez v0, :cond_48

    .line 53
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0}, Lcom/baidu/tts/tools/DataTool;->isSetEmpty(Ljava/util/Set;)Z

    move-result v0

    .line 55
    const-string v1, "ModelFlyweight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterListener 2isEmpty="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    if-eqz v0, :cond_49

    .line 57
    invoke-direct {p0}, Lcom/baidu/tts/d/b/d;->j()V

    .line 66
    :cond_48
    return-void

    .line 59
    :cond_49
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 60
    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/DownloadHandler;

    .line 62
    const-string v2, "ModelFlyweight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterListener item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f
.end method

.method public b(Lcom/baidu/tts/d/b/b;)V
    .registers 6

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/baidu/tts/d/b/d;->i()Z

    move-result v0

    .line 202
    const-string v1, "ModelFlyweight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFileDownloadSuccess isAllFileDownloadSuccess="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    if-eqz v0, :cond_39

    .line 204
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_39

    .line 205
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 206
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/DownloadHandler;

    .line 208
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/client/model/DownloadHandler;Lcom/baidu/tts/aop/tts/TtsError;)V

    goto :goto_28

    .line 212
    :cond_39
    return-void
.end method

.method public c()J
    .registers 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/baidu/tts/d/b/d;->d()V

    .line 92
    iget-wide v0, p0, Lcom/baidu/tts/d/b/d;->d:J

    return-wide v0
.end method

.method public c(Lcom/baidu/tts/client/model/DownloadHandler;)V
    .registers 2

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/client/model/DownloadHandler;)V

    .line 171
    invoke-virtual {p1, p0}, Lcom/baidu/tts/client/model/DownloadHandler;->updateStart(Lcom/baidu/tts/d/b/d;)V

    .line 172
    return-void
.end method

.method public d()V
    .registers 5

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/baidu/tts/d/b/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 97
    invoke-virtual {p0}, Lcom/baidu/tts/d/b/d;->e()V

    .line 99
    :cond_b
    return-void
.end method

.method public e()V
    .registers 6

    .prologue
    .line 102
    invoke-static {}, Lcom/baidu/tts/d/b/e;->a()Lcom/baidu/tts/d/b/e;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/d/b/e;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/baidu/tts/d/b/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/baidu/tts/d/b/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/tts/d/b/e;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 108
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 109
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v0, v1, v3

    iput-wide v0, p0, Lcom/baidu/tts/d/b/d;->d:J

    .line 110
    return-void
.end method

.method public f()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v1, p0, Lcom/baidu/tts/d/b/d;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .registers 5

    .prologue
    .line 164
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->e:Lcom/baidu/tts/d/b/a;

    iget-object v1, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/d/b/a;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 165
    iget-object v2, p0, Lcom/baidu/tts/d/b/d;->e:Lcom/baidu/tts/d/b/a;

    iget-object v3, p0, Lcom/baidu/tts/d/b/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/tts/d/b/a;->d(Ljava/lang/String;)J

    move-result-wide v2

    .line 166
    add-long/2addr v0, v2

    return-wide v0
.end method

.method public i()Z
    .registers 5

    .prologue
    const/4 v3, 0x7

    .line 190
    iget-object v0, p0, Lcom/baidu/tts/d/b/d;->e:Lcom/baidu/tts/d/b/a;

    iget-object v1, p0, Lcom/baidu/tts/d/b/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/d/b/a;->e(Ljava/lang/String;)I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/baidu/tts/d/b/d;->e:Lcom/baidu/tts/d/b/a;

    iget-object v2, p0, Lcom/baidu/tts/d/b/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/tts/d/b/a;->e(Ljava/lang/String;)I

    move-result v1

    .line 192
    if-ne v0, v3, :cond_17

    if-ne v1, v3, :cond_17

    .line 194
    const/4 v0, 0x1

    .line 196
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
