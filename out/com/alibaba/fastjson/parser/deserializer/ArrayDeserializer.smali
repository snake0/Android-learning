.class public Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 76
    if-nez p3, :cond_6

    move-object v0, v3

    .line 128
    :goto_5
    return-object v0

    .line 80
    :cond_6
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    .line 82
    invoke-static {p2, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    move v7, v6

    .line 83
    :goto_f
    if-ge v7, v8, :cond_65

    .line 84
    invoke-virtual {p3, v7}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 86
    if-ne v0, p3, :cond_1e

    .line 87
    invoke-static {v4, v7, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 83
    :goto_1a
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_f

    .line 91
    :cond_1e
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 93
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 99
    :goto_2a
    invoke-static {v4, v7, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1a

    .line 96
    :cond_2e
    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;->toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2a

    .line 102
    :cond_35
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_6f

    move-object v1, v0

    .line 104
    check-cast v1, Lcom/alibaba/fastjson/JSONArray;

    .line 105
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    move v5, v6

    move v2, v6

    .line 106
    :goto_42
    if-ge v5, v9, :cond_51

    .line 107
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 108
    if-ne v10, p3, :cond_4e

    .line 109
    invoke-virtual {v1, v7, v4}, Lcom/alibaba/fastjson/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/4 v2, 0x1

    .line 106
    :cond_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 113
    :cond_51
    if-eqz v2, :cond_6f

    .line 114
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 118
    :goto_57
    if-nez v1, :cond_6d

    .line 119
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    :goto_61
    invoke-static {v4, v7, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1a

    .line 126
    :cond_65
    invoke-virtual {p3, v4}, Lcom/alibaba/fastjson/JSONArray;->setRelatedArray(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/JSONArray;->setComponentType(Ljava/lang/reflect/Type;)V

    move-object v0, v4

    .line 128
    goto :goto_5

    :cond_6d
    move-object v0, v1

    goto :goto_61

    :cond_6f
    move-object v1, v3

    goto :goto_57
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x10

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_13

    .line 23
    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 71
    :goto_12
    return-object v3

    .line 27
    :cond_13
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_22

    .line 28
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object v3

    .line 29
    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_12

    .line 35
    :cond_22
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_8b

    .line 36
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .line 37
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 38
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_88

    .line 39
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 40
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/ParseContext;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 41
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_85

    .line 42
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 43
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 45
    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_92

    .line 46
    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 47
    const/4 v2, 0x0

    move v7, v2

    move-object v2, v3

    move v3, v7

    :goto_52
    array-length v5, v4

    if-ge v3, v5, :cond_6e

    .line 48
    aget-object v5, v4, v3

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 49
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v3

    .line 47
    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    :cond_6e
    move-object v0, v2

    .line 53
    :goto_6f
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_82

    .line 54
    check-cast v0, Ljava/lang/Class;

    .line 68
    :goto_75
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 69
    invoke-virtual {p1, v0, v1, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;->toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_12

    .line 56
    :cond_82
    const-class v0, Ljava/lang/Object;

    goto :goto_75

    .line 59
    :cond_85
    const-class v0, Ljava/lang/Object;

    goto :goto_75

    .line 62
    :cond_88
    check-cast v0, Ljava/lang/Class;

    goto :goto_75

    .line 65
    :cond_8b
    check-cast p2, Ljava/lang/Class;

    .line 66
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_75

    :cond_92
    move-object v0, v3

    goto :goto_6f
.end method

.method public getFastMatchToken()I
    .registers 2

    .prologue
    .line 132
    const/16 v0, 0xe

    return v0
.end method
