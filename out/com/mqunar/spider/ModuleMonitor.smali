.class public Lcom/mqunar/spider/ModuleMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_MODULE_INSTALL_MONITOR_LOG:Ljava/lang/String; = "module_install_monitor_log"

.field public static final KEY_MODULE_MONITOR:Ljava/lang/String; = "module_monitor"

.field public static final KEY_MODULE_SHOWTIME_MONITOR_LOG:Ljava/lang/String; = "module_showtime_monitor_log"

.field private static a:Z


# instance fields
.field public appCreateTime:J

.field private b:Lcom/mqunar/storage/Storage;

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/spider/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mqunar/spider/ModuleMonitor;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-class v1, Lcom/mqunar/spider/ModuleMonitor;

    monitor-enter v1

    .line 40
    :try_start_6
    sget-boolean v0, Lcom/mqunar/spider/ModuleMonitor;->a:Z

    if-nez v0, :cond_21

    .line 41
    sget-boolean v0, Lcom/mqunar/spider/ModuleMonitor;->a:Z

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_f
    sput-boolean v0, Lcom/mqunar/spider/ModuleMonitor;->a:Z

    .line 42
    invoke-static {}, Lcom/mqunar/spider/QunarApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "module_monitor"

    invoke-static {v0, v2}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/spider/ModuleMonitor;->b:Lcom/mqunar/storage/Storage;

    .line 46
    monitor-exit v1

    .line 47
    return-void

    .line 41
    :cond_1f
    const/4 v0, 0x0

    goto :goto_f

    .line 44
    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "ModuleMonitor has one instance\uff01"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method synthetic constructor <init>(Lcom/mqunar/spider/a;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mqunar/spider/ModuleMonitor;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mqunar/spider/ModuleMonitor;->d:Ljava/util/List;

    if-nez v0, :cond_f

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/spider/ModuleMonitor;->d:Ljava/util/List;

    .line 115
    :cond_f
    iget-object v0, p0, Lcom/mqunar/spider/ModuleMonitor;->d:Ljava/util/List;

    new-instance v1, Lcom/mqunar/spider/c;

    invoke-direct {v1, p1, p2}, Lcom/mqunar/spider/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {p0}, Lcom/mqunar/spider/ModuleMonitor;->send()V

    .line 117
    return-void
.end method

.method public static getInstance()Lcom/mqunar/spider/ModuleMonitor;
    .registers 1

    .prologue
    .line 64
    invoke-static {}, Lcom/mqunar/spider/b;->a()Lcom/mqunar/spider/ModuleMonitor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public monitorModule(Lcom/mqunar/module/ModuleInfo;JZ)V
    .registers 8

    .prologue
    .line 75
    if-eqz p4, :cond_9

    .line 76
    invoke-static {}, Lcom/mqunar/spider/ModuleMonitor;->getInstance()Lcom/mqunar/spider/ModuleMonitor;

    move-result-object v0

    invoke-virtual {v0, p1, p4}, Lcom/mqunar/spider/ModuleMonitor;->writeMonitorModule(Lcom/mqunar/module/ModuleInfo;Z)V

    .line 78
    :cond_9
    const-string v0, "module_install_monitor_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moduleName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v2, v2, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&loadTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&firstLoad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mqunar/spider/ModuleMonitor;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onQAVCreate()V
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/mqunar/spider/ModuleMonitor;->c:Z

    if-nez v0, :cond_7

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/spider/ModuleMonitor;->c:Z

    .line 71
    :cond_7
    invoke-virtual {p0}, Lcom/mqunar/spider/ModuleMonitor;->send()V

    .line 72
    return-void
.end method

.method public readMonitorModule(Lcom/mqunar/module/ModuleInfo;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 88
    if-eqz p1, :cond_d

    .line 89
    iget-object v1, p0, Lcom/mqunar/spider/ModuleMonitor;->b:Lcom/mqunar/storage/Storage;

    iget-object v2, p1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v2, v2, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mqunar/storage/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 91
    :cond_d
    return v0
.end method

.method public send()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 120
    iget-boolean v0, p0, Lcom/mqunar/spider/ModuleMonitor;->c:Z

    if-eqz v0, :cond_b4

    .line 121
    iget-object v0, p0, Lcom/mqunar/spider/ModuleMonitor;->e:Ljava/lang/Object;

    if-nez v0, :cond_2e

    .line 122
    const-string v0, "com.mqunar.qav.trigger.QTrigger"

    .line 123
    const-string v1, "newLogTrigger"

    .line 125
    :try_start_d
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 126
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/mqunar/spider/QunarApp;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/spider/ModuleMonitor;->e:Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_2e} :catch_91

    .line 132
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/mqunar/spider/ModuleMonitor;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4d

    .line 134
    :try_start_32
    iget-object v0, p0, Lcom/mqunar/spider/ModuleMonitor;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/spider/ModuleMonitor;->f:Ljava/lang/reflect/Method;
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_4d} :catch_9c

    .line 140
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/mqunar/spider/ModuleMonitor;->e:Ljava/lang/Object;

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/mqunar/spider/ModuleMonitor;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/mqunar/spider/ModuleMonitor;->d:Ljava/util/List;

    if-eqz v0, :cond_b4

    .line 141
    iget-object v1, p0, Lcom/mqunar/spider/ModuleMonitor;->d:Ljava/util/List;

    monitor-enter v1

    .line 142
    :try_start_5c
    iget-object v0, p0, Lcom/mqunar/spider/ModuleMonitor;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b3

    .line 144
    iget-object v0, p0, Lcom/mqunar/spider/ModuleMonitor;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 145
    :goto_6a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 146
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/spider/c;
    :try_end_76
    .catchall {:try_start_5c .. :try_end_76} :catchall_8e

    .line 148
    :try_start_76
    iget-object v3, p0, Lcom/mqunar/spider/ModuleMonitor;->f:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/mqunar/spider/ModuleMonitor;->e:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/mqunar/spider/c;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v0, v0, Lcom/mqunar/spider/c;->b:Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_76 .. :try_end_8a} :catch_a7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_76 .. :try_end_8a} :catch_b5
    .catchall {:try_start_76 .. :try_end_8a} :catchall_8e

    .line 152
    :goto_8a
    :try_start_8a
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_6a

    .line 155
    :catchall_8e
    move-exception v0

    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8a .. :try_end_90} :catchall_8e

    throw v0

    .line 127
    :catch_91
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2e

    .line 135
    :catch_9c
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4d

    .line 149
    :catch_a7
    move-exception v0

    .line 150
    :goto_a8
    :try_start_a8
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/mqunar/tools/log/QLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8a

    .line 155
    :cond_b3
    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_a8 .. :try_end_b4} :catchall_8e

    .line 158
    :cond_b4
    return-void

    .line 149
    :catch_b5
    move-exception v0

    goto :goto_a8
