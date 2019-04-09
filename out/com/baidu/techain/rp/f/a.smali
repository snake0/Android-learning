.class public final Lcom/baidu/techain/rp/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/baidu/techain/e;

.field public b:Landroid/content/Context;

.field c:Lcom/baidu/techain/rp/d/a/a;

.field public d:Lcom/baidu/techain/rp/e/a;

.field private e:Lcom/baidu/techain/rp/f/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/baidu/techain/rp/f/a$a;

    invoke-static {}, Lcom/baidu/techain/b/l;->a()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/techain/rp/f/a$a;-><init>(Lcom/baidu/techain/rp/f/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/techain/rp/f/a;->e:Lcom/baidu/techain/rp/f/a$a;

    .line 58
    new-instance v0, Lcom/baidu/techain/e;

    iget-object v1, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    .line 59
    new-instance v0, Lcom/baidu/techain/rp/d/a/a;

    iget-object v1, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/techain/rp/d/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/techain/rp/f/a;->c:Lcom/baidu/techain/rp/d/a/a;

    .line 60
    return-void
.end method

.method static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 210
    :try_start_1
    const-string v1, "Common_section"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_11

    const-string v2, "12"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 219
    :cond_11
    :goto_11
    return-object v0

    .line 214
    :cond_12
    const-string v2, "12"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_19} :catch_1b

    move-result-object v0

    goto :goto_11

    .line 217
    :catch_1b
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_11
.end method

.method static synthetic a(Lcom/baidu/techain/rp/f/a;)V
    .registers 7

    .prologue
    .line 5223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    .line 5866
    iget-object v2, v2, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v3, "re_net_pu_de"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 5223
    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_119

    .line 6089
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a;->c:Lcom/baidu/techain/rp/d/a/a;

    .line 7064
    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/techain/b/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "p/1/rs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7065
    iget-object v2, v0, Lcom/baidu/techain/rp/d/a/a;->a:Landroid/content/Context;

    .line 8028
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v1, v3, v4, v5}, Lcom/baidu/techain/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 7067
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7068
    const-string v1, "c"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 7070
    new-instance v2, Lcom/baidu/techain/e;

    iget-object v0, v0, Lcom/baidu/techain/rp/d/a/a;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 7071
    const-string v0, "n"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 7072
    if-lez v0, :cond_61

    .line 8686
    iget-object v3, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    const-string v4, "re_net_ty"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8687
    iget-object v0, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7076
    :cond_61
    const-string v0, "i"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 7077
    if-lez v0, :cond_75

    .line 8700
    iget-object v3, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    const-string v4, "re_net_hr"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8701
    iget-object v0, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7080
    :cond_75
    const-string v0, "i2"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 7081
    if-lez v0, :cond_89

    .line 8728
    iget-object v3, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    const-string v4, "re_net_hr_bc"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8729
    iget-object v0, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7084
    :cond_89
    const-string v0, "w"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 7085
    if-lez v0, :cond_9d

    .line 8756
    iget-object v3, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    const-string v4, "re_net_wt"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8757
    iget-object v0, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7089
    :cond_9d
    const-string v0, "s1"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 7090
    if-lez v0, :cond_b7

    .line 7091
    const-string v0, "s1"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 8803
    iget-object v3, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    const-string v4, "re_net_one_lt"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8804
    iget-object v0, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7094
    :cond_b7
    const-string v0, "s2"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 7095
    if-lez v0, :cond_cb

    .line 8817
    iget-object v3, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    const-string v4, "re_net_dy_lt"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8818
    iget-object v0, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7099
    :cond_cb
    const-string v0, "t"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 7100
    if-lez v0, :cond_df

    .line 9770
    iget-object v3, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    const-string v4, "re_net_over"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9771
    iget-object v0, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7103
    :cond_df
    const-string v0, "l1"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 7104
    if-lez v0, :cond_f3

    .line 9789
    iget-object v3, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    const-string v4, "up_nu_co"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9790
    iget-object v0, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7107
    :cond_f3
    const-string v0, "l2"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 7108
    if-lez v0, :cond_107

    .line 10780
    iget-object v1, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    const-string v3, "up_nu_li"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 10781
    iget-object v0, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_107
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_107} :catch_11a

    .line 6090
    :cond_107
    :goto_107
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 10861
    iget-object v3, v0, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    const-string v4, "re_net_pu_de"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 10862
    iget-object v0, v0, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    :cond_119
    return-void

    .line 7113
    :catch_11a
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_107
.end method

