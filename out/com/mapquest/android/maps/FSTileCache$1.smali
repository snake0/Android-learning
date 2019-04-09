.class Lcom/mapquest/android/maps/FSTileCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/FSTileCache$IFileCallback;


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/FSTileCache;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/FSTileCache;)V
    .registers 2

    .prologue
    .line 207
    iput-object p1, p0, Lcom/mapquest/android/maps/FSTileCache$1;->this$0:Lcom/mapquest/android/maps/FSTileCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/io/File;)V
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 210
    return-void
.end method
