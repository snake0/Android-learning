.class final enum Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

.field public static final enum COMPLETE:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

.field public static final enum READY:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

.field public static final enum SENT:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 210
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->READY:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    .line 211
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v3}, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->SENT:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    .line 212
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->COMPLETE:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    .line 209
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    sget-object v1, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->READY:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->SENT:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->COMPLETE:Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->$VALUES:[Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;
    .registers 2

    .prologue
    .line 209
    const-class v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    return-object v0
.end method

.method public static values()[Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;
    .registers 1

    .prologue
    .line 209
    sget-object v0, Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->$VALUES:[Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    invoke-virtual {v0}, [Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/qapm/network/instrumentation/TransactionState$State;

    return-object v0
.end method
