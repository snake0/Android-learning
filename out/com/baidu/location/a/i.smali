.class public abstract Lcom/baidu/location/a/i;
.super Ljava/lang/Object;


# static fields
.field public static c:Ljava/lang/String;


# instance fields
.field public a:Lcom/baidu/location/b/g;

.field public b:Lcom/baidu/location/b/a;

.field final d:Landroid/os/Handler;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/i;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/a/i;->a:Lcom/baidu/location/b/g;

    iput-object v1, p0, Lcom/baidu/location/a/i;->b:Lcom/baidu/location/b/a;

    iput-boolean v0, p0, Lcom/baidu/location/a/i;->e:Z

    iput-boolean v0, p0, Lcom/baidu/location/a/i;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/i;->g:Z

    new-instance v0, Lcom/baidu/location/a/i$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/a/i$a;-><init>(Lcom/baidu/location/a/i;)V

    iput-object v0, p0, Lcom/baidu/location/a/i;->d:Landroid/os/Handler;

    iput-object v1, p0, Lcom/baidu/location/a/i;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/i;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/a/i;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/i;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/location/a/i;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/i;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/baidu/location/a/i;->h:Ljava/lang/String;

    if-nez v1, :cond_10

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/a/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/i;->h:Ljava/lang/String;

    :cond_10
    iget-object v1, p0, Lcom/baidu/location/a/i;->i:Ljava/lang/String;

    if-nez v1, :cond_1e

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/a/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/i;->i:Ljava/lang/String;

    :cond_1e
    iget-object v1, p0, Lcom/baidu/location/a/i;->b:Lcom/baidu/location/b/a;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/baidu/location/a/i;->b:Lcom/baidu/location/b/a;

    invoke-virtual {v1}, Lcom/baidu/location/b/a;->a()Z

    move-result v1

    if-nez v1, :cond_34

    :cond_2a
    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/b;->f()Lcom/baidu/location/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/i;->b:Lcom/baidu/location/b/a;

    :cond_34
    iget-object v1, p0, Lcom/baidu/location/a/i;->a:Lcom/baidu/location/b/g;

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/baidu/location/a/i;->a:Lcom/baidu/location/b/g;

    invoke-virtual {v1}, Lcom/baidu/location/b/g;->i()Z

    move-result v1

    if-nez v1, :cond_4a

    :cond_40
    invoke-static {}, Lcom/baidu/location/b/h;->a()Lcom/baidu/location/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/h;->o()Lcom/baidu/location/b/g;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/i;->a:Lcom/baidu/location/b/g;

    :cond_4a
    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/e;->i()Z

    move-result v1

    if-eqz v1, :cond_106

    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/e;->g()Landroid/location/Location;

    move-result-object v2

    :goto_5c
    iget-object v1, p0, Lcom/baidu/location/a/i;->b:Lcom/baidu/location/b/a;

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/baidu/location/a/i;->b:Lcom/baidu/location/b/a;

    invoke-virtual {v1}, Lcom/baidu/location/b/a;->d()Z

    move-result v1

    if-nez v1, :cond_70

    iget-object v1, p0, Lcom/baidu/location/a/i;->b:Lcom/baidu/location/b/a;

    invoke-virtual {v1}, Lcom/baidu/location/b/a;->c()Z

    move-result v1

    if-eqz v1, :cond_7f

    :cond_70
    iget-object v1, p0, Lcom/baidu/location/a/i;->a:Lcom/baidu/location/b/g;

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lcom/baidu/location/a/i;->a:Lcom/baidu/location/b/g;

    invoke-virtual {v1}, Lcom/baidu/location/b/g;->a()I

    move-result v1

    if-nez v1, :cond_7f

    :cond_7c
    if-nez v2, :cond_7f

    :goto_7e
    return-object v0

    :cond_7f
    invoke-virtual {p0}, Lcom/baidu/location/a/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/a/h;->a()Lcom/baidu/location/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/a/h;->d()I

    move-result v1

    const/4 v3, -0x2

    if-ne v1, v3, :cond_a1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&imo=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a1
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/d/j;->b(Landroid/content/Context;)I

    move-result v1

    if-ltz v1, :cond_c2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&lmd="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c2
    iget-object v1, p0, Lcom/baidu/location/a/i;->a:Lcom/baidu/location/b/g;

    if-eqz v1, :cond_ce

    iget-object v1, p0, Lcom/baidu/location/a/i;->a:Lcom/baidu/location/b/g;

    invoke-virtual {v1}, Lcom/baidu/location/b/g;->a()I

    move-result v1

    if-nez v1, :cond_104

    :cond_ce
    invoke-static {}, Lcom/baidu/location/b/h;->a()Lcom/baidu/location/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/h;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_104

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_ea
    iget-boolean v0, p0, Lcom/baidu/location/a/i;->f:Z

    if-eqz v0, :cond_fa

    iput-boolean v4, p0, Lcom/baidu/location/a/i;->f:Z

    iget-object v0, p0, Lcom/baidu/location/a/i;->b:Lcom/baidu/location/b/a;

    iget-object v1, p0, Lcom/baidu/location/a/i;->a:Lcom/baidu/location/b/g;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/baidu/location/d/j;->a(Lcom/baidu/location/b/a;Lcom/baidu/location/b/g;Landroid/location/Location;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_7e

    :cond_fa
    iget-object v0, p0, Lcom/baidu/location/a/i;->b:Lcom/baidu/location/b/a;

    iget-object v1, p0, Lcom/baidu/location/a/i;->a:Lcom/baidu/location/b/g;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/location/d/j;->a(Lcom/baidu/location/b/a;Lcom/baidu/location/b/g;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7e

    :cond_104
    move-object v3, v0

    goto :goto_ea

    :cond_106
    move-object v2, v0

    goto/16 :goto_5c
.end method

.method public abstract a()V
.end method

.method public abstract a(Landroid/os/Message;)V
.end method

.method public b()Ljava/lang/String;
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/b/h;->i()Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "&cn=32"

    :goto_12
    iget-boolean v2, p0, Lcom/baidu/location/a/i;->e:Z

    if-eqz v2, :cond_76

    iput-boolean v6, p0, Lcom/baidu/location/a/i;->e:Z

    invoke-static {}, Lcom/baidu/location/b/h;->a()Lcom/baidu/location/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/b/h;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    const-string v3, "02:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "%s&mac=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v2, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_45
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-le v2, v3, :cond_4b

    :cond_4b
    :goto_4b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5d
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&cn=%d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/location/b/b;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_76
    iget-boolean v2, p0, Lcom/baidu/location/a/i;->g:Z

    if-nez v2, :cond_4b

    invoke-static {}, Lcom/baidu/location/a/v;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_91

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_91
    iput-boolean v7, p0, Lcom/baidu/location/a/i;->g:Z

    goto :goto_4b
.end method
