.class final Lcom/baidu/techain/rp/f/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/techain/rp/f/a;


# direct methods
.method public constructor <init>(Lcom/baidu/techain/rp/f/a;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 99
    iput-object p1, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    .line 100
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 101
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 12

    .prologue
    const/4 v2, 0x2

    const v9, 0x36ee80

    const/4 v1, 0x1

    .line 106
    :try_start_5
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_270

    .line 202
    :cond_a
    :goto_a
    return-void

    .line 109
    :pswitch_b
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    invoke-static {v0}, Lcom/baidu/techain/rp/f/a;->a(Lcom/baidu/techain/rp/f/a;)V

    .line 111
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    .line 1230
    new-instance v1, Lcom/baidu/techain/e;

    iget-object v2, v0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1231
    invoke-virtual {v1}, Lcom/baidu/techain/e;->x()I

    move-result v2

    .line 1232
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 2"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 1233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1747
    iget-object v5, v1, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v6, "re_last_ofline_time"

    const-wide/16 v7, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 1235
    sub-long/2addr v3, v5

    .line 1236
    mul-int v5, v2, v9

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-ltz v5, :cond_6d

    .line 1237
    iget-object v3, v0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/techain/b/f;->a(Landroid/content/Context;)Lcom/baidu/techain/b/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/techain/b/f;->c()V

    .line 1238
    iget-object v0, v0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    mul-int/2addr v2, v9

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;J)V

    .line 1239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/techain/e;->d(J)V

    .line 113
    :goto_5b
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 114
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 115
    invoke-virtual {p0, v0}, Lcom/baidu/techain/rp/f/a$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_67} :catch_68

    goto :goto_a

    .line 200
    :catch_68
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_a

    .line 1241
    :cond_6d
    :try_start_6d
    iget-object v0, v0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    mul-int v1, v2, v9

    int-to-long v1, v1

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;J)V

    goto :goto_5b

    .line 118
    :pswitch_77
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    invoke-static {v0}, Lcom/baidu/techain/rp/f/a;->b(Lcom/baidu/techain/rp/f/a;)V

    goto :goto_a

    .line 121
    :pswitch_7d
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    .line 2032
    iget-object v0, v0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    .line 121
    invoke-static {v0}, Lcom/baidu/techain/b/e;->n(Landroid/content/Context;)I

    move-result v0

    .line 122
    if-ne v2, v0, :cond_e5

    .line 123
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 124
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    .line 3032
    iget-object v1, v1, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    .line 124
    invoke-static {v1}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/techain/rp/b/a;->b()I

    move-result v1

    .line 125
    new-instance v2, Lcom/baidu/techain/e;

    iget-object v3, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    .line 4032
    iget-object v3, v3, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    .line 125
    invoke-direct {v2, v3}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 4794
    iget-object v2, v2, Lcom/baidu/techain/e;->e:Landroid/content/SharedPreferences;

    const-string v3, "up_nu_co"

    const/16 v4, 0x32

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 127
    if-lt v1, v2, :cond_b6

    .line 128
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 129
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/baidu/techain/rp/f/a;->a(Lcom/baidu/techain/rp/f/a;II)V

    goto/16 :goto_a

    .line 132
    :cond_b6
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    .line 5032
    iget-object v1, v1, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    .line 133
    invoke-static {v1}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/baidu/techain/rp/b/a;->a(ZI)Ljava/util/List;

    move-result-object v1

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Dela "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 135
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 136
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 137
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/baidu/techain/rp/f/a;->a(Lcom/baidu/techain/rp/f/a;II)V

    goto/16 :goto_a

    .line 139
    :cond_e5
    if-ne v1, v0, :cond_a

    .line 140
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 141
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcom/baidu/techain/rp/f/a;->a(Lcom/baidu/techain/rp/f/a;II)V

    goto/16 :goto_a

    .line 145
    :pswitch_f2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/techain/rp/a/a;

    .line 146
    if-eqz v0, :cond_a

    .line 149
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    .line 6506
    iget-object v2, v1, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    iget-object v3, v0, Lcom/baidu/techain/rp/a/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/techain/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6508
    new-instance v3, Lcom/baidu/techain/rp/c/a;

    invoke-direct {v3}, Lcom/baidu/techain/rp/c/a;-><init>()V

    .line 6509
    iget-object v4, v0, Lcom/baidu/techain/rp/a/a;->e:Ljava/lang/String;

    iput-object v4, v3, Lcom/baidu/techain/rp/c/a;->b:Ljava/lang/String;

    .line 6510
    const/4 v4, 0x0

    iput v4, v3, Lcom/baidu/techain/rp/c/a;->g:I

    .line 6511
    const/4 v4, 0x1

    iput v4, v3, Lcom/baidu/techain/rp/c/a;->c:I

    .line 6512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/baidu/techain/rp/c/a;->e:J

    .line 6513
    const/4 v4, 0x1

    iput v4, v3, Lcom/baidu/techain/rp/c/a;->f:I

    .line 6514
    iget-object v4, v1, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    const/4 v5, 0x0

    .line 6515
    invoke-static {v4, v0, v2, v5}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Lcom/baidu/techain/rp/a/a;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/baidu/techain/rp/c/a;->d:Ljava/lang/String;

    .line 6517
    iget-object v2, v1, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/techain/rp/b/a;->a(Lcom/baidu/techain/rp/c/a;)J

    .line 6519
    iget-object v2, v1, Lcom/baidu/techain/rp/f/a;->a:Lcom/baidu/techain/e;

    iget-object v4, v0, Lcom/baidu/techain/rp/a/a;->e:Ljava/lang/String;

    .line 6847
    iget-object v5, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "re_net_ins_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6848
    iget-object v2, v2, Lcom/baidu/techain/e;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6521
    iget-object v2, v1, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/techain/b/e;->m(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    .line 6522
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/techain/b/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6523
    iget-object v4, v1, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    .line 6524
    invoke-static {v4}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/baidu/techain/rp/b/a;->b(Ljava/lang/String;)Z

    move-result v4

    .line 6526
    if-eqz v4, :cond_a

    .line 6527
    const-string v4, "1001001"

    iput-object v4, v3, Lcom/baidu/techain/rp/c/a;->b:Ljava/lang/String;

    .line 6528
    iget-object v4, v1, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    iget-object v5, v0, Lcom/baidu/techain/rp/a/a;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/techain/rp/a/a;->c:Ljava/lang/String;

    iget-object v6, v3, Lcom/baidu/techain/rp/c/a;->b:Ljava/lang/String;

    iget-object v7, v1, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    .line 6531
    invoke-static {v7}, Lcom/baidu/techain/b/e;->m(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6529
    invoke-static {v4, v5, v0, v6, v7}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 6531
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/baidu/techain/rp/c/a;->d:Ljava/lang/String;

    .line 6532
    iget-object v0, v1, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/techain/rp/b/a;->a(Lcom/baidu/techain/rp/c/a;)J

    .line 6533
    iget-object v0, v1, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/techain/rp/b/a;->a(Ljava/lang/String;)J

    goto/16 :goto_a

    .line 152
    :pswitch_19c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/techain/rp/c/a;

    .line 153
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    .line 7032
    iget-object v1, v1, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    .line 153
    invoke-static {v1}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/techain/rp/b/a;->a(Lcom/baidu/techain/rp/c/a;)J

    .line 154
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 155
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 156
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 157
    invoke-virtual {p0, v0}, Lcom/baidu/techain/rp/f/a$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 160
    :pswitch_1bc
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 161
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    invoke-static {v0}, Lcom/baidu/techain/rp/f/a;->a(Lcom/baidu/techain/rp/f/a;)V

    .line 162
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    invoke-static {v0}, Lcom/baidu/techain/rp/f/a;->b(Lcom/baidu/techain/rp/f/a;)V

    .line 164
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    .line 8032
    iget-object v0, v0, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    .line 164
    invoke-static {v0}, Lcom/baidu/techain/b/e;->n(Landroid/content/Context;)I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/baidu/techain/rp/f/a;->a(Lcom/baidu/techain/rp/f/a;II)V

    goto/16 :goto_a

    .line 168
    :pswitch_1d9
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/baidu/techain/rp/f/a;->a(Lcom/baidu/techain/rp/f/a;II)V

    goto/16 :goto_a

    .line 171
    :pswitch_1e2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 175
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    .line 9032
    iget-object v1, v1, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    .line 175
    invoke-static {v1}, Lcom/baidu/techain/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/techain/rp/b/a;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/techain/b/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/techain/rp/b/a;->a(Ljava/lang/String;)J

    goto/16 :goto_a

    .line 178
    :pswitch_1ff
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    .line 10032
    iget-object v2, v2, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    .line 178
    invoke-static {v2}, Lcom/baidu/techain/b/e;->n(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/baidu/techain/rp/f/a;->a(Lcom/baidu/techain/rp/f/a;II)V

    goto/16 :goto_a

    .line 181
    :pswitch_20f
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    invoke-static {v0}, Lcom/baidu/techain/rp/f/a;->b(Lcom/baidu/techain/rp/f/a;)V

    .line 182
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    .line 11032
    iget-object v2, v2, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    .line 182
    invoke-static {v2}, Lcom/baidu/techain/b/e;->n(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/baidu/techain/rp/f/a;->a(Lcom/baidu/techain/rp/f/a;II)V

    goto/16 :goto_a

    .line 185
    :pswitch_224
    iget-object v0, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    .line 12032
    iget-object v2, v2, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    .line 185
    invoke-static {v2}, Lcom/baidu/techain/b/e;->n(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/baidu/techain/rp/f/a;->a(Lcom/baidu/techain/rp/f/a;II)V

    goto/16 :goto_a

    .line 188
    :pswitch_234
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    .line 13032
    iget-object v1, v1, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    .line 190
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    .line 14032
    iget-object v2, v2, Lcom/baidu/techain/rp/f/a;->c:Lcom/baidu/techain/rp/d/a/a;

    .line 191
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15032
    invoke-static {v3}, Lcom/baidu/techain/rp/f/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-virtual {v2, v1, v3}, Lcom/baidu/techain/rp/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 193
    iget-object v1, p0, Lcom/baidu/techain/rp/f/a$a;->a:Lcom/baidu/techain/rp/f/a;

    .line 16032
    iget-object v1, v1, Lcom/baidu/techain/rp/f/a;->b:Landroid/content/Context;

    .line 193
    invoke-static {v1, v0}, Lcom/baidu/techain/b/e;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_26e
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_26e} :catch_68

    goto/16 :goto_a

    .line 106
    :pswitch_data_270
    .packed-switch 0x0
        :pswitch_77
        :pswitch_19c
        :pswitch_1bc
        :pswitch_f2
        :pswitch_1e2
        :pswitch_b
        :pswitch_1ff
        :pswitch_20f
        :pswitch_224
        :pswitch_1d9
        :pswitch_7d
        :pswitch_234
    .end packed-switch
.end method
