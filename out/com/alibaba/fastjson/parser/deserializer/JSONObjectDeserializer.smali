.class public Lcom/alibaba/fastjson/parser/deserializer/JSONObjectDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/JSONObjectDeserializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/JSONObjectDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/JSONObjectDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/JSONObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JSONObjectDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
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
    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getFastMatchToken()I
    .registers 2

    .prologue
    .line 17
    const/16 v0, 0xc

    return v0
.end method
