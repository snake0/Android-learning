.class public Lcom/baidu/mapsdkplatform/comapi/favrite/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;


# instance fields
.field private a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;

.field private i:Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->c:Z

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->d:Z

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->g:Z

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;

    invoke-direct {v0, p0, v1}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;-><init>(Lcom/baidu/mapsdkplatform/comapi/favrite/a;Lcom/baidu/mapsdkplatform/comapi/favrite/a$1;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->h:Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;

    invoke-direct {v0, p0, v1}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;-><init>(Lcom/baidu/mapsdkplatform/comapi/favrite/a;Lcom/baidu/mapsdkplatform/comapi/favrite/a$1;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->i:Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;

    return-void
.end method

.method public static a()Lcom/baidu/mapsdkplatform/comapi/favrite/a;
    .registers 2

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    if-nez v0, :cond_18

    const-class v1, Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    if-nez v0, :cond_17

    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;-><init>()V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->h()Z

    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1b

    :cond_18
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    return-object v0

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public static g()Z
    .registers 1

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private h()Z
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    if-nez v1, :cond_1c

    new-instance v1, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    invoke-direct {v1}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    const/4 v0, 0x0

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->j()V

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->i()Z

    goto :goto_1c
.end method

.method private i()Z
    .registers 9

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, -0x1

    const-string v3, "fifo"

    const/16 v4, 0xa

    const-string v2, "fav_poi"

    const/16 v5, 0x1f5

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a(I)Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v0

    goto :goto_5
.end method

.method private j()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->c:Z

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->d:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;)I
    .registers 9

    const/4 v2, -0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_fc

    if-nez v0, :cond_a

    move v0, v1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    if-eqz p1, :cond_16

    :try_start_c
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    if-nez p2, :cond_18

    :cond_16
    move v0, v2

    goto :goto_8

    :cond_18
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->j()V

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_111

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_25
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x1f4

    if-le v0, v4, :cond_2d

    const/4 v0, -0x2

    goto :goto_8

    :cond_2d
    if-eqz v3, :cond_55

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_55

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b(Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    move v0, v2

    goto :goto_8

    :cond_55
    const-string v0, ""
    :try_end_57
    .catchall {:try_start_c .. :try_end_57} :catchall_fc

    :try_start_57
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v2, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->h:Ljava/lang/String;

    iput-object v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->a:Ljava/lang/String;

    const-string v2, "bdetail"

    iget-boolean v4, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->i:Z

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "uspoiname"

    iget-object v4, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "x"

    iget-object v5, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->c:Lcom/baidu/mapapi/model/inner/Point;

    invoke-virtual {v5}, Lcom/baidu/mapapi/model/inner/Point;->getmPtx()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "y"

    iget-object v5, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->c:Lcom/baidu/mapapi/model/inner/Point;

    invoke-virtual {v5}, Lcom/baidu/mapapi/model/inner/Point;->getmPty()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "pt"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ncityid"

    iget-object v4, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "npoitype"

    iget v4, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->g:I

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "uspoiuid"

    iget-object v4, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "addr"

    iget-object v4, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "addtimesec"

    iget-object v4, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "Fav_Sync"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "Fav_Content"

    iget-object v4, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ff

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->j()V
    :try_end_f6
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_f6} :catch_105
    .catchall {:try_start_57 .. :try_end_f6} :catchall_10c

    const/4 v0, 0x1

    :try_start_f7
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->g()Z
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_fc

    goto/16 :goto_8

    :catchall_fc
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_ff
    :try_start_ff
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->g()Z

    move v0, v1

    goto/16 :goto_8

    :catch_105
    move-exception v0

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->g()Z

    move v0, v1

    goto/16 :goto_8

    :catchall_10c
    move-exception v0

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->g()Z

    throw v0
    :try_end_111
    .catchall {:try_start_ff .. :try_end_111} :catchall_fc

    :cond_111
    move v0, v1

    goto/16 :goto_25
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_22

    if-nez v1, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    if-eqz p1, :cond_6

    :try_start_a
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->j()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a(Ljava/lang/String;)Z
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_22

    move-result v0

    goto :goto_6

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    if-eqz v1, :cond_f

    if-eqz p1, :cond_f

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    :try_start_10
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;

    invoke-direct {v1}, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;-><init>()V

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    invoke-virtual {v2, p1}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "Fav_Sync"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "Fav_Content"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "uspoiname"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->b:Ljava/lang/String;

    const-string v4, "pt"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/baidu/mapapi/model/inner/Point;

    const-string v6, "x"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "y"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v5, v6, v4}, Lcom/baidu/mapapi/model/inner/Point;-><init>(II)V

    iput-object v5, v1, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->c:Lcom/baidu/mapapi/model/inner/Point;

    const-string v4, "ncityid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->e:Ljava/lang/String;

    const-string v4, "uspoiuid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->f:Ljava/lang/String;

    const-string v4, "npoitype"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->g:I

    const-string v4, "addr"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->d:Ljava/lang/String;

    const-string v4, "addtimesec"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->h:Ljava/lang/String;

    const-string v4, "bdetail"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->i:Z

    iput-object v3, v1, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->j:Ljava/lang/String;

    iput-object p1, v1, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->a:Ljava/lang/String;
    :try_end_91
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_91} :catch_94
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_91} :catch_9a

    move-object v0, v1

    goto/16 :goto_f

    :catch_94
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_f

    :catch_9a
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_f
.end method

