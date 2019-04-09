.class public Lcom/baidu/tts/loopj/RequestParams$FileWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final contentType:Ljava/lang/String;

.field public final customFileName:Ljava/lang/String;

.field public final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput-object p1, p0, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;->file:Ljava/io/File;

    .line 678
    iput-object p2, p0, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    .line 679
    iput-object p3, p0, Lcom/baidu/tts/loopj/RequestParams$FileWrapper;->customFileName:Ljava/lang/String;

    .line 680
    return-void
.end method
