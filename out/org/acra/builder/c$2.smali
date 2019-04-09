.class Lorg/acra/builder/c$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lorg/acra/builder/c$a;

.field final synthetic b:Lorg/acra/builder/ReportBuilder;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Z

.field final synthetic e:Lorg/acra/builder/c;


# direct methods
.method constructor <init>(Lorg/acra/builder/c;Lorg/acra/builder/c$a;Lorg/acra/builder/ReportBuilder;Ljava/io/File;Z)V
    .registers 6

    .prologue
    .line 201
    iput-object p1, p0, Lorg/acra/builder/c$2;->e:Lorg/acra/builder/c;

    iput-object p2, p0, Lorg/acra/builder/c$2;->a:Lorg/acra/builder/c$a;

    iput-object p3, p0, Lorg/acra/builder/c$2;->b:Lorg/acra/builder/ReportBuilder;

    iput-object p4, p0, Lorg/acra/builder/c$2;->c:Ljava/io/File;

    iput-boolean p5, p0, Lorg/acra/builder/c$2;->d:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 205
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for 2000 millis from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/builder/c$2;->a:Lorg/acra/builder/c$a;

    invoke-static {v3}, Lorg/acra/builder/c$a;->a(Lorg/acra/builder/c$a;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-wide/16 v0, 0x7d0

    iget-object v2, p0, Lorg/acra/builder/c$2;->a:Lorg/acra/builder/c$a;

    invoke-virtual {v2}, Lorg/acra/builder/c$a;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 211
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_40

    :try_start_3d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_40} :catch_55

    .line 215
    :cond_40
    :goto_40
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "Finished waiting for Toast"

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lorg/acra/builder/c$2;->e:Lorg/acra/builder/c;

    iget-object v1, p0, Lorg/acra/builder/c$2;->b:Lorg/acra/builder/ReportBuilder;

    iget-object v2, p0, Lorg/acra/builder/c$2;->c:Ljava/io/File;

    iget-boolean v3, p0, Lorg/acra/builder/c$2;->d:Z

    invoke-static {v0, v1, v2, v3}, Lorg/acra/builder/c;->a(Lorg/acra/builder/c;Lorg/acra/builder/ReportBuilder;Ljava/io/File;Z)V

    .line 217
    return-void

    .line 212
    :catch_55
    move-exception v0

    .line 213
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v3, "Interrupted while waiting for Toast to end."

    invoke-interface {v1, v2, v3, v0}, Lorg/acra/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40
.end method
