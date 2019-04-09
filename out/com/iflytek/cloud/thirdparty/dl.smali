.class public Lcom/iflytek/cloud/thirdparty/dl;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private c:[Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Lcom/iflytek/cloud/thirdparty/ds;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/ds;)V
    .registers 9

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/dl;->d:J

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/dl;->e:J

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/dl;->g:Lcom/iflytek/cloud/thirdparty/ds;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->g:Lcom/iflytek/cloud/thirdparty/ds;

    const-string v1, "KEY_PERIOD_RUN"

    invoke-virtual {v0, v1, v4, v5}, Lcom/iflytek/cloud/thirdparty/ds;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->a:J

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->g:Lcom/iflytek/cloud/thirdparty/ds;

    const-string v1, "KEY_PERIOD_UPDATE"

    const-wide/32 v2, 0xf731400

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/ds;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->b:J

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->g:Lcom/iflytek/cloud/thirdparty/ds;

    const-string v1, "KEY_PKG_RUN"

    invoke-virtual {v0, v1, v6}, Lcom/iflytek/cloud/thirdparty/ds;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3b

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->c:[Ljava/lang/String;

    :cond_3b
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->g:Lcom/iflytek/cloud/thirdparty/ds;

    const-string v1, "KEY_LAST_UPDATE"

    invoke-virtual {v0, v1, v4, v5}, Lcom/iflytek/cloud/thirdparty/ds;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->d:J

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->g:Lcom/iflytek/cloud/thirdparty/ds;

    const-string v1, "KEY_LAST_LAUNCH"

    invoke-virtual {v0, v1, v4, v5}, Lcom/iflytek/cloud/thirdparty/ds;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->e:J

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->g:Lcom/iflytek/cloud/thirdparty/ds;

    const-string v1, "KEY_APPID"

    invoke-virtual {v0, v1, v6}, Lcom/iflytek/cloud/thirdparty/ds;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->a:J

    return-wide v0
.end method

.method public a(J)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->g:Lcom/iflytek/cloud/thirdparty/ds;

    const-string v1, "KEY_PERIOD_UPDATE"

    invoke-virtual {v0, v1, p1, p2}, Lcom/iflytek/cloud/thirdparty/ds;->a(Ljava/lang/String;J)V

    iput-wide p1, p0, Lcom/iflytek/cloud/thirdparty/dl;->b:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/dl;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->g:Lcom/iflytek/cloud/thirdparty/ds;

    const-string v1, "KEY_APPID"

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/cloud/thirdparty/ds;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .registers 7

    const-string v0, ""

    if-eqz p1, :cond_3f

    array-length v2, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v2, :cond_3f

    aget-object v3, p1, v1

    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3f
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/dl;->g:Lcom/iflytek/cloud/thirdparty/ds;

    const-string v2, "KEY_PKG_RUN"

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/cloud/thirdparty/ds;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/dl;->c:[Ljava/lang/String;

    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->b:J

    return-wide v0
.end method

.method public b(J)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->g:Lcom/iflytek/cloud/thirdparty/ds;

    const-string v1, "KEY_PERIOD_RUN"

    invoke-virtual {v0, v1, p1, p2}, Lcom/iflytek/cloud/thirdparty/ds;->a(Ljava/lang/String;J)V

    iput-wide p1, p0, Lcom/iflytek/cloud/thirdparty/dl;->a:J

    return-void
.end method

.method public c(J)V
    .registers 5

    iput-wide p1, p0, Lcom/iflytek/cloud/thirdparty/dl;->d:J

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->g:Lcom/iflytek/cloud/thirdparty/ds;

    const-string v1, "KEY_LAST_UPDATE"

    invoke-virtual {v0, v1, p1, p2}, Lcom/iflytek/cloud/thirdparty/ds;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public c()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->d:J

    return-wide v0
.end method

.method public d(J)V
    .registers 5

    iput-wide p1, p0, Lcom/iflytek/cloud/thirdparty/dl;->e:J

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->g:Lcom/iflytek/cloud/thirdparty/ds;

    const-string v1, "KEY_LAST_LAUNCH"

    invoke-virtual {v0, v1, p1, p2}, Lcom/iflytek/cloud/thirdparty/ds;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public e()J
    .registers 3

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->e:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 7

    const-string v0, ""

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/dl;->c:[Ljava/lang/String;

    if-eqz v1, :cond_2a

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/dl;->c:[Ljava/lang/String;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v4, :cond_2a

    aget-object v2, v3, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_a

    :cond_2a
    return-object v0
.end method
