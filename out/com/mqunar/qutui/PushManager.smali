.class public Lcom/mqunar/qutui/PushManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/mqunar/qutui/PushManager;


# instance fields
.field a:Ljava/lang/Boolean;

.field private final b:Ljava/lang/String;

.field private d:Lcom/mqunar/qutui/IQutuiInterface;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mqunar/qutui/PushManager$OnImMessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/qutui/PushListener;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/content/ServiceConnection;

.field private i:Lcom/mqunar/qutui/OnIMMessage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lcom/mqunar/qutui/PushManager;

    invoke-direct {v0}, Lcom/mqunar/qutui/PushManager;-><init>()V

    sput-object v0, Lcom/mqunar/qutui/PushManager;->c:Lcom/mqunar/qutui/PushManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "PushManager"

    iput-object v0, p0, Lcom/mqunar/qutui/PushManager;->b:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/qutui/PushManager;->f:Ljava/util/ArrayList;

    .line 60
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/qutui/PushManager;->a:Ljava/lang/Boolean;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/qutui/PushManager;->g:Ljava/util/Map;

    .line 150
    new-instance v0, Lcom/mqunar/qutui/g;

    invoke-direct {v0, p0}, Lcom/mqunar/qutui/g;-><init>(Lcom/mqunar/qutui/PushManager;)V

    iput-object v0, p0, Lcom/mqunar/qutui/PushManager;->h:Landroid/content/ServiceConnection;

    .line 187
    new-instance v0, Lcom/mqunar/qutui/h;

    invoke-direct {v0, p0}, Lcom/mqunar/qutui/h;-><init>(Lcom/mqunar/qutui/PushManager;)V

    iput-object v0, p0, Lcom/mqunar/qutui/PushManager;->i:Lcom/mqunar/qutui/OnIMMessage;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/mqunar/qutui/PushManager;Lcom/mqunar/qutui/IQutuiInterface;)Lcom/mqunar/qutui/IQutuiInterface;
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mqunar/qutui/PushManager;->d:Lcom/mqunar/qutui/IQutuiInterface;

    return-object p1
.end method

.method static synthetic a(Lcom/mqunar/qutui/PushManager;)Lcom/mqunar/qutui/OnIMMessage;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mqunar/qutui/PushManager;->i:Lcom/mqunar/qutui/OnIMMessage;

    return-object v0
.end method

.method private a()V
    .registers 5

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mqunar/qutui/PushManager;->e:Landroid/content/Context;

    const-class v2, Lcom/mqunar/qutui/NetService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    iget-object v1, p0, Lcom/mqunar/qutui/PushManager;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/mqunar/qutui/PushManager;->h:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 180
    return-void
.end method

.method static synthetic b(Lcom/mqunar/qutui/PushManager;)Lcom/mqunar/qutui/IQutuiInterface;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mqunar/qutui/PushManager;->d:Lcom/mqunar/qutui/IQutuiInterface;

    return-object v0
.end method

.method static synthetic c(Lcom/mqunar/qutui/PushManager;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mqunar/qutui/PushManager;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 126
    const/4 v1, 0x0

    .line 128
    :try_start_2
    const-string v0, "android.ddm.DdmHandleAppName"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 129
    const-string v2, "getAppName"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1a} :catch_4f

    move-object v1, v0

    .line 132
    :goto_1b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 133
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 134
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 135
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 138
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_35

    .line 139
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 144
    :cond_47
    const-string v0, "PushManager"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    return-object v1

    .line 130
    :catch_4f
    move-exception v0

    goto :goto_1b
.end method

.method public static getInstance()Lcom/mqunar/qutui/PushManager;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/mqunar/qutui/PushManager;->c:Lcom/mqunar/qutui/PushManager;

    return-object v0
.end method


# virtual methods
.method public OneKeyCremation()Z
    .registers 2

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/qutui/PushManager;->d:Lcom/mqunar/qutui/IQutuiInterface;

    invoke-interface {v0}, Lcom/mqunar/qutui/IQutuiInterface;->oneKeyCremation()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 233
    :goto_6
    return v0

    .line 230
    :catch_7
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public dispatchMessage(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 72
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 73
    const-string v0, "topic"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v2, p0, Lcom/mqunar/qutui/PushManager;->g:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 75
    iget-object v2, p0, Lcom/mqunar/qutui/PushManager;->g:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qutui/PushListener;

    invoke-interface {v0, v1}, Lcom/mqunar/qutui/PushListener;->onPush(Lcom/alibaba/fastjson/JSONObject;)V

    .line 77
    :cond_1d
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mqunar/qutui/PushManager;->e:Landroid/content/Context;

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_12

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 82
    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mqunar/qutui/KActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    :try_start_1e
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_5f

    .line 91
    :cond_21
    :goto_21
    const-string v0, "PushManager"

    const-string v1, "PushManager init"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    new-instance v0, Lcom/mqunar/qutui/KeepLiveReceiver;

    invoke-direct {v0}, Lcom/mqunar/qutui/KeepLiveReceiver;-><init>()V

    .line 93
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mqunar/qutui/NetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    const-string v1, "yid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "isRelease"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    :try_start_58
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_5b
    .catch Ljava/lang/IllegalStateException; {:try_start_58 .. :try_end_5b} :catch_64

    .line 106
    :goto_5b
    invoke-direct {p0}, Lcom/mqunar/qutui/PushManager;->a()V

    .line 107
    return-void

    .line 86
    :catch_5f
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_21

    .line 103
    :catch_64
    move-exception v0

    .line 104
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5b
.end method

.method public isPushProcess(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 122
    const-string v0, "com.Qunar:qutui"

    invoke-static {p1}, Lcom/mqunar/qutui/PushManager;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerImListner(Lcom/mqunar/qutui/PushManager$OnImMessageListener;)V
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mqunar/qutui/PushManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public registerTopic(Ljava/lang/String;Lcom/mqunar/qutui/PushListener;)V
    .registers 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mqunar/qutui/PushManager;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public sendImMessage([B)V
    .registers 3

    .prologue
    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/qutui/PushManager;->d:Lcom/mqunar/qutui/IQutuiInterface;

    invoke-interface {v0, p1}, Lcom/mqunar/qutui/IQutuiInterface;->sendImMessage([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 225
    :goto_5
    return-void

    .line 222
    :catch_6
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public setDebugMode(Z)V
    .registers 3

    .prologue
    .line 118
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/qutui/PushManager;->a:Ljava/lang/Boolean;

    .line 119
    return-void
.end method

.method public startPush()V
    .registers 2

    .prologue
    .line 114
    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getInstance()Lcom/mqunar/cock/network/OneKeyCremation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/cock/network/OneKeyCremation;->startPush()V

    .line 115
    return-void
.end method

.method public stopPush()V
    .registers 2

    .prologue
    .line 110
    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getInstance()Lcom/mqunar/cock/network/OneKeyCremation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/cock/network/OneKeyCremation;->stopPush()V

    .line 111
    return-void
.end method

.method public unregisterImListener(Lcom/mqunar/qutui/PushManager$OnImMessageListener;)V
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mqunar/qutui/PushManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public unregisterTopic(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mqunar/qutui/PushManager;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method
