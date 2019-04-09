.class public final Lcom/squareup/wire/MessageAdapter$FieldInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final builderMethod:Ljava/lang/reflect/Method;

.field final datatype:Lcom/squareup/wire/Message$Datatype;

.field final enumType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;"
        }
    .end annotation
.end field

.field final label:Lcom/squareup/wire/Message$Label;

.field private final messageField:Ljava/lang/reflect/Field;

.field final messageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;"
        }
    .end annotation
.end field

.field final name:Ljava/lang/String;

.field final tag:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Message$Label;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/squareup/wire/Message$Datatype;",
            "Lcom/squareup/wire/Message$Label;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->tag:I

    .line 58
    iput-object p2, p0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->name:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 60
    iput-object p4, p0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->label:Lcom/squareup/wire/Message$Label;

    .line 61
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    if-ne p3, v0, :cond_19

    .line 62
    iput-object p5, p0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->enumType:Ljava/lang/Class;

    .line 63
    iput-object v1, p0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageType:Ljava/lang/Class;

    .line 73
    :goto_14
    iput-object p6, p0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageField:Ljava/lang/reflect/Field;

    .line 74
    iput-object p7, p0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->builderMethod:Ljava/lang/reflect/Method;

    .line 75
    return-void

    .line 64
    :cond_19
    sget-object v0, Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;

    if-ne p3, v0, :cond_22

    .line 65
    iput-object p5, p0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageType:Ljava/lang/Class;

    .line 66
    iput-object v1, p0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->enumType:Ljava/lang/Class;

    goto :goto_14

    .line 68
    :cond_22
    iput-object v1, p0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->enumType:Ljava/lang/Class;

    .line 69
    iput-object v1, p0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageType:Ljava/lang/Class;

    goto :goto_14
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Message$Label;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcom/squareup/wire/MessageAdapter$1;)V
    .registers 9

    .prologue
    .line 43
    invoke-direct/range {p0 .. p7}, Lcom/squareup/wire/MessageAdapter$FieldInfo;-><init>(ILjava/lang/String;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Message$Label;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method static synthetic access$000(Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$100(Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Method;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->builderMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method
