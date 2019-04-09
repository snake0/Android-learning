.class public Lcom/megvii/licensemanager/Manager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mqunar/necro/agent/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final AUTHURL:Ljava/lang/String; = "http://api.faceid.com/faceid/v1/sdk/authm"

.field private static managers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/megvii/licensemanager/ILicenseManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/megvii/licensemanager/Manager;->managers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-nez p1, :cond_d

    .line 23
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "context can not be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/megvii/licensemanager/Manager;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private static doPost(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 102
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://api.faceid.com/faceid/v1/sdk/authm"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 103
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 104
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 105
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 106
    const-string v1, "Content-type"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 110
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 112
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    :goto_4d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_56} :catch_57

    goto :goto_4d

    .line 121
    :catch_57
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 124
    const/4 v0, 0x0

    :goto_5c
    return-object v0

    .line 118
    :cond_5d
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 119
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_66} :catch_57

    move-result-object v0

    goto :goto_5c
.end method

.method private findAllManager()V
    .registers 1

    .prologue
    .line 76
    return-void
.end method


# virtual methods
.method public checkCachedLicense()Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 68
    sget-object v0, Lcom/megvii/licensemanager/Manager;->managers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/megvii/licensemanager/ILicenseManager;

    .line 69
    invoke-interface {v0}, Lcom/megvii/licensemanager/ILicenseManager;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/megvii/licensemanager/ILicenseManager;->checkCachedLicense()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 71
    :cond_27
    return-object v1
.end method

.method public getContext(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 34
    iget-object v1, p0, Lcom/megvii/licensemanager/Manager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_6

    .line 46
    :cond_5
    :goto_5
    return-object v0

    .line 36
    :cond_6
    sget-object v1, Lcom/megvii/licensemanager/Manager;->managers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 38
    iget-object v0, p0, Lcom/megvii/licensemanager/Manager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/megvii/licensemanager/Manager;->mContext:Landroid/content/Context;

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    sget-object v0, Lcom/megvii/licensemanager/Manager;->managers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/megvii/licensemanager/ILicenseManager;

    .line 41
    invoke-interface {v0, p1}, Lcom/megvii/licensemanager/ILicenseManager;->getContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const/16 v0, 0x24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 44
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public declared-synchronized registerLicenseManager(Lcom/megvii/licensemanager/ILicenseManager;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 79
    monitor-enter p0

    .line 80
    :try_start_3
    sget-object v0, Lcom/megvii/licensemanager/Manager;->managers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/megvii/licensemanager/ILicenseManager;

    .line 81
    invoke-interface {v0}, Lcom/megvii/licensemanager/ILicenseManager;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/megvii/licensemanager/ILicenseManager;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v1

    :goto_25
    move v2, v0

    .line 84
    goto :goto_a

    .line 85
    :cond_27
    if-nez v2, :cond_2e

    .line 86
    sget-object v0, Lcom/megvii/licensemanager/Manager;->managers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_34

    .line 87
    :cond_2e
    if-nez v2, :cond_32

    :goto_30
    monitor-exit p0

    return v1

    :cond_32
    move v1, v3

    goto :goto_30

    .line 79
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_37
    move v0, v2

    goto :goto_25
.end method

.method public setLicense(Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 50
    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/megvii/licensemanager/Manager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_8

    .line 63
    :cond_7
    :goto_7
    return-object v0

    .line 53
    :cond_8
    const-string v1, "\\$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 54
    array-length v1, v3

    sget-object v2, Lcom/megvii/licensemanager/Manager;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 58
    iget-object v0, p0, Lcom/megvii/licensemanager/Manager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/megvii/licensemanager/Manager;->mContext:Landroid/content/Context;

    .line 59
    new-instance v2, Ljava/util/HashMap;

    array-length v0, v3

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 60
    const/4 v0, 0x0

    move v1, v0

    :goto_27
    sget-object v0, Lcom/megvii/licensemanager/Manager;->managers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_54

    .line 61
    sget-object v0, Lcom/megvii/licensemanager/Manager;->managers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/megvii/licensemanager/ILicenseManager;

    invoke-interface {v0}, Lcom/megvii/licensemanager/ILicenseManager;->getVersion()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/megvii/licensemanager/Manager;->managers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/megvii/licensemanager/ILicenseManager;

    aget-object v5, v3, v1

    invoke-interface {v0, v5}, Lcom/megvii/licensemanager/ILicenseManager;->setLicense(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27

    :cond_54
    move-object v0, v2

    .line 63
    goto :goto_7
.end method

.method public declared-synchronized takeLicenseFromNetwork(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/megvii/licensemanager/Manager;->getContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/megvii/licensemanager/Manager;->doPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/megvii/licensemanager/Manager;->setLicense(Ljava/lang/String;)Ljava/util/Map;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 91
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
