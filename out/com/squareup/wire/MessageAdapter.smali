.class final Lcom/squareup/wire/MessageAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final builderType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/squareup/wire/Message$Builder",
            "<TM;>;>;"
        }
    .end annotation
.end field

.field private final fieldInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/wire/MessageAdapter$FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final messageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TM;>;"
        }
    .end annotation
.end field

.field private final tagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final wire:Lcom/squareup/wire/Wire;


# direct methods
.method constructor <init>(Lcom/squareup/wire/Wire;Ljava/lang/Class;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/Wire;",
            "Ljava/lang/Class",
            "<TM;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/squareup/wire/MessageAdapter;->tagMap:Ljava/util/Map;

    .line 122
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Ljava/util/Map;

    .line 127
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    .line 128
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    .line 129
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/squareup/wire/MessageAdapter;->getBuilderType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/wire/MessageAdapter;->builderType:Ljava/lang/Class;

    .line 131
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    array-length v12, v11

    const/4 v1, 0x0

    move v10, v1

    :goto_28
    if-ge v10, v12, :cond_7d

    aget-object v7, v11, v10

    .line 133
    const-class v1, Lcom/squareup/wire/ProtoField;

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/squareup/wire/ProtoField;

    .line 134
    if-eqz v5, :cond_70

    .line 135
    invoke-interface {v5}, Lcom/squareup/wire/ProtoField;->tag()I

    move-result v2

    .line 137
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 138
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->tagMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/4 v6, 0x0

    .line 140
    invoke-interface {v5}, Lcom/squareup/wire/ProtoField;->type()Lcom/squareup/wire/Message$Datatype;

    move-result-object v4

    .line 141
    sget-object v1, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    if-ne v4, v1, :cond_74

    .line 142
    invoke-direct {p0, v7}, Lcom/squareup/wire/MessageAdapter;->getEnumType(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v6

    .line 146
    :cond_55
    :goto_55
    iget-object v13, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    invoke-interface {v5}, Lcom/squareup/wire/ProtoField;->label()Lcom/squareup/wire/Message$Label;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {p0, v3, v8}, Lcom/squareup/wire/MessageAdapter;->getBuilderMethod(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/squareup/wire/MessageAdapter$FieldInfo;-><init>(ILjava/lang/String;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Message$Label;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcom/squareup/wire/MessageAdapter$1;)V

    invoke-interface {v13, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_70
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_28

    .line 143
    :cond_74
    sget-object v1, Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;

    if-ne v4, v1, :cond_55

    .line 144
    invoke-direct {p0, v7}, Lcom/squareup/wire/MessageAdapter;->getMessageType(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v6

    goto :goto_55

    .line 150
    :cond_7d
    return-void
.end method

.method private getBuilderMethod(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->builderType:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    return-object v0

    .line 165
    :catch_d
    move-exception v0

    .line 166
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No builder method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/wire/MessageAdapter;->builderType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private getBuilderType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TM;>;)",
            "Ljava/lang/Class",
            "<",
            "Lcom/squareup/wire/Message$Builder",
            "<TM;>;>;"
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$Builder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v0

    return-object v0

    .line 156
    :catch_1c
    move-exception v0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No builder class found for message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEnumClass(I)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 719
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 720
    if-nez v0, :cond_1c

    const/4 v0, 0x0

    .line 721
    :goto_f
    if-nez v0, :cond_1b

    .line 722
    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v1

    .line 723
    if-eqz v1, :cond_1b

    .line 724
    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getEnumType()Ljava/lang/Class;

    move-result-object v0

    .line 727
    :cond_1b
    return-object v0

    .line 720
    :cond_1c
    iget-object v0, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->enumType:Ljava/lang/Class;

    goto :goto_f
.end method

.method private getEnumSize(Lcom/squareup/wire/ProtoEnum;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/ProtoEnum;",
            ">(TE;)I"
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Wire;->enumAdapter(Ljava/lang/Class;)Lcom/squareup/wire/EnumAdapter;

    move-result-object v0

    .line 448
    invoke-virtual {v0, p1}, Lcom/squareup/wire/EnumAdapter;->toInt(Lcom/squareup/wire/ProtoEnum;)I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v0

    return v0
.end method

.method private getEnumType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 189
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 198
    :goto_c
    return-object v1

    .line 191
    :cond_d
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 193
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 194
    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_34

    const-class v2, Ljava/lang/Enum;

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 195
    check-cast v1, Ljava/lang/Class;

    goto :goto_c

    .line 198
    :cond_34
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private getExtension(I)Lcom/squareup/wire/Extension;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/wire/Extension",
            "<",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;*>;"
        }
    .end annotation

    .prologue
    .line 700
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    iget-object v0, v0, Lcom/squareup/wire/Wire;->registry:Lcom/squareup/wire/ExtensionRegistry;

    .line 701
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ExtensionRegistry;->getExtension(Ljava/lang/Class;I)Lcom/squareup/wire/Extension;

    move-result-object v0

    goto :goto_7
.end method

.method private getExtensionsSerializedSize(Lcom/squareup/wire/ExtensionMap;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Lcom/squareup/wire/ExtensionMap",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    invoke-virtual {p1}, Lcom/squareup/wire/ExtensionMap;->getExtensions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Extension;

    .line 241
    invoke-virtual {p1, v0}, Lcom/squareup/wire/ExtensionMap;->get(Lcom/squareup/wire/Extension;)Ljava/lang/Object;

    move-result-object v1

    .line 242
    invoke-virtual {v0}, Lcom/squareup/wire/Extension;->getTag()I

    move-result v4

    .line 243
    invoke-virtual {v0}, Lcom/squareup/wire/Extension;->getDatatype()Lcom/squareup/wire/Message$Datatype;

    move-result-object v5

    .line 244
    invoke-virtual {v0}, Lcom/squareup/wire/Extension;->getLabel()Lcom/squareup/wire/Message$Label;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 246
    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_3c

    move-object v0, v1

    .line 247
    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, v4, v5}, Lcom/squareup/wire/MessageAdapter;->getPackedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v0

    add-int/2addr v0, v2

    :goto_3a
    move v2, v0

    .line 254
    goto :goto_a

    .line 249
    :cond_3c
    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1, v4, v5}, Lcom/squareup/wire/MessageAdapter;->getRepeatedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_3a

    .line 252
    :cond_44
    invoke-direct {p0, v4, v1, v5}, Lcom/squareup/wire/MessageAdapter;->getSerializedSize(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_3a

    .line 255
    :cond_4a
    return v2
.end method

.method private getMessageClass(I)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<",
            "Lcom/squareup/wire/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 639
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 640
    if-nez v0, :cond_1c

    const/4 v0, 0x0

    .line 642
    :goto_f
    if-nez v0, :cond_1b

    .line 643
    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v1

    .line 644
    if-eqz v1, :cond_1b

    .line 645
    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getMessageType()Ljava/lang/Class;

    move-result-object v0

    .line 648
    :cond_1b
    return-object v0

    .line 640
    :cond_1c
    iget-object v0, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageType:Ljava/lang/Class;

    goto :goto_f
.end method

.method private getMessageSize(Lcom/squareup/wire/Message;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">(TM;)I"
        }
    .end annotation

    .prologue
    .line 453
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->getSerializedSize()I

    move-result v0

    .line 454
    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getMessageType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Lcom/squareup/wire/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 174
    const-class v0, Lcom/squareup/wire/Message;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 183
    :goto_c
    return-object v1

    .line 176
    :cond_d
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 178
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 179
    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_34

    const-class v2, Lcom/squareup/wire/Message;

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 180
    check-cast v1, Ljava/lang/Class;

    goto :goto_c

    .line 183
    :cond_34
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private getPackedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")I"
        }
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 269
    invoke-direct {p0, v2, p3}, Lcom/squareup/wire/MessageAdapter;->getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v2

    add-int/2addr v0, v2

    .line 270
    goto :goto_5

    .line 272
    :cond_15
    sget-object v1, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-static {p2, v1}, Lcom/squareup/wire/WireOutput;->makeTag(ILcom/squareup/wire/WireType;)I

    move-result v1

    invoke-static {v1}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v1

    .line 273
    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 274
    add-int/2addr v0, v1

    .line 275
    return v0
.end method

.method private getRepeatedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")I"
        }
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 261
    invoke-direct {p0, p2, v2, p3}, Lcom/squareup/wire/MessageAdapter;->getSerializedSize(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v2

    add-int/2addr v0, v2

    .line 262
    goto :goto_5

    .line 263
    :cond_15
    return v0
.end method

.method private getSerializedSize(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I
    .registers 6

    .prologue
    .line 396
    invoke-static {p1}, Lcom/squareup/wire/WireOutput;->varintTagSize(I)I

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/squareup/wire/MessageAdapter;->getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I
    .registers 5

    .prologue
    .line 404
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    invoke-virtual {p2}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7e

    .line 423
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 405
    :pswitch_11
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->int32Size(I)I

    move-result v0

    .line 422
    :goto_1b
    return v0

    .line 406
    :pswitch_1c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/WireOutput;->varint64Size(J)I

    move-result v0

    goto :goto_1b

    .line 407
    :pswitch_27
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v0

    goto :goto_1b

    .line 408
    :pswitch_32
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->zigZag32(I)I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v0

    goto :goto_1b

    .line 409
    :pswitch_41
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/WireOutput;->zigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/WireOutput;->varint64Size(J)I

    move-result v0

    goto :goto_1b

    .line 410
    :pswitch_50
    const/4 v0, 0x1

    goto :goto_1b

    .line 411
    :pswitch_52
    check-cast p1, Lcom/squareup/wire/ProtoEnum;

    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getEnumSize(Lcom/squareup/wire/ProtoEnum;)I

    move-result v0

    goto :goto_1b

    .line 413
    :pswitch_59
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->utf8Length(Ljava/lang/String;)I

    move-result v0

    .line 414
    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1b

    .line 416
    :pswitch_65
    check-cast p1, Lcom/squareup/wire/ByteString;

    invoke-virtual {p1}, Lcom/squareup/wire/ByteString;->size()I

    move-result v0

    .line 417
    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1b

    .line 418
    :pswitch_71
    check-cast p1, Lcom/squareup/wire/Message;

    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getMessageSize(Lcom/squareup/wire/Message;)I

    move-result v0

    goto :goto_1b

    .line 420
    :pswitch_78
    const/4 v0, 0x4

    goto :goto_1b

    .line 422
    :pswitch_7a
    const/16 v0, 0x8

    goto :goto_1b

    .line 404
    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1c
        :pswitch_1c
        :pswitch_27
        :pswitch_32
        :pswitch_41
        :pswitch_50
        :pswitch_52
        :pswitch_59
        :pswitch_65
        :pswitch_71
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
    .end packed-switch
.end method

.method private readMessage(Lcom/squareup/wire/WireInput;I)Lcom/squareup/wire/Message;
    .registers 6

    .prologue
    .line 623
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    .line 624
    iget v1, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    const/16 v2, 0x40

    if-lt v1, v2, :cond_12

    .line 625
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Wire recursion limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_12
    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireInput;->pushLimit(I)I

    move-result v0

    .line 628
    iget v1, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    .line 629
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-direct {p0, p2}, Lcom/squareup/wire/MessageAdapter;->getMessageClass(I)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/wire/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;

    move-result-object v1

    .line 630
    invoke-virtual {v1, p1}, Lcom/squareup/wire/MessageAdapter;->read(Lcom/squareup/wire/WireInput;)Lcom/squareup/wire/Message;

    move-result-object v1

    .line 631
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireInput;->checkLastTagWas(I)V

    .line 632
    iget v2, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    .line 633
    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireInput;->popLimit(I)V

    .line 634
    return-object v1
.end method

.method private readUnknownField(Lcom/squareup/wire/Message$Builder;Lcom/squareup/wire/WireInput;ILcom/squareup/wire/WireType;)V
    .registers 8

    .prologue
    .line 653
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$WireType:[I

    invoke-virtual {p4}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    .line 673
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported wire type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :pswitch_24
    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->readVarint64()J

    move-result-wide v0

    invoke-virtual {p1, p3, v0, v1}, Lcom/squareup/wire/Message$Builder;->addVarint(IJ)V

    .line 675
    :goto_2b
    :pswitch_2b
    return-void

    .line 658
    :pswitch_2c
    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->readFixed32()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/squareup/wire/Message$Builder;->addFixed32(II)V

    goto :goto_2b

    .line 661
    :pswitch_34
    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->readFixed64()J

    move-result-wide v0

    invoke-virtual {p1, p3, v0, v1}, Lcom/squareup/wire/Message$Builder;->addFixed64(IJ)V

    goto :goto_2b

    .line 664
    :pswitch_3c
    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    .line 665
    invoke-virtual {p2, v0}, Lcom/squareup/wire/WireInput;->readBytes(I)Lcom/squareup/wire/ByteString;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/squareup/wire/Message$Builder;->addLengthDelimited(ILcom/squareup/wire/ByteString;)V

    goto :goto_2b

    .line 669
    :pswitch_48
    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->skipGroup()V

    goto :goto_2b

    .line 653
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2c
        :pswitch_34
        :pswitch_3c
        :pswitch_48
        :pswitch_2b
    .end packed-switch
.end method

.method private readValue(Lcom/squareup/wire/WireInput;ILcom/squareup/wire/Message$Datatype;)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 596
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    invoke-virtual {p3}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a0

    .line 618
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 597
    :pswitch_11
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 617
    :goto_19
    return-object v0

    .line 598
    :pswitch_1a
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_19

    .line 599
    :pswitch_23
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireInput;->decodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_19

    .line 600
    :pswitch_30
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/WireInput;->decodeZigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_19

    .line 601
    :pswitch_3d
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    :goto_44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_19

    :cond_49
    const/4 v0, 0x0

    goto :goto_44

    .line 603
    :pswitch_4b
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-direct {p0, p2}, Lcom/squareup/wire/MessageAdapter;->getEnumClass(I)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Wire;->enumAdapter(Ljava/lang/Class;)Lcom/squareup/wire/EnumAdapter;

    move-result-object v0

    .line 604
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v1

    .line 606
    :try_start_59
    invoke-virtual {v0, v1}, Lcom/squareup/wire/EnumAdapter;->fromInt(I)Lcom/squareup/wire/ProtoEnum;
    :try_end_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_5c} :catch_5e

    move-result-object v0

    goto :goto_19

    .line 607
    :catch_5e
    move-exception v0

    .line 609
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_19

    .line 611
    :pswitch_64
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 612
    :pswitch_69
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readBytes()Lcom/squareup/wire/ByteString;

    move-result-object v0

    goto :goto_19

    .line 613
    :pswitch_6e
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/MessageAdapter;->readMessage(Lcom/squareup/wire/WireInput;I)Lcom/squareup/wire/Message;

    move-result-object v0

    goto :goto_19

    .line 614
    :pswitch_73
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_19

    .line 615
    :pswitch_7c
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_19

    .line 616
    :pswitch_85
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_19

    .line 617
    :pswitch_92
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_19

    .line 596
    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1a
        :pswitch_1a
        :pswitch_11
        :pswitch_23
        :pswitch_30
        :pswitch_3d
        :pswitch_4b
        :pswitch_64
        :pswitch_69
        :pswitch_6e
        :pswitch_73
        :pswitch_73
        :pswitch_85
        :pswitch_7c
        :pswitch_7c
        :pswitch_92
    .end packed-switch
.end method

.method private setExtension(Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;Lcom/squareup/wire/Extension;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;",
            "Lcom/squareup/wire/Extension",
            "<**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 715
    invoke-virtual {p1, p2, p3}, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->setExtension(Lcom/squareup/wire/Extension;Ljava/lang/Object;)Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;

    .line 716
    return-void
.end method

.method private utf8Length(Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 428
    .line 429
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v0, v2, :cond_2a

    .line 430
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 431
    const/16 v4, 0x7f

    if-gt v3, v4, :cond_15

    .line 432
    add-int/lit8 v1, v1, 0x1

    .line 429
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 433
    :cond_15
    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_1c

    .line 434
    add-int/lit8 v1, v1, 0x2

    goto :goto_12

    .line 435
    :cond_1c
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 436
    add-int/lit8 v1, v1, 0x4

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 439
    :cond_27
    add-int/lit8 v1, v1, 0x3

    goto :goto_12

    .line 442
    :cond_2a
    return v1
.end method

.method private writeEnum(Lcom/squareup/wire/ProtoEnum;Lcom/squareup/wire/WireOutput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/ProtoEnum;",
            ">(TE;",
            "Lcom/squareup/wire/WireOutput;",
            ")V"
        }
    .end annotation

    .prologue
    .line 505
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Wire;->enumAdapter(Ljava/lang/Class;)Lcom/squareup/wire/EnumAdapter;

    move-result-object v0

    .line 506
    invoke-virtual {v0, p1}, Lcom/squareup/wire/EnumAdapter;->toInt(Lcom/squareup/wire/ProtoEnum;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 507
    return-void
.end method

.method private writeExtensions(Lcom/squareup/wire/WireOutput;Lcom/squareup/wire/ExtensionMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Lcom/squareup/wire/WireOutput;",
            "Lcom/squareup/wire/ExtensionMap",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 311
    invoke-virtual {p2}, Lcom/squareup/wire/ExtensionMap;->getExtensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Extension;

    .line 312
    invoke-virtual {p2, v0}, Lcom/squareup/wire/ExtensionMap;->get(Lcom/squareup/wire/Extension;)Ljava/lang/Object;

    move-result-object v1

    .line 313
    invoke-virtual {v0}, Lcom/squareup/wire/Extension;->getTag()I

    move-result v3

    .line 314
    invoke-virtual {v0}, Lcom/squareup/wire/Extension;->getDatatype()Lcom/squareup/wire/Message$Datatype;

    move-result-object v4

    .line 315
    invoke-virtual {v0}, Lcom/squareup/wire/Extension;->getLabel()Lcom/squareup/wire/Message$Label;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 317
    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_37

    move-object v0, v1

    .line 318
    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/squareup/wire/MessageAdapter;->writePacked(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_8

    .line 320
    :cond_37
    check-cast v1, Ljava/util/List;

    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/wire/MessageAdapter;->writeRepeated(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_8

    .line 323
    :cond_3d
    invoke-direct {p0, p1, v3, v1, v4}, Lcom/squareup/wire/MessageAdapter;->writeValue(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_8

    .line 326
    :cond_41
    return-void
.end method

.method private writeMessage(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">(TM;",
            "Lcom/squareup/wire/WireOutput;",
            ")V"
        }
    .end annotation

    .prologue
    .line 497
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->getSerializedSize()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 498
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;

    move-result-object v0

    .line 499
    invoke-virtual {v0, p1, p2}, Lcom/squareup/wire/MessageAdapter;->write(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V

    .line 500
    return-void
.end method

.method private writePacked(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/WireOutput;",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")V"
        }
    .end annotation

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 339
    invoke-direct {p0, v2, p4}, Lcom/squareup/wire/MessageAdapter;->getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v2

    add-int/2addr v0, v2

    .line 340
    goto :goto_5

    .line 341
    :cond_15
    sget-object v1, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-virtual {p1, p3, v1}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    .line 342
    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 343
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 344
    invoke-direct {p0, p1, v1, p4}, Lcom/squareup/wire/MessageAdapter;->writeValueNoTag(Lcom/squareup/wire/WireOutput;Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_21

    .line 346
    :cond_2f
    return-void
.end method

.method private writeRepeated(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/WireOutput;",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")V"
        }
    .end annotation

    .prologue
    .line 330
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 331
    invoke-direct {p0, p1, p3, v1, p4}, Lcom/squareup/wire/MessageAdapter;->writeValue(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_4

    .line 333
    :cond_12
    return-void
.end method

.method private writeValue(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V
    .registers 6

    .prologue
    .line 459
    invoke-virtual {p4}, Lcom/squareup/wire/Message$Datatype;->wireType()Lcom/squareup/wire/WireType;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    .line 460
    invoke-direct {p0, p1, p3, p4}, Lcom/squareup/wire/MessageAdapter;->writeValueNoTag(Lcom/squareup/wire/WireOutput;Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    .line 461
    return-void
.end method

.method private writeValueNoTag(Lcom/squareup/wire/WireOutput;Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V
    .registers 6

    .prologue
    .line 468
    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    invoke-virtual {p3}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ba

    .line 491
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 469
    :pswitch_11
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeSignedVarint32(I)V

    .line 493
    :goto_1a
    return-void

    .line 470
    :pswitch_1b
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/WireOutput;->writeVarint64(J)V

    goto :goto_1a

    .line 471
    :pswitch_25
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    goto :goto_1a

    .line 472
    :pswitch_2f
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->zigZag32(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    goto :goto_1a

    .line 473
    :pswitch_3d
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/WireOutput;->zigZag64(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/WireOutput;->writeVarint64(J)V

    goto :goto_1a

    .line 474
    :pswitch_4b
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v0, 0x1

    :goto_54
    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    goto :goto_1a

    :cond_58
    const/4 v0, 0x0

    goto :goto_54

    .line 475
    :pswitch_5a
    check-cast p2, Lcom/squareup/wire/ProtoEnum;

    invoke-direct {p0, p2, p1}, Lcom/squareup/wire/MessageAdapter;->writeEnum(Lcom/squareup/wire/ProtoEnum;Lcom/squareup/wire/WireOutput;)V

    goto :goto_1a

    .line 477
    :pswitch_60
    check-cast p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 478
    array-length v1, v0

    invoke-virtual {p1, v1}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 479
    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeRawBytes([B)V

    goto :goto_1a

    .line 482
    :pswitch_70
    check-cast p2, Lcom/squareup/wire/ByteString;

    .line 483
    invoke-virtual {p2}, Lcom/squareup/wire/ByteString;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 484
    invoke-virtual {p2}, Lcom/squareup/wire/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeRawBytes([B)V

    goto :goto_1a

    .line 486
    :pswitch_81
    check-cast p2, Lcom/squareup/wire/Message;

    invoke-direct {p0, p2, p1}, Lcom/squareup/wire/MessageAdapter;->writeMessage(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V

    goto :goto_1a

    .line 487
    :pswitch_87
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeFixed32(I)V

    goto :goto_1a

    .line 488
    :pswitch_91
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/WireOutput;->writeFixed64(J)V

    goto :goto_1a

    .line 489
    :pswitch_9b
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/WireOutput;->writeFixed32(I)V

    goto/16 :goto_1a

    .line 490
    :pswitch_aa
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/WireOutput;->writeFixed64(J)V

    goto/16 :goto_1a

    .line 468
    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1b
        :pswitch_1b
        :pswitch_25
        :pswitch_2f
        :pswitch_3d
        :pswitch_4b
        :pswitch_5a
        :pswitch_60
        :pswitch_70
        :pswitch_81
        :pswitch_87
        :pswitch_87
        :pswitch_9b
        :pswitch_91
        :pswitch_91
        :pswitch_aa
    .end packed-switch
.end method


# virtual methods
.method getExtension(Ljava/lang/String;)Lcom/squareup/wire/Extension;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/wire/Extension",
            "<",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;*>;"
        }
    .end annotation

    .prologue
    .line 707
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    iget-object v0, v0, Lcom/squareup/wire/Wire;->registry:Lcom/squareup/wire/ExtensionRegistry;

    .line 708
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ExtensionRegistry;->getExtension(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/wire/Extension;

    move-result-object v0

    goto :goto_7
.end method

.method getField(Ljava/lang/String;)Lcom/squareup/wire/MessageAdapter$FieldInfo;
    .registers 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->tagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 94
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    goto :goto_b
.end method

.method getFieldValue(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/squareup/wire/MessageAdapter$FieldInfo;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 98
    # getter for: Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageField:Ljava/lang/reflect/Field;
    invoke-static {p2}, Lcom/squareup/wire/MessageAdapter$FieldInfo;->access$000(Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_e

    .line 99
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Field is not of type \"Message\""

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 102
    :cond_e
    :try_start_e
    # getter for: Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageField:Ljava/lang/reflect/Field;
    invoke-static {p2}, Lcom/squareup/wire/MessageAdapter$FieldInfo;->access$000(Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_15} :catch_17

    move-result-object v0

    return-object v0

    .line 103
    :catch_17
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method getFields()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/squareup/wire/MessageAdapter$FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getSerializedSize(Lcom/squareup/wire/Message;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/squareup/wire/MessageAdapter;->getFields()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_a
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 209
    invoke-virtual {p0, p1, v0}, Lcom/squareup/wire/MessageAdapter;->getFieldValue(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_a

    .line 213
    iget v4, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->tag:I

    .line 214
    iget-object v5, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 215
    iget-object v0, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->label:Lcom/squareup/wire/Message$Label;

    .line 217
    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 218
    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_38

    move-object v0, v1

    .line 219
    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, v4, v5}, Lcom/squareup/wire/MessageAdapter;->getPackedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v0

    add-int/2addr v0, v2

    :goto_36
    move v2, v0

    .line 226
    goto :goto_a

    .line 221
    :cond_38
    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1, v4, v5}, Lcom/squareup/wire/MessageAdapter;->getRepeatedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_36

    .line 224
    :cond_40
    invoke-direct {p0, v4, v1, v5}, Lcom/squareup/wire/MessageAdapter;->getSerializedSize(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_36

    .line 228
    :cond_46
    instance-of v0, p1, Lcom/squareup/wire/ExtendableMessage;

    if-eqz v0, :cond_58

    move-object v0, p1

    .line 229
    check-cast v0, Lcom/squareup/wire/ExtendableMessage;

    .line 230
    iget-object v1, v0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-eqz v1, :cond_58

    .line 231
    iget-object v0, v0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-direct {p0, v0}, Lcom/squareup/wire/MessageAdapter;->getExtensionsSerializedSize(Lcom/squareup/wire/ExtensionMap;)I

    move-result v0

    add-int/2addr v2, v0

    .line 234
    :cond_58
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->getUnknownFieldsSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    .line 235
    return v0
.end method

.method newBuilder()Lcom/squareup/wire/Message$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/Message$Builder",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->builderType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_8} :catch_10

    return-object v0

    .line 81
    :catch_9
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 83
    :catch_10
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method read(Lcom/squareup/wire/WireInput;)Lcom/squareup/wire/Message;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/WireInput;",
            ")TM;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 514
    :try_start_1
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->builderType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/Message$Builder;

    .line 515
    new-instance v7, Lcom/squareup/wire/MessageAdapter$Storage;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lcom/squareup/wire/MessageAdapter$Storage;-><init>(Lcom/squareup/wire/MessageAdapter$1;)V

    .line 519
    :cond_f
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->readTag()I

    move-result v2

    .line 520
    shr-int/lit8 v8, v2, 0x3

    .line 521
    invoke-static {v2}, Lcom/squareup/wire/WireType;->valueOf(I)Lcom/squareup/wire/WireType;

    move-result-object v9

    .line 522
    if-nez v8, :cond_6c

    .line 524
    invoke-virtual {v7}, Lcom/squareup/wire/MessageAdapter$Storage;->getTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 525
    iget-object v2, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 526
    if-eqz v2, :cond_50

    .line 527
    invoke-virtual {v7, v4}, Lcom/squareup/wire/MessageAdapter$Storage;->get(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v4, v2}, Lcom/squareup/wire/MessageAdapter;->setBuilderField(Lcom/squareup/wire/Message$Builder;ILjava/lang/Object;)V
    :try_end_48
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_48} :catch_49
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_48} :catch_60

    goto :goto_23

    .line 588
    :catch_49
    move-exception v1

    .line 589
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 529
    :cond_50
    :try_start_50
    move-object v0, v1

    check-cast v0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;

    move-object v2, v0

    invoke-direct {p0, v4}, Lcom/squareup/wire/MessageAdapter;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v5

    invoke-virtual {v7, v4}, Lcom/squareup/wire/MessageAdapter$Storage;->get(I)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v2, v5, v4}, Lcom/squareup/wire/MessageAdapter;->setExtension(Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;Lcom/squareup/wire/Extension;Ljava/lang/Object;)V
    :try_end_5f
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_5f} :catch_49
    .catch Ljava/lang/InstantiationException; {:try_start_50 .. :try_end_5f} :catch_60

    goto :goto_23

    .line 590
    :catch_60
    move-exception v1

    .line 591
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 533
    :cond_67
    :try_start_67
    invoke-virtual {v1}, Lcom/squareup/wire/Message$Builder;->build()Lcom/squareup/wire/Message;

    move-result-object v1

    return-object v1

    .line 538
    :cond_6c
    iget-object v2, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 539
    if-eqz v2, :cond_bc

    .line 540
    iget-object v3, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 541
    iget-object v2, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->label:Lcom/squareup/wire/Message$Label;

    move-object v4, v3

    move-object v5, v6

    move-object v3, v2

    .line 553
    :goto_81
    invoke-virtual {v3}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v2

    if-eqz v2, :cond_f0

    sget-object v2, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    if-ne v9, v2, :cond_f0

    .line 555
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v3

    .line 556
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->getPosition()J

    move-result-wide v9

    .line 557
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/squareup/wire/WireInput;->pushLimit(I)I

    move-result v5

    .line 558
    :goto_99
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->getPosition()J

    move-result-wide v11

    int-to-long v13, v3

    add-long/2addr v13, v9

    cmp-long v2, v11, v13

    if-gez v2, :cond_d9

    .line 559
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v8, v4}, Lcom/squareup/wire/MessageAdapter;->readValue(Lcom/squareup/wire/WireInput;ILcom/squareup/wire/Message$Datatype;)Ljava/lang/Object;

    move-result-object v2

    .line 560
    sget-object v11, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    if-ne v4, v11, :cond_d5

    instance-of v11, v2, Ljava/lang/Integer;

    if-eqz v11, :cond_d5

    .line 562
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v11, v2

    invoke-virtual {v1, v8, v11, v12}, Lcom/squareup/wire/Message$Builder;->addVarint(IJ)V

    goto :goto_99

    .line 543
    :cond_bc
    invoke-direct {p0, v8}, Lcom/squareup/wire/MessageAdapter;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v4

    .line 544
    if-nez v4, :cond_c9

    .line 545
    move-object/from16 v0, p1

    invoke-direct {p0, v1, v0, v8, v9}, Lcom/squareup/wire/MessageAdapter;->readUnknownField(Lcom/squareup/wire/Message$Builder;Lcom/squareup/wire/WireInput;ILcom/squareup/wire/WireType;)V

    goto/16 :goto_f

    .line 548
    :cond_c9
    invoke-virtual {v4}, Lcom/squareup/wire/Extension;->getDatatype()Lcom/squareup/wire/Message$Datatype;

    move-result-object v3

    .line 549
    invoke-virtual {v4}, Lcom/squareup/wire/Extension;->getLabel()Lcom/squareup/wire/Message$Label;

    move-result-object v2

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_81

    .line 564
    :cond_d5
    invoke-virtual {v7, v8, v2}, Lcom/squareup/wire/MessageAdapter$Storage;->add(ILjava/lang/Object;)V

    goto :goto_99

    .line 567
    :cond_d9
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/squareup/wire/WireInput;->popLimit(I)V

    .line 568
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->getPosition()J

    move-result-wide v4

    int-to-long v2, v3

    add-long/2addr v2, v9

    cmp-long v2, v4, v2

    if-eqz v2, :cond_f

    .line 569
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Packed data had wrong length!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 573
    :cond_f0
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v8, v4}, Lcom/squareup/wire/MessageAdapter;->readValue(Lcom/squareup/wire/WireInput;ILcom/squareup/wire/Message$Datatype;)Ljava/lang/Object;

    move-result-object v2

    .line 574
    sget-object v9, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    if-ne v4, v9, :cond_10a

    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_10a

    .line 576
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v8, v2, v3}, Lcom/squareup/wire/Message$Builder;->addVarint(IJ)V

    goto/16 :goto_f

    .line 578
    :cond_10a
    invoke-virtual {v3}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_115

    .line 579
    invoke-virtual {v7, v8, v2}, Lcom/squareup/wire/MessageAdapter$Storage;->add(ILjava/lang/Object;)V

    goto/16 :goto_f

    .line 580
    :cond_115
    if-eqz v5, :cond_120

    .line 581
    move-object v0, v1

    check-cast v0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;

    move-object v3, v0

    invoke-direct {p0, v3, v5, v2}, Lcom/squareup/wire/MessageAdapter;->setExtension(Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;Lcom/squareup/wire/Extension;Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 583
    :cond_120
    invoke-virtual {p0, v1, v8, v2}, Lcom/squareup/wire/MessageAdapter;->setBuilderField(Lcom/squareup/wire/Message$Builder;ILjava/lang/Object;)V
    :try_end_123
    .catch Ljava/lang/IllegalAccessException; {:try_start_67 .. :try_end_123} :catch_49
    .catch Ljava/lang/InstantiationException; {:try_start_67 .. :try_end_123} :catch_60

    goto/16 :goto_f
.end method

.method public setBuilderField(Lcom/squareup/wire/Message$Builder;ILjava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/Message$Builder",
            "<TM;>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    # getter for: Lcom/squareup/wire/MessageAdapter$FieldInfo;->builderMethod:Ljava/lang/reflect/Method;
    invoke-static {v0}, Lcom/squareup/wire/MessageAdapter$FieldInfo;->access$100(Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_19} :catch_21

    .line 116
    return-void

    .line 111
    :catch_1a
    move-exception v0

    .line 112
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 113
    :catch_21
    move-exception v0

    .line 114
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method toByteArray(Lcom/squareup/wire/Message;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)[B"
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getSerializedSize(Lcom/squareup/wire/Message;)I

    move-result v0

    new-array v0, v0, [B

    .line 354
    :try_start_6
    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->newInstance([B)Lcom/squareup/wire/WireOutput;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/squareup/wire/MessageAdapter;->write(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_e

    .line 358
    return-object v0

    .line 355
    :catch_e
    move-exception v0

    .line 356
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method toString(Lcom/squareup/wire/Message;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v0, ""

    .line 370
    invoke-virtual {p0}, Lcom/squareup/wire/MessageAdapter;->getFields()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 371
    invoke-virtual {p0, p1, v0}, Lcom/squareup/wire/MessageAdapter;->getFieldValue(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;

    move-result-object v4

    .line 372
    if-eqz v4, :cond_1e

    .line 375
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string v1, ", "

    .line 377
    iget-object v0, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 381
    :cond_43
    instance-of v0, p1, Lcom/squareup/wire/ExtendableMessage;

    if-eqz v0, :cond_5d

    .line 382
    check-cast p1, Lcom/squareup/wire/ExtendableMessage;

    .line 383
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v0, "{extensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p1}, Lcom/squareup/wire/ExtendableMessage;->extensionsToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_5d
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method write(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/squareup/wire/WireOutput;",
            ")V"
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/squareup/wire/MessageAdapter;->getFields()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 281
    invoke-virtual {p0, p1, v0}, Lcom/squareup/wire/MessageAdapter;->getFieldValue(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;

    move-result-object v1

    .line 282
    if-eqz v1, :cond_8

    .line 285
    iget v3, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->tag:I

    .line 286
    iget-object v4, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 287
    iget-object v0, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->label:Lcom/squareup/wire/Message$Label;

    .line 289
    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 290
    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_33

    move-object v0, v1

    .line 291
    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p2, v0, v3, v4}, Lcom/squareup/wire/MessageAdapter;->writePacked(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_8

    .line 293
    :cond_33
    check-cast v1, Ljava/util/List;

    invoke-direct {p0, p2, v1, v3, v4}, Lcom/squareup/wire/MessageAdapter;->writeRepeated(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_8

    .line 296
    :cond_39
    invoke-direct {p0, p2, v3, v1, v4}, Lcom/squareup/wire/MessageAdapter;->writeValue(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_8

    .line 300
    :cond_3d
    instance-of v0, p1, Lcom/squareup/wire/ExtendableMessage;

    if-eqz v0, :cond_4d

    move-object v0, p1

    .line 301
    check-cast v0, Lcom/squareup/wire/ExtendableMessage;

    .line 302
    iget-object v1, v0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-eqz v1, :cond_4d

    .line 303
    iget-object v0, v0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-direct {p0, p2, v0}, Lcom/squareup/wire/MessageAdapter;->writeExtensions(Lcom/squareup/wire/WireOutput;Lcom/squareup/wire/ExtensionMap;)V

    .line 306
    :cond_4d
    invoke-virtual {p1, p2}, Lcom/squareup/wire/Message;->writeUnknownFieldMap(Lcom/squareup/wire/WireOutput;)V

    .line 307
    return-void
.end method
