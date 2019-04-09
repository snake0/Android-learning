.class public final Lcom/squareup/wire/Extension$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/ExtendableMessage",
        "<*>;E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final datatype:Lcom/squareup/wire/Message$Datatype;

.field private final enumType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;"
        }
    .end annotation
.end field

.field private final extendedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private label:Lcom/squareup/wire/Message$Label;

.field private final messageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private tag:I


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/squareup/wire/Message$Datatype;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/squareup/wire/Extension$Builder;->name:Ljava/lang/String;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/wire/Extension$Builder;->tag:I

    .line 65
    iput-object v1, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    .line 68
    iput-object p1, p0, Lcom/squareup/wire/Extension$Builder;->extendedType:Ljava/lang/Class;

    .line 69
    iput-object v1, p0, Lcom/squareup/wire/Extension$Builder;->messageType:Ljava/lang/Class;

    .line 70
    iput-object v1, p0, Lcom/squareup/wire/Extension$Builder;->enumType:Ljava/lang/Class;

    .line 71
    iput-object p2, p0, Lcom/squareup/wire/Extension$Builder;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V
    .registers 4

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;",
            "Lcom/squareup/wire/Message$Datatype;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/squareup/wire/Extension$Builder;->name:Ljava/lang/String;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/wire/Extension$Builder;->tag:I

    .line 65
    iput-object v1, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    .line 76
    iput-object p1, p0, Lcom/squareup/wire/Extension$Builder;->extendedType:Ljava/lang/Class;

    .line 77
    iput-object p2, p0, Lcom/squareup/wire/Extension$Builder;->messageType:Ljava/lang/Class;

    .line 78
    iput-object p3, p0, Lcom/squareup/wire/Extension$Builder;->enumType:Ljava/lang/Class;

    .line 79
    iput-object p4, p0, Lcom/squareup/wire/Extension$Builder;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V
    .registers 6

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;)V

    return-void
.end method

.method private validate()V
    .registers 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->extendedType:Ljava/lang/Class;

    if-nez v0, :cond_c

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extendedType == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_c
    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->name:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_18
    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->datatype:Lcom/squareup/wire/Message$Datatype;

    if-nez v0, :cond_24

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "datatype == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_24
    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    if-nez v0, :cond_30

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "label == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_30
    iget v0, p0, Lcom/squareup/wire/Extension$Builder;->tag:I

    if-gtz v0, :cond_4f

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/wire/Extension$Builder;->tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_4f
    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->datatype:Lcom/squareup/wire/Message$Datatype;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;

    if-ne v0, v1, :cond_65

    .line 135
    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->messageType:Ljava/lang/Class;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->enumType:Ljava/lang/Class;

    if-eqz v0, :cond_8b

    .line 136
    :cond_5d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Message w/o messageType or w/ enumType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_65
    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->datatype:Lcom/squareup/wire/Message$Datatype;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    if-ne v0, v1, :cond_7b

    .line 139
    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->messageType:Ljava/lang/Class;

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->enumType:Ljava/lang/Class;

    if-nez v0, :cond_8b

    .line 140
    :cond_73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Enum w/ messageType or w/o enumType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_7b
    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->messageType:Ljava/lang/Class;

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->enumType:Ljava/lang/Class;

    if-eqz v0, :cond_8b

    .line 144
    :cond_83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scalar w/ messageType or enumType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_8b
    return-void
.end method


