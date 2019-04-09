.class Lcom/mapquest/android/maps/FSTileCache$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/FSTileCache;

.field final synthetic val$order:I


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/FSTileCache;I)V
    .registers 3

    .prologue
    .line 258
    iput-object p1, p0, Lcom/mapquest/android/maps/FSTileCache$4;->this$0:Lcom/mapquest/android/maps/FSTileCache;

    iput p2, p0, Lcom/mapquest/android/maps/FSTileCache$4;->val$order:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6

    .prologue
    .line 261
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_24

    instance-of v0, p2, Ljava/io/File;

    if-eqz v0, :cond_24

    .line 262
    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    iget v1, p0, Lcom/mapquest/android/maps/FSTileCache$4;->val$order:I

    mul-int/2addr v0, v1

    .line 264
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method
