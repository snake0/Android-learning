.class final Lokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field static final INTERCEPTOR:Lokhttp3/Interceptor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 561
    new-instance v0, Lokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException$1;

    invoke-direct {v0}, Lokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException$1;-><init>()V

    sput-object v0, Lokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException;->INTERCEPTOR:Lokhttp3/Interceptor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 572
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 573
    return-void
.end method
