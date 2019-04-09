.class Lcom/mapquest/android/maps/FSTileCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/ITileCache;


# static fields
.field static final EXTERNAL_CACHE_DIRECTORY:Ljava/lang/String; = "mapquest/tiles"

.field private static final EXTERNAL_CACHE_SIZE:I = 0x6400000

.field static final INTERNAL_CACHE_DIRECTORY:Ljava/lang/String; = "tiles"

.field private static final INTERNAL_CACHE_SIZE:I = 0xa00000

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MILISECONDS_IN_A_DAY:J = 0x5265c00L

.field private static VERSION:I


# instance fields
.field cacheHandler:Lcom/mapquest/android/maps/FSTileCache$CacheHandler;

.field private context:Landroid/content/Context;

.field private file:Ljava/io/File;

.field handlerThread:Landroid/os/HandlerThread;

.field mExternalStorageAvailable:Z

.field private mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

.field mExternalStorageWriteable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/mapquest/android/maps/FSTileCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/FSTileCache;->LOG_TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    sput v0, Lcom/mapquest/android/maps/FSTileCache;->VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/mapquest/android/maps/FSTileCache;->mExternalStorageAvailable:Z

    .line 34
    iput-boolean v0, p0, Lcom/mapquest/android/maps/FSTileCache;->mExternalStorageWriteable:Z

    .line 40
    iput-object p1, p0, Lcom/mapquest/android/maps/FSTileCache;->context:Landroid/content/Context;

    .line 41
    invoke-virtual {p0}, Lcom/mapquest/android/maps/FSTileCache;->startWatchingExternalStorage()V

    .line 42
    if-eqz p2, :cond_2b

    .line 43
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cache"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/FSTileCache;->handlerThread:Landroid/os/HandlerThread;

    .line 44
    iget-object v0, p0, Lcom/mapquest/android/maps/FSTileCache;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance v0, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;

    iget-object v1, p0, Lcom/mapquest/android/maps/FSTileCache;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;-><init>(Lcom/mapquest/android/maps/FSTileCache;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/FSTileCache;->cacheHandler:Lcom/mapquest/android/maps/FSTileCache$CacheHandler;

    .line 49
    :cond_2b
    return-void
.end method

.method static synthetic access$000(Lcom/mapquest/android/maps/FSTileCache;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mapquest/android/maps/FSTileCache;->context:Landroid/content/Context;

    return-object v0
.end method

.method private createPurgeCallback(I)Lcom/mapquest/android/maps/FSTileCache$IFileCallback;
    .registers 3

    .prologue
    .line 238
    new-instance v0, Lcom/mapquest/android/maps/FSTileCache$3;

    invoke-direct {v0, p0, p1}, Lcom/mapquest/android/maps/FSTileCache$3;-><init>(Lcom/mapquest/android/maps/FSTileCache;I)V

    .line 251
    return-object v0
.end method

.method private getTileDirectory(Lcom/mapquest/android/maps/Tile;)Ljava/io/File;
    .registers 6

    .prologue
    .line 52
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mapquest/android/maps/FSTileCache;->file:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mapquest/android/maps/FSTileCache;->VERSION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 57
    :cond_2d
    return-object v0
.end method

.method private handleExternalStorageState(Landroid/content/Context;ZZ)V
    .registers 5

    .prologue
    .line 309
    const-string v0, "mapquestCache"

    invoke-static {p1, v0}, Lcom/mapquest/android/maps/Util;->getAppFileDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/FSTileCache;->file:Ljava/io/File;

    .line 311
    return-void
.end method

.method private size(Ljava/io/File;)I
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_8

    .line 199
    :cond_7
    return v0

    .line 186
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 188
    array-length v3, v2

    move v1, v0

    .line 190
    :goto_e
    if-ge v1, v3, :cond_7

    .line 191
    aget-object v4, v2, v1

    .line 192
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 193
    invoke-direct {p0, v4}, Lcom/mapquest/android/maps/FSTileCache;->size(Ljava/io/File;)I

    move-result v4

    add-int/2addr v0, v4

    .line 190
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 195
    :cond_20
    int-to-long v5, v0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long v4, v5, v7

    long-to-int v0, v4

    goto :goto_1d
.end method


# virtual methods
.method public addTile(Lcom/mapquest/android/maps/Tile;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 61
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->isValid()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getBytes()[B

    move-result-object v1

    if-eqz v1, :cond_46

    .line 62
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getBytes()[B

    move-result-object v1

    if-eqz v1, :cond_46

    .line 63
    iget-object v1, p0, Lcom/mapquest/android/maps/FSTileCache;->cacheHandler:Lcom/mapquest/android/maps/FSTileCache$CacheHandler;

    invoke-virtual {v1, v2}, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->removeMessages(I)V

    .line 64
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/FSTileCache;->getTileDirectory(Lcom/mapquest/android/maps/Tile;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->buildCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    :try_start_26
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2b} :catch_47
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_50
    .catchall {:try_start_26 .. :try_end_2b} :catchall_59

    .line 69
    :try_start_2b
    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 70
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 71
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_38} :catch_6c
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_38} :catch_69
    .catchall {:try_start_2b .. :try_end_38} :catchall_67

    .line 72
    const/4 v1, 0x0

    .line 73
    :try_start_39
    iget-object v2, p0, Lcom/mapquest/android/maps/FSTileCache;->cacheHandler:Lcom/mapquest/android/maps/FSTileCache$CacheHandler;

    const/4 v3, 0x1

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_41} :catch_47
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_41} :catch_50
    .catchall {:try_start_39 .. :try_end_41} :catchall_59

    .line 79
    if-eqz v0, :cond_46

    .line 81
    :try_start_43
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_63

    .line 91
    :cond_46
    :goto_46
    return-void

    .line 74
    :catch_47
    move-exception v1

    .line 79
    :goto_48
    if-eqz v0, :cond_46

    .line 81
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_46

    .line 82
    :catch_4e
    move-exception v0

    goto :goto_46

    .line 76
    :catch_50
    move-exception v1

    .line 79
    :goto_51
    if-eqz v0, :cond_46

    .line 81
    :try_start_53
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_46

    .line 82
    :catch_57
    move-exception v0

    goto :goto_46

    .line 79
    :catchall_59
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_5d
    if-eqz v1, :cond_62

    .line 81
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_65

    .line 84
    :cond_62
    :goto_62
    throw v0

    .line 82
    :catch_63
    move-exception v0

    goto :goto_46

    :catch_65
    move-exception v1

    goto :goto_62

    .line 79
    :catchall_67
    move-exception v0

    goto :goto_5d

    .line 76
    :catch_69
    move-exception v0

    move-object v0, v1

    goto :goto_51

    .line 74
    :catch_6c
    move-exception v0

    move-object v0, v1

    goto :goto_48
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mapquest/android/maps/FSTileCache;->cacheHandler:Lcom/mapquest/android/maps/FSTileCache$CacheHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->sendEmptyMessage(I)Z

    .line 145
    return-void
.end method

.method public contains(Lcom/mapquest/android/maps/Tile;)Z
    .registers 5

    .prologue
    .line 148
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mapquest/android/maps/FSTileCache;->file:Ljava/io/File;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->buildCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/mapquest/android/maps/FSTileCache;->stopWatchingExternalStorage()V

    .line 153
    iget-object v0, p0, Lcom/mapquest/android/maps/FSTileCache;->cacheHandler:Lcom/mapquest/android/maps/FSTileCache$CacheHandler;

    if-eqz v0, :cond_1f

    .line 154
    iget-object v0, p0, Lcom/mapquest/android/maps/FSTileCache;->cacheHandler:Lcom/mapquest/android/maps/FSTileCache$CacheHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->removeMessages(I)V

    .line 155
    iget-object v0, p0, Lcom/mapquest/android/maps/FSTileCache;->cacheHandler:Lcom/mapquest/android/maps/FSTileCache$CacheHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->removeMessages(I)V

    .line 156
    iget-object v0, p0, Lcom/mapquest/android/maps/FSTileCache;->cacheHandler:Lcom/mapquest/android/maps/FSTileCache$CacheHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->removeMessages(I)V

    .line 157
    iget-object v0, p0, Lcom/mapquest/android/maps/FSTileCache;->cacheHandler:Lcom/mapquest/android/maps/FSTileCache$CacheHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/FSTileCache$CacheHandler;->removeMessages(I)V

    .line 160
    :cond_1f
    iget-object v0, p0, Lcom/mapquest/android/maps/FSTileCache;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2e

    .line 161
    iget-object v0, p0, Lcom/mapquest/android/maps/FSTileCache;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_2e

    .line 163
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 167
    :cond_2e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/FSTileCache;->file:Ljava/io/File;

    .line 168
    return-void
.end method

.method public getCallback(Lcom/mapquest/android/maps/FSTileCache$FileCallbackType;)Lcom/mapquest/android/maps/FSTileCache$IFileCallback;
    .registers 5

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    sget-object v1, Lcom/mapquest/android/maps/FSTileCache$6;->$SwitchMap$com$mapquest$android$maps$FSTileCache$FileCallbackType:[I

    invoke-virtual {p1}, Lcom/mapquest/android/maps/FSTileCache$FileCallbackType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_28

    .line 234
    :goto_c
    return-object v0

    .line 207
    :pswitch_d
    new-instance v0, Lcom/mapquest/android/maps/FSTileCache$1;

    invoke-direct {v0, p0}, Lcom/mapquest/android/maps/FSTileCache$1;-><init>(Lcom/mapquest/android/maps/FSTileCache;)V

    goto :goto_c

    .line 214
    :pswitch_13
    new-instance v0, Lcom/mapquest/android/maps/FSTileCache$2;

    invoke-direct {v0, p0}, Lcom/mapquest/android/maps/FSTileCache$2;-><init>(Lcom/mapquest/android/maps/FSTileCache;)V

    goto :goto_c

    .line 228
    :pswitch_19
    const/high16 v0, 0x6400000

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/FSTileCache;->createPurgeCallback(I)Lcom/mapquest/android/maps/FSTileCache$IFileCallback;

    move-result-object v0

    goto :goto_c

    .line 231
    :pswitch_20
    const/high16 v0, 0xa00000

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/FSTileCache;->createPurgeCallback(I)Lcom/mapquest/android/maps/FSTileCache$IFileCallback;

    move-result-object v0

    goto :goto_c

    .line 205
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_d
        :pswitch_13
        :pswitch_19
        :pswitch_20
    .end packed-switch
.end method

.method public getTile(Lcom/mapquest/android/maps/Tile;)Lcom/mapquest/android/maps/Tile;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 94
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/FSTileCache;->getTileDirectory(Lcom/mapquest/android/maps/Tile;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->buildCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 96
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/mapquest/android/maps/Tile;->setId(J)V

    .line 135
    :cond_19
    :goto_19
    return-object p1

    .line 100
    :cond_1a
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    :try_start_1f
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_24} :catch_71
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_52
    .catchall {:try_start_1f .. :try_end_24} :catchall_5d

    .line 105
    const/16 v2, 0x2000

    :try_start_26
    new-array v2, v2, [B

    .line 109
    :goto_28
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3f

    .line 110
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_33} :catch_34
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_33} :catch_6f
    .catchall {:try_start_26 .. :try_end_33} :catchall_6d

    goto :goto_28

    .line 117
    :catch_34
    move-exception v0

    .line 119
    :goto_35
    const/4 v0, 0x0

    .line 120
    :try_start_36
    check-cast v0, Lcom/mapquest/android/maps/Tile;
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_6d

    .line 125
    if-eqz v1, :cond_3d

    .line 127
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_67

    :cond_3d
    :goto_3d
    move-object p1, v0

    .line 130
    goto :goto_19

    .line 113
    :cond_3f
    :try_start_3f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mapquest/android/maps/Tile;->setBytes([B)V

    .line 114
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_49} :catch_34
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_49} :catch_6f
    .catchall {:try_start_3f .. :try_end_49} :catchall_6d

    .line 115
    const/4 v1, 0x0

    .line 125
    if-eqz v0, :cond_19

    .line 127
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_19

    .line 128
    :catch_50
    move-exception v0

    goto :goto_19

    .line 121
    :catch_52
    move-exception v1

    move-object v1, v0

    .line 125
    :goto_54
    if-eqz v1, :cond_59

    .line 127
    :try_start_56
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_69

    .line 135
    :cond_59
    :goto_59
    check-cast v0, Lcom/mapquest/android/maps/Tile;

    move-object p1, v0

    goto :goto_19

    .line 125
    :catchall_5d
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_61
    if-eqz v1, :cond_66

    .line 127
    :try_start_63
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_6b

    .line 130
    :cond_66
    :goto_66
    throw v0

    .line 128
    :catch_67
    move-exception v1

    goto :goto_3d

    :catch_69
    move-exception v1

    goto :goto_59

    :catch_6b
    move-exception v1

    goto :goto_66

    .line 125
    :catchall_6d
    move-exception v0

    goto :goto_61

    .line 121
    :catch_6f
    move-exception v2

    goto :goto_54

    .line 117
    :catch_71
    move-exception v1

    move-object v1, v0

    goto :goto_35
