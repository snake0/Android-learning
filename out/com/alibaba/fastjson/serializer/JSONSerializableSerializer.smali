.class public Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;->instance:Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;

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
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .registers 5

    .prologue
    .line 29
    check-cast p2, Lcom/alibaba/fastjson/serializer/JSONSerializable;

    .line 30
    invoke-interface {p2, p1, p3, p4}, Lcom/alibaba/fastjson/serializer/JSONSerializable;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 31
    return-void
.end method
