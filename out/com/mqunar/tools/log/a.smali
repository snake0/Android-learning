.class final Lcom/mqunar/tools/log/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/tools/log/QLog$Clerk;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public crash(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 197
    invoke-static {}, Lcom/mqunar/tools/log/QLog;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/tools/log/QLog$Clerk;

    .line 198
    invoke-interface {v0, p1, p2}, Lcom/mqunar/tools/log/QLog$Clerk;->crash(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_8

    .line 200
    :cond_18
    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 153
    invoke-static {}, Lcom/mqunar/tools/log/QLog;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/tools/log/QLog$Clerk;

    .line 154
    invoke-interface {v0, p1, p2}, Lcom/mqunar/tools/log/QLog$Clerk;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 156
    :cond_18
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 176
    invoke-static {}, Lcom/mqunar/tools/log/QLog;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/tools/log/QLog$Clerk;

    .line 177
    invoke-interface {v0, p1, p2}, Lcom/mqunar/tools/log/QLog$Clerk;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 179
    :cond_18
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 190
    invoke-static {}, Lcom/mqunar/tools/log/QLog;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/tools/log/QLog$Clerk;

    .line 191
    invoke-interface {v0, p1}, Lcom/mqunar/tools/log/QLog$Clerk;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 193
    :cond_18
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 183
    invoke-static {}, Lcom/mqunar/tools/log/QLog;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/tools/log/QLog$Clerk;

    .line 184
    invoke-interface {v0, p1, p2, p3}, Lcom/mqunar/tools/log/QLog$Clerk;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 186
    :cond_18
    return-void
.end method

.method public getCrashes()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 205
    invoke-static {}, Lcom/mqunar/tools/log/QLog;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/tools/log/QLog$Clerk;

    .line 206
    invoke-interface {v0}, Lcom/mqunar/tools/log/QLog$Clerk;->getCrashes()Ljava/util/Map;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_d

    .line 208
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_d

    .line 211
    :cond_23
    return-object v1
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 161
    invoke-static {}, Lcom/mqunar/tools/log/QLog;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/tools/log/QLog$Clerk;

    .line 162
    invoke-interface {v0, p1, p2}, Lcom/mqunar/tools/log/QLog$Clerk;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 164
    :cond_18
    return-void
.end method

.method public removeCrash(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 216
    invoke-static {}, Lcom/mqunar/tools/log/QLog;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/tools/log/QLog$Clerk;

    .line 217
    invoke-interface {v0, p1}, Lcom/mqunar/tools/log/QLog$Clerk;->removeCrash(Ljava/lang/String;)V

    goto :goto_8

    .line 219
    :cond_18
    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 146
    invoke-static {}, Lcom/mqunar/tools/log/QLog;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/tools/log/QLog$Clerk;

    .line 147
    invoke-interface {v0, p1, p2}, Lcom/mqunar/tools/log/QLog$Clerk;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 149
    :cond_18
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 169
    invoke-static {}, Lcom/mqunar/tools/log/QLog;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/tools/log/QLog$Clerk;

    .line 170
    invoke-interface {v0, p1, p2}, Lcom/mqunar/tools/log/QLog$Clerk;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 172
    :cond_18
    return-void
.end method
