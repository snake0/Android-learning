.class Lorg/acra/anr/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/acra/anr/d;


# direct methods
.method constructor <init>(Lorg/acra/anr/d;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lorg/acra/anr/d$1;->a:Lorg/acra/anr/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 29
    iget-object v0, p0, Lorg/acra/anr/d$1;->a:Lorg/acra/anr/d;

    iget-object v1, p0, Lorg/acra/anr/d$1;->a:Lorg/acra/anr/d;

    invoke-static {v1}, Lorg/acra/anr/d;->a(Lorg/acra/anr/d;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const v2, 0x7fffffff

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/acra/anr/d;->a(Lorg/acra/anr/d;I)I

    .line 30
    return-void
.end method
