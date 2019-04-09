.class public Lcom/baidu/location/a/c$c;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/baidu/location/a/c;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/baidu/location/a/c;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/location/a/c$c;->b:Lcom/baidu/location/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/c$c;->a:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/a/c$c;->c:J

    iput-object p2, p0, Lcom/baidu/location/a/c$c;->a:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/c$c;->c:J

    invoke-direct {p0}, Lcom/baidu/location/a/c$c;->c()V

    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/a/c$c;->b:Lcom/baidu/location/a/c;

    invoke-static {v1}, Lcom/baidu/location/a/c;->e(Lcom/baidu/location/a/c;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    :try_start_e
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_1d
    if-eqz v2, :cond_27

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_d

    :cond_27
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2c} :catch_2e

    move-object v0, v1

    goto :goto_d

    :catch_2e
    move-exception v1

    goto :goto_d

    :cond_30
    move-object v2, v0

    goto :goto_1d
.end method

.method private c()V
    .registers 9

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/baidu/location/a/c$c;->a()I

    move-result v0

    if-ge v0, v1, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/baidu/location/a/c$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v2, v1

    :goto_13
    if-lt v3, v1, :cond_8

    if-eqz v2, :cond_8

    move v4, v5

    move v2, v5

    :goto_19
    if-ge v4, v3, :cond_55

    iget-object v0, p0, Lcom/baidu/location/a/c$c;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v6, v0, Landroid/net/wifi/ScanResult;->level:I

    iget-object v0, p0, Lcom/baidu/location/a/c$c;->a:Ljava/util/List;

    add-int/lit8 v7, v4, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-ge v6, v0, :cond_59

    iget-object v0, p0, Lcom/baidu/location/a/c$c;->a:Ljava/util/List;

    add-int/lit8 v2, v4, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v2, p0, Lcom/baidu/location/a/c$c;->a:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/baidu/location/a/c$c;->a:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/location/a/c$c;->a:Ljava/util/List;

    invoke-interface {v2, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_50
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_19

    :cond_55
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_13

    :cond_59
    move v0, v2

    goto :goto_50
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/c$c;->a:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/baidu/location/a/c$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public a(I)Ljava/lang/String;
    .registers 24

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/location/a/c$c;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_9

    const/4 v1, 0x0

    :goto_8
    return-object v1

    :cond_9
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v11, 0x0

    const/4 v1, 0x0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_18d

    :try_start_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4
    :try_end_20
    .catch Ljava/lang/Error; {:try_start_19 .. :try_end_20} :catch_5f

    :goto_20
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_18d

    const/4 v1, 0x1

    move-wide/from16 v20, v2

    move-wide/from16 v3, v20

    move v2, v1

    :goto_2c
    new-instance v15, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v15, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/a/c$c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v16

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/baidu/location/a/c$c;->b()Ljava/lang/String;

    move-result-object v17

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move v13, v1

    :goto_45
    move/from16 v0, v16

    if-ge v13, v0, :cond_18a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/a/c$c;->a:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget v1, v1, Landroid/net/wifi/ScanResult;->level:I

    if-nez v1, :cond_63

    move v1, v8

    move-wide v8, v11

    :goto_59
    add-int/lit8 v10, v13, 0x1

    move v13, v10

    move-wide v11, v8

    move v8, v1

    goto :goto_45

    :catch_5f
    move-exception v2

    const-wide/16 v2, 0x0

    goto :goto_20

    :cond_63
    add-int/lit8 v7, v7, 0x1

    if-eqz v5, :cond_f1

    const/4 v1, 0x0

    const-string v5, "&wf="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v5, v1

    :goto_6e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/a/c$c;->a:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v9, ":"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v17, :cond_90

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    move v6, v7

    :cond_90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/a/c$c;->a:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget v1, v1, Landroid/net/wifi/ScanResult;->level:I

    if-gez v1, :cond_9f

    neg-int v1, v1

    :cond_9f
    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v10, ";%d;"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v18, v19

    move-object/from16 v0, v18

    invoke-static {v9, v10, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v8, 0x1

    if-eqz v2, :cond_187

    :try_start_c0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/a/c$c;->a:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-wide v8, v1, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long v8, v3, v8

    const-wide/32 v18, 0xf4240

    div-long v8, v8, v18
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_d3} :catch_f8

    :goto_d3
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmp-long v1, v8, v11

    if-lez v1, :cond_187

    :goto_de
    move/from16 v0, p1

    if-le v10, v0, :cond_184

    :goto_e2
    if-lez v6, :cond_ec

    const-string v1, "&wf_n="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_ec
    if-eqz v5, :cond_fc

    const/4 v1, 0x0

    goto/16 :goto_8

    :cond_f1
    const-string v1, "|"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6e

    :catch_f8
    move-exception v1

    const-wide/16 v8, 0x0

    goto :goto_d3

    :cond_fc
    const-wide/16 v1, 0xa

    cmp-long v1, v8, v1

    if-lez v1, :cond_17e

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_17e

    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_17e

    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "&wf_ut="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_132
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_177

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v3, :cond_150

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move v2, v3

    :goto_149
    const-string v3, "|"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v2

    goto :goto_132

    :cond_150
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_175

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_175
    move v2, v3

    goto :goto_149

    :cond_177
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_17e
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8

    :cond_184
    move v1, v10

    goto/16 :goto_59

    :cond_187
    move-wide v8, v11

    goto/16 :goto_de

    :cond_18a
    move-wide v8, v11

    goto/16 :goto_e2

    :cond_18d
    move-wide/from16 v20, v2

    move-wide/from16 v3, v20

    move v2, v1

    goto/16 :goto_2c
.end method
