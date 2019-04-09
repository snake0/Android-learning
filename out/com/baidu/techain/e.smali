.class public final Lcom/baidu/techain/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public b:Landroid/content/SharedPreferences;

.field public c:Landroid/content/SharedPreferences$Editor;

.field public d:Landroid/content/SharedPreferences$Editor;

.field public e:Landroid/content/SharedPreferences;

.field public f:Landroid/content/SharedPreferences$Editor;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    :try_start_3
    iput-object p1, p0, Lcom/baidu/techain/e;->g:Landroid/content/Context;

    .line 55
    const-string v0, "leroadtechaincfg"

    const/4 v1, 0x4

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    .line 58
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    .line 59
    const-string v0, "leroadcfg"

    const/4 v1, 0x4

    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/techain/e;->b:Landroid/content/SharedPreferences;

    .line 62
    iget-object v0, p0, Lcom/baidu/techain/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/techain/e;->d:Landroid/content/SharedPreferences$Editor;

    .line 63
    const-string v0, "retechain_po_rt"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    .line 64
    iget-object v0, p0, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_38} :catch_39

    .line 68
    :goto_38
    return-void

    .line 66
    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    goto :goto_38
.end method


# virtual methods
.method public final a(II)I
    .registers 6

    .prologue
    .line 582
    const-string v0, ""

    .line 583
    packed-switch p1, :pswitch_data_2c

    .line 593
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 594
    const/4 v0, -0x1

    .line 596
    :goto_c
    return v0

    .line 585
    :pswitch_d
    const-string v0, "sustfits"

    goto :goto_5

    .line 588
    :pswitch_10
    const-string v0, "suetfite"

    goto :goto_5

    .line 596
    :cond_13
    iget-object v1, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_c

    .line 583
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method public final a(I)V
    .registers 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "wi_fa_pu_ap"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 206
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    return-void
.end method

.method public final a(III)V
    .registers 7

    .prologue
    .line 563
    const-string v0, ""

    .line 564
    packed-switch p1, :pswitch_data_2e

    .line 574
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 579
    :goto_b
    return-void

    .line 566
    :pswitch_c
    const-string v0, "sustfits"

    goto :goto_5

    .line 569
    :pswitch_f
    const-string v0, "suetfite"

    goto :goto_5

    .line 577
    :cond_12
    iget-object v1, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 578
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_b

    .line 564
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public final a(J)V
    .registers 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "npuct"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 80
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    return-void
.end method