.method public b()V
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b()I

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    iput-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    :cond_16
    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    :cond_18
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;)Z
    .registers 8

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    if-eqz v1, :cond_12

    if-eqz p1, :cond_12

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_a0

    move-result v1

    if-nez v1, :cond_12

    if-nez p2, :cond_14

    :cond_12
    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->c(Ljava/lang/String;)Z
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_a0

    move-result v1

    if-eqz v1, :cond_12

    :try_start_1a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "uspoiname"

    iget-object v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "x"

    iget-object v4, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->c:Lcom/baidu/mapapi/model/inner/Point;

    invoke-virtual {v4}, Lcom/baidu/mapapi/model/inner/Point;->getmPtx()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "y"

    iget-object v4, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->c:Lcom/baidu/mapapi/model/inner/Point;

    invoke-virtual {v4}, Lcom/baidu/mapapi/model/inner/Point;->getmPty()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "pt"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ncityid"

    iget-object v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "npoitype"

    iget v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->g:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "uspoiuid"

    iget-object v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "addr"

    iget-object v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->h:Ljava/lang/String;

    const-string v2, "addtimesec"

    iget-object v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bdetail"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "Fav_Sync"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Fav_Content"

    iget-object v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->j:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->j()V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_9a} :catch_a3
    .catchall {:try_start_1a .. :try_end_9a} :catchall_a0

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    goto/16 :goto_12

    :catchall_a0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_a3
    move-exception v1

    goto/16 :goto_12
.end method

.method public declared-synchronized c()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->j()V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->c()Z

    move-result v0

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->g()Z
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    goto :goto_6

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public d()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    if-nez v0, :cond_6

    :goto_5
    return-object v1

    :cond_6
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->d:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    if-eqz v0, :cond_16

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_5

    :cond_16
    :try_start_16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    invoke-virtual {v2, v0}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a(Landroid/os/Bundle;)I

    const-string v2, "rstString"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    if-nez v0, :cond_56

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    :goto_33
    const/4 v0, 0x0

    :goto_34
    array-length v3, v2

    if-ge v0, v3, :cond_66

    aget-object v3, v2, v0

    const-string v4, "data_version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_53

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    :cond_53
    :goto_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_56
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_33

    :catch_5c
    move-exception v0

    goto :goto_5

    :cond_5e
    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_66
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_6b} :catch_5c

    move-result v0

    if-lez v0, :cond_7b

    :try_start_6e
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    new-instance v2, Lcom/baidu/mapsdkplatform/comapi/favrite/a$a;

    invoke-direct {v2, p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$a;-><init>(Lcom/baidu/mapsdkplatform/comapi/favrite/a;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_78} :catch_8b

    :goto_78
    const/4 v0, 0x1

    :try_start_79
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->d:Z

    :cond_7b
    :goto_7b
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9d

    :cond_87
    move-object v0, v1

    :goto_88
    move-object v1, v0

    goto/16 :goto_5

    :catch_8b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_78

    :cond_90
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    goto :goto_7b

    :cond_9d
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_a4} :catch_5c

    goto :goto_88
.end method

.method public e()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    iget-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->c:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    if-eqz v1, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_5

    :cond_16
    :try_start_16
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    invoke-virtual {v2, v1}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->a(Landroid/os/Bundle;)I

    const-string v2, "rstString"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7f

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    if-nez v1, :cond_49

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    :goto_33
    array-length v3, v2

    const/4 v1, 0x0

    :goto_35
    if-ge v1, v3, :cond_51

    aget-object v4, v2, v1

    const-string v5, "data_version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    iget-object v5, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_49
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    goto :goto_33

    :catch_4f
    move-exception v1

    goto :goto_5

    :cond_51
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_56} :catch_4f

    move-result v1

    if-lez v1, :cond_66

    :try_start_59
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    new-instance v2, Lcom/baidu/mapsdkplatform/comapi/favrite/a$a;

    invoke-direct {v2, p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$a;-><init>(Lcom/baidu/mapsdkplatform/comapi/favrite/a;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_63} :catch_7a

    :goto_63
    const/4 v1, 0x1

    :try_start_64
    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->c:Z
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_66} :catch_4f

    :cond_66
    :goto_66
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_5

    :catch_7a
    move-exception v1

    :try_start_7b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63

    :cond_7f
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_8b} :catch_4f

    goto :goto_66
.end method

.method public f()Ljava/lang/String;
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->i:Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;->a(Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->h:Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->a(Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->h:Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->b(Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->h:Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->c(Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->i:Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;->b(Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    if-nez v0, :cond_2b

    move-object v0, v2

    goto :goto_1f

    :cond_2b
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->d()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_89

    :try_start_36
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_40
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a2

    const-string v6, "data_version"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a2

    iget-object v6, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;

    invoke-virtual {v6, v0}, Lcom/baidu/mapsdkplatform/comjni/map/favorite/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a2

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a2

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "Fav_Sync"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "key"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v1, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v1, 0x1

    :goto_7b
    move v1, v0

    goto :goto_40

    :cond_7d
    if-lez v1, :cond_89

    const-string v0, "favcontents"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "favpoinum"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_89
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->i:Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;->c(Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->h:Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->a(Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->h:Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->c(Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;)Ljava/lang/String;
    :try_end_9c
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_9c} :catch_9e

    move-result-object v0

    goto :goto_1f

    :catch_9e
    move-exception v0

    move-object v0, v2

    goto/16 :goto_1f

    :cond_a2
    move v0, v1

    goto :goto_7b
.end method
