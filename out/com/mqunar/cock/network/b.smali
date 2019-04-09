.class Lcom/mqunar/cock/network/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:[B

.field final synthetic c:Lcom/mqunar/cock/network/a;


# direct methods
.method constructor <init>(Lcom/mqunar/cock/network/a;[B[B)V
    .registers 4

    .prologue
    .line 209
    iput-object p1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iput-object p2, p0, Lcom/mqunar/cock/network/b;->a:[B

    iput-object p3, p0, Lcom/mqunar/cock/network/b;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 212
    const-string v0, "CockHandler"

    const-string v1, "onmessage"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    const/4 v1, 0x0

    .line 215
    :try_start_c
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/mqunar/cock/network/b;->a:[B

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_15} :catch_be

    .line 219
    :goto_15
    const-string v1, "CockHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appname = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e0

    const-string v1, "QuTui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 223
    iget-object v0, p0, Lcom/mqunar/cock/network/b;->b:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->b:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    new-array v1, v1, [B

    .line 225
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 226
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 229
    const-string v0, "CockHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    const-class v0, Lcom/mqunar/cock/model/PushMessage;

    invoke-static {v1, v0}, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;->deserializeStatic([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/model/PushMessage;

    .line 232
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->a(Lcom/mqunar/cock/network/CockHandler;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 233
    iget v1, v0, Lcom/mqunar/cock/model/PushMessage;->type:I

    if-ne v6, v1, :cond_c5

    if-eqz v0, :cond_c5

    iget-object v1, v0, Lcom/mqunar/cock/model/PushMessage;->data:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_c5

    .line 234
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    const-string v2, "com.mqunar.atom.qutui.ACTION_MESSAGE_RECEIVED"

    iget-object v3, v0, Lcom/mqunar/cock/model/PushMessage;->data:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mqunar/cock/network/CockHandler;->a(Lcom/mqunar/cock/network/CockHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_96
    :goto_96
    new-instance v1, Lcom/mqunar/cock/model/PushAck;

    invoke-direct {v1}, Lcom/mqunar/cock/model/PushAck;-><init>()V

    .line 240
    iput v6, v1, Lcom/mqunar/cock/model/PushAck;->type:I

    .line 241
    iget-object v2, v0, Lcom/mqunar/cock/model/PushMessage;->msgId:Ljava/lang/String;

    iput-object v2, v1, Lcom/mqunar/cock/model/PushAck;->msgId:Ljava/lang/String;

    .line 242
    iget-object v2, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v2, v2, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getInstance()Lcom/mqunar/cock/network/OneKeyCremation;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mqunar/cock/network/OneKeyCremation;->serializeWithoutImp(Ljava/lang/Object;)[B

    move-result-object v1

    const-string v3, "QuTui"

    invoke-virtual {v2, v1, v3}, Lcom/mqunar/cock/network/CockHandler;->sendRequest([BLjava/lang/String;)V

    .line 243
    const-string v1, "CockHandler"

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    :cond_bd
    return-void

    .line 216
    :catch_be
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_15

    .line 235
    :cond_c5
    const/4 v1, 0x2

    iget v2, v0, Lcom/mqunar/cock/model/PushMessage;->type:I

    if-ne v1, v2, :cond_96

    if-eqz v0, :cond_96

    iget-object v1, v0, Lcom/mqunar/cock/model/PushMessage;->data:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_96

    .line 236
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    const-string v2, "com.mqunar.atom.qutui.ACTION_MESSAGE_TRANSPARENT"

    iget-object v3, v0, Lcom/mqunar/cock/model/PushMessage;->data:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mqunar/cock/network/CockHandler;->a(Lcom/mqunar/cock/network/CockHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96

    .line 244
    :cond_e0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "OChat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 246
    iget-object v0, p0, Lcom/mqunar/cock/network/b;->b:[B

    invoke-static {v0}, Lcom/mqunar/imp/Imp;->d([B)[B

    move-result-object v2

    .line 247
    const-class v0, Lcom/mqunar/cock/network/tcpmodel/BaseMessage;

    invoke-static {v2, v0}, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;->deserializeStatic([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/tcpmodel/BaseMessage;

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protocal "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/mqunar/cock/network/tcpmodel/BaseMessage;->t:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget v0, v0, Lcom/mqunar/cock/network/tcpmodel/BaseMessage;->t:I

    sparse-switch v0, :sswitch_data_374

    .line 352
    :cond_11b
    :goto_11b
    iget-object v0, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v0, v0, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v0}, Lcom/mqunar/cock/network/CockHandler;->d(Lcom/mqunar/cock/network/CockHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_127
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/ImListener;

    .line 353
    invoke-interface {v0, v2}, Lcom/mqunar/cock/network/ImListener;->onMessage([B)V

    goto :goto_127

    .line 251
    :sswitch_137
    const-class v0, Lcom/mqunar/cock/network/tcpmodel/rec/BindAck;

    invoke-static {v2, v0}, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;->deserializeStatic([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/tcpmodel/rec/BindAck;

    .line 252
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->b(Lcom/mqunar/cock/network/CockHandler;)Ljava/util/Map;

    move-result-object v1

    iget v3, v0, Lcom/mqunar/cock/network/tcpmodel/rec/BindAck;->reqid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17b

    .line 253
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->b(Lcom/mqunar/cock/network/CockHandler;)Ljava/util/Map;

    move-result-object v1

    iget v3, v0, Lcom/mqunar/cock/network/tcpmodel/rec/BindAck;->reqid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 254
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->b(Lcom/mqunar/cock/network/CockHandler;)Ljava/util/Map;

    move-result-object v1

    iget v3, v0, Lcom/mqunar/cock/network/tcpmodel/rec/BindAck;->reqid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_17b
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    if-eqz v1, :cond_11b

    .line 257
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/cock/network/OnIMMessage;->onBindReceipt(Lcom/mqunar/cock/network/tcpmodel/rec/BindAck;)V

    goto :goto_11b

    .line 261
    :sswitch_191
    iget-object v0, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v0, v0, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v0}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v0

    if-eqz v0, :cond_11b

    goto :goto_11b

    .line 266
    :sswitch_19c
    const-class v0, Lcom/mqunar/cock/network/tcpmodel/rec/MessageAck;

    invoke-static {v2, v0}, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;->deserializeStatic([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/tcpmodel/rec/MessageAck;

    .line 267
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->b(Lcom/mqunar/cock/network/CockHandler;)Ljava/util/Map;

    move-result-object v1

    iget v3, v0, Lcom/mqunar/cock/network/tcpmodel/rec/MessageAck;->reqid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1e0

    .line 268
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->b(Lcom/mqunar/cock/network/CockHandler;)Ljava/util/Map;

    move-result-object v1

    iget v3, v0, Lcom/mqunar/cock/network/tcpmodel/rec/MessageAck;->reqid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 269
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->b(Lcom/mqunar/cock/network/CockHandler;)Ljava/util/Map;

    move-result-object v1

    iget v3, v0, Lcom/mqunar/cock/network/tcpmodel/rec/MessageAck;->reqid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_1e0
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    if-eqz v1, :cond_11b

    .line 272
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/cock/network/OnIMMessage;->onMessageReceipt(Lcom/mqunar/cock/network/tcpmodel/rec/MessageAck;)V

    goto/16 :goto_11b

    .line 276
    :sswitch_1f7
    const-class v0, Landroid/os/Message;

    invoke-static {v2, v0}, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;->deserializeStatic([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 277
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    if-eqz v1, :cond_11b

    .line 278
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/cock/network/OnIMMessage;->onMessageArrived(Landroid/os/Message;)V

    goto/16 :goto_11b

    .line 282
    :sswitch_216
    const-class v0, Lcom/mqunar/cock/network/tcpmodel/rec/GroupBuildNotify;

    invoke-static {v2, v0}, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;->deserializeStatic([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/tcpmodel/rec/GroupBuildNotify;

    .line 283
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    if-eqz v1, :cond_11b

    .line 284
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/cock/network/OnIMMessage;->onGroupBuildNotify(Lcom/mqunar/cock/network/tcpmodel/rec/GroupBuildNotify;)V

    goto/16 :goto_11b

    .line 288
    :sswitch_235
    const-class v0, Lcom/mqunar/cock/network/tcpmodel/rec/GroupChangedInfo;

    invoke-static {v2, v0}, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;->deserializeStatic([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/tcpmodel/rec/GroupChangedInfo;

    .line 289
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    if-eqz v1, :cond_11b

    .line 290
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/cock/network/OnIMMessage;->onGroupInfoChanged(Lcom/mqunar/cock/network/tcpmodel/rec/GroupChangedInfo;)V

    goto/16 :goto_11b

    .line 294
    :sswitch_254
    const-class v0, Lcom/mqunar/cock/network/tcpmodel/rec/NewFriendRequest;

    invoke-static {v2, v0}, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;->deserializeStatic([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/tcpmodel/rec/NewFriendRequest;

    .line 295
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    if-eqz v1, :cond_11b

    .line 296
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/cock/network/OnIMMessage;->onNewFriendRequest(Lcom/mqunar/cock/network/tcpmodel/rec/NewFriendRequest;)V

    goto/16 :goto_11b

    .line 300
    :sswitch_273
    const-class v0, Lcom/mqunar/cock/network/tcpmodel/rec/FriendRequestPassed;

    invoke-static {v2, v0}, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;->deserializeStatic([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/tcpmodel/rec/FriendRequestPassed;

    .line 301
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    if-eqz v1, :cond_11b

    .line 302
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/cock/network/OnIMMessage;->onFriendRequestPassed(Lcom/mqunar/cock/network/tcpmodel/rec/FriendRequestPassed;)V

    goto/16 :goto_11b

    .line 306
    :sswitch_292
    const-class v0, Lcom/mqunar/cock/network/tcpmodel/rec/GroupAdmChangedNotify;

    invoke-static {v2, v0}, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;->deserializeStatic([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/tcpmodel/rec/GroupAdmChangedNotify;

    .line 307
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    if-eqz v1, :cond_11b

    .line 308
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/cock/network/OnIMMessage;->onGroupAdmChanged(Lcom/mqunar/cock/network/tcpmodel/rec/GroupAdmChangedNotify;)V

    goto/16 :goto_11b

    .line 312
    :sswitch_2b1
    const-class v0, Lcom/mqunar/cock/network/tcpmodel/rec/ClosePushMessageAck;

    invoke-static {v2, v0}, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;->deserializeStatic([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/tcpmodel/rec/ClosePushMessageAck;

    .line 313
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    if-eqz v1, :cond_11b

    .line 314
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/cock/network/OnIMMessage;->onClosePushMessageAck(Lcom/mqunar/cock/network/tcpmodel/rec/ClosePushMessageAck;)V

    goto/16 :goto_11b

    .line 318
    :sswitch_2d0
    const-class v0, Lcom/mqunar/cock/network/tcpmodel/rec/ReportMessageAck;

    invoke-static {v2, v0}, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;->deserializeStatic([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/tcpmodel/rec/ReportMessageAck;

    .line 319
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    if-eqz v1, :cond_2ed

    .line 320
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/cock/network/OnIMMessage;->onMessageReported(Lcom/mqunar/cock/network/tcpmodel/rec/ReportMessageAck;)V

    .line 323
    :cond_2ed
    :sswitch_2ed
    const-class v0, Lcom/mqunar/cock/network/tcpmodel/rec/FetchDeleteMsgAck;

    invoke-static {v2, v0}, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;->deserializeStatic([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/tcpmodel/rec/FetchDeleteMsgAck;

    .line 324
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    if-eqz v1, :cond_11b

    .line 325
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/cock/network/OnIMMessage;->onFetchDeleteMsg(Lcom/mqunar/cock/network/tcpmodel/rec/FetchDeleteMsgAck;)V

    goto/16 :goto_11b

    .line 329
    :sswitch_30c
    const-class v0, Lcom/mqunar/cock/network/tcpmodel/rec/QuitChatRoomMessageAck;

    invoke-static {v2, v0}, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;->deserializeStatic([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/tcpmodel/rec/QuitChatRoomMessageAck;

    goto/16 :goto_11b

    .line 332
    :sswitch_316
    const-class v0, Lcom/mqunar/cock/network/tcpmodel/rec/SessionEndNotify;

    invoke-static {v2, v0}, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;->deserializeStatic([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/tcpmodel/rec/SessionEndNotify;

    .line 333
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    if-eqz v1, :cond_11b

    .line 334
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/cock/network/OnIMMessage;->onSessionEnd(Lcom/mqunar/cock/network/tcpmodel/rec/SessionEndNotify;)V

    goto/16 :goto_11b

    .line 338
    :sswitch_335
    const-class v0, Lcom/mqunar/cock/network/tcpmodel/rec/TypingInfoAck;

    invoke-static {v2, v0}, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;->deserializeStatic([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/tcpmodel/rec/TypingInfoAck;

    .line 339
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    if-eqz v1, :cond_11b

    .line 340
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/cock/network/OnIMMessage;->onTypingAck(Lcom/mqunar/cock/network/tcpmodel/rec/TypingInfoAck;)V

    goto/16 :goto_11b

    .line 344
    :sswitch_354
    const-class v0, Lcom/mqunar/cock/network/tcpmodel/rec/TypingStatus;

    invoke-static {v2, v0}, Lcom/mqunar/cock/utils/JsonProcessorBasedFastJson;->deserializeStatic([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/cock/network/tcpmodel/rec/TypingStatus;

    .line 345
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    if-eqz v1, :cond_11b

    .line 346
    iget-object v1, p0, Lcom/mqunar/cock/network/b;->c:Lcom/mqunar/cock/network/a;

    iget-object v1, v1, Lcom/mqunar/cock/network/a;->a:Lcom/mqunar/cock/network/CockHandler;

    invoke-static {v1}, Lcom/mqunar/cock/network/CockHandler;->c(Lcom/mqunar/cock/network/CockHandler;)Lcom/mqunar/cock/network/OnIMMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mqunar/cock/network/OnIMMessage;->onTypingStatus(Lcom/mqunar/cock/network/tcpmodel/rec/TypingStatus;)V

    goto/16 :goto_11b

    .line 249
    nop

    :sswitch_data_374
    .sparse-switch
        0x2 -> :sswitch_137
        0x4 -> :sswitch_191
        0x6 -> :sswitch_19c
        0x7 -> :sswitch_1f7
        0xb -> :sswitch_235
        0x13 -> :sswitch_216
        0x17 -> :sswitch_254
        0x1a -> :sswitch_273
        0x2c -> :sswitch_292
        0x2f -> :sswitch_2b1
        0x33 -> :sswitch_2d0
        0x38 -> :sswitch_2ed
        0x3a -> :sswitch_30c
        0x3b -> :sswitch_316
        0x3e -> :sswitch_335
        0x3f -> :sswitch_354
    .end sparse-switch
.end method
