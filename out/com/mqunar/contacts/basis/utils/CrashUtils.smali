.class public Lcom/mqunar/contacts/basis/utils/CrashUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 13
    if-nez p0, :cond_5

    .line 14
    const-string v0, ""

    .line 31
    :goto_4
    return-object v0

    :cond_5
    move-object v0, p0

    .line 20
    :goto_6
    if-eqz v0, :cond_14

    .line 21
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_f

    .line 22
    const-string v0, ""

    goto :goto_4

    .line 24
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_6

    .line 27
    :cond_14
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 28
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 30
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 31
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
