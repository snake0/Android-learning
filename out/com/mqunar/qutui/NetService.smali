.class public Lcom/mqunar/qutui/NetService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final ACTION_MESSAGE_CONNECT_STATE:Ljava/lang/String; = "com.mqunar.dispatcher.MESSAGE_CONNECT_STATE"

.field private static h:Z


# instance fields
.field a:Lcom/mqunar/qutui/NotificationReceiver;

.field b:Lcom/mqunar/qutui/KeepLiveReceiver;

.field private final c:Ljava/lang/String;

.field private d:Lcom/mqunar/cock/network/ImListener;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/mqunar/qutui/OnIMMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/mqunar/qutui/IQutuiInterface$Stub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mqunar/qutui/NetService;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    const-string v0, "NetService"

    iput-object v0, p0, Lcom/mqunar/qutui/NetService;->c:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/mqunar/qutui/NetService;->a:Lcom/mqunar/qutui/NotificationReceiver;

    .line 26
    iput-object v1, p0, Lcom/mqunar/qutui/NetService;->b:Lcom/mqunar/qutui/KeepLiveReceiver;

    .line 30
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/qutui/NetService;->g:Landroid/os/RemoteCallbackList;

    .line 33
    new-instance v0, Lcom/mqunar/qutui/c;

    invoke-direct {v0, p0}, Lcom/mqunar/qutui/c;-><init>(Lcom/mqunar/qutui/NetService;)V

    iput-object v0, p0, Lcom/mqunar/qutui/NetService;->i:Lcom/mqunar/qutui/IQutuiInterface$Stub;

    return-void
.end method

.method static synthetic a(Lcom/mqunar/qutui/NetService;)Landroid/os/RemoteCallbackList;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mqunar/qutui/NetService;->g:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mqunar/qutui/NetService;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 189
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_1e

    .line 192
    :try_start_a
    iget-object v0, p0, Lcom/mqunar/qutui/NetService;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qutui/OnIMMessage;

    invoke-interface {v0}, Lcom/mqunar/qutui/OnIMMessage;->onConnected()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_19

    .line 189
    :goto_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 193
    :catch_19
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 197
    :cond_1e
    iget-object v0, p0, Lcom/mqunar/qutui/NetService;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 198
    return-void
.end method

