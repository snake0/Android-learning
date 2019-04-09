.class public Lcom/baidu/tts/b/a/b/f$b;
.super Lcom/baidu/tts/m/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/m/d",
        "<",
        "Lcom/baidu/tts/b/a/b/f$b;",
        ">;"
    }
.end annotation


# static fields
.field private static p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/baidu/tts/f/b;

.field private c:Lcom/baidu/tts/f/c;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 699
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/baidu/tts/b/a/b/f$b;->p:Ljava/util/Set;

    .line 701
    sget-object v0, Lcom/baidu/tts/b/a/b/f$b;->p:Ljava/util/Set;

    sget-object v1, Lcom/baidu/tts/f/g;->D:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 702
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/baidu/tts/m/d;-><init>()V

    .line 461
    sget-object v0, Lcom/baidu/tts/f/b;->b:Lcom/baidu/tts/f/b;

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->b:Lcom/baidu/tts/f/b;

    .line 462
    sget-object v0, Lcom/baidu/tts/f/c;->f:Lcom/baidu/tts/f/c;

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->c:Lcom/baidu/tts/f/c;

    .line 463
    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->d:Ljava/lang/String;

    .line 472
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/tts/b/a/b/f$b;->m:I

    .line 473
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/baidu/tts/b/a/b/f$b;->n:I

    .line 474
    sget-object v0, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    invoke-virtual {v0}, Lcom/baidu/tts/f/l;->b()I

    move-result v0

    iput v0, p0, Lcom/baidu/tts/b/a/b/f$b;->o:I

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/f/b;)I
    .registers 3

    .prologue
    .line 519
    if-eqz p1, :cond_6

    .line 520
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->b:Lcom/baidu/tts/f/b;

    .line 521
    const/4 v0, 0x0

    .line 523
    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    goto :goto_5
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 668
    iput p1, p0, Lcom/baidu/tts/b/a/b/f$b;->m:I

    .line 669
    return-void
.end method

.method public a(Lcom/baidu/tts/f/c;)V
    .registers 2

    .prologue
    .line 556
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->c:Lcom/baidu/tts/f/c;

    .line 557
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 487
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->k:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 682
    iput p1, p0, Lcom/baidu/tts/b/a/b/f$b;->n:I

    .line 683
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 501
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->l:Ljava/lang/String;

    .line 502
    return-void
.end method

.method public c()Lcom/baidu/tts/f/b;
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->b:Lcom/baidu/tts/f/b;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 696
    iput p1, p0, Lcom/baidu/tts/b/a/b/f$b;->o:I

    .line 697
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 538
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->a:Ljava/lang/String;

    .line 539
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->b:Lcom/baidu/tts/f/b;

    invoke-virtual {v0}, Lcom/baidu/tts/f/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 570
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->d:Ljava/lang/String;

    .line 571
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 612
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->g:Ljava/lang/String;

    .line 613
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->c:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 626
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->h:Ljava/lang/String;

    .line 627
    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 640
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->i:Ljava/lang/String;

    .line 641
    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 654
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->j:Ljava/lang/String;

    .line 655
    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .registers 2

    .prologue
    .line 661
    iget v0, p0, Lcom/baidu/tts/b/a/b/f$b;->m:I

    return v0
.end method

.method public o()I
    .registers 2

    .prologue
    .line 675
    iget v0, p0, Lcom/baidu/tts/b/a/b/f$b;->n:I

    return v0
.end method

.method public p()I
    .registers 2

    .prologue
    .line 689
    iget v0, p0, Lcom/baidu/tts/b/a/b/f$b;->o:I

    return v0
.end method
