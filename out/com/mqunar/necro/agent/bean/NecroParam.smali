.class public Lcom/mqunar/necro/agent/bean/NecroParam;
.super Lcom/mqunar/necro/agent/bean/BaseParam;
.source "SourceFile"


# static fields
.field public static final NECRO_EMPTY_ARRAY:Ljava/lang/String; = "[]"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public cLogCount:I

.field public network:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mqunar/necro/agent/bean/BaseParam;-><init>()V

    return-void
.end method


# virtual methods
.method public hasData()Z
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mqunar/necro/agent/bean/NecroParam;->network:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/mqunar/necro/agent/bean/NecroParam;->network:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/mqunar/necro/agent/bean/NecroParam;->network:Ljava/lang/String;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
