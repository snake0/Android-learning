.class final Lokhttp3/internal/http2/Huffman$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final children:[Lokhttp3/internal/http2/Huffman$Node;

.field final symbol:I

.field final terminalBits:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/16 v0, 0x100

    new-array v0, v0, [Lokhttp3/internal/http2/Huffman$Node;

    iput-object v0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    .line 210
    iput v1, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 211
    iput v1, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBits:I

    .line 212
    return-void
.end method

.method constructor <init>(II)V
    .registers 4

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    .line 222
    iput p1, p0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 223
    and-int/lit8 v0, p2, 0x7

    .line 224
    if-nez v0, :cond_e

    const/16 v0, 0x8

    :cond_e
    iput v0, p0, Lokhttp3/internal/http2/Huffman$Node;->terminalBits:I

    .line 225
    return-void
.end method
