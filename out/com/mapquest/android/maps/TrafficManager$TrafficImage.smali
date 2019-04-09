.class Lcom/mapquest/android/maps/TrafficManager$TrafficImage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bbox:Lcom/mapquest/android/maps/BoundingBox;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/mapquest/android/maps/TrafficManager;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/TrafficManager;Ljava/lang/String;Lcom/mapquest/android/maps/BoundingBox;)V
    .registers 4

    .prologue
    .line 264
    iput-object p1, p0, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->this$0:Lcom/mapquest/android/maps/TrafficManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p2, p0, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->url:Ljava/lang/String;

    .line 266
    iput-object p3, p0, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->bbox:Lcom/mapquest/android/maps/BoundingBox;

    .line 267
    return-void
.end method


# virtual methods
.method public getBoundingBox()Lcom/mapquest/android/maps/BoundingBox;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->bbox:Lcom/mapquest/android/maps/BoundingBox;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setBoundingBox(Lcom/mapquest/android/maps/BoundingBox;)V
    .registers 2

    .prologue
    .line 282
    iput-object p1, p0, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->bbox:Lcom/mapquest/android/maps/BoundingBox;

    .line 283
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 274
    iput-object p1, p0, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->drawable:Landroid/graphics/drawable/Drawable;

    .line 275
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 290
    iput-object p1, p0, Lcom/mapquest/android/maps/TrafficManager$TrafficImage;->url:Ljava/lang/String;

    .line 291
    return-void
.end method