.method static synthetic a(Lcom/baidu/techain/rp/f/a;II)V
    .registers 13

    .prologue
    .line 14246
    if-nez p2, :cond_6

    .line 14247
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 14292
    :cond_5
    :goto_5
    return-void

    .line 14251
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_95

    .line 14252
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/techain/rp/b/a;->a()Ljava/util/List;

    move-result-object v0

    .line 14253
    const/4 v1, 0x1

    if-ne v1, p2, :cond_27

    .line 14254
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 3g "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 14264
    :cond_27
    :goto_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 14267
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    .line 14889
    iget-object v1, v1, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v2, "re_day_len"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 14268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 14269
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    .line 14898
    iget-object v1, v1, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v2, "re_day_b_t"

    const-wide/16 v7, 0x0

    invoke-interface {v1, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 14270
    iget-object v7, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    .line 15822
    iget-object v7, v7, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v8, "re_net_dy_lt"

    const/16 v9, 0x32

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 14272
    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-nez v8, :cond_61

    .line 14273
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    invoke-virtual {v1, v3, v4}, Lcom/baidu/techain/e;->f(J)V

    move-wide v1, v3

    .line 14277
    :cond_61
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 14278
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 14280
    sub-long v1, v3, v1

    const-wide/32 v8, 0x5265c00

    cmp-long v1, v1, v8

    if-gez v1, :cond_d1

    .line 14281
    const/4 v1, 0x3

    if-ne p1, v1, :cond_88

    .line 14282
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    .line 15974
    iget-object v1, v1, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v2, "g_r_d_d_n"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 14283
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 14286
    iget-object v2, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/baidu/techain/e;->h(I)V

    .line 14290
    :cond_88
    const/high16 v1, 0x100000

    mul-int/2addr v1, v7

    int-to-long v1, v1

    cmp-long v1, v5, v1

    if-lez v1, :cond_e6

    .line 14291
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    goto/16 :goto_5

    .line 14256
    :cond_95
    const/4 v0, 0x3

    if-ne p1, v0, :cond_a4

    .line 14257
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/baidu/techain/rp/b/a;->a(ZI)Ljava/util/List;

    move-result-object v0

    goto :goto_27

    .line 14258
    :cond_a4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c5

    .line 14259
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/baidu/techain/rp/b/a;->a(ZI)Ljava/util/List;

    move-result-object v0

    .line 14260
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 3g to report "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    goto/16 :goto_27

    .line 14262
    :cond_c5
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/techain/rp/b/a;->a(I)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_27

    .line 14295
    :cond_d1
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v7, v8}, Lcom/baidu/techain/e;->e(J)V

    .line 14296
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    invoke-virtual {v1, v3, v4}, Lcom/baidu/techain/e;->f(J)V

    .line 14297
    const/4 v1, 0x3

    if-ne p1, v1, :cond_e6

    .line 14298
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/techain/e;->h(I)V

    .line 14302
    :cond_e6
    invoke-direct {p0, v0, p2, v5, v6}, Lcom/baidu/techain/rp/f/a;->a(Ljava/util/List;IJ)V

    .line 16312
    if-eqz p1, :cond_f6

    .line 16313
    const/4 v0, 0x0

    .line 14305
    :goto_ec
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e6

    goto/16 :goto_5

    .line 16316
    :cond_f6
    const/4 v0, 0x2

    if-eq p2, v0, :cond_fb

    .line 16317
    const/4 v0, 0x0

    goto :goto_ec

    .line 16320
    :cond_fb
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/techain/rp/b/a;->a(I)Ljava/util/List;

    move-result-object v0

    goto :goto_ec
.end method