.method static synthetic a(Lcom/mqunar/qutui/NetService;[B)V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/mqunar/qutui/NetService;->a([B)V

    return-void
.end method

.method private a([B)V
    .registers 5

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/qutui/NetService;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_19

    move-result v2

    .line 176
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_23

    .line 179
    :try_start_a
    iget-object v0, p0, Lcom/mqunar/qutui/NetService;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qutui/OnIMMessage;

    invoke-interface {v0, p1}, Lcom/mqunar/qutui/OnIMMessage;->onImMessage([B)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_1e

    .line 176
    :goto_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 172
    :catch_19
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    :goto_1d
    return-void

    .line 180
    :catch_1e
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 184
    :cond_23
    iget-object v0, p0, Lcom/mqunar/qutui/NetService;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1d
.end method

.method private b()V
    .registers 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mqunar/qutui/NetService;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 202
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_1e

    .line 205
    :try_start_a
    iget-object v0, p0, Lcom/mqunar/qutui/NetService;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qutui/OnIMMessage;

    invoke-interface {v0}, Lcom/mqunar/qutui/OnIMMessage;->onClosed()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_19

    .line 202
    :goto_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 206
    :catch_19
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 210
    :cond_1e
    iget-object v0, p0, Lcom/mqunar/qutui/NetService;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 211
    return-void
.end method

.method static synthetic b(Lcom/mqunar/qutui/NetService;)V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mqunar/qutui/NetService;->a()V

    return-void
.end method

.method static synthetic c(Lcom/mqunar/qutui/NetService;)V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mqunar/qutui/NetService;->b()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mqunar/qutui/NetService;->h:Z

    .line 72
    iget-object v0, p0, Lcom/mqunar/qutui/NetService;->i:Lcom/mqunar/qutui/IQutuiInterface$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mqunar/qutui/NetService;->h:Z

    .line 80
    new-instance v0, Lcom/mqunar/qutui/d;

    invoke-direct {v0, p0}, Lcom/mqunar/qutui/d;-><init>(Lcom/mqunar/qutui/NetService;)V

    iput-object v0, p0, Lcom/mqunar/qutui/NetService;->d:Lcom/mqunar/cock/network/ImListener;

    .line 100
    invoke-static {}, Lcom/mqunar/cock/network/CockHandler;->getInstance()Lcom/mqunar/cock/network/CockHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/qutui/NetService;->d:Lcom/mqunar/cock/network/ImListener;

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/CockHandler;->registerImListener(Lcom/mqunar/cock/network/ImListener;)V

    .line 101
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 156
    const-string v0, "SERVICE DESTROY"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :try_start_b
    iget-object v0, p0, Lcom/mqunar/qutui/NetService;->a:Lcom/mqunar/qutui/NotificationReceiver;

    invoke-virtual {p0, v0}, Lcom/mqunar/qutui/NetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    iget-object v0, p0, Lcom/mqunar/qutui/NetService;->b:Lcom/mqunar/qutui/KeepLiveReceiver;

    invoke-virtual {p0, v0}, Lcom/mqunar/qutui/NetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    invoke-static {}, Lcom/mqunar/cock/network/CockHandler;->getInstance()Lcom/mqunar/cock/network/CockHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/qutui/NetService;->d:Lcom/mqunar/cock/network/ImListener;

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/CockHandler;->unregisterImListener(Lcom/mqunar/cock/network/ImListener;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_22

    .line 165
    :goto_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/qutui/NetService;->d:Lcom/mqunar/cock/network/ImListener;

    .line 166
    return-void

    .line 161
    :catch_22
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    if-eqz p1, :cond_52

    :try_start_4
    const-class v0, Lcom/mqunar/qutui/NetService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 107
    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    sget-boolean v1, Lcom/mqunar/qutui/NetService;->h:Z

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCommand form source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", effectiveWakeUp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0}, Lcom/mqunar/qutui/NetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mqunar/qutui/QutuiLog;->getInstance(Landroid/content/Context;)Lcom/mqunar/qutui/QutuiLog;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/qutui/QutuiLog;->a(Ljava/lang/String;Z)V

    .line 112
    :cond_52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mqunar/qutui/NetService;->h:Z

    .line 113
    invoke-virtual {p0}, Lcom/mqunar/qutui/NetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/qutui/QutuiLog;->getInstance(Landroid/content/Context;)Lcom/mqunar/qutui/QutuiLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/qutui/QutuiLog;->a()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_60} :catch_e0

    .line 118
    :goto_60
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance v1, Lcom/mqunar/qutui/NotificationReceiver;

    invoke-direct {v1}, Lcom/mqunar/qutui/NotificationReceiver;-><init>()V

    iput-object v1, p0, Lcom/mqunar/qutui/NetService;->a:Lcom/mqunar/qutui/NotificationReceiver;

    .line 120
    iget-object v1, p0, Lcom/mqunar/qutui/NetService;->a:Lcom/mqunar/qutui/NotificationReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mqunar/qutui/NetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    new-instance v0, Lcom/mqunar/qutui/KeepLiveReceiver;

    invoke-direct {v0}, Lcom/mqunar/qutui/KeepLiveReceiver;-><init>()V

    iput-object v0, p0, Lcom/mqunar/qutui/NetService;->b:Lcom/mqunar/qutui/KeepLiveReceiver;

    .line 122
    if-eqz p1, :cond_8c

    .line 123
    const-string v0, "yid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/qutui/NetService;->e:Ljava/lang/String;

    .line 124
    const-string v0, "isRelease"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mqunar/qutui/NetService;->f:Z

    .line 126
    :cond_8c
    iget-object v0, p0, Lcom/mqunar/qutui/NetService;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 128
    :try_start_94
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->getGid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/qutui/NetService;->e:Ljava/lang/String;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9e} :catch_e6

    .line 134
    :cond_9e
    :goto_9e
    :try_start_9e
    invoke-static {}, Lcom/mqunar/cock/network/CockHandler;->getInstance()Lcom/mqunar/cock/network/CockHandler;

    move-result-object v0

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/GlobalEnv;->isRelease()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/CockHandler;->setRelease(Z)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_ad} :catch_eb

    .line 139
    :goto_ad
    invoke-static {}, Lcom/mqunar/cock/network/CockHandler;->getInstance()Lcom/mqunar/cock/network/CockHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/qutui/NetService;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mqunar/cock/network/CockHandler;->setYid(Ljava/lang/String;)V

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "com.mqunar.dispatcher.MESSAGE_CONNECT_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v0, "NetService"

    const-string v1, "onStartCommand"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getInstance()Lcom/mqunar/cock/network/OneKeyCremation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/cock/network/OneKeyCremation;->oneKeyCremation()Z

    .line 150
    return v5

    .line 114
    :catch_e0
    move-exception v0

    .line 115
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_60

    .line 129
    :catch_e6
    move-exception v0

    .line 130
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_9e

    .line 135
    :catch_eb
    move-exception v0

    .line 136
    invoke-static {}, Lcom/mqunar/cock/network/CockHandler;->getInstance()Lcom/mqunar/cock/network/CockHandler;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mqunar/qutui/NetService;->f:Z

    invoke-virtual {v1, v2}, Lcom/mqunar/cock/network/CockHandler;->setRelease(Z)V

    .line 137
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_ad
.end method
