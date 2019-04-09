.class final enum Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

.field public static final enum b:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

.field public static final enum c:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

.field private static final synthetic d:[Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;->a:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    new-instance v0, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;->b:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    new-instance v0, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;->c:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    sget-object v1, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;->a:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;->b:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;->c:Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;->d:[Lcom/mqunar/idscan/decode/CaptureActivityHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
