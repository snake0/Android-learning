.class Lcom/mqunar/contacts/basis/db/DBHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/xutils/dbutils/DbUtils$DbUpgradeListener;


# instance fields
.field final synthetic this$0:Lcom/mqunar/contacts/basis/db/DBHelper;


# direct methods
.method constructor <init>(Lcom/mqunar/contacts/basis/db/DBHelper;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mqunar/contacts/basis/db/DBHelper$1;->this$0:Lcom/mqunar/contacts/basis/db/DBHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lcom/mqunar/xutils/dbutils/DbUtils;II)V
    .registers 4

    .prologue
    .line 43
    return-void
.end method
