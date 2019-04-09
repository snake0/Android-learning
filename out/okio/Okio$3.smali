.class final Lokio/Okio$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 211
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 204
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .prologue
    .line 207
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 4

    .prologue
    .line 200
    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->skip(J)V

    .line 201
    return-void
.end method
