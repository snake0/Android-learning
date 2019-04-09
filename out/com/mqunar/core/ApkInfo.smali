.class public Lcom/mqunar/core/ApkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public applicationClassName:Ljava/lang/String;

.field public components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/core/Component;",
            ">;"
        }
    .end annotation
.end field

.field public fileName:Ljava/lang/String;

.field public launcherClassName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addComponents(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mqunar/core/ApkInfo;->components:Ljava/util/List;

    if-nez v0, :cond_b

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/core/ApkInfo;->components:Ljava/util/List;

    .line 28
    :cond_b
    new-instance v0, Lcom/mqunar/core/Component;

    invoke-direct {v0}, Lcom/mqunar/core/Component;-><init>()V

    .line 29
    iput-object p1, v0, Lcom/mqunar/core/Component;->name:Ljava/lang/String;

    .line 30
    iput-object p2, v0, Lcom/mqunar/core/Component;->intentFilters:Ljava/util/List;

    .line 31
    iget-object v1, p0, Lcom/mqunar/core/ApkInfo;->components:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method
