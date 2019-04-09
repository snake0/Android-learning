.class public Lcom/mapquest/android/intent/MapQuestAppLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ACE_MARKET_INTENT:Ljava/lang/String; = "market://details?id=com.mapquest.android.ace"

.field private static final INTENT_FILE_DIR:Ljava/lang/String; = "mapquest"

.field private static final INTENT_FILE_NAME:Ljava/lang/String; = "mqtmp.txt"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/mapquest/android/intent/MapQuestAppLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/intent/MapQuestAppLauncher;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 122
    :try_start_1
    const-string v1, "UTF8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v0

    .line 127
    :goto_7
    return-object v0

    .line 123
    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method static getAceMarketIntent()Ljava/lang/String;
    .registers 1

    .prologue
    .line 131
    const-string v0, "market://details?id=com.mapquest.android.ace"

    return-object v0
.end method

.method static handleIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 65
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    :goto_19
    return-void

    .line 68
    :cond_1a
    invoke-static {p1, p2}, Lcom/mapquest/android/intent/MapQuestAppLauncher;->writeIntentToDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    if-eqz p3, :cond_23

    .line 70
    invoke-static {p1, p2}, Lcom/mapquest/android/intent/MapQuestAppLauncher;->showDownloadDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_19

    .line 72
    :cond_23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.mapquest.android.ace"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_19
.end method

.method public static launchNavigation(Landroid/content/Context;Lcom/mapquest/android/maps/GeoPoint;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/mapquest/android/intent/MapQuestAppLauncher;->launchNavigation(Landroid/content/Context;Lcom/mapquest/android/maps/GeoPoint;Ljava/lang/String;Z)V

    .line 30
    return-void
.end method

.method public static launchNavigation(Landroid/content/Context;Lcom/mapquest/android/maps/GeoPoint;Ljava/lang/String;Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;)V
    .registers 12

    .prologue
    const/4 v5, 0x1

    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/mapquest/android/intent/MapQuestAppLauncher;->launchNavigation(Landroid/content/Context;Lcom/mapquest/android/maps/GeoPoint;Ljava/lang/String;Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;ZZ)V

    .line 38
    return-void
.end method

.method public static launchNavigation(Landroid/content/Context;Lcom/mapquest/android/maps/GeoPoint;Ljava/lang/String;Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;ZZ)V
    .registers 11

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string v1, "mapquest://navigate?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 44
    if-eqz p2, :cond_3a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3a

    .line 45
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/mapquest/android/intent/MapQuestAppLauncher;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_3a
    if-eqz p3, :cond_49

    .line 49
    const-string v1, "&maptype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_49
    if-eqz p4, :cond_58

    .line 53
    const-string v1, "&layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_58
    const-string v1, "&autostart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0, p5}, Lcom/mapquest/android/intent/MapQuestAppLauncher;->handleIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 59
    return-void
.end method

.method public static launchNavigation(Landroid/content/Context;Lcom/mapquest/android/maps/GeoPoint;Ljava/lang/String;Z)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 33
    move-object v3, v0

    check-cast v3, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;

    move-object v4, v0

    check-cast v4, Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/mapquest/android/intent/MapQuestAppLauncher;->launchNavigation(Landroid/content/Context;Lcom/mapquest/android/maps/GeoPoint;Ljava/lang/String;Lcom/mapquest/android/intent/MapQuestAppLauncher$MapType;Lcom/mapquest/android/intent/MapQuestAppLauncher$MapLayer;ZZ)V

    .line 34
    return-void
.end method

.method static showDownloadDialog(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    const-string v1, "Download Alert"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 81
    const-string v1, "You do not have the MapQuest Navigation App installed.  Would you like to download it?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 82
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 83
    const-string v1, "Ok"

    new-instance v2, Lcom/mapquest/android/intent/MapQuestAppLauncher$1;

    invoke-direct {v2, p0, p1}, Lcom/mapquest/android/intent/MapQuestAppLauncher$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    const-string v1, "Cancel"

    new-instance v2, Lcom/mapquest/android/intent/MapQuestAppLauncher$2;

    invoke-direct {v2}, Lcom/mapquest/android/intent/MapQuestAppLauncher$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 94
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 95
    return-void
.end method

.method static writeIntentToDevice(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 98
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mapquest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_32

    .line 103
    :cond_32
    new-instance v1, Ljava/io/File;

    const-string v2, "mqtmp.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    :try_start_39
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 109
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_48} :catch_49

    .line 116
    :goto_48
    return-void

    .line 111
    :catch_49
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48
.end method
