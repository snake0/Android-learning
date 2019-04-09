.class public Lorg/webrtc/MediaConstraints$KeyValuePair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/webrtc/MediaConstraints$KeyValuePair;->key:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/webrtc/MediaConstraints$KeyValuePair;->value:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    if-ne p0, p1, :cond_5

    .line 69
    :cond_4
    :goto_4
    return v0

    .line 65
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 66
    goto :goto_4

    .line 68
    :cond_13
    check-cast p1, Lorg/webrtc/MediaConstraints$KeyValuePair;

    .line 69
    iget-object v2, p0, Lorg/webrtc/MediaConstraints$KeyValuePair;->key:Ljava/lang/String;

    iget-object v3, p1, Lorg/webrtc/MediaConstraints$KeyValuePair;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lorg/webrtc/MediaConstraints$KeyValuePair;->value:Ljava/lang/String;

    iget-object v3, p1, Lorg/webrtc/MediaConstraints$KeyValuePair;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_29
    move v0, v1

    goto :goto_4
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/webrtc/MediaConstraints$KeyValuePair;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lorg/webrtc/MediaConstraints$KeyValuePair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lorg/webrtc/MediaConstraints$KeyValuePair;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/webrtc/MediaConstraints$KeyValuePair;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/webrtc/MediaConstraints$KeyValuePair;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/MediaConstraints$KeyValuePair;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
