.class public abstract Lokhttp3/internal/http2/Http2Connection$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REFUSE_INCOMING_STREAMS:Lokhttp3/internal/http2/Http2Connection$Listener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 860
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$Listener$1;

    invoke-direct {v0}, Lokhttp3/internal/http2/Http2Connection$Listener$1;-><init>()V

    sput-object v0, Lokhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lokhttp3/internal/http2/Http2Connection$Listener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettings(Lokhttp3/internal/http2/Http2Connection;)V
    .registers 2

    .prologue
    .line 882
    return-void
.end method

.method public abstract onStream(Lokhttp3/internal/http2/Http2Stream;)V
.end method