.end method

.method public iterateDirectory(Ljava/io/File;ILcom/mapquest/android/maps/FSTileCache$IFileCallback;)V
    .registers 9

    .prologue
    .line 255
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 256
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 257
    if-eqz p2, :cond_14

    .line 258
    new-instance v0, Lcom/mapquest/android/maps/FSTileCache$4;

    invoke-direct {v0, p0, p2}, Lcom/mapquest/android/maps/FSTileCache$4;-><init>(Lcom/mapquest/android/maps/FSTileCache;I)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 269
    :cond_14
    if-eqz v1, :cond_2b

    .line 271
    array-length v2, v1

    .line 273
    const/4 v0, 0x0

    :goto_18
    if-ge v0, v2, :cond_2b

    .line 274
    aget-object v3, v1, v0

    .line 275
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 276
    invoke-virtual {p0, v3, p2, p3}, Lcom/mapquest/android/maps/FSTileCache;->iterateDirectory(Ljava/io/File;ILcom/mapquest/android/maps/FSTileCache$IFileCallback;)V

    .line 279
    :cond_25
    invoke-interface {p3, v3}, Lcom/mapquest/android/maps/FSTileCache$IFileCallback;->process(Ljava/io/File;)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 284
    :cond_2b
    return-void
.end method

.method public removeTile(Lcom/mapquest/android/maps/Tile;)V
    .registers 5

    .prologue
    .line 140
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mapquest/android/maps/FSTileCache;->file:Ljava/io/File;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->buildCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 141
    return-void
