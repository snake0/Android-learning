.class public Lcom/alibaba/fastjson/serializer/BooleanArraySerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/BooleanArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/fastjson/serializer/BooleanArraySerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/BooleanArraySerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/BooleanArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/BooleanArraySerializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .registers 8

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v1

    .line 31
    if-nez p2, :cond_18

    .line 32
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 33
    const-string v0, "[]"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 49
    :goto_13
    return-void

    .line 35
    :cond_14
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_13

    .line 40
    :cond_18
    check-cast p2, [Z

    check-cast p2, [Z

    .line 41
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 42
    const/4 v0, 0x0

    :goto_22
    array-length v2, p2

    if-ge v0, v2, :cond_34

    .line 43
    if-eqz v0, :cond_2c

    .line 44
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 46
    :cond_2c
    aget-boolean v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 48
    :cond_34
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_13
.end method