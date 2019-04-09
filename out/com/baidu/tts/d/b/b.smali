.class public Lcom/baidu/tts/d/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private volatile d:I

.field private volatile e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/baidu/tts/d/a/e;

.field private h:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    .line 40
    const/16 v0, 0x9

    iput v0, p0, Lcom/baidu/tts/d/b/b;->e:I

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 48
    iput-object p1, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private j()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 71
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->g:Lcom/baidu/tts/d/a/e;

    if-eqz v0, :cond_32

    .line 72
    const-string v0, "FsFileInfoFlyweight"

    const-string v1, "unregisterObserver stop"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->g:Lcom/baidu/tts/d/a/e;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/e;->a()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/tts/d/b/b;->g:Lcom/baidu/tts/d/a/e;

    .line 75
    iget v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    iget v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_32

    .line 76
    :cond_1f
    iput v2, p0, Lcom/baidu/tts/d/b/b;->d:I

    .line 77
    iput v2, p0, Lcom/baidu/tts/d/b/b;->e:I

    .line 78
    invoke-static {}, Lcom/baidu/tts/d/b/a;->a()Lcom/baidu/tts/d/b/a;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/a;->b()Lcom/baidu/tts/database/a;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    iget v2, p0, Lcom/baidu/tts/d/b/b;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;I)V

    .line 83
    :cond_32
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/d/b/c;)I
    .registers 7

    .prologue
    .line 221
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/tts/d/b/b;->b:J

    .line 224
    invoke-virtual {p1}, Lcom/baidu/tts/d/b/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 226
    iget-wide v3, p0, Lcom/baidu/tts/d/b/b;->b:J

    cmp-long v1, v3, v1

    if-nez v1, :cond_41

    .line 227
    invoke-static {}, Lcom/baidu/tts/tools/MD5;->getInstance()Lcom/baidu/tts/tools/MD5;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/tts/tools/MD5;->getBigFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/d/b/b;->c:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Lcom/baidu/tts/d/b/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/baidu/tts/d/b/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 230
    const/4 v0, 0x7

    iput v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    .line 240
    :goto_3a
    iget v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    return v0

    .line 232
    :cond_3d
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    goto :goto_3a

    .line 235
    :cond_41
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    goto :goto_3a

    .line 238
    :cond_45
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    goto :goto_3a
.end method

.method public a()J
    .registers 3

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/baidu/tts/d/b/b;->b:J

    return-wide v0
.end method

.method public a(JJ)V
    .registers 8

    .prologue
    .line 257
    invoke-static {}, Lcom/baidu/tts/d/b/a;->a()Lcom/baidu/tts/d/b/a;

    move-result-object v1

    .line 258
    iput-wide p1, p0, Lcom/baidu/tts/d/b/b;->b:J

    .line 259
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_24

    .line 260
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 261
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 262
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    invoke-virtual {v1, v0}, Lcom/baidu/tts/d/b/a;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;

    move-result-object v0

    .line 264
    invoke-virtual {v0, p0}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/d/b/b;)V

    goto :goto_10

    .line 267
    :cond_24
    return-void
.end method

.method public a(Lcom/baidu/tts/aop/tts/TtsError;)V
    .registers 6

    .prologue
    const/16 v2, 0x8

    .line 288
    const-string v0, "FsFileInfoFlyweight"

    const-string v1, "onDownloadFailure"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iput v2, p0, Lcom/baidu/tts/d/b/b;->d:I

    .line 290
    iput v2, p0, Lcom/baidu/tts/d/b/b;->e:I

    .line 291
    invoke-static {}, Lcom/baidu/tts/d/b/a;->a()Lcom/baidu/tts/d/b/a;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Lcom/baidu/tts/d/b/a;->b()Lcom/baidu/tts/database/a;

    move-result-object v0

    .line 293
    iget-object v2, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    iget v3, p0, Lcom/baidu/tts/d/b/b;->e:I

    invoke-virtual {v0, v2, v3}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;I)V

    .line 294
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_3f

    .line 295
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 296
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 297
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    invoke-virtual {v1, v0}, Lcom/baidu/tts/d/b/a;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;

    move-result-object v3

    .line 299
    invoke-virtual {v3, p0, p1}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/d/b/b;Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 300
    iget-object v3, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_26

    .line 303
    :cond_3f
    return-void
.end method

