.class Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field fieldSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

.field runtimeFieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/serializer/ObjectSerializer;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;->fieldSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 135
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    .line 136
    return-void
.end method
