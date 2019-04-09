.class public final Lorg/acra/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/acra/a/d$a;->a:Ljava/util/Set;

    .line 119
    return-void
.end method


# virtual methods
.method public a()Lorg/acra/a/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/a/d",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lorg/acra/a/d;

    iget-object v1, p0, Lorg/acra/a/d$a;->a:Ljava/util/Set;

    invoke-direct {v0, v1}, Lorg/acra/a/d;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/acra/a/d$a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method