.method public a(Lcom/baidu/tts/d/a/e;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/baidu/tts/d/b/b;->g:Lcom/baidu/tts/d/a/e;

    .line 111
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_9

    .line 53
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_9
    return-void
.end method

.method public a(Lcom/baidu/tts/database/a;)Z
    .registers 6

    .prologue
    const/4 v3, 0x7

    .line 163
    invoke-static {}, Lcom/baidu/tts/d/b/e;->a()Lcom/baidu/tts/d/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/d/b/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/d/b/e;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;

    move-result-object v0

    .line 164
    iget v1, p0, Lcom/baidu/tts/d/b/b;->d:I

    if-nez v1, :cond_68

    .line 165
    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/b/b;->a(Lcom/baidu/tts/d/b/c;)I

    .line 166
    invoke-virtual {p0, p1}, Lcom/baidu/tts/d/b/b;->b(Lcom/baidu/tts/database/a;)I

    .line 172
    :cond_15
    :goto_15
    iget v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    if-ne v0, v3, :cond_26

    iget v0, p0, Lcom/baidu/tts/d/b/b;->e:I

    if-eq v0, v3, :cond_26

    .line 173
    iput v3, p0, Lcom/baidu/tts/d/b/b;->e:I

    .line 174
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    iget v1, p0, Lcom/baidu/tts/d/b/b;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;I)V

    .line 176
    :cond_26
    const-string v0, "FsFileInfoFlyweight"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/tts/d/b/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--filestate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/tts/d/b/b;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--dbstate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/tts/d/b/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_66

    iget v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_66

    iget v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    if-ne v0, v3, :cond_76

    .line 179
    :cond_66
    const/4 v0, 0x0

    .line 181
    :goto_67
    return v0

    .line 168
    :cond_68
    iget v1, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_72

    iget v1, p0, Lcom/baidu/tts/d/b/b;->d:I

    if-ne v1, v3, :cond_15

    .line 169
    :cond_72
    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/b/b;->a(Lcom/baidu/tts/d/b/c;)I

    goto :goto_15

    .line 181
    :cond_76
    const/4 v0, 0x1

    goto :goto_67
.end method

.method public b(Lcom/baidu/tts/database/a;)I
    .registers 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/database/a;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 211
    sget-object v1, Lcom/baidu/tts/f/g;->a:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/tools/DataTool;->getMapValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 213
    const/16 v0, 0x9

    iput v0, p0, Lcom/baidu/tts/d/b/b;->e:I

    .line 217
    :goto_1a
    iget v0, p0, Lcom/baidu/tts/d/b/b;->e:I

    return v0

    .line 215
    :cond_1d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/tts/d/b/b;->e:I

    goto :goto_1a
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0}, Lcom/baidu/tts/tools/DataTool;->isSetEmpty(Ljava/util/Set;)Z

    move-result v0

    .line 59
    const-string v1, "FsFileInfoFlyweight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterObserver 1isEmpty="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    if-nez v0, :cond_48

    .line 61
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0}, Lcom/baidu/tts/tools/DataTool;->isSetEmpty(Ljava/util/Set;)Z

    move-result v0

    .line 63
    const-string v1, "FsFileInfoFlyweight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterObserver 2isEmpty="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    if-eqz v0, :cond_48

    .line 65
    invoke-direct {p0}, Lcom/baidu/tts/d/b/b;->j()V

    .line 68
    :cond_48
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/baidu/tts/d/b/b;->f:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public d()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    return v0
.end method

.method public e()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 186
    iget v1, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 198
    :cond_6
    :goto_6
    return v0

    .line 189
    :cond_7
    iget v1, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/baidu/tts/d/b/b;->d:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_6

    .line 192
    invoke-static {}, Lcom/baidu/tts/d/b/e;->a()Lcom/baidu/tts/d/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/tts/d/b/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/tts/d/b/e;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lcom/baidu/tts/d/b/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 195
    iget-wide v3, p0, Lcom/baidu/tts/d/b/b;->b:J

    cmp-long v1, v3, v1

    if-ltz v1, :cond_6

    .line 196
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 205
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public g()V
    .registers 4

    .prologue
    .line 244
    const-string v0, "FsFileInfoFlyweight"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queueForDownload fileId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/tts/d/b/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--filestate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/tts/d/b/b;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    .line 246
    return-void
.end method

.method public h()V
    .registers 4

    .prologue
    .line 249
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/tts/d/b/b;->d:I

    .line 250
    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/tts/d/b/b;->e:I

    .line 251
    invoke-static {}, Lcom/baidu/tts/d/b/a;->a()Lcom/baidu/tts/d/b/a;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/baidu/tts/d/b/a;->b()Lcom/baidu/tts/database/a;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    iget v2, p0, Lcom/baidu/tts/d/b/b;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;I)V

    .line 254
    return-void
.end method

.method public i()V
    .registers 5

    .prologue
    const/4 v2, 0x7

    .line 270
    const-string v0, "FsFileInfoFlyweight"

    const-string v1, "onDownloadSuccess"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iput v2, p0, Lcom/baidu/tts/d/b/b;->d:I

    .line 272
    iput v2, p0, Lcom/baidu/tts/d/b/b;->e:I

    .line 273
    invoke-static {}, Lcom/baidu/tts/d/b/a;->a()Lcom/baidu/tts/d/b/a;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Lcom/baidu/tts/d/b/a;->b()Lcom/baidu/tts/database/a;

    move-result-object v0

    .line 275
    iget-object v2, p0, Lcom/baidu/tts/d/b/b;->a:Ljava/lang/String;

    iget v3, p0, Lcom/baidu/tts/d/b/b;->e:I

    invoke-virtual {v0, v2, v3}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;I)V

    .line 276
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_3e

    .line 277
    iget-object v0, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 278
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 279
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    invoke-virtual {v1, v0}, Lcom/baidu/tts/d/b/a;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;

    move-result-object v3

    .line 281
    invoke-virtual {v3, p0}, Lcom/baidu/tts/d/b/d;->b(Lcom/baidu/tts/d/b/b;)V

    .line 282
    iget-object v3, p0, Lcom/baidu/tts/d/b/b;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_25

    .line 285
    :cond_3e
    return-void
.end method
