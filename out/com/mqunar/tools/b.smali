.class final Lcom/mqunar/tools/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public a:I

.field private final b:Ljava/io/File;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/StringBuilder;

.field private e:Ljava/lang/Process;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 5

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/tools/b;->a:I

    .line 216
    iput-object p1, p0, Lcom/mqunar/tools/b;->b:Ljava/io/File;

    .line 217
    iput-object p2, p0, Lcom/mqunar/tools/b;->c:Ljava/lang/String;

    .line 218
    iput-object p3, p0, Lcom/mqunar/tools/b;->d:Ljava/lang/StringBuilder;

    .line 219
    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .registers 2

    .prologue
    .line 279
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/tools/b;->e:Ljava/lang/Process;

    if-eqz v0, :cond_a

    .line 280
    iget-object v0, p0, Lcom/mqunar/tools/b;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 282
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/tools/b;->e:Ljava/lang/Process;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 283
    monitor-exit p0

    return-void

    .line 279
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 224
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/tools/b;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 225
    iget-object v0, p0, Lcom/mqunar/tools/b;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 227
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/mqunar/tools/b;->b:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 228
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/bin/sh"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 229
    const-string v2, "#!/system/bin/sh\n"

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 231
    :cond_48
    iget-object v2, p0, Lcom/mqunar/tools/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/mqunar/tools/b;->c:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 233
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 235
    :cond_5c
    const-string v2, "exit\n"

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 237
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 239
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lcom/mqunar/tools/b;->e:Ljava/lang/Process;

    .line 240
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/mqunar/tools/b;->e:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 241
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 243
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 245
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/mqunar/tools/b;->e:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 246
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 248
    :cond_96
    :goto_96
    invoke-virtual {v0, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v2

    if-eq v2, v5, :cond_b7

    .line 249
    iget-object v3, p0, Lcom/mqunar/tools/b;->d:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_96

    .line 250
    iget-object v3, p0, Lcom/mqunar/tools/b;->d:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_a6
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_a6} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a6} :catch_d3
    .catchall {:try_start_1 .. :try_end_a6} :catchall_104

    goto :goto_96

    .line 265
    :catch_a7
    move-exception v0

    .line 266
    :try_start_a8
    iget-object v0, p0, Lcom/mqunar/tools/b;->d:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_b3

    .line 267
    iget-object v0, p0, Lcom/mqunar/tools/b;->d:Ljava/lang/StringBuilder;

    const-string v1, "\nOperation timed-out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b3
    .catchall {:try_start_a8 .. :try_end_b3} :catchall_104

    .line 274
    :cond_b3
    invoke-virtual {p0}, Lcom/mqunar/tools/b;->destroy()V

    .line 276
    :goto_b6
    return-void

    .line 254
    :cond_b7
    :try_start_b7
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/mqunar/tools/b;->e:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 256
    :cond_c2
    :goto_c2
    invoke-virtual {v0, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v2

    if-eq v2, v5, :cond_f4

    .line 257
    iget-object v3, p0, Lcom/mqunar/tools/b;->d:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_c2

    .line 258
    iget-object v3, p0, Lcom/mqunar/tools/b;->d:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_d2
    .catch Ljava/lang/InterruptedException; {:try_start_b7 .. :try_end_d2} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_d2} :catch_d3
    .catchall {:try_start_b7 .. :try_end_d2} :catchall_104

    goto :goto_c2

    .line 269
    :catch_d3
    move-exception v0

    .line 270
    :try_start_d4
    iget-object v1, p0, Lcom/mqunar/tools/b;->d:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_f0

    .line 271
    iget-object v1, p0, Lcom/mqunar/tools/b;->d:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f0
    .catchall {:try_start_d4 .. :try_end_f0} :catchall_104

    .line 274
    :cond_f0
    invoke-virtual {p0}, Lcom/mqunar/tools/b;->destroy()V

    goto :goto_b6

    .line 262
    :cond_f4
    :try_start_f4
    iget-object v0, p0, Lcom/mqunar/tools/b;->e:Ljava/lang/Process;

    if-eqz v0, :cond_100

    .line 263
    iget-object v0, p0, Lcom/mqunar/tools/b;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    iput v0, p0, Lcom/mqunar/tools/b;->a:I
    :try_end_100
    .catch Ljava/lang/InterruptedException; {:try_start_f4 .. :try_end_100} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_100} :catch_d3
    .catchall {:try_start_f4 .. :try_end_100} :catchall_104

    .line 274
    :cond_100
    invoke-virtual {p0}, Lcom/mqunar/tools/b;->destroy()V

    goto :goto_b6

    :catchall_104
    move-exception v0

    invoke-virtual {p0}, Lcom/mqunar/tools/b;->destroy()V

    throw v0
.end method
