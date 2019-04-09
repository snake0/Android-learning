.class Lcom/mapquest/android/maps/MapView$AssetUpdater;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final assets:[Ljava/lang/String;

.field private final cdnRoot:Ljava/lang/String;

.field private staleDate:J

.field final synthetic this$0:Lcom/mapquest/android/maps/MapView;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 6

    .prologue
    const/4 v3, 0x5

    .line 1639
    iput-object p1, p0, Lcom/mapquest/android/maps/MapView$AssetUpdater;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1634
    const-class v0, Lcom/mapquest/android/maps/MapView$AssetUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView$AssetUpdater;->LOG_TAG:Ljava/lang/String;

    .line 1635
    const-string v0, "http://content.mqcdn.com/mobile/android/"

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView$AssetUpdater;->cdnRoot:Ljava/lang/String;

    .line 1637
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "logo_hdpi.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "logo_mdpi.png"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "navteqlogo_hdpi.png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "navteqlogo_mdpi.png"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "osmlogo_hdpi.png"

    aput-object v2, v0, v1

    const-string v1, "osmlogo_mdpi.png"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/mapquest/android/maps/MapView$AssetUpdater;->assets:[Ljava/lang/String;

    .line 1640
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1641
    const/16 v1, -0xe

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 1642
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapquest/android/maps/MapView$AssetUpdater;->staleDate:J

    .line 1643
    return-void
.end method

.method private needsUpdating(Ljava/io/File;)Z
    .registers 6

    .prologue
    .line 1700
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mapquest/android/maps/MapView$AssetUpdater;->staleDate:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private updateFile(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 1661
    new-instance v2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mapquest/android/maps/MapView$AssetUpdater;->this$0:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1662
    invoke-direct {p0, v2}, Lcom/mapquest/android/maps/MapView$AssetUpdater;->needsUpdating(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 1667
    :try_start_31
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_9b
    .catchall {:try_start_31 .. :try_end_36} :catchall_75

    .line 1668
    :try_start_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://content.mqcdn.com/mobile/android/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mapquest/android/maps/HttpUtil;->executeAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4c} :catch_5c
    .catchall {:try_start_36 .. :try_end_4c} :catchall_8f

    move-result-object v0

    .line 1669
    const/16 v2, 0x400

    :try_start_4f
    new-array v2, v2, [B

    .line 1672
    :goto_51
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_68

    .line 1673
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5b} :catch_5c
    .catchall {:try_start_4f .. :try_end_5b} :catchall_95

    goto :goto_51

    .line 1675
    :catch_5c
    move-exception v2

    .line 1679
    :goto_5d
    if-eqz v1, :cond_62

    .line 1680
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_87

    .line 1687
    :cond_62
    :goto_62
    if-eqz v0, :cond_67

    .line 1688
    :try_start_64
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_89

    .line 1697
    :cond_67
    :goto_67
    return-void

    .line 1679
    :cond_68
    if-eqz v1, :cond_6d

    .line 1680
    :try_start_6a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_85

    .line 1687
    :cond_6d
    :goto_6d
    if-eqz v0, :cond_67

    .line 1688
    :try_start_6f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_67

    .line 1690
    :catch_73
    move-exception v0

    goto :goto_67

    .line 1678
    :catchall_75
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 1679
    :goto_7a
    if-eqz v2, :cond_7f

    .line 1680
    :try_start_7c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_8b

    .line 1687
    :cond_7f
    :goto_7f
    if-eqz v1, :cond_84

    .line 1688
    :try_start_81
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_8d

    .line 1692
    :cond_84
    :goto_84
    throw v0

    .line 1682
    :catch_85
    move-exception v1

    goto :goto_6d

    :catch_87
    move-exception v1

    goto :goto_62

    .line 1690
    :catch_89
    move-exception v0

    goto :goto_67

    .line 1682
    :catch_8b
    move-exception v2

    goto :goto_7f

    .line 1690
    :catch_8d
    move-exception v1

    goto :goto_84

    .line 1678
    :catchall_8f
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_7a

    :catchall_95
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_7a

    .line 1675
    :catch_9b
    move-exception v1

    move-object v1, v0

    goto :goto_5d
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1647
    :try_start_0
    iget-object v1, p0, Lcom/mapquest/android/maps/MapView$AssetUpdater;->assets:[Ljava/lang/String;

    .line 1648
    array-length v2, v1

    .line 1650
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_f

    .line 1651
    aget-object v3, v1, v0

    .line 1652
    invoke-direct {p0, v3}, Lcom/mapquest/android/maps/MapView$AssetUpdater;->updateFile(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e

    .line 1650
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1654
    :catch_e
    move-exception v0

    .line 1658
    :cond_f
    return-void
.end method
