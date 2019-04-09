.class Lcom/mqunar/necro/agent/NecroUtils$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic this$0:Lcom/mqunar/necro/agent/NecroUtils$1;


# direct methods
.method constructor <init>(Lcom/mqunar/necro/agent/NecroUtils$1;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mqunar/necro/agent/NecroUtils$1$1;->this$0:Lcom/mqunar/necro/agent/NecroUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 112
    const-string v0, "[0-9]+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
