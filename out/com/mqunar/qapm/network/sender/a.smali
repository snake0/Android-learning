.class Lcom/mqunar/qapm/network/sender/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Lcom/mqunar/qapm/network/sender/QAPMSender;


# direct methods
.method constructor <init>(Lcom/mqunar/qapm/network/sender/QAPMSender;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mqunar/qapm/network/sender/a;->a:Lcom/mqunar/qapm/network/sender/QAPMSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 55
    const-string v0, "[0-9]+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
