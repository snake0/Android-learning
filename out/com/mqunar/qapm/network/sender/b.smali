.class Lcom/mqunar/qapm/network/sender/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mqunar/qapm/network/sender/QAPMSender;


# direct methods
.method constructor <init>(Lcom/mqunar/qapm/network/sender/QAPMSender;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mqunar/qapm/network/sender/b;->a:Lcom/mqunar/qapm/network/sender/QAPMSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 60
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/mqunar/qapm/network/sender/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
