.class public final enum Lcom/mqunar/tools/ViewSetter$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mqunar/tools/ViewSetter$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mqunar/tools/ViewSetter$Method;

.field public static final enum Background:Lcom/mqunar/tools/ViewSetter$Method;

.field public static final enum NotCare:Lcom/mqunar/tools/ViewSetter$Method;

.field public static final enum Src:Lcom/mqunar/tools/ViewSetter$Method;

.field public static final enum Text:Lcom/mqunar/tools/ViewSetter$Method;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/mqunar/tools/ViewSetter$Method;

    const-string v1, "Text"

    invoke-direct {v0, v1, v2}, Lcom/mqunar/tools/ViewSetter$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/tools/ViewSetter$Method;->Text:Lcom/mqunar/tools/ViewSetter$Method;

    new-instance v0, Lcom/mqunar/tools/ViewSetter$Method;

    const-string v1, "Src"

    invoke-direct {v0, v1, v3}, Lcom/mqunar/tools/ViewSetter$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/tools/ViewSetter$Method;->Src:Lcom/mqunar/tools/ViewSetter$Method;

    new-instance v0, Lcom/mqunar/tools/ViewSetter$Method;

    const-string v1, "Background"

    invoke-direct {v0, v1, v4}, Lcom/mqunar/tools/ViewSetter$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/tools/ViewSetter$Method;->Background:Lcom/mqunar/tools/ViewSetter$Method;

    new-instance v0, Lcom/mqunar/tools/ViewSetter$Method;

    const-string v1, "NotCare"

    invoke-direct {v0, v1, v5}, Lcom/mqunar/tools/ViewSetter$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mqunar/tools/ViewSetter$Method;->NotCare:Lcom/mqunar/tools/ViewSetter$Method;

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mqunar/tools/ViewSetter$Method;

    sget-object v1, Lcom/mqunar/tools/ViewSetter$Method;->Text:Lcom/mqunar/tools/ViewSetter$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mqunar/tools/ViewSetter$Method;->Src:Lcom/mqunar/tools/ViewSetter$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mqunar/tools/ViewSetter$Method;->Background:Lcom/mqunar/tools/ViewSetter$Method;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mqunar/tools/ViewSetter$Method;->NotCare:Lcom/mqunar/tools/ViewSetter$Method;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mqunar/tools/ViewSetter$Method;->$VALUES:[Lcom/mqunar/tools/ViewSetter$Method;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mqunar/tools/ViewSetter$Method;
    .registers 2

    .prologue
    .line 65
    const-class v0, Lcom/mqunar/tools/ViewSetter$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mqunar/tools/ViewSetter$Method;

    return-object v0
.end method

.method public static values()[Lcom/mqunar/tools/ViewSetter$Method;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/mqunar/tools/ViewSetter$Method;->$VALUES:[Lcom/mqunar/tools/ViewSetter$Method;

    invoke-virtual {v0}, [Lcom/mqunar/tools/ViewSetter$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mqunar/tools/ViewSetter$Method;

    return-object v0
.end method
