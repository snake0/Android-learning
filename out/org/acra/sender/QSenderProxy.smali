.class public Lorg/acra/sender/QSenderProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/acra/sender/ReportSender;


# instance fields
.field private currentUploadScreenFrequencyInfo:[Ljava/lang/String;

.field private lastUploadScreenFrequencyInfo:[Ljava/lang/String;

.field private mCParam:Ljava/lang/String;

.field private mConfig:Lorg/acra/config/ACRAConfiguration;

.field private mContext:Landroid/content/Context;

.field private mIsSilent:Z

.field private mReleaseHostUrl:Ljava/lang/String;

.field private mReleasePitcherUrl:Ljava/lang/String;

.field private mSendScreenShotSwitch:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lorg/acra/sender/QSenderProxy;->mSendScreenShotSwitch:Z

    .line 40
    iput-boolean v0, p0, Lorg/acra/sender/QSenderProxy;->mIsSilent:Z

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lorg/acra/sender/QSenderProxy;->mReleaseHostUrl:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lorg/acra/sender/QSenderProxy;->mReleasePitcherUrl:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/acra/sender/QSenderProxy;->mCParam:Ljava/lang/String;

    .line 332
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/acra/sender/QSenderProxy;->currentUploadScreenFrequencyInfo:[Ljava/lang/String;

    .line 333
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/acra/sender/QSenderProxy;->lastUploadScreenFrequencyInfo:[Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lorg/acra/sender/QSenderProxy;->mReleaseHostUrl:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/acra/sender/QSenderProxy;->mReleasePitcherUrl:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private dealScreenshot(Lorg/acra/collector/CrashReportData;I)Ljava/io/File;
    .registers 5
    .param p1    # Lorg/acra/collector/CrashReportData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 104
    const-string v0, "true"

    sget-object v1, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {p1, v1}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/sender/QSenderProxy;->mIsSilent:Z

    .line 109
    :cond_11
    invoke-direct {p0}, Lorg/acra/sender/QSenderProxy;->getCurrentUploadFrequencyInfo()V

    .line 111
    invoke-direct {p0, p1}, Lorg/acra/sender/QSenderProxy;->getScreenShot(Lorg/acra/collector/CrashReportData;)Ljava/io/File;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0, p1, p2}, Lorg/acra/sender/QSenderProxy;->isSendScreenShot(Ljava/io/File;Lorg/acra/collector/CrashReportData;I)Z

    move-result v1

    iput-boolean v1, p0, Lorg/acra/sender/QSenderProxy;->mSendScreenShotSwitch:Z

    .line 113
    return-object v0
.end method

.method private getCurrentUploadFrequencyInfo()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 351
    iget-boolean v0, p0, Lorg/acra/sender/QSenderProxy;->mIsSilent:Z

    if-eqz v0, :cond_45

    .line 352
    iget-object v0, p0, Lorg/acra/sender/QSenderProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/acra/sender/QSenderProxy;->mConfig:Lorg/acra/config/ACRAConfiguration;

    const-string v2, "acra.uploadScreenFrequencySilent"

    invoke-static {v0, v1, v2}, Lorg/acra/collector/w;->a(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 357
    :goto_10
    iget-object v1, p0, Lorg/acra/sender/QSenderProxy;->lastUploadScreenFrequencyInfo:[Ljava/lang/String;

    aget-object v2, v0, v5

    aput-object v2, v1, v5

    .line 358
    iget-object v1, p0, Lorg/acra/sender/QSenderProxy;->lastUploadScreenFrequencyInfo:[Ljava/lang/String;

    aget-object v2, v0, v6

    aput-object v2, v1, v6

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    cmp-long v1, v1, v3

    if-lez v1, :cond_50

    .line 362
    iget-object v0, p0, Lorg/acra/sender/QSenderProxy;->currentUploadScreenFrequencyInfo:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 363
    iget-object v0, p0, Lorg/acra/sender/QSenderProxy;->currentUploadScreenFrequencyInfo:[Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v6

    .line 369
    :goto_44
    return-void

    .line 354
    :cond_45
    iget-object v0, p0, Lorg/acra/sender/QSenderProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/acra/sender/QSenderProxy;->mConfig:Lorg/acra/config/ACRAConfiguration;

    const-string v2, "acra.uploadScreenFrequency"

    invoke-static {v0, v1, v2}, Lorg/acra/collector/w;->a(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 366
    :cond_50
    iget-object v1, p0, Lorg/acra/sender/QSenderProxy;->currentUploadScreenFrequencyInfo:[Ljava/lang/String;

    aget-object v2, v0, v5

    aput-object v2, v1, v5

    .line 367
    iget-object v1, p0, Lorg/acra/sender/QSenderProxy;->currentUploadScreenFrequencyInfo:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    goto :goto_44
.end method

.method private getErrorString(Lorg/acra/collector/CrashReportData;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 120
    const-string v0, ""

    .line 121
    if-eqz p1, :cond_c

    .line 123
    :try_start_4
    invoke-virtual {p1}, Lorg/acra/collector/CrashReportData;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_b
    .catch Lorg/acra/util/i$a; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v0

    .line 128
    :cond_c
    :goto_c
    return-object v0

    .line 124
    :catch_d
    move-exception v1

    .line 125
    invoke-virtual {v1}, Lorg/acra/util/i$a;->printStackTrace()V

    goto :goto_c
.end method

.method private getPitcher(Landroid/content/Context;Ljava/util/ArrayList;)Lqunar/lego/utils/Pitcher;
    .registers 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lqunar/lego/utils/FormPart;",
            ">;)",
            "Lqunar/lego/utils/Pitcher;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lqunar/lego/utils/HttpHeader;

    invoke-direct {v0}, Lqunar/lego/utils/HttpHeader;-><init>()V

    .line 254
    const-string v1, "X-ClientEncoding"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lqunar/lego/utils/HttpHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v1, Lqunar/lego/utils/Pitcher;

    iget-object v2, p0, Lorg/acra/sender/QSenderProxy;->mReleaseHostUrl:Ljava/lang/String;

    invoke-direct {v1, p1, v2, p2, v0}, Lqunar/lego/utils/Pitcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lqunar/lego/utils/HttpHeader;)V

    .line 257
    iget-object v0, p0, Lorg/acra/sender/QSenderProxy;->mReleasePitcherUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lqunar/lego/utils/Pitcher;->setProxyUrl(Ljava/lang/String;)Lqunar/lego/utils/Pitcher;

    .line 258
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pitcher url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/acra/sender/QSenderProxy;->mReleasePitcherUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/acra/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "host url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/acra/sender/QSenderProxy;->mReleaseHostUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/acra/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-object v1
.end method

.method private getScreenShot(Lorg/acra/collector/CrashReportData;)Ljava/io/File;
    .registers 5
    .param p1    # Lorg/acra/collector/CrashReportData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 269
    sget-object v0, Lorg/acra/ReportField;->SCREENSHOT:Lorg/acra/ReportField;

    invoke-virtual {p1, v0}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v1

    .line 270
    const/4 v0, 0x0

    .line 271
    if-eqz v1, :cond_16

    const-string v2, "ACRA-screen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 272
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    :cond_16
    return-object v0
.end method

.method private isSendScreenShot(Ljava/io/File;Lorg/acra/collector/CrashReportData;I)Z
    .registers 12
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/acra/collector/CrashReportData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 285
    if-nez p1, :cond_6

    move v0, v1

    .line 328
    :goto_5
    return v0

    .line 287
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_15

    .line 288
    sget-object v0, Lorg/acra/ReportField;->SCREENSHOT:Lorg/acra/ReportField;

    const-string v2, "\u7b2c\u4e00\u6b21\u4e0a\u4f20\u5931\u8d25\uff0c\u622a\u5c4f\u88ab\u679c\u65ad\u5220\u9664\uff01\uff01\uff01"

    invoke-virtual {p2, v0, v2}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 289
    goto :goto_5

    .line 293
    :cond_15
    if-ne p3, v2, :cond_33

    sget-object v0, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    invoke-virtual {p2, v0}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "cloud"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    sget-object v0, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    invoke-virtual {p2, v0}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "monkey"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_33
    move v0, v2

    .line 296
    goto :goto_5

    .line 300
    :cond_35
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x7d000

    cmp-long v0, v3, v5

    if-lez v0, :cond_67

    .line 301
    sget-object v0, Lorg/acra/ReportField;->SCREENSHOT:Lorg/acra/ReportField;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u622a\u5c4f\u5927\u5c0f\u662f "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K > 500K \u4e0d\u4e0a\u4f20\u622a\u5c4f\uff01\uff01\uff01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 302
    goto :goto_5

    .line 306
    :cond_67
    iget-object v0, p0, Lorg/acra/sender/QSenderProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/acra/collector/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 307
    const-string v3, "wifi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 308
    sget-object v2, Lorg/acra/ReportField;->SCREENSHOT:Lorg/acra/ReportField;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f53\u524d\u7f51\u7edc\u4e3a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u5e76\u4e0d\u662fwifi\uff0c\u4e0d\u4e0a\u4f20\u622a\u5c4f\uff01\uff01\uff01"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 309
    goto/16 :goto_5

    .line 313
    :cond_9c
    invoke-direct {p0}, Lorg/acra/sender/QSenderProxy;->isUploadScreenFrequencyPermission()Z

    move-result v0

    if-nez v0, :cond_f2

    .line 315
    iget-boolean v0, p0, Lorg/acra/sender/QSenderProxy;->mIsSilent:Z

    if-eqz v0, :cond_ef

    .line 316
    const-string v0, "1\u6b21(silent)"

    .line 321
    :goto_a8
    sget-object v3, Lorg/acra/ReportField;->SCREENSHOT:Lorg/acra/ReportField;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u81ea"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/acra/sender/QSenderProxy;->currentUploadScreenFrequencyInfo:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v5, v6, v7}, Lorg/acra/util/d;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5f00\u59cb\uff0c\u57281\u4e2a\u5c0f\u65f6\u5185\u622a\u5c4f "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/acra/sender/QSenderProxy;->currentUploadScreenFrequencyInfo:[Ljava/lang/String;

    aget-object v2, v5, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u6b21 > "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\uff0c\u4e0d\u4e0a\u4f20\u622a\u5c4f\uff01\uff01\uff01"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 325
    goto/16 :goto_5

    .line 318
    :cond_ef
    const-string v0, "10\u6b21"

    goto :goto_a8

    :cond_f2
    move v0, v2

    .line 328
    goto/16 :goto_5
.end method

.method private isUploadScreenFrequencyPermission()Z
    .registers 9

    .prologue
    const-wide/32 v6, 0x36ee80

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 339
    iget-boolean v2, p0, Lorg/acra/sender/QSenderProxy;->mIsSilent:Z

    if-eqz v2, :cond_2e

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lorg/acra/sender/QSenderProxy;->lastUploadScreenFrequencyInfo:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-gtz v2, :cond_2c

    iget-object v2, p0, Lorg/acra/sender/QSenderProxy;->lastUploadScreenFrequencyInfo:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v1, :cond_2d

    :cond_2c
    move v0, v1

    .line 343
    :cond_2d
    :goto_2d
    return v0

    :cond_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lorg/acra/sender/QSenderProxy;->lastUploadScreenFrequencyInfo:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-gtz v2, :cond_53

    iget-object v2, p0, Lorg/acra/sender/QSenderProxy;->lastUploadScreenFrequencyInfo:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_2d

    :cond_53
    move v0, v1

    goto :goto_2d
.end method

.method private sendCrash(Lorg/acra/collector/CrashReportData;Ljava/io/File;I)V
    .registers 10
    .param p1    # Lorg/acra/collector/CrashReportData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    const/4 v4, 0x0

    .line 77
    :try_start_1
    invoke-direct {p0, p1, p3}, Lorg/acra/sender/QSenderProxy;->dealScreenshot(Lorg/acra/collector/CrashReportData;I)Ljava/io/File;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_36

    move-result-object v4

    .line 83
    :goto_5
    invoke-direct {p0, p1}, Lorg/acra/sender/QSenderProxy;->getErrorString(Lorg/acra/collector/CrashReportData;)Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".acrajava.gz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Lorg/acra/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_35

    .line 91
    sget-object v0, Lorg/acra/ReportField;->NATIVE_CRASH:Lorg/acra/ReportField;

    invoke-virtual {p1, v0}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    .line 93
    invoke-direct/range {v0 .. v5}, Lorg/acra/sender/QSenderProxy;->sendNativeCrash(Ljava/io/File;Lorg/acra/collector/CrashReportData;Ljava/io/File;Ljava/io/File;I)V

    .line 100
    :cond_35
    :goto_35
    return-void

    .line 78
    :catch_36
    move-exception v0

    .line 79
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deal screen shot failed when send log :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 96
    :cond_56
    invoke-direct {p0, v1, p2, v4, p3}, Lorg/acra/sender/QSenderProxy;->sendJavaCrash(Ljava/io/File;Ljava/io/File;Ljava/io/File;I)V

    goto :goto_35
.end method

.method private sendJavaCrash(Ljava/io/File;Ljava/io/File;Ljava/io/File;I)V
    .registers 11
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    new-instance v1, Lqunar/lego/utils/FormPart;

    const-string v2, "c"

    iget-object v3, p0, Lorg/acra/sender/QSenderProxy;->mCParam:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "X-ClientEncoding"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lqunar/lego/utils/FormPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lqunar/lego/utils/FormPart;

    const-string v2, "error"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v2, "X-ClientEncoding"

    const-string v3, "gzip"

    invoke-virtual {v1, v2, v3}, Lqunar/lego/utils/FormPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-boolean v1, p0, Lorg/acra/sender/QSenderProxy;->mSendScreenShotSwitch:Z

    if-eqz v1, :cond_4d

    if-eqz p3, :cond_4d

    .line 147
    new-instance v1, Lqunar/lego/utils/FormPart;

    const-string v2, "snapshot.png"

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v2, "X-ClientEncoding"

    const-string v3, "gzip"

    invoke-virtual {v1, v2, v3}, Lqunar/lego/utils/FormPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_4d
    iget-object v1, p0, Lorg/acra/sender/QSenderProxy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lorg/acra/sender/QSenderProxy;->getPitcher(Landroid/content/Context;Ljava/util/ArrayList;)Lqunar/lego/utils/Pitcher;

    move-result-object v0

    invoke-virtual {v0}, Lqunar/lego/utils/Pitcher;->request()Lqunar/lego/utils/PitcherResponse;

    move-result-object v0

    .line 153
    iget-object v1, v0, Lqunar/lego/utils/PitcherResponse;->e:Ljava/lang/Exception;

    if-eqz v1, :cond_84

    .line 155
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send java crash error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lqunar/lego/utils/PitcherResponse;->e:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-ne p4, v5, :cond_80

    .line 157
    invoke-static {p3}, Lorg/acra/sender/b;->a(Ljava/io/File;)V

    .line 175
    :cond_80
    :goto_80
    invoke-static {p1}, Lorg/acra/sender/b;->a(Ljava/io/File;)V

    .line 176
    return-void

    .line 159
    :cond_84
    iget v1, v0, Lqunar/lego/utils/PitcherResponse;->respcode:I

    const/16 v2, 0x190

    if-le v1, v2, :cond_b2

    .line 161
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send java crash failed\uff0crespcode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lqunar/lego/utils/PitcherResponse;->respcode:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    if-ne p4, v5, :cond_80

    .line 163
    invoke-static {p3}, Lorg/acra/sender/b;->a(Ljava/io/File;)V

    goto :goto_80

    .line 167
    :cond_b2
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v1, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v2, "send java crash successfully"

    invoke-interface {v0, v1, v2}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {p2}, Lorg/acra/sender/b;->a(Ljava/io/File;)V

    .line 170
    if-eqz p3, :cond_c3

    .line 171
    invoke-direct {p0}, Lorg/acra/sender/QSenderProxy;->updateUploadFrequencyInfo()V

    .line 173
    :cond_c3
    invoke-static {p3}, Lorg/acra/sender/b;->a(Ljava/io/File;)V

    goto :goto_80
.end method

.method private sendNativeCrash(Ljava/io/File;Lorg/acra/collector/CrashReportData;Ljava/io/File;Ljava/io/File;I)V
    .registers 14
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/acra/collector/CrashReportData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    .line 185
    sget-object v0, Lorg/acra/ReportField;->NATIVE_CRASH:Lorg/acra/ReportField;

    invoke-virtual {p2, v0}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 189
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/acra/util/a;->a(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_bb

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 194
    new-instance v3, Lqunar/lego/utils/FormPart;

    const-string v4, "c"

    iget-object v5, p0, Lorg/acra/sender/QSenderProxy;->mCParam:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v4, "X-ClientEncoding"

    const-string v5, "none"

    invoke-virtual {v3, v4, v5}, Lqunar/lego/utils/FormPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v3, Lqunar/lego/utils/FormPart;

    const-string v4, "error"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v4, "X-ClientEncoding"

    const-string v5, "gzip"

    invoke-virtual {v3, v4, v5}, Lqunar/lego/utils/FormPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v3, Lqunar/lego/utils/FormPart;

    const-string v4, "dump"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v4, "X-ClientEncoding"

    const-string v5, "gzip"

    invoke-virtual {v3, v4, v5}, Lqunar/lego/utils/FormPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-boolean v3, p0, Lorg/acra/sender/QSenderProxy;->mSendScreenShotSwitch:Z

    if-eqz v3, :cond_82

    if-eqz p4, :cond_82

    .line 208
    new-instance v3, Lqunar/lego/utils/FormPart;

    const-string v4, "snapshot.png"

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v4, "X-ClientEncoding"

    const-string v5, "gzip"

    invoke-virtual {v3, v4, v5}, Lqunar/lego/utils/FormPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_82
    iget-object v3, p0, Lorg/acra/sender/QSenderProxy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v2}, Lorg/acra/sender/QSenderProxy;->getPitcher(Landroid/content/Context;Ljava/util/ArrayList;)Lqunar/lego/utils/Pitcher;

    move-result-object v2

    invoke-virtual {v2}, Lqunar/lego/utils/Pitcher;->request()Lqunar/lego/utils/PitcherResponse;

    move-result-object v2

    .line 215
    iget-object v3, v2, Lqunar/lego/utils/PitcherResponse;->e:Ljava/lang/Exception;

    if-eqz v3, :cond_bc

    .line 217
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v3, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send native crash error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lqunar/lego/utils/PitcherResponse;->e:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-ne p5, v7, :cond_b5

    .line 219
    invoke-static {p4}, Lorg/acra/sender/b;->a(Ljava/io/File;)V

    .line 238
    :cond_b5
    :goto_b5
    invoke-static {p1}, Lorg/acra/sender/b;->a(Ljava/io/File;)V

    .line 239
    invoke-static {v0}, Lorg/acra/sender/b;->a(Ljava/io/File;)V

    .line 247
    :cond_bb
    :goto_bb
    return-void

    .line 221
    :cond_bc
    iget v3, v2, Lqunar/lego/utils/PitcherResponse;->respcode:I

    const/16 v4, 0x190

    if-le v3, v4, :cond_ea

    .line 223
    sget-object v1, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v3, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send native crash failed\uff0crespcode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, v2, Lqunar/lego/utils/PitcherResponse;->respcode:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-ne p5, v7, :cond_b5

    .line 225
    invoke-static {p4}, Lorg/acra/sender/b;->a(Ljava/io/File;)V

    goto :goto_b5

    .line 229
    :cond_ea
    sget-object v2, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v3, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v4, "send native crash successfully"

    invoke-interface {v2, v3, v4}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {p3}, Lorg/acra/sender/b;->a(Ljava/io/File;)V

    .line 231
    invoke-static {v1}, Lorg/acra/sender/b;->a(Ljava/io/File;)V

    .line 233
    if-eqz p4, :cond_fe

    .line 234
    invoke-direct {p0}, Lorg/acra/sender/QSenderProxy;->updateUploadFrequencyInfo()V

    .line 236
    :cond_fe
    invoke-static {p4}, Lorg/acra/sender/b;->a(Ljava/io/File;)V

    goto :goto_b5

    .line 243
    :cond_102
    invoke-static {p3}, Lorg/acra/sender/b;->a(Ljava/io/File;)V

    .line 244
    invoke-static {p1}, Lorg/acra/sender/b;->a(Ljava/io/File;)V

    .line 245
    invoke-static {p4}, Lorg/acra/sender/b;->a(Ljava/io/File;)V

    goto :goto_bb
.end method

.method private updateUploadFrequencyInfo()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 373
    new-instance v0, Lorg/acra/d/b;

    iget-object v1, p0, Lorg/acra/sender/QSenderProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/acra/sender/QSenderProxy;->mConfig:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v0, v1, v2}, Lorg/acra/d/b;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    invoke-virtual {v0}, Lorg/acra/d/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 374
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 375
    iget-boolean v1, p0, Lorg/acra/sender/QSenderProxy;->mIsSilent:Z

    if-eqz v1, :cond_3f

    .line 376
    const-string v1, "acra.uploadScreenFrequencySilent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/acra/sender/QSenderProxy;->currentUploadScreenFrequencyInfo:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/sender/QSenderProxy;->currentUploadScreenFrequencyInfo:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    :goto_3b
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 381
    return-void

    .line 378
    :cond_3f
    const-string v1, "acra.uploadScreenFrequency"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/acra/sender/QSenderProxy;->currentUploadScreenFrequencyInfo:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/sender/QSenderProxy;->currentUploadScreenFrequencyInfo:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3b
.end method


# virtual methods
.method public send(Landroid/content/Context;Lorg/acra/collector/CrashReportData;Lorg/acra/config/ACRAConfiguration;Ljava/io/File;Ljava/lang/String;I)V
    .registers 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/acra/collector/CrashReportData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    iput-object p1, p0, Lorg/acra/sender/QSenderProxy;->mContext:Landroid/content/Context;

    .line 59
    iput-object p5, p0, Lorg/acra/sender/QSenderProxy;->mCParam:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lorg/acra/sender/QSenderProxy;->mConfig:Lorg/acra/config/ACRAConfiguration;

    .line 62
    invoke-direct {p0, p2, p4, p6}, Lorg/acra/sender/QSenderProxy;->sendCrash(Lorg/acra/collector/CrashReportData;Ljava/io/File;I)V

    .line 63
    return-void
.end method
