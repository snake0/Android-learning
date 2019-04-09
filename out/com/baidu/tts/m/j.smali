.class public Lcom/baidu/tts/m/j;
.super Lcom/baidu/tts/n/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/n/a",
        "<",
        "Lcom/baidu/tts/m/j;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/tts/m/b;

.field private b:Lcom/baidu/tts/m/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/baidu/tts/n/a;-><init>()V

    .line 28
    new-instance v0, Lcom/baidu/tts/m/b;

    invoke-direct {v0}, Lcom/baidu/tts/m/b;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    .line 29
    new-instance v0, Lcom/baidu/tts/m/a;

    invoke-direct {v0}, Lcom/baidu/tts/m/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/m/j;->b:Lcom/baidu/tts/m/a;

    .line 30
    return-void
.end method

.method private b(Lcom/baidu/tts/f/g;Ljava/lang/String;)I
    .registers 8

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b;->b()Lcom/baidu/tts/b/a/b/e$b;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v1}, Lcom/baidu/tts/m/b;->a()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/baidu/tts/m/j;->b:Lcom/baidu/tts/m/a;

    invoke-virtual {v2}, Lcom/baidu/tts/m/a;->a()Lcom/baidu/tts/b/b/b/b$a;

    move-result-object v2

    .line 90
    sget-object v3, Lcom/baidu/tts/m/j$1;->a:[I

    invoke-virtual {p1}, Lcom/baidu/tts/f/g;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_ba

    .line 183
    :goto_1d
    const/4 v0, 0x0

    :goto_1e
    return v0

    .line 92
    :pswitch_1f
    iget-object v0, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v0, p2}, Lcom/baidu/tts/m/b;->a(Ljava/lang/String;)V

    goto :goto_1d

    .line 95
    :pswitch_25
    iget-object v0, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v0, p2}, Lcom/baidu/tts/m/b;->b(Ljava/lang/String;)V

    goto :goto_1d

    .line 98
    :pswitch_2b
    iget-object v0, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v0, p2}, Lcom/baidu/tts/m/b;->c(Ljava/lang/String;)V

    goto :goto_1d

    .line 101
    :pswitch_31
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$b;->d(Ljava/lang/String;)V

    goto :goto_1d

    .line 104
    :pswitch_35
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$b;->e(Ljava/lang/String;)V

    goto :goto_1d

    .line 107
    :pswitch_39
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$b;->f(Ljava/lang/String;)V

    goto :goto_1d

    .line 110
    :pswitch_3d
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$b;->g(Ljava/lang/String;)V

    goto :goto_1d

    .line 113
    :pswitch_41
    invoke-static {p2}, Lcom/baidu/tts/f/d;->a(Ljava/lang/String;)Lcom/baidu/tts/f/d;

    move-result-object v0

    .line 114
    invoke-virtual {v1, v0}, Lcom/baidu/tts/b/a/b/f$b;->a(Lcom/baidu/tts/f/d;)V

    goto :goto_1d

    .line 117
    :pswitch_49
    invoke-virtual {v2, p2}, Lcom/baidu/tts/b/b/b/b$a;->a(Ljava/lang/String;)V

    goto :goto_1d

    .line 120
    :pswitch_4d
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->c(Ljava/lang/String;)V

    goto :goto_1d

    .line 123
    :pswitch_51
    invoke-static {p2}, Lcom/baidu/tts/f/b;->a(Ljava/lang/String;)Lcom/baidu/tts/f/b;

    move-result-object v0

    .line 124
    invoke-virtual {v1, v0}, Lcom/baidu/tts/b/a/b/f$b;->a(Lcom/baidu/tts/f/b;)I

    move-result v0

    goto :goto_1e

    .line 126
    :pswitch_5a
    invoke-static {p2}, Lcom/baidu/tts/f/c;->a(Ljava/lang/String;)Lcom/baidu/tts/f/c;

    move-result-object v0

    .line 127
    invoke-virtual {v1, v0}, Lcom/baidu/tts/b/a/b/f$b;->a(Lcom/baidu/tts/f/c;)V

    goto :goto_1d

    .line 130
    :pswitch_62
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->f(Ljava/lang/String;)V

    goto :goto_1d

    .line 133
    :pswitch_66
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$b;->c(Ljava/lang/String;)I

    move-result v0

    goto :goto_1e

    .line 135
    :pswitch_6b
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->i(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$b;->i(Ljava/lang/String;)V

    goto :goto_1d

    .line 139
    :pswitch_72
    iget-object v0, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v0, p2}, Lcom/baidu/tts/m/b;->d(Ljava/lang/String;)I

    move-result v0

    goto :goto_1e

    .line 141
    :pswitch_79
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->h(Ljava/lang/String;)V

    goto :goto_1d

    .line 144
    :pswitch_7d
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->d(Ljava/lang/String;)V

    goto :goto_1d

    .line 147
    :pswitch_81
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->e(Ljava/lang/String;)V

    goto :goto_1d

    .line 150
    :pswitch_85
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->g(Ljava/lang/String;)V

    goto :goto_1d

    .line 153
    :pswitch_89
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$b;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_1e

    .line 155
    :pswitch_8e
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->a(Ljava/lang/String;)V

    goto :goto_1d

    .line 158
    :pswitch_92
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->b(Ljava/lang/String;)V

    goto :goto_1d

    .line 161
    :pswitch_96
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/baidu/tts/m/j;->b:Lcom/baidu/tts/m/a;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/m/a;->a(I)V

    goto/16 :goto_1d

    .line 167
    :pswitch_a1
    :try_start_a1
    invoke-static {p2}, Lcom/baidu/tts/f/j;->valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/j;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a4} :catch_ac

    move-result-object v0

    .line 171
    :goto_a5
    iget-object v1, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/m/b;->a(Lcom/baidu/tts/f/j;)V

    goto/16 :goto_1d

    .line 168
    :catch_ac
    move-exception v0

    .line 169
    sget-object v0, Lcom/baidu/tts/f/j;->a:Lcom/baidu/tts/f/j;

    goto :goto_a5

    .line 174
    :pswitch_b0
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$b;->b(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 177
    :pswitch_b5
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$b;->h(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 90
    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_25
        :pswitch_2b
        :pswitch_31
        :pswitch_35
        :pswitch_39
        :pswitch_3d
        :pswitch_41
        :pswitch_49
        :pswitch_4d
        :pswitch_51
        :pswitch_5a
        :pswitch_62
        :pswitch_66
        :pswitch_6b
        :pswitch_72
        :pswitch_79
        :pswitch_7d
        :pswitch_81
        :pswitch_85
        :pswitch_89
        :pswitch_8e
        :pswitch_92
        :pswitch_96
        :pswitch_a1
        :pswitch_b0
        :pswitch_b5
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/baidu/tts/f/g;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/baidu/tts/m/j;->b(Lcom/baidu/tts/f/g;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()Lcom/baidu/tts/m/b;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    return-object v0
.end method

.method public b()Lcom/baidu/tts/m/a;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/tts/m/j;->b:Lcom/baidu/tts/m/a;

    return-object v0
.end method

.method public c()Lcom/baidu/tts/b/a/b/f$b;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b;->a()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/baidu/tts/b/a/b/e$b;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b;->b()Lcom/baidu/tts/b/a/b/e$b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/baidu/tts/b/b/b/b$a;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/tts/m/j;->b:Lcom/baidu/tts/m/a;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a;->a()Lcom/baidu/tts/b/b/b/b$a;

    move-result-object v0

    return-object v0
.end method
