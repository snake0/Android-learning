.class public final Lcom/mqunar/tools/log/QLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/tools/log/QLog$Clerk;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/mqunar/tools/log/QLog$Clerk;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 139
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/mqunar/tools/log/QLog;->a:Ljava/util/List;

    .line 142
    new-instance v0, Lcom/mqunar/tools/log/a;

    invoke-direct {v0}, Lcom/mqunar/tools/log/a;-><init>()V

    sput-object v0, Lcom/mqunar/tools/log/QLog;->b:Lcom/mqunar/tools/log/QLog$Clerk;

    .line 261
    new-instance v0, Lcom/mqunar/tools/log/QLogInit;

    invoke-direct {v0}, Lcom/mqunar/tools/log/QLogInit;-><init>()V

    .line 262
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/mqunar/tools/log/QLog;->a:Ljava/util/List;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 131
    sget-object v0, Lcom/mqunar/tools/log/QLog;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/tools/log/QLog$Clerk;

    .line 132
    instance-of v2, v0, Lcom/mqunar/tools/log/QLog$Markable;

    if-eqz v2, :cond_6

    .line 133
    check-cast v0, Lcom/mqunar/tools/log/QLog$Markable;

    invoke-interface {v0, p0}, Lcom/mqunar/tools/log/QLog$Markable;->tag(Ljava/lang/String;)V

    goto :goto_6

    .line 136
    :cond_1c
    return-void
.end method

.method public static close(Lcom/mqunar/tools/log/QLog$Clerk;)V
    .registers 4

    .prologue
    .line 116
    const/4 v0, 0x0

    sget-object v1, Lcom/mqunar/tools/log/QLog;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_7
    if-ge v0, v1, :cond_1a

    .line 117
    sget-object v2, Lcom/mqunar/tools/log/QLog;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_17

    .line 118
    sget-object v1, Lcom/mqunar/tools/log/QLog;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 119
    return-void

    .line 116
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 122
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot close clerk which is not open: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static closeAll()V
    .registers 1

    .prologue
    .line 127
    sget-object v0, Lcom/mqunar/tools/log/QLog;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    return-void
.end method

.method public static crash(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 98
    sget-object v0, Lcom/mqunar/tools/log/QLog;->b:Lcom/mqunar/tools/log/QLog$Clerk;

    invoke-interface {v0, p0, p1}, Lcom/mqunar/tools/log/QLog$Clerk;->crash(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 53
    invoke-static {p0}, Lcom/mqunar/tools/log/QLog;->a(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/mqunar/tools/log/QLog;->b:Lcom/mqunar/tools/log/QLog$Clerk;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/tools/log/QLog$Clerk;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 59
    sget-object v0, Lcom/mqunar/tools/log/QLog;->b:Lcom/mqunar/tools/log/QLog$Clerk;

    invoke-interface {v0, p0, p1}, Lcom/mqunar/tools/log/QLog$Clerk;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 81
    invoke-static {p0}, Lcom/mqunar/tools/log/QLog;->a(Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/mqunar/tools/log/QLog;->b:Lcom/mqunar/tools/log/QLog$Clerk;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/tools/log/QLog$Clerk;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 86
    sget-object v0, Lcom/mqunar/tools/log/QLog;->b:Lcom/mqunar/tools/log/QLog$Clerk;

    invoke-interface {v0, p0, p1}, Lcom/mqunar/tools/log/QLog$Clerk;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 94
    sget-object v0, Lcom/mqunar/tools/log/QLog;->b:Lcom/mqunar/tools/log/QLog$Clerk;

    invoke-interface {v0, p0}, Lcom/mqunar/tools/log/QLog$Clerk;->e(Ljava/lang/Throwable;)V

    .line 95
    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 90
    sget-object v0, Lcom/mqunar/tools/log/QLog;->b:Lcom/mqunar/tools/log/QLog$Clerk;

    invoke-interface {v0, p0, p1, p2}, Lcom/mqunar/tools/log/QLog$Clerk;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public static getCrashes()Ljava/util/Map;
    .registers 1
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
    .line 102
    sget-object v0, Lcom/mqunar/tools/log/QLog;->b:Lcom/mqunar/tools/log/QLog$Clerk;

    invoke-interface {v0}, Lcom/mqunar/tools/log/QLog$Clerk;->getCrashes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 63
    invoke-static {p0}, Lcom/mqunar/tools/log/QLog;->a(Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/mqunar/tools/log/QLog;->b:Lcom/mqunar/tools/log/QLog$Clerk;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/tools/log/QLog$Clerk;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 68
    sget-object v0, Lcom/mqunar/tools/log/QLog;->b:Lcom/mqunar/tools/log/QLog$Clerk;

    invoke-interface {v0, p0, p1}, Lcom/mqunar/tools/log/QLog$Clerk;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public static open(Lcom/mqunar/tools/log/QLog$Clerk;)V
    .registers 2

    .prologue
    .line 110
    if-eqz p0, :cond_f

    sget-object v0, Lcom/mqunar/tools/log/QLog;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 111
    sget-object v0, Lcom/mqunar/tools/log/QLog;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_f
    return-void
.end method

.method public static printDuration(J)J
    .registers 8

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    .line 29
    const-string v3, "Performance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v4, v0, p0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    return-wide v0
.end method

.method public static printLogPos(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public static removeCrash(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 106
    sget-object v0, Lcom/mqunar/tools/log/QLog;->b:Lcom/mqunar/tools/log/QLog$Clerk;

    invoke-interface {v0, p0}, Lcom/mqunar/tools/log/QLog$Clerk;->removeCrash(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 44
    invoke-static {p0}, Lcom/mqunar/tools/log/QLog;->a(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/mqunar/tools/log/QLog;->b:Lcom/mqunar/tools/log/QLog$Clerk;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/tools/log/QLog$Clerk;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 49
    sget-object v0, Lcom/mqunar/tools/log/QLog;->b:Lcom/mqunar/tools/log/QLog$Clerk;

    invoke-interface {v0, p0, p1}, Lcom/mqunar/tools/log/QLog$Clerk;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 72
    invoke-static {p0}, Lcom/mqunar/tools/log/QLog;->a(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/mqunar/tools/log/QLog;->b:Lcom/mqunar/tools/log/QLog$Clerk;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/tools/log/QLog$Clerk;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 77
    sget-object v0, Lcom/mqunar/tools/log/QLog;->b:Lcom/mqunar/tools/log/QLog$Clerk;

    invoke-interface {v0, p0, p1}, Lcom/mqunar/tools/log/QLog$Clerk;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    return-void
.end method
