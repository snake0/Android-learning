.class Lcom/mapquest/android/maps/FSTileCache$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/FSTileCache$IFileCallback;


# instance fields
.field days:I

.field final synthetic this$0:Lcom/mapquest/android/maps/FSTileCache;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/FSTileCache;)V
    .registers 3

    .prologue
    .line 214
    iput-object p1, p0, Lcom/mapquest/android/maps/FSTileCache$2;->this$0:Lcom/mapquest/android/maps/FSTileCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/16 v0, 0x1e

    iput v0, p0, Lcom/mapquest/android/maps/FSTileCache$2;->days:I

    return-void
.end method


# virtual methods
.method public process(Ljava/io/File;)V
    .registers 8

    .prologue
    .line 218
    const-wide/32 v0, 0x5265c00

    iget v2, p0, Lcom/mapquest/android/maps/FSTileCache$2;->days:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 220
    cmp-long v0, v2, v0

    if-lez v0, :cond_17

    .line 221
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 224
    :cond_17
    return-void
.end method
