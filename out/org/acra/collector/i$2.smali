.class Lorg/acra/collector/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/acra/collector/i;


# direct methods
.method constructor <init>(Lorg/acra/collector/i;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 115
    iput-object p1, p0, Lorg/acra/collector/i$2;->b:Lorg/acra/collector/i;

    iput-object p2, p0, Lorg/acra/collector/i$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lorg/acra/collector/i$2;->a:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/acra/collector/i$2;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public synthetic apply(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 115
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/acra/collector/i$2;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