.method private a(Ljava/util/List;IJ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/techain/rp/c/a;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 324
    .line 325
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    .line 1808
    iget-object v0, v0, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v2, "re_net_one_lt"

    const/4 v3, 0x5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 327
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 328
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 330
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/rp/c/a;

    .line 333
    :try_start_27
    new-instance v7, Lorg/json/JSONObject;

    iget-object v8, v0, Lcom/baidu/techain/rp/c/a;->d:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2e} :catch_9d

    .line 339
    iget-object v8, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 342
    :try_start_38
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_a3

    .line 348
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 350
    add-int v9, v2, v7

    const/high16 v10, 0x100000

    mul-int/2addr v10, v3

    if-lt v9, v10, :cond_a9

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int v3, v2, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 361
    :cond_5f
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 362
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 364
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 365
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 366
    :goto_74
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_104

    .line 367
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/baidu/techain/rp/c/b;

    .line 368
    if-eqz v1, :cond_99

    .line 2026
    iget-object v9, v1, Lcom/baidu/techain/rp/c/b;->b:Ljava/lang/String;

    .line 373
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 3018
    iget-object v0, v1, Lcom/baidu/techain/rp/c/b;->a:Lorg/json/JSONObject;

    .line 374
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3034
    iget v0, v1, Lcom/baidu/techain/rp/c/b;->c:I

    .line 375
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_99
    :goto_99
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_74

    .line 335
    :catch_9d
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_1b

    .line 344
    :catch_a3
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto/16 :goto_1b

    .line 356
    :cond_a9
    add-int/2addr v2, v7

    .line 357
    iget v7, v0, Lcom/baidu/techain/rp/c/a;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v7, Lcom/baidu/techain/rp/c/b;

    iget-object v9, v0, Lcom/baidu/techain/rp/c/a;->j:Ljava/lang/String;

    iget v0, v0, Lcom/baidu/techain/rp/c/a;->a:I

    invoke-direct {v7, v8, v9, v0}, Lcom/baidu/techain/rp/c/b;-><init>(Lorg/json/JSONObject;Ljava/lang/String;I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 377
    :cond_c1
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 378
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 379
    if-nez v0, :cond_d4

    .line 380
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4018
    :cond_d4
    iget-object v10, v1, Lcom/baidu/techain/rp/c/b;->a:Lorg/json/JSONObject;

    .line 382
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 383
    invoke-virtual {v4, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :goto_dc
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 391
    if-nez v0, :cond_e9

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5034
    :cond_e9
    iget v1, v1, Lcom/baidu/techain/rp/c/b;->c:I

    .line 394
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-virtual {v6, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_99

    .line 385
    :cond_f6
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 5018
    iget-object v10, v1, Lcom/baidu/techain/rp/c/b;->a:Lorg/json/JSONObject;

    .line 386
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 387
    invoke-virtual {v4, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_dc

    .line 398
    :cond_104
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_120

    .line 399
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a;->c:Lcom/baidu/techain/rp/d/a/a;

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/baidu/techain/rp/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 400
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/baidu/techain/rp/b/a;->a(Ljava/util/List;)I

    .line 404
    :cond_120
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_164

    .line 405
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12e
    :goto_12e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_164

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 406
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 407
    if-eqz v1, :cond_12e

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_12e

    .line 408
    iget-object v5, p0, Lcom/baidu/techain/rp/f/a;->c:Lcom/baidu/techain/rp/d/a/a;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v0}, Lcom/baidu/techain/rp/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 409
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v1

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/baidu/techain/rp/b/a;->a(Ljava/util/List;)I

    goto :goto_12e

    .line 415
    :cond_164
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/techain/rp/b/a;->c()I

    .line 417
    const/4 v0, 0x2

    if-eq v0, p2, :cond_177

    .line 418
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    int-to-long v1, v2

    add-long/2addr v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/baidu/techain/e;->e(J)V

    .line 420
    :cond_177
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 439
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    .line 461
    :cond_9
    :goto_9
    return v0

    .line 443
    :cond_a
    iget-object v2, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 448
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 450
    :try_start_1c
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v1

    .line 451
    :goto_22
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_35

    .line 452
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2f} :catch_37

    move-result v4

    if-nez v4, :cond_9

    .line 451
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_35
    move v0, v1

    .line 459
    goto :goto_9

    .line 458
    :catch_37
    move-exception v0

    move v0, v1

    goto :goto_9

    :cond_3a
    move v0, v1

    goto :goto_9
.end method

.method static synthetic b(Lcom/baidu/techain/rp/f/a;)V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 32
    .line 11423
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    invoke-virtual {v0}, Lcom/baidu/techain/e;->w()Ljava/util/List;

    move-result-object v0

    .line 11424
    if-eqz v0, :cond_f6

    .line 11428
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/techain/rp/a/a;

    .line 11430
    iget-object v2, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    .line 11925
    iget-object v2, v2, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v3, "li_pk_s"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11432
    iget-object v3, v0, Lcom/baidu/techain/rp/a/a;->b:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/baidu/techain/rp/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 12466
    iget-object v2, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    iget-object v3, v0, Lcom/baidu/techain/rp/a/a;->d:Ljava/lang/String;

    .line 12837
    iget-object v2, v2, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "re_net_ali2_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12467
    invoke-static {}, Lcom/baidu/techain/b/e;->c()Ljava/lang/String;

    move-result-object v3

    .line 12468
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 12472
    iget-object v2, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    iget-object v4, v0, Lcom/baidu/techain/rp/a/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/baidu/techain/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12474
    new-instance v4, Lcom/baidu/techain/rp/c/a;

    invoke-direct {v4}, Lcom/baidu/techain/rp/c/a;-><init>()V

    .line 12475
    iget-object v5, v0, Lcom/baidu/techain/rp/a/a;->d:Ljava/lang/String;

    iput-object v5, v4, Lcom/baidu/techain/rp/c/a;->b:Ljava/lang/String;

    .line 12476
    iput v10, v4, Lcom/baidu/techain/rp/c/a;->g:I

    .line 12477
    const/4 v5, 0x2

    iput v5, v4, Lcom/baidu/techain/rp/c/a;->c:I

    .line 12478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/baidu/techain/rp/c/a;->e:J

    .line 12479
    iput v11, v4, Lcom/baidu/techain/rp/c/a;->f:I

    .line 12480
    const/4 v5, 0x5

    iput v5, v4, Lcom/baidu/techain/rp/c/a;->i:I

    .line 12481
    iget-object v5, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v5, v0, v2, v11}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Lcom/baidu/techain/rp/a/a;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/baidu/techain/rp/c/a;->d:Ljava/lang/String;

    .line 12483
    iget-object v2, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/baidu/techain/rp/b/a;->a(Lcom/baidu/techain/rp/c/a;)J

    .line 12485
    iget-object v2, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/techain/b/e;->m(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    .line 12486
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/techain/b/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12487
    iget-object v5, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    .line 12488
    invoke-static {v5}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/baidu/techain/rp/b/a;->b(Ljava/lang/String;)Z

    move-result v5

    .line 12490
    if-eqz v5, :cond_d7

    .line 12491
    const-string v5, "1001001"

    iput-object v5, v4, Lcom/baidu/techain/rp/c/a;->b:Ljava/lang/String;

    .line 12492
    iput v10, v4, Lcom/baidu/techain/rp/c/a;->i:I

    .line 12493
    iget-object v5, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    iget-object v6, v0, Lcom/baidu/techain/rp/a/a;->a:Ljava/lang/String;

    iget-object v7, v0, Lcom/baidu/techain/rp/a/a;->c:Ljava/lang/String;

    iget-object v8, v4, Lcom/baidu/techain/rp/c/a;->b:Ljava/lang/String;

    iget-object v9, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    .line 12496
    invoke-static {v9}, Lcom/baidu/techain/b/e;->m(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 12494
    invoke-static {v5, v6, v7, v8, v9}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 12496
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/techain/rp/c/a;->d:Ljava/lang/String;

    .line 12497
    iget-object v5, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/baidu/techain/rp/b/a;->a(Lcom/baidu/techain/rp/c/a;)J

    .line 12498
    iget-object v4, p0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/baidu/techain/rp/b/a;->a(Ljava/lang/String;)J

    .line 12501
    :cond_d7
    iget-object v2, p0, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    iget-object v0, v0, Lcom/baidu/techain/rp/a/a;->d:Ljava/lang/String;

    .line 13832
    iget-object v4, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "re_net_ali2_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13833
    iget-object v0, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_e

    .line 32
    :cond_f6
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a;->e:Lcom/baidu/techain/rp/f/a$a;

    invoke-virtual {v0, p1}, Lcom/baidu/techain/rp/f/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 95
    return-void
.end method
