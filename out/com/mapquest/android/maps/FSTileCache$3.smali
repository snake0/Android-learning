.class Lcom/mapquest/android/maps/FSTileCache$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/FSTileCache$IFileCallback;


# instance fields
.field max_size:I

.field final synthetic this$0:Lcom/mapquest/android/maps/FSTileCache;

.field total_size:I

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/FSTileCache;I)V
    .registers 4

    .prologue
    .line 238
    iput-object p1, p0, Lcom/mapquest/android/maps/FSTileCache$3;->this$0:Lcom/mapquest/android/maps/FSTileCache;

    iput p2, p0, Lcom/mapquest/android/maps/FSTileCache$3;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iget v0, p0, Lcom/mapquest/android/maps/FSTileCache$3;->val$size:I

    iput v0, p0, Lcom/mapquest/android/maps/FSTileCache$3;->max_size:I

    return-void
.end method


# virtual methods
.method public process(Ljava/io/File;)V
    .registers 6

    .prologue
    .line 243
    iget v0, p0, Lcom/mapquest/android/maps/FSTileCache$3;->total_size:I

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget v2, p0, Lcom/mapquest/android/maps/FSTileCache$3;->max_size:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 244
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 249
    :goto_12
    return-void

    .line 246
    :cond_13
    iget v0, p0, Lcom/mapquest/android/maps/FSTileCache$3;->total_size:I

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/mapquest/android/maps/FSTileCache$3;->total_size:I

    goto :goto_12
.end method
