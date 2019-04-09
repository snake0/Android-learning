.class public abstract Lcom/mqunar/core/basectx/SchemeDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RESULT_BROADCAST_MESSAGE_ACTION:Ljava/lang/String; = "_RESULT_BROADCAST_MESSAGE_ACTION_"

.field public static final SPIDER_REQUESTCODE:Ljava/lang/String; = "_SPIDER_REQUESTCODE_"

.field public static final TARGET_SCHEME_CLEAR_TOP:Ljava/lang/String; = "_SPIDER_FLAG_CLEAR_TOP_"

.field public static final TARGET_SCHEME_URI:Ljava/lang/String; = "QUNAR_SPIDER_TARGET_SCHEME_URL"

.field private static homeScheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/core/basectx/SchemeDispatcher;->homeScheme:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHomeScheme(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 33
    sget-object v0, Lcom/mqunar/core/basectx/SchemeDispatcher;->homeScheme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MAIN_SCHEME"

    invoke-static {v0, v1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/core/basectx/SchemeDispatcher;->homeScheme:Ljava/lang/String;

    .line 36
    :cond_14
    sget-object v0, Lcom/mqunar/core/basectx/SchemeDispatcher;->homeScheme:Ljava/lang/String;

    return-object v0
.end method

.method public static getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 41
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 42
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_15
    return-object v0

    .line 47
    :cond_16
    :try_start_16
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1e} :catch_ac
    .catchall {:try_start_16 .. :try_end_1e} :catchall_bd

    .line 48
    :try_start_1e
    const-class v1, Landroid/content/res/AssetManager;

    const-string v3, "addAssetPath"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 49
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 51
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v7, v3, v6

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 52
    if-eqz v1, :cond_9e

    .line 53
    const-string v6, "http://schemas.android.com/apk/res/android"

    .line 54
    const-string v3, "AndroidManifest.xml"

    invoke-virtual {v0, v1, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_51} :catch_d6
    .catchall {:try_start_1e .. :try_end_51} :catchall_ca

    move-result-object v3

    .line 56
    :try_start_52
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    move v9, v1

    move v1, v5

    move v5, v9

    .line 57
    :goto_59
    if-eq v5, v4, :cond_9f

    .line 58
    packed-switch v5, :pswitch_data_e2

    .line 74
    :cond_5e
    :goto_5e
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    goto :goto_59

    .line 60
    :pswitch_63
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 61
    const-string v7, "meta-data"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 63
    const-string v1, "name"

    invoke-interface {v3, v6, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 65
    const-string v1, "value"

    invoke-interface {v3, v6, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_80} :catch_dc
    .catchall {:try_start_52 .. :try_end_80} :catchall_cf

    move-result-object v1

    .line 80
    if-eqz v3, :cond_86

    .line 81
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 83
    :cond_86
    if-eqz v0, :cond_8b

    .line 84
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    :cond_8b
    move-object v0, v1

    goto :goto_15

    :cond_8d
    move v1, v4

    .line 67
    goto :goto_5e

    .line 68
    :cond_8f
    if-eqz v1, :cond_5e

    .line 80
    if-eqz v3, :cond_96

    .line 81
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 83
    :cond_96
    if-eqz v0, :cond_9b

    .line 84
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    :cond_9b
    move-object v0, v2

    goto/16 :goto_15

    :cond_9e
    move-object v3, v2

    .line 80
    :cond_9f
    if-eqz v3, :cond_a4

    .line 81
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 83
    :cond_a4
    if-eqz v0, :cond_a9

    .line 84
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    :cond_a9
    :goto_a9
    move-object v0, v2

    .line 87
    goto/16 :goto_15

    .line 77
    :catch_ac
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 78
    :goto_af
    :try_start_af
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_d3

    .line 80
    if-eqz v3, :cond_b7

    .line 81
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 83
    :cond_b7
    if-eqz v1, :cond_a9

    .line 84
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    goto :goto_a9

    .line 80
    :catchall_bd
    move-exception v0

    move-object v3, v2

    :goto_bf
    if-eqz v3, :cond_c4

    .line 81
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 83
    :cond_c4
    if-eqz v2, :cond_c9

    .line 84
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    :cond_c9
    throw v0

    .line 80
    :catchall_ca
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_bf

    :catchall_cf
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_bf

    :catchall_d3
    move-exception v0

    move-object v2, v1

    goto :goto_bf

    .line 77
    :catch_d6
    move-exception v1

    move-object v3, v2

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_af

    :catch_dc
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_af

    .line 58
    nop

    :pswitch_data_e2
    .packed-switch 0x2
        :pswitch_63
    .end packed-switch
.end method

.method private static sendIntent(Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/Runnable;)V
    .registers 8

    .prologue
    .line 489
    :try_start_0
    const-string v0, "com.mqunar.dispatcher.DispatcherLogic"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 490
    const-string v1, "processIntent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 491
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 492
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 498
    :cond_2a
    :goto_2a
    return-void

    .line 493
    :catch_2b
    move-exception v0

    .line 494
    if-eqz p2, :cond_2a

    .line 495
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_2a
.end method

.method public static sendScheme(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 262
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendScheme(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZI)V

    .line 263
    return-void
.end method

.method public static sendScheme(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 318
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendScheme(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZI)V

    .line 319
    return-void
.end method

.method public static sendScheme(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-static {p0, p1, p2, v0, v0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendScheme(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZI)V

    .line 281
    return-void
.end method

.method public static sendScheme(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZI)V
    .registers 8

    .prologue
    .line 354
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    if-eqz p2, :cond_17

    .line 357
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 359
    :cond_17
    if-eqz p3, :cond_1f

    .line 360
    const-string v1, "_SPIDER_FLAG_CLEAR_TOP_"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 362
    :cond_1f
    if-eqz p4, :cond_24

    .line 363
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 366
    :cond_24
    new-instance v1, Lcom/mqunar/core/basectx/SchemeDispatcher$6;

    invoke-direct {v1, p0, v0}, Lcom/mqunar/core/basectx/SchemeDispatcher$6;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {p0, v0, v1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendIntent(Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method public static sendScheme(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 299
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendScheme(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZI)V

    .line 300
    return-void
.end method

.method public static sendScheme(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 253
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendScheme(Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ZI)V

    .line 254
    return-void
.end method

.method public static sendScheme(Landroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 309
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendScheme(Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ZI)V

    .line 310
    return-void
.end method

.method public static sendScheme(Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 271
    invoke-static {p0, p1, p2, v0, v0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendScheme(Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ZI)V

    .line 272
    return-void
.end method

.method public static sendScheme(Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ZI)V
    .registers 8

    .prologue
    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 329
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    if-eqz p2, :cond_1b

    .line 331
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 333
    :cond_1b
    if-eqz p3, :cond_23

    .line 334
    const-string v1, "_SPIDER_FLAG_CLEAR_TOP_"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 336
    :cond_23
    if-eqz p4, :cond_28

    .line 337
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 339
    :cond_28
    new-instance v1, Lcom/mqunar/core/basectx/SchemeDispatcher$5;

    invoke-direct {v1, p0, v0}, Lcom/mqunar/core/basectx/SchemeDispatcher$5;-><init>(Landroid/support/v4/app/Fragment;Landroid/content/Intent;)V

    invoke-static {p0, v0, v1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendIntent(Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/Runnable;)V

    .line 345
    return-void
.end method

.method public static sendScheme(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 290
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendScheme(Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ZI)V

    .line 291
    return-void
.end method

.method public static sendSchemeAndClearStack(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 95
    invoke-static {p0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->getHomeScheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendSchemeAndClearStack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static sendSchemeAndClearStack(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 111
    invoke-static {p0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->getHomeScheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendSchemeAndClearStack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 112
    return-void
.end method

.method public static sendSchemeAndClearStack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendSchemeAndClearStack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 128
    return-void
.end method

.method public static sendSchemeAndClearStack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v1, "QUNAR_SPIDER_TARGET_SCHEME_URL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    if-eqz p3, :cond_1c

    .line 159
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 162
    :cond_1c
    new-instance v1, Lcom/mqunar/core/basectx/SchemeDispatcher$2;

    invoke-direct {v1, p0, v0}, Lcom/mqunar/core/basectx/SchemeDispatcher$2;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {p0, v0, v1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendIntent(Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method public static sendSchemeAndClearStack(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->getHomeScheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendSchemeAndClearStack(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static sendSchemeAndClearStack(Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->getHomeScheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendSchemeAndClearStack(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method public static sendSchemeAndClearStack(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendSchemeAndClearStack(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 120
    return-void
.end method

.method public static sendSchemeAndClearStack(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 136
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "QUNAR_SPIDER_TARGET_SCHEME_URL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    if-eqz p3, :cond_20

    .line 139
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 142
    :cond_20
    new-instance v1, Lcom/mqunar/core/basectx/SchemeDispatcher$1;

    invoke-direct {v1, p0, v0}, Lcom/mqunar/core/basectx/SchemeDispatcher$1;-><init>(Landroid/support/v4/app/Fragment;Landroid/content/Intent;)V

    invoke-static {p0, v0, v1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendIntent(Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public static sendSchemeForResult(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendSchemeForResult(Landroid/app/Activity;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 392
    return-void
.end method

.method public static sendSchemeForResult(Landroid/app/Activity;Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 411
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendSchemeForResult(Landroid/app/Activity;Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 412
    return-void
.end method

.method public static sendSchemeForResult(Landroid/app/Activity;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 433
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendSchemeForResult(Landroid/app/Activity;Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 434
    return-void
.end method

.method public static sendSchemeForResult(Landroid/app/Activity;Ljava/lang/String;ILandroid/os/Bundle;I)V
    .registers 8

    .prologue
    .line 469
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 470
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    if-eqz p3, :cond_17

    .line 472
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 474
    :cond_17
    if-eqz p4, :cond_1c

    .line 475
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 477
    :cond_1c
    const-string v1, "_SPIDER_REQUESTCODE_"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    new-instance v1, Lcom/mqunar/core/basectx/SchemeDispatcher$8;

    invoke-direct {v1, p0, v0, p2}, Lcom/mqunar/core/basectx/SchemeDispatcher$8;-><init>(Landroid/app/Activity;Landroid/content/Intent;I)V

    invoke-static {p0, v0, v1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendIntent(Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/Runnable;)V

    .line 485
    return-void
.end method

.method public static sendSchemeForResult(Landroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendSchemeForResult(Landroid/support/v4/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 382
    return-void
.end method

.method public static sendSchemeForResult(Landroid/support/v4/app/Fragment;Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendSchemeForResult(Landroid/support/v4/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 402
    return-void
.end method

.method public static sendSchemeForResult(Landroid/support/v4/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendSchemeForResult(Landroid/support/v4/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 423
    return-void
.end method

.method public static sendSchemeForResult(Landroid/support/v4/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)V
    .registers 8

    .prologue
    .line 444
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 445
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    if-eqz p3, :cond_1b

    .line 447
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 449
    :cond_1b
    if-eqz p4, :cond_20

    .line 450
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 452
    :cond_20
    const-string v1, "_SPIDER_REQUESTCODE_"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 454
    new-instance v1, Lcom/mqunar/core/basectx/SchemeDispatcher$7;

    invoke-direct {v1, p0, v0, p2}, Lcom/mqunar/core/basectx/SchemeDispatcher$7;-><init>(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    invoke-static {p0, v0, v1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendIntent(Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/Runnable;)V

    .line 460
    return-void
.end method

.method public static sendSchemeForResultAndClearStack(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 176
    invoke-static {p0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->getHomeScheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendSchemeForResultAndClearStack(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    return-void
.end method

.method public static sendSchemeForResultAndClearStack(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendSchemeForResultAndClearStack(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 197
    return-void
.end method

.method public static sendSchemeForResultAndClearStack(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 8

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 232
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v1, "QUNAR_SPIDER_TARGET_SCHEME_URL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    if-eqz p4, :cond_1c

    .line 235
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 237
    :cond_1c
    const-string v1, "_SPIDER_REQUESTCODE_"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    new-instance v1, Lcom/mqunar/core/basectx/SchemeDispatcher$4;

    invoke-direct {v1, p0, v0, p3}, Lcom/mqunar/core/basectx/SchemeDispatcher$4;-><init>(Landroid/app/Activity;Landroid/content/Intent;I)V

    invoke-static {p0, v0, v1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendIntent(Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method public static sendSchemeForResultAndClearStack(Landroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->getHomeScheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendSchemeForResultAndClearStack(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    return-void
.end method

.method public static sendSchemeForResultAndClearStack(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendSchemeForResultAndClearStack(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 187
    return-void
.end method

.method public static sendSchemeForResultAndClearStack(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 8

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 208
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v1, "QUNAR_SPIDER_TARGET_SCHEME_URL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    if-eqz p4, :cond_20

    .line 211
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 213
    :cond_20
    const-string v1, "_SPIDER_REQUESTCODE_"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    new-instance v1, Lcom/mqunar/core/basectx/SchemeDispatcher$3;

    invoke-direct {v1, p0, v0, p3}, Lcom/mqunar/core/basectx/SchemeDispatcher$3;-><init>(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    invoke-static {p0, v0, v1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendIntent(Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method