# virtual methods
.method public buildOptional()Lcom/squareup/wire/Extension;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/Extension",
            "<TT;TE;>;"
        }
    .end annotation

    .prologue
    .line 93
    sget-object v0, Lcom/squareup/wire/Message$Label;->OPTIONAL:Lcom/squareup/wire/Message$Label;

    iput-object v0, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    .line 94
    invoke-direct {p0}, Lcom/squareup/wire/Extension$Builder;->validate()V

    .line 95
    new-instance v0, Lcom/squareup/wire/Extension;

    iget-object v1, p0, Lcom/squareup/wire/Extension$Builder;->extendedType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/squareup/wire/Extension$Builder;->messageType:Ljava/lang/Class;

    iget-object v3, p0, Lcom/squareup/wire/Extension$Builder;->enumType:Ljava/lang/Class;

    iget-object v4, p0, Lcom/squareup/wire/Extension$Builder;->name:Ljava/lang/String;

    iget v5, p0, Lcom/squareup/wire/Extension$Builder;->tag:I

    iget-object v6, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    iget-object v7, p0, Lcom/squareup/wire/Extension$Builder;->datatype:Lcom/squareup/wire/Message$Datatype;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/squareup/wire/Extension;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/wire/Message$Label;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public buildPacked()Lcom/squareup/wire/Extension;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/Extension",
            "<TT;",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 112
    sget-object v0, Lcom/squareup/wire/Message$Label;->PACKED:Lcom/squareup/wire/Message$Label;

    iput-object v0, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    .line 113
    invoke-direct {p0}, Lcom/squareup/wire/Extension$Builder;->validate()V

    .line 114
    new-instance v0, Lcom/squareup/wire/Extension;

    iget-object v1, p0, Lcom/squareup/wire/Extension$Builder;->extendedType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/squareup/wire/Extension$Builder;->messageType:Ljava/lang/Class;

    iget-object v3, p0, Lcom/squareup/wire/Extension$Builder;->enumType:Ljava/lang/Class;

    iget-object v4, p0, Lcom/squareup/wire/Extension$Builder;->name:Ljava/lang/String;

    iget v5, p0, Lcom/squareup/wire/Extension$Builder;->tag:I

    iget-object v6, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    iget-object v7, p0, Lcom/squareup/wire/Extension$Builder;->datatype:Lcom/squareup/wire/Message$Datatype;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/squareup/wire/Extension;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/wire/Message$Label;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public buildRepeated()Lcom/squareup/wire/Extension;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/Extension",
            "<TT;",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 105
    sget-object v0, Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;

    iput-object v0, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    .line 106
    invoke-direct {p0}, Lcom/squareup/wire/Extension$Builder;->validate()V

    .line 107
    new-instance v0, Lcom/squareup/wire/Extension;

    iget-object v1, p0, Lcom/squareup/wire/Extension$Builder;->extendedType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/squareup/wire/Extension$Builder;->messageType:Ljava/lang/Class;

    iget-object v3, p0, Lcom/squareup/wire/Extension$Builder;->enumType:Ljava/lang/Class;

    iget-object v4, p0, Lcom/squareup/wire/Extension$Builder;->name:Ljava/lang/String;

    iget v5, p0, Lcom/squareup/wire/Extension$Builder;->tag:I

    iget-object v6, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    iget-object v7, p0, Lcom/squareup/wire/Extension$Builder;->datatype:Lcom/squareup/wire/Message$Datatype;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/squareup/wire/Extension;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/wire/Message$Label;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public buildRequired()Lcom/squareup/wire/Extension;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/Extension",
            "<TT;TE;>;"
        }
    .end annotation

    .prologue
    .line 99
    sget-object v0, Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;

    iput-object v0, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    .line 100
    invoke-direct {p0}, Lcom/squareup/wire/Extension$Builder;->validate()V

    .line 101
    new-instance v0, Lcom/squareup/wire/Extension;

    iget-object v1, p0, Lcom/squareup/wire/Extension$Builder;->extendedType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/squareup/wire/Extension$Builder;->messageType:Ljava/lang/Class;

    iget-object v3, p0, Lcom/squareup/wire/Extension$Builder;->enumType:Ljava/lang/Class;

    iget-object v4, p0, Lcom/squareup/wire/Extension$Builder;->name:Ljava/lang/String;

    iget v5, p0, Lcom/squareup/wire/Extension$Builder;->tag:I

    iget-object v6, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    iget-object v7, p0, Lcom/squareup/wire/Extension$Builder;->datatype:Lcom/squareup/wire/Message$Datatype;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/squareup/wire/Extension;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/wire/Message$Label;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/squareup/wire/Extension$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;TE;>;"
        }
    .end annotation

    .prologue
    .line 83
    iput-object p1, p0, Lcom/squareup/wire/Extension$Builder;->name:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public setTag(I)Lcom/squareup/wire/Extension$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    iput p1, p0, Lcom/squareup/wire/Extension$Builder;->tag:I

    .line 89
    return-object p0
.end method
