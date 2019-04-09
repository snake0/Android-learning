.class public abstract Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static currentLauncherFragmentActivityIndex:I

.field private static fragmentList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;",
            ">;"
        }
    .end annotation
.end field

.field private static id:I

.field private static launcherActivitys:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    .line 19
    sput v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->currentLauncherFragmentActivityIndex:I

    .line 20
    sput v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->id:I

    .line 22
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity1;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity2;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity3;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity4;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity5;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity6;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity7;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity8;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity9;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity10;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity11;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity12;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity13;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity14;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity15;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity16;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity17;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity18;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity19;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity20;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity21;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity22;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity23;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity24;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity25;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity26;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity27;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity28;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity29;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    const-class v1, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivity30;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    return-void
.end method

.method static addFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 229
    :goto_e
    return-void

    .line 225
    :cond_f
    const v1, 0x1020004

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 228
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_e
.end method

.method public static addSingleTopFragmentActivity(Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    sget-object v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 158
    :try_start_3
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;

    .line 162
    iget-object v0, v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;->fragmentClass:Ljava/lang/Class;

    if-eq v0, p1, :cond_40

    .line 163
    new-instance v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;

    invoke-direct {v0}, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;-><init>()V

    .line 164
    iput-object p1, v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;->fragmentClass:Ljava/lang/Class;

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;->ActivityClass:Ljava/lang/Class;

    .line 166
    sget v2, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->currentLauncherFragmentActivityIndex:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->currentLauncherFragmentActivityIndex:I

    .line 167
    sget v2, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->id:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->id:I

    .line 168
    sget v2, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->id:I

    iput v2, v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;->id:I

    .line 169
    sget v2, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->id:I

    iput v2, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->_id:I

    .line 170
    sget-object v2, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 174
    :cond_40
    monitor-exit v1

    .line 175
    return-void

    .line 174
    :catchall_42
    move-exception v0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public static cleanTopFragmentActivity(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    sget-object v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_2c

    .line 74
    :try_start_3
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 75
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 76
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;

    .line 77
    iget-object v4, v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;->fragmentClass:Ljava/lang/Class;

    if-ne v4, p0, :cond_25

    .line 84
    :cond_1e
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    .line 85
    monitor-exit v1

    .line 89
    :goto_24
    return-void

    .line 80
    :cond_25
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 85
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2c} :catch_2c

    .line 86
    :catch_2c
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method

.method public static findFragmentByTag(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 3

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 266
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static finishLauncherFragmentActivity(Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;)V
    .registers 5

    .prologue
    .line 143
    sget-object v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 144
    :try_start_3
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 145
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;

    .line 146
    iget v0, v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;->id:I

    iget v3, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->_id:I

    if-ne v0, v3, :cond_9

    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 152
    :cond_1e
    monitor-exit v1

    .line 153
    return-void

    .line 152
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0
.end method

.method static getCurrFragment(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;
    .registers 3

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 233
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 234
    return-object v0
.end method

.method public static getFreeLauncherFragmentActivity(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    sget-object v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_23

    .line 57
    :try_start_3
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;

    .line 59
    iget-object v3, v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;->fragmentClass:Ljava/lang/Class;

    if-ne v3, p0, :cond_9

    .line 60
    iget-object v0, v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;->ActivityClass:Ljava/lang/Class;

    monitor-exit v1

    .line 68
    :goto_1c
    return-object v0

    .line 63
    :cond_1d
    monitor-exit v1

    .line 68
    :goto_1e
    const/4 v0, 0x0

    goto :goto_1c

    .line 63
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    :try_start_22
    throw v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_23} :catch_23

    .line 65
    :catch_23
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method public static getId()I
    .registers 1

    .prologue
    .line 138
    sget v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->id:I

    return v0
.end method

.method public static getLauncherFragmentActivity(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 101
    sget-object v4, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    monitor-enter v4

    .line 102
    :try_start_4
    sget v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->currentLauncherFragmentActivityIndex:I

    sget-object v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    sput v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->currentLauncherFragmentActivityIndex:I

    .line 103
    sget v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->currentLauncherFragmentActivityIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->currentLauncherFragmentActivityIndex:I

    .line 104
    sget v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->id:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->id:I

    .line 105
    sget-object v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 107
    sget-object v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sget-object v3, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4d

    move-object v1, v0

    .line 109
    :goto_32
    const/4 v3, 0x1

    .line 110
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;

    .line 111
    iget-object v0, v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;->ActivityClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_39

    move v0, v2

    .line 116
    :goto_4a
    if-eqz v0, :cond_64

    move-object v0, v1

    .line 127
    :cond_4d
    new-instance v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;

    invoke-direct {v1}, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;-><init>()V

    .line 128
    iput-object p0, v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;->fragmentClass:Ljava/lang/Class;

    .line 129
    iput-object v0, v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;->ActivityClass:Ljava/lang/Class;

    .line 130
    invoke-static {}, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->getId()I

    move-result v2

    iput v2, v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;->id:I

    .line 131
    sget-object v2, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 133
    monitor-exit v4

    return-object v0

    .line 120
    :cond_64
    sget v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->currentLauncherFragmentActivityIndex:I

    sget-object v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    sput v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->currentLauncherFragmentActivityIndex:I

    .line 121
    sget v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->currentLauncherFragmentActivityIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->currentLauncherFragmentActivityIndex:I

    .line 122
    sget v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->id:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->id:I

    .line 123
    sget-object v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->launcherActivitys:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .line 124
    goto :goto_32

    .line 134
    :catchall_85
    move-exception v0

    monitor-exit v4
    :try_end_87
    .catchall {:try_start_4 .. :try_end_87} :catchall_85

    throw v0

    :cond_88
    move v0, v3

    goto :goto_4a
.end method

.method public static hideFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V
    .registers 4

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 279
    :goto_e
    return-void

    .line 276
    :cond_f
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 278
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_e
.end method

.method public static isHaveFragments(Landroid/support/v4/app/FragmentActivity;)Z
    .registers 2

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 311
    if-lez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static onPauseLauncherFragmentActivity(Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;)V
    .registers 6

    .prologue
    .line 179
    sget-object v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 180
    :try_start_3
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 181
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;

    .line 182
    iget v3, v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;->id:I

    iget v4, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->_id:I

    if-ne v3, v4, :cond_9

    .line 183
    const/4 v2, 0x1

    iput v2, v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;->state:I

    .line 188
    :cond_1e
    monitor-exit v1

    .line 189
    return-void

    .line 188
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public static onResumeLauncherFragmentActivity(Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;)V
    .registers 6

    .prologue
    .line 193
    sget-object v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 195
    :try_start_3
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 196
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;

    .line 197
    iget v3, v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;->id:I

    iget v4, p0, Lcom/mqunar/core/basectx/launcherfragment/LauncherFragmentActivityBase;->_id:I

    if-ne v3, v4, :cond_9

    .line 198
    const/4 v3, 0x0

    iput v3, v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;->state:I

    goto :goto_9

    .line 212
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1f

    .line 213
    return-void
.end method

.method public static printStack(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 92
    sget-object v1, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 93
    :try_start_3
    sget-object v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager;->fragmentList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 94
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/basectx/launcherfragment/QFragmentManager$FragmentItem;

    goto :goto_9

    .line 96
    :cond_16
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public static removeFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 298
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 306
    :goto_e
    return-void

    .line 301
    :cond_f
    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 303
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 304
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_e
.end method

.method static replaceFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 242
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 248
    :goto_e
    return-void

    .line 245
    :cond_f
    const v1, 0x1020004

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 246
    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 247
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_e
.end method

.method static replaceFragmentNotStack(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 261
    :goto_e
    return-void

    .line 258
    :cond_f
    const v1, 0x1020004

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 260
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_e
.end method

.method public static showFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V
    .registers 4

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 285
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 291
    :goto_e
    return-void

    .line 288
    :cond_f
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 290
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_e
.end method
