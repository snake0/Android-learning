.class Lcom/mapquest/android/maps/MapConfiguration$TileVersionUpdater;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/mapquest/android/maps/MapConfiguration;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MapConfiguration;)V
    .registers 3

    .prologue
    .line 208
    iput-object p1, p0, Lcom/mapquest/android/maps/MapConfiguration$TileVersionUpdater;->this$0:Lcom/mapquest/android/maps/MapConfiguration;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 206
    const-class v0, Lcom/mapquest/android/maps/MapConfiguration$TileVersionUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration$TileVersionUpdater;->LOG_TAG:Ljava/lang/String;

    .line 209
    return-void
.end method

.method private updateFile()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 221
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration$TileVersionUpdater;->this$0:Lcom/mapquest/android/maps/MapConfiguration;

    # invokes: Lcom/mapquest/android/maps/MapConfiguration;->getRootDirectory()Ljava/io/File;
    invoke-static {v0}, Lcom/mapquest/android/maps/MapConfiguration;->access$000(Lcom/mapquest/android/maps/MapConfiguration;)Ljava/io/File;

    move-result-object v0

    const-string v2, "mqTileVersion.json"

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    :try_start_f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 228
    const-string v2, "Referer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mapquest/android/maps/MapConfiguration$TileVersionUpdater;->this$0:Lcom/mapquest/android/maps/MapConfiguration;

    # getter for: Lcom/mapquest/android/maps/MapConfiguration;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v6}, Lcom/mapquest/android/maps/MapConfiguration;->access$100(Lcom/mapquest/android/maps/MapConfiguration;)Lcom/mapquest/android/maps/MapView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v2, "Accept"

    const-string v5, "*/*"

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://mapconfig.mapquest.com/mapconfig?version=3&format=json&sdk="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mapquest/android/maps/Util;->getApiVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-static {v2, v0}, Lcom/mapquest/android/maps/HttpUtil;->executeAsStream(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_5b} :catch_103
    .catchall {:try_start_f .. :try_end_5b} :catchall_e3

    move-result-object v0

    .line 233
    if-eqz v0, :cond_10a

    .line 234
    :try_start_5e
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_63} :catch_107
    .catchall {:try_start_5e .. :try_end_63} :catchall_f8

    .line 235
    const/16 v1, 0x400

    :try_start_65
    new-array v1, v1, [B

    .line 238
    :goto_67
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_cd

    .line 239
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_71} :catch_72
    .catchall {:try_start_65 .. :try_end_71} :catchall_fe

    goto :goto_67

    .line 245
    :catch_72
    move-exception v1

    move-object v1, v2

    .line 249
    :goto_74
    if-eqz v1, :cond_79

    .line 250
    :try_start_76
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_f2

    .line 257
    :cond_79
    :goto_79
    if-eqz v0, :cond_7e

    .line 258
    :try_start_7b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_e0

    :cond_7e
    move v0, v3

    .line 266
    :goto_7f
    if-eqz v0, :cond_cc

    .line 268
    iget-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration$TileVersionUpdater;->this$0:Lcom/mapquest/android/maps/MapConfiguration;

    # invokes: Lcom/mapquest/android/maps/MapConfiguration;->getConfigurationFromDisk()Ljava/lang/String;
    invoke-static {v0}, Lcom/mapquest/android/maps/MapConfiguration;->access$200(Lcom/mapquest/android/maps/MapConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_b6

    iget-object v1, p0, Lcom/mapquest/android/maps/MapConfiguration$TileVersionUpdater;->this$0:Lcom/mapquest/android/maps/MapConfiguration;

    # getter for: Lcom/mapquest/android/maps/MapConfiguration;->configStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/mapquest/android/maps/MapConfiguration;->access$300(Lcom/mapquest/android/maps/MapConfiguration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    .line 271
    iget-object v1, p0, Lcom/mapquest/android/maps/MapConfiguration$TileVersionUpdater;->this$0:Lcom/mapquest/android/maps/MapConfiguration;

    # getter for: Lcom/mapquest/android/maps/MapConfiguration;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v1}, Lcom/mapquest/android/maps/MapConfiguration;->access$100(Lcom/mapquest/android/maps/MapConfiguration;)Lcom/mapquest/android/maps/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->clearTilesInMemory()V

    .line 272
    iget-object v1, p0, Lcom/mapquest/android/maps/MapConfiguration$TileVersionUpdater;->this$0:Lcom/mapquest/android/maps/MapConfiguration;

    # getter for: Lcom/mapquest/android/maps/MapConfiguration;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v1}, Lcom/mapquest/android/maps/MapConfiguration;->access$100(Lcom/mapquest/android/maps/MapConfiguration;)Lcom/mapquest/android/maps/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getTileCacher()Lcom/mapquest/android/maps/TileCacher;

    move-result-object v1

    sget-object v2, Lcom/mapquest/android/maps/TileCacher$CacheType;->DB:Lcom/mapquest/android/maps/TileCacher$CacheType;

    invoke-virtual {v1, v2}, Lcom/mapquest/android/maps/TileCacher;->getCache(Lcom/mapquest/android/maps/TileCacher$CacheType;)Lcom/mapquest/android/maps/ITileCache;

    move-result-object v1

    invoke-interface {v1}, Lcom/mapquest/android/maps/ITileCache;->clear()V

    .line 273
    const/16 v1, 0x17

    invoke-static {v1}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 276
    :cond_b6
    iget-object v1, p0, Lcom/mapquest/android/maps/MapConfiguration$TileVersionUpdater;->this$0:Lcom/mapquest/android/maps/MapConfiguration;

    # setter for: Lcom/mapquest/android/maps/MapConfiguration;->configStr:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/mapquest/android/maps/MapConfiguration;->access$302(Lcom/mapquest/android/maps/MapConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/mapquest/android/maps/MapConfiguration$TileVersionUpdater;->this$0:Lcom/mapquest/android/maps/MapConfiguration;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapConfiguration$TileVersionUpdater;->this$0:Lcom/mapquest/android/maps/MapConfiguration;

    iget-object v2, p0, Lcom/mapquest/android/maps/MapConfiguration$TileVersionUpdater;->this$0:Lcom/mapquest/android/maps/MapConfiguration;

    # getter for: Lcom/mapquest/android/maps/MapConfiguration;->configStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/mapquest/android/maps/MapConfiguration;->access$300(Lcom/mapquest/android/maps/MapConfiguration;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mapquest/android/maps/MapConfiguration;->parseConfiguration(Ljava/lang/String;)Ljava/util/Map;
    invoke-static {v1, v2}, Lcom/mapquest/android/maps/MapConfiguration;->access$500(Lcom/mapquest/android/maps/MapConfiguration;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    # setter for: Lcom/mapquest/android/maps/MapConfiguration;->mapConfigList:Ljava/util/Map;
    invoke-static {v0, v1}, Lcom/mapquest/android/maps/MapConfiguration;->access$402(Lcom/mapquest/android/maps/MapConfiguration;Ljava/util/Map;)Ljava/util/Map;

    .line 279
    :cond_cc
    return-void

    .line 242
    :cond_cd
    :try_start_cd
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_72
    .catchall {:try_start_cd .. :try_end_d0} :catchall_fe

    .line 243
    const/4 v1, 0x1

    .line 249
    :goto_d1
    if-eqz v2, :cond_d6

    .line 250
    :try_start_d3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d6} :catch_f0

    .line 257
    :cond_d6
    :goto_d6
    if-eqz v0, :cond_db

    .line 258
    :try_start_d8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_db} :catch_dd

    :cond_db
    move v0, v1

    .line 262
    goto :goto_7f

    .line 260
    :catch_dd
    move-exception v0

    move v0, v1

    .line 264
    goto :goto_7f

    .line 260
    :catch_e0
    move-exception v0

    move v0, v3

    .line 264
    goto :goto_7f

    .line 248
    :catchall_e3
    move-exception v0

    move-object v2, v1

    .line 249
    :goto_e5
    if-eqz v2, :cond_ea

    .line 250
    :try_start_e7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ea} :catch_f4

    .line 257
    :cond_ea
    :goto_ea
    if-eqz v1, :cond_ef

    .line 258
    :try_start_ec
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_ef} :catch_f6

    .line 262
    :cond_ef
    :goto_ef
    throw v0

    .line 252
    :catch_f0
    move-exception v2

    goto :goto_d6

    :catch_f2
    move-exception v1

    goto :goto_79

    :catch_f4
    move-exception v2

    goto :goto_ea

    .line 260
    :catch_f6
    move-exception v1

    goto :goto_ef

    .line 248
    :catchall_f8
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_e5

    :catchall_fe
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_e5

    .line 245
    :catch_103
    move-exception v0

    move-object v0, v1

    goto/16 :goto_74

    :catch_107
    move-exception v2

    goto/16 :goto_74

    :cond_10a
    move-object v2, v1

    move v1, v3

    goto :goto_d1
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 213
    :try_start_0
    invoke-direct {p0}, Lcom/mapquest/android/maps/MapConfiguration$TileVersionUpdater;->updateFile()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 218
    :goto_3
    return-void

    .line 214
    :catch_4
    move-exception v0

    goto :goto_3
.end method