.end method

.method public size()I
    .registers 3

    .prologue
    .line 171
    .line 176
    iget-object v0, p0, Lcom/mapquest/android/maps/FSTileCache;->context:Landroid/content/Context;

    const-string v1, "mapquestCache"

    invoke-static {v0, v1}, Lcom/mapquest/android/maps/Util;->getAppFileDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/FSTileCache;->size(Ljava/io/File;)I

    move-result v0

    .line 178
    return v0
.end method

.method startWatchingExternalStorage()V
    .registers 4

    .prologue
    .line 314
    new-instance v0, Lcom/mapquest/android/maps/FSTileCache$5;

    invoke-direct {v0, p0}, Lcom/mapquest/android/maps/FSTileCache$5;-><init>(Lcom/mapquest/android/maps/FSTileCache;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/FSTileCache;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 319
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 320
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/mapquest/android/maps/FSTileCache;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mapquest/android/maps/FSTileCache;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 323
    iget-object v0, p0, Lcom/mapquest/android/maps/FSTileCache;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/FSTileCache;->updateExternalStorageState(Landroid/content/Context;)V

    .line 324
    return-void
.end method

.method stopWatchingExternalStorage()V
    .registers 3

    .prologue
    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/mapquest/android/maps/FSTileCache;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mapquest/android/maps/FSTileCache;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 333
    :goto_7
    return-void

    .line 329
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method updateExternalStorageState(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 287
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 288
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 289
    iput-boolean v3, p0, Lcom/mapquest/android/maps/FSTileCache;->mExternalStorageWriteable:Z

    iput-boolean v3, p0, Lcom/mapquest/android/maps/FSTileCache;->mExternalStorageAvailable:Z

    .line 297
    :goto_12
    iget-boolean v0, p0, Lcom/mapquest/android/maps/FSTileCache;->mExternalStorageAvailable:Z

    iget-boolean v1, p0, Lcom/mapquest/android/maps/FSTileCache;->mExternalStorageWriteable:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/mapquest/android/maps/FSTileCache;->handleExternalStorageState(Landroid/content/Context;ZZ)V

    .line 298
    return-void

    .line 290
    :cond_1a
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 291
    iput-boolean v3, p0, Lcom/mapquest/android/maps/FSTileCache;->mExternalStorageAvailable:Z

    .line 292
    iput-boolean v2, p0, Lcom/mapquest/android/maps/FSTileCache;->mExternalStorageWriteable:Z

    goto :goto_12

    .line 294
    :cond_27
    iput-boolean v2, p0, Lcom/mapquest/android/maps/FSTileCache;->mExternalStorageWriteable:Z

    iput-boolean v2, p0, Lcom/mapquest/android/maps/FSTileCache;->mExternalStorageAvailable:Z

    goto :goto_12
.end method