.method public final a(Lcom/baidu/techain/rp/a/a;)V
    .registers 6

    .prologue
    .line 630
    iget-object v0, p0, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v1, "re_con"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    iget-object v1, p0, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    const-string v2, "re_con"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "||"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/techain/rp/a/a;->a(Lcom/baidu/techain/rp/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 632
    iget-object v0, p0, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 634
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ses_ic"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .registers 7

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 154
    :try_start_b
    invoke-static {}, Lcom/baidu/techain/ac/F;->getInstance()Lcom/baidu/techain/ac/F;

    move-result-object v0

    .line 155
    const-string v1, "MzAyMTIxMDJkaWN1ZGlhYg=="

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/baidu/techain/ac/F;->ae([B[B)[B

    move-result-object v0

    .line 157
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v2, "lsl"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "lslt"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 160
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_36} :catch_37

    .line 165
    :goto_36
    return-void

    .line 162
    :catch_37
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_36
.end method

.method public final a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 400
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "glspk"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 411
    :goto_f
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 412
    return-void

    .line 402
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    const/4 v0, 0x0

    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 404
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 405
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_35

    .line 406
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 409
    :cond_38
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v2, "glspk"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_f
.end method

.method public final varargs a([I)V
    .registers 5

    .prologue
    .line 365
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_14

    .line 366
    :cond_5
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hcpk"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 377
    :goto_e
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 378
    return-void

    .line 368
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    const/4 v0, 0x0

    :goto_1a
    array-length v2, p1

    if-ge v0, v2, :cond_2f

    .line 370
    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_2c

    .line 372
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 375
    :cond_2f
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v2, "hcpk"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_e
.end method

.method public final a()Z
    .registers 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "iio"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "svi_n"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 907
    iget-object v0, p0, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "al_da"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .registers 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mo_fa_pu_ap"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 215
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    return-void
.end method

.method public final b(J)V
    .registers 6

    .prologue
    .line 443
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_15

    .line 444
    :try_start_6
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pdcgts"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 445
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 464
    :cond_14
    :goto_14
    return-void

    .line 448
    :cond_15
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "pdcgts"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 450
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 458
    :goto_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 459
    iget-object v1, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v2, "pdcgts"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 460
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_40} :catch_41

    goto :goto_14

    .line 462
    :catch_41
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_14

    .line 452
    :cond_46
    :try_start_46
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 453
    array-length v1, v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_14

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_6b} :catch_41

    move-result-object v0

    goto :goto_29
.end method

.method public final c()Ljava/lang/String;
    .registers 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "ses_ic"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)V
    .registers 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mo_ae_fa_ct"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 271
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 272
    return-void
.end method

.method public final c(J)V
    .registers 5

    .prologue
    .line 554
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "slruct"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 555
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 556
    return-void
.end method

.method public final d(I)V
    .registers 4

    .prologue
    .line 415
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "rtqe"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 416
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 417
    return-void
.end method

.method public final d(J)V
    .registers 5

    .prologue
    .line 742
    iget-object v0, p0, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "re_last_ofline_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 743
    iget-object v0, p0, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 744
    return-void
.end method

.method public final d()Z
    .registers 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "bka"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 6

    .prologue
    .line 169
    :try_start_0
    invoke-static {}, Lcom/baidu/techain/ac/F;->getInstance()Lcom/baidu/techain/ac/F;

    move-result-object v0

    .line 170
    const-string v1, "MzAyMTIxMDJkaWN1ZGlhYg=="

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 171
    iget-object v2, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v3, "lsl"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 173
    invoke-virtual {v0, v2, v1}, Lcom/baidu/techain/ac/F;->ad([B[B)[B

    move-result-object v1

    .line 174
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 178
    :goto_2e
    return-object v0

    :catch_2f
    move-exception v0

    const-string v0, ""

    goto :goto_2e
.end method

.method public final e(I)V
    .registers 4

    .prologue
    .line 433
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pdcg"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 434
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 435
    return-void
.end method

.method public final e(J)V
    .registers 5

    .prologue
    .line 884
    iget-object v0, p0, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "re_day_len"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 885
    iget-object v0, p0, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 886
    return-void
.end method

.method public final f()J
    .registers 5

    .prologue
    .line 183
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "lslt"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(I)V
    .registers 4

    .prologue
    .line 536
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sustfd"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 537
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 538
    return-void
.end method

.method public final f(J)V
    .registers 5

    .prologue
    .line 893
    iget-object v0, p0, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "re_day_b_t"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 894
    iget-object v0, p0, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 895
    return-void
.end method

.method public final g()V
    .registers 5

    .prologue
    .line 196
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pu_ap_fd"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 197
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    return-void
.end method

.method public final g(I)V
    .registers 4

    .prologue
    .line 545
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sufzfd"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 546
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 547
    return-void
.end method

.method public final h()I
    .registers 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "wi_fa_pu_ap"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final h(I)V
    .registers 4

    .prologue
    .line 978
    iget-object v0, p0, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "g_r_d_d_n"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 979
    iget-object v0, p0, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 980
    return-void
.end method

.method public final i()I
    .registers 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "mo_fa_pu_ap"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final j()V
    .registers 5

    .prologue
    .line 229
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pu_cl_fd"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 230
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    return-void
.end method

.method public final k()V
    .registers 5

    .prologue
    .line 243
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "se_ae_fd"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 244
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 245
    return-void
.end method

.method public final l()I
    .registers 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "wi_fa_pu_cl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final m()I
    .registers 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "mo_fa_pu_cl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final n()I
    .registers 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "mo_ae_fa_ct"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final o()Z
    .registers 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "hac"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final p()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 348
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "hcpk"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 350
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 351
    if-eqz v3, :cond_3c

    array-length v0, v3

    if-lez v0, :cond_3c

    .line 352
    const/4 v0, 0x0

    :goto_21
    array-length v1, v3

    if-ge v0, v1, :cond_3c

    .line 354
    :try_start_24
    aget-object v1, v3, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_31} :catch_34

    .line 352
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 356
    :catch_34
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    goto :goto_31

    .line 361
    :cond_3c
    return-object v2
.end method

.method public final q()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 382
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "glspk"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 384
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 385
    if-eqz v3, :cond_3c

    array-length v0, v3

    if-lez v0, :cond_3c

    .line 386
    const/4 v0, 0x0

    :goto_21
    array-length v1, v3

    if-ge v0, v1, :cond_3c

    .line 388
    :try_start_24
    aget-object v1, v3, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_31} :catch_34

    .line 386
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 390
    :catch_34
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/techain/b;->b()V

    goto :goto_31

    .line 395
    :cond_3c
    return-object v2
.end method

.method public final r()I
    .registers 4

    .prologue
    .line 420
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "rtqe"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final s()V
    .registers 4

    .prologue
    .line 424
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "lpcf"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 425
    iget-object v0, p0, Lcom/baidu/techain/e;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 426
    return-void
.end method

.method public final t()I
    .registers 4

    .prologue
    .line 438
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "pdcg"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final u()I
    .registers 4

    .prologue
    .line 541
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "sustfd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final v()I
    .registers 4

    .prologue
    .line 550
    iget-object v0, p0, Lcom/baidu/techain/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "sufzfd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final w()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/techain/rp/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 662
    iget-object v0, p0, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v1, "re_con"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 665
    const/4 v0, 0x0

    .line 681
    :cond_11
    return-object v0

    .line 668
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 669
    const-string v2, "\\|\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v3, :cond_11

    aget-object v4, v2, v1

    .line 670
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 674
    invoke-static {v4}, Lcom/baidu/techain/rp/a/a;->a(Ljava/lang/String;)Lcom/baidu/techain/rp/a/a;

    move-result-object v4

    .line 675
    if-eqz v4, :cond_32

    .line 679
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f
.end method

.method public final x()I
    .registers 6

    .prologue
    const/16 v0, 0x18

    .line 705
    const-string v1, "com.baidu.BaiduMap.meizu"

    iget-object v2, p0, Lcom/baidu/techain/e;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 706
    iget-object v1, p0, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v2, "re_net_hr"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 723
    :cond_18
    :goto_18
    return v0

    .line 708
    :cond_19
    iget-object v1, p0, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v2, "re_net_hr"

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 710
    :try_start_22
    iget-object v2, p0, Lcom/baidu/techain/e;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/techain/b/e;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 711
    if-eqz v2, :cond_5b

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5b

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    const/4 v3, 0x1

    aget-object v3, v2, v3

    .line 712
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 713
    const-string v3, "200080"

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string v2, "com.baidu.BaiduMap"

    iget-object v3, p0, Lcom/baidu/techain/e;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_56} :catch_5d

    move-result v2

    if-eqz v2, :cond_5b

    .line 714
    if-lt v1, v0, :cond_18

    :cond_5b
    :goto_5b
    move v0, v1

    goto :goto_18

    :catch_5d
    move-exception v0

    goto :goto_5b
.end method

.method public final y()I
    .registers 4

    .prologue
    .line 785
    iget-object v0, p0, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v1, "up_nu_li"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
