.class public Lcom/alibaba/fastjson/serializer/JSONStreamAwareSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/JSONStreamAwareSerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Lcom/alibaba/fastjson/serializer/JSONStreamAwareSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/JSONStreamAwareSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/JSONStreamAwareSerializer;->instance:Lcom/alibaba/fastjson/serializer/JSONStreamAwareSerializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .registers 6

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    .line 33
    check-cast p2, Lcom/alibaba/fastjson/JSONStreamAware;

    .line 34
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/JSONStreamAware;->writeJSONString(Ljava/lang/Appendable;)V

    .line 35
    return-void
.end method