.end method

.method public writeAppAdTime(Ljava/lang/String;J)V
    .registers 5

    .prologue
    .line 104
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mqunar/spider/ModuleMonitor;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public writeAppStartCostTime(Ljava/lang/String;J)V
    .registers 5

    .prologue
    .line 100
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mqunar/spider/ModuleMonitor;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public writeMonitorModule(Lcom/mqunar/module/ModuleInfo;Z)V
    .registers 5

    .prologue
    .line 82
    if-eqz p1, :cond_b

    .line 83
    iget-object v0, p0, Lcom/mqunar/spider/ModuleMonitor;->b:Lcom/mqunar/storage/Storage;

    iget-object v1, p1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v1, v1, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/mqunar/storage/Storage;->putSmoothBoolean(Ljava/lang/String;Z)Z

    .line 85
    :cond_b
    return-void
.end method

.method public writeShowTime(Ljava/lang/String;J)V
    .registers 8

    .prologue
    .line 96
    const-string v0, "module_showtime_monitor_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&loadTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mqunar/spider/ModuleMonitor;->getInstance()Lcom/mqunar/spider/ModuleMonitor;

    move-result-object v2

    iget-wide v2, v2, Lcom/mqunar/spider/ModuleMonitor;->appCreateTime:J

    sub-long v2, p2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mqunar/spider/ModuleMonitor;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public writeTaskRunTime(J)V
    .registers 5

    .prologue
    .line 108
    const-string v0, "TaskRunTimeLog"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mqunar/spider/ModuleMonitor;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
