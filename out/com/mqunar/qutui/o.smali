.class Lcom/mqunar/qutui/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mqunar/qutui/k;


# direct methods
.method constructor <init>(Lcom/mqunar/qutui/k;)V
    .registers 2

    .prologue
    .line 334
    iput-object p1, p0, Lcom/mqunar/qutui/o;->a:Lcom/mqunar/qutui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 337
    iget-object v0, p0, Lcom/mqunar/qutui/o;->a:Lcom/mqunar/qutui/k;

    invoke-static {v0}, Lcom/mqunar/qutui/k;->c(Lcom/mqunar/qutui/k;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/qutui/QutuiLog;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 351
    :cond_c
    return-void

    .line 340
    :cond_d
    iget-object v0, p0, Lcom/mqunar/qutui/o;->a:Lcom/mqunar/qutui/k;

    invoke-static {v0}, Lcom/mqunar/qutui/k;->a(Lcom/mqunar/qutui/k;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 341
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 342
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "^\\d+$"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 345
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 346
    const-wide/32 v5, 0x927c0

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1f

    .line 347
    iget-object v1, p0, Lcom/mqunar/qutui/o;->a:Lcom/mqunar/qutui/k;

    invoke-static {v1}, Lcom/mqunar/qutui/k;->c(Lcom/mqunar/qutui/k;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mqunar/qutui/QutuiLog;->getInstance(Landroid/content/Context;)Lcom/mqunar/qutui/QutuiLog;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/mqunar/qutui/QutuiLog;->sendLog(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/mqunar/qutui/o;->a:Lcom/mqunar/qutui/k;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mqunar/qutui/k;->a(Ljava/lang/String;)V

    goto :goto_1f
.end method
