.class public final Lcom/baidu/location/BDLocation;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BDLOCATION_BD09LL_TO_GCJ02:Ljava/lang/String; = "bd09ll2gcj"

.field public static final BDLOCATION_BD09_TO_GCJ02:Ljava/lang/String; = "bd092gcj"

.field public static final BDLOCATION_GCJ02_TO_BD09:Ljava/lang/String; = "bd09"

.field public static final BDLOCATION_GCJ02_TO_BD09LL:Ljava/lang/String; = "bd09ll"

.field public static final BDLOCATION_WGS84_TO_GCJ02:Ljava/lang/String; = "gps2gcj"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/location/BDLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final GPS_ACCURACY_BAD:I = 0x3

.field public static final GPS_ACCURACY_GOOD:I = 0x1

.field public static final GPS_ACCURACY_MID:I = 0x2

.field public static final GPS_ACCURACY_UNKNOWN:I = 0x0

.field public static final GPS_RECTIFY_INDOOR:I = 0x1

.field public static final GPS_RECTIFY_NONE:I = 0x0

.field public static final GPS_RECTIFY_OUTDOOR:I = 0x2

.field public static final INDOOR_LOCATION_NEARBY_SURPPORT_TRUE:I = 0x2

.field public static final INDOOR_LOCATION_SOURCE_BLUETOOTH:I = 0x4

.field public static final INDOOR_LOCATION_SOURCE_MAGNETIC:I = 0x2

.field public static final INDOOR_LOCATION_SOURCE_SMALLCELLSTATION:I = 0x8

.field public static final INDOOR_LOCATION_SOURCE_UNKNOWN:I = 0x0

.field public static final INDOOR_LOCATION_SOURCE_WIFI:I = 0x1

.field public static final INDOOR_LOCATION_SURPPORT_FALSE:I = 0x0

.field public static final INDOOR_LOCATION_SURPPORT_TRUE:I = 0x1

.field public static final INDOOR_NETWORK_STATE_HIGH:I = 0x2

.field public static final INDOOR_NETWORK_STATE_LOW:I = 0x0

.field public static final INDOOR_NETWORK_STATE_MIDDLE:I = 0x1

.field public static final LOCATION_WHERE_IN_CN:I = 0x1

.field public static final LOCATION_WHERE_OUT_CN:I = 0x0

.field public static final LOCATION_WHERE_UNKNOW:I = 0x2

.field public static final OPERATORS_TYPE_MOBILE:I = 0x1

.field public static final OPERATORS_TYPE_TELECOMU:I = 0x3

.field public static final OPERATORS_TYPE_UNICOM:I = 0x2

.field public static final OPERATORS_TYPE_UNKONW:I = 0x0

.field public static final TypeCacheLocation:I = 0x41

.field public static final TypeCriteriaException:I = 0x3e

.field public static final TypeGpsLocation:I = 0x3d

.field public static final TypeNetWorkException:I = 0x3f

.field public static final TypeNetWorkLocation:I = 0xa1

.field public static final TypeNone:I = 0x0

.field public static final TypeOffLineLocation:I = 0x42

.field public static final TypeOffLineLocationFail:I = 0x43

.field public static final TypeOffLineLocationNetworkFail:I = 0x44

.field public static final TypeServerCheckKeyError:I = 0x1f9

.field public static final TypeServerDecryptError:I = 0xa2

.field public static final TypeServerError:I = 0xa7

.field public static final USER_INDDOR_TRUE:I = 0x1

.field public static final USER_INDOOR_FALSE:I = 0x0

.field public static final USER_INDOOR_UNKNOW:I = -0x1


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/Poi;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private P:I

.field private Q:I

.field private a:I

.field private b:Ljava/lang/String;

.field private c:D

.field private d:D

.field private e:Z

.field private f:D

.field private g:Z

.field private h:F

.field private i:Z

.field private j:F

.field private k:Z

.field private l:I

.field private m:F

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Lcom/baidu/location/Address;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/baidu/location/a;

    invoke-direct {v0}, Lcom/baidu/location/a;-><init>()V

    sput-object v0, Lcom/baidu/location/BDLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const/4 v5, -0x1

    const/4 v0, 0x0

    const-wide/16 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/baidu/location/BDLocation;->a:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->g:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->i:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->j:F

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->k:Z

    iput v5, p0, Lcom/baidu/location/BDLocation;->l:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/baidu/location/BDLocation;->m:F

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->o:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v0, Lcom/baidu/location/Address$Builder;

    invoke-direct {v0}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->y:Z

    iput v2, p0, Lcom/baidu/location/BDLocation;->z:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->A:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iput v5, p0, Lcom/baidu/location/BDLocation;->E:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->F:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/BDLocation;->G:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->H:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->O:Ljava/util/HashMap;

    iput v2, p0, Lcom/baidu/location/BDLocation;->P:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->Q:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 13

    const/4 v4, -0x1

    const/4 v0, 0x0

    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/location/BDLocation;->a:I

    iput-object v10, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->g:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->i:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->j:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->k:Z

    iput v4, p0, Lcom/baidu/location/BDLocation;->l:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/baidu/location/BDLocation;->m:F

    iput-object v10, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->o:Z

    iput-object v10, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v10, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v10, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v10, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v0, Lcom/baidu/location/Address$Builder;

    invoke-direct {v0}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iput-object v10, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v10, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v10, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->y:Z

    iput v1, p0, Lcom/baidu/location/BDLocation;->z:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->A:I

    iput-object v10, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iput v4, p0, Lcom/baidu/location/BDLocation;->E:I

    iput v1, p0, Lcom/baidu/location/BDLocation;->F:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/BDLocation;->G:I

    iput v1, p0, Lcom/baidu/location/BDLocation;->H:I

    iput-object v10, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput-object v10, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    iput-object v10, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    iput-object v10, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    iput-object v10, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    iput-object v10, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->O:Ljava/util/HashMap;

    iput v1, p0, Lcom/baidu/location/BDLocation;->P:I

    iput v1, p0, Lcom/baidu/location/BDLocation;->Q:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/BDLocation;->c:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/BDLocation;->d:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/BDLocation;->f:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->h:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->j:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->m:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->z:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/baidu/location/Address$Builder;

    invoke-direct {v9}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v9, v6}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/baidu/location/Address$Builder;->countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/baidu/location/Address$Builder;->cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/baidu/location/Address$Builder;->adcode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    const/4 v0, 0x7

    new-array v0, v0, [Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/BDLocation;->C:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/BDLocation;->A:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/BDLocation;->E:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/BDLocation;->F:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/BDLocation;->G:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/BDLocation;->H:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/BDLocation;->P:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/location/BDLocation;->Q:I

    :try_start_184
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->e:Z

    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->i:Z

    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->k:Z

    const/4 v1, 0x4

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->o:Z

    const/4 v1, 0x5

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->t:Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->y:Z
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_1aa} :catch_1c4

    :goto_1aa
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lcom/baidu/location/Poi;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1c1

    iput-object v10, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    :goto_1c0
    return-void

    :cond_1c1
    iput-object v0, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    goto :goto_1c0

    :catch_1c4
    move-exception v0

    goto :goto_1aa
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/baidu/location/a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/location/BDLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/location/BDLocation;)V
    .registers 10

    const/4 v5, -0x1

    const/4 v4, 0x0

    const-wide/16 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/location/BDLocation;->a:I

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    iput-wide v1, p0, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v1, p0, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v1, p0, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->g:Z

    iput v4, p0, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->i:Z

    iput v4, p0, Lcom/baidu/location/BDLocation;->j:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->k:Z

    iput v5, p0, Lcom/baidu/location/BDLocation;->l:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/baidu/location/BDLocation;->m:F

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v1, Lcom/baidu/location/Address$Builder;

    invoke-direct {v1}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->y:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->z:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/baidu/location/BDLocation;->A:I

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iput v5, p0, Lcom/baidu/location/BDLocation;->E:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->F:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/baidu/location/BDLocation;->G:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->H:I

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->O:Ljava/util/HashMap;

    iput v0, p0, Lcom/baidu/location/BDLocation;->P:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->Q:I

    iget v1, p1, Lcom/baidu/location/BDLocation;->a:I

    iput v1, p0, Lcom/baidu/location/BDLocation;->a:I

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    iget-wide v1, p1, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v1, p0, Lcom/baidu/location/BDLocation;->c:D

    iget-wide v1, p1, Lcom/baidu/location/BDLocation;->d:D

    iput-wide v1, p0, Lcom/baidu/location/BDLocation;->d:D

    iget-boolean v1, p1, Lcom/baidu/location/BDLocation;->e:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->e:Z

    iget-wide v1, p1, Lcom/baidu/location/BDLocation;->f:D

    iput-wide v1, p0, Lcom/baidu/location/BDLocation;->f:D

    iget-boolean v1, p1, Lcom/baidu/location/BDLocation;->g:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->g:Z

    iget v1, p1, Lcom/baidu/location/BDLocation;->h:F

    iput v1, p0, Lcom/baidu/location/BDLocation;->h:F

    iget-boolean v1, p1, Lcom/baidu/location/BDLocation;->i:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->i:Z

    iget v1, p1, Lcom/baidu/location/BDLocation;->j:F

    iput v1, p0, Lcom/baidu/location/BDLocation;->j:F

    iget-boolean v1, p1, Lcom/baidu/location/BDLocation;->k:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->k:Z

    iget v1, p1, Lcom/baidu/location/BDLocation;->l:I

    iput v1, p0, Lcom/baidu/location/BDLocation;->l:I

    iget v1, p1, Lcom/baidu/location/BDLocation;->m:F

    iput v1, p0, Lcom/baidu/location/BDLocation;->m:F

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/baidu/location/BDLocation;->o:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->o:Z

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/baidu/location/BDLocation;->t:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v1, Lcom/baidu/location/Address$Builder;

    invoke-direct {v1}, Lcom/baidu/location/Address$Builder;-><init>()V

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v2, v2, Lcom/baidu/location/Address;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v2, v2, Lcom/baidu/location/Address;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/Address$Builder;->countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v2, v2, Lcom/baidu/location/Address;->province:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v2, v2, Lcom/baidu/location/Address;->city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v2, v2, Lcom/baidu/location/Address;->cityCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/Address$Builder;->cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v2, v2, Lcom/baidu/location/Address;->district:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v2, v2, Lcom/baidu/location/Address;->street:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v2, v2, Lcom/baidu/location/Address;->streetNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v2, v2, Lcom/baidu/location/Address;->adcode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/Address$Builder;->adcode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iget v1, p1, Lcom/baidu/location/BDLocation;->A:I

    iput v1, p0, Lcom/baidu/location/BDLocation;->A:I

    iget v1, p1, Lcom/baidu/location/BDLocation;->z:I

    iput v1, p0, Lcom/baidu/location/BDLocation;->z:I

    iget-boolean v1, p1, Lcom/baidu/location/BDLocation;->y:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->y:Z

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    iget v1, p1, Lcom/baidu/location/BDLocation;->C:I

    iput v1, p0, Lcom/baidu/location/BDLocation;->C:I

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iget v1, p1, Lcom/baidu/location/BDLocation;->E:I

    iput v1, p0, Lcom/baidu/location/BDLocation;->E:I

    iget v1, p1, Lcom/baidu/location/BDLocation;->F:I

    iput v1, p0, Lcom/baidu/location/BDLocation;->F:I

    iget v1, p1, Lcom/baidu/location/BDLocation;->F:I

    iput v1, p0, Lcom/baidu/location/BDLocation;->G:I

    iget v1, p1, Lcom/baidu/location/BDLocation;->H:I

    iput v1, p0, Lcom/baidu/location/BDLocation;->H:I

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    iget v1, p1, Lcom/baidu/location/BDLocation;->P:I

    iput v1, p0, Lcom/baidu/location/BDLocation;->P:I

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    if-nez v1, :cond_16f

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    :goto_162
    iget-object v0, p1, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/location/BDLocation;->O:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->O:Ljava/util/HashMap;

    iget v0, p1, Lcom/baidu/location/BDLocation;->Q:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->Q:I

    return-void

    :cond_16f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_175
    iget-object v0, p1, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19d

    iget-object v0, p1, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/Poi;

    new-instance v3, Lcom/baidu/location/Poi;

    invoke-virtual {v0}, Lcom/baidu/location/Poi;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/baidu/location/Poi;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/baidu/location/Poi;->getRank()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/location/Poi;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_175

    :cond_19d
    iput-object v2, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    goto :goto_162
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/baidu/location/BDLocation;->c:D

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/baidu/location/BDLocation;->d:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/baidu/location/BDLocation;->f:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->h:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->i:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->j:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->k:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->l:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/baidu/location/BDLocation;->m:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v0, Lcom/baidu/location/Address$Builder;

    invoke-direct {v0}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->y:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->z:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->A:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->E:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->F:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/BDLocation;->G:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->H:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->O:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->P:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->Q:I

    if-eqz p1, :cond_9c

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    :cond_9c
    :goto_9c
    return-void

    :cond_9d
    :try_start_9d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    const-string v3, "time"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setTime(Ljava/lang/String;)V

    const/16 v1, 0x3d

    if-ne v2, v1, :cond_173

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "point"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const-string v1, "radius"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string v1, "s"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setSpeed(F)V

    const-string v1, "d"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setDirection(F)V

    const-string v1, "n"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setSatelliteNumber(I)V

    const-string v1, "h"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_121} :catch_14d
    .catch Ljava/lang/Error; {:try_start_9d .. :try_end_121} :catch_167

    move-result v1

    if-eqz v1, :cond_12d

    :try_start_124
    const-string v1, "h"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/baidu/location/BDLocation;->setAltitude(D)V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_12d} :catch_592
    .catch Ljava/lang/Error; {:try_start_124 .. :try_end_12d} :catch_167

    :cond_12d
    :goto_12d
    :try_start_12d
    const-string v1, "in_cn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_159

    const-string v1, "in_cn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_142} :catch_15e
    .catch Ljava/lang/Error; {:try_start_12d .. :try_end_142} :catch_167

    :goto_142
    :try_start_142
    iget v0, p0, Lcom/baidu/location/BDLocation;->A:I

    if-nez v0, :cond_160

    const-string v0, "wgs84"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_14b} :catch_14d
    .catch Ljava/lang/Error; {:try_start_142 .. :try_end_14b} :catch_167

    goto/16 :goto_9c

    :catch_14d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    goto/16 :goto_9c

    :cond_159
    const/4 v0, 0x1

    :try_start_15a
    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_15d} :catch_15e
    .catch Ljava/lang/Error; {:try_start_15a .. :try_end_15d} :catch_167

    goto :goto_142

    :catch_15e
    move-exception v0

    goto :goto_142

    :cond_160
    :try_start_160
    const-string v0, "gcj02"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_165} :catch_14d
    .catch Ljava/lang/Error; {:try_start_160 .. :try_end_165} :catch_167

    goto/16 :goto_9c

    :catch_167
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    goto/16 :goto_9c

    :cond_173
    const/16 v1, 0xa1

    if-ne v2, v1, :cond_535

    :try_start_177
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v0, "point"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const-string v0, "radius"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string v0, "sema"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_242

    const-string v0, "sema"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v0, "aptag"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    const-string v0, "aptag"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20f

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    :cond_1ce
    :goto_1ce
    const-string v0, "aptagd"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_216

    const-string v0, "aptagd"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "pois"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1e8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_214

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "pname"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pr"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    new-instance v4, Lcom/baidu/location/Poi;

    invoke-direct {v4, v6, v5, v7, v8}, Lcom/baidu/location/Poi;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e8

    :cond_20f
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    goto :goto_1ce

    :cond_214
    iput-object v3, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    :cond_216
    const-string v0, "poiregion"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22c

    const-string v0, "poiregion"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22c

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    :cond_22c
    const-string v0, "regular"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_242

    const-string v0, "regular"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_242

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    :cond_242
    const-string v0, "addr"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_247
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_247} :catch_14d
    .catch Ljava/lang/Error; {:try_start_177 .. :try_end_247} :catch_167

    move-result v0

    if-eqz v0, :cond_4bd

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x0

    :try_start_254
    const-string v1, "addr"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_259
    .catch Ljava/lang/Exception; {:try_start_254 .. :try_end_259} :catch_468
    .catch Ljava/lang/Error; {:try_start_254 .. :try_end_259} :catch_167

    move-result-object v1

    const/4 v10, 0x1

    move-object v13, v1

    move v1, v10

    move-object v10, v13

    :goto_25e
    if-eqz v10, :cond_46f

    :try_start_260
    const-string v9, ""

    const-string v8, ""

    const-string v7, ""

    const-string v6, ""

    const-string v5, ""

    const-string v4, ""

    const-string v3, ""

    const-string v2, ""

    const-string v0, ""

    const-string v12, "city"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_280

    const-string v6, "city"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_280
    const-string v12, "city_code"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_28e

    const-string v5, "city_code"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_28e
    const-string v12, "country"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_29c

    const-string v9, "country"

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_29c
    const-string v12, "country_code"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2aa

    const-string v8, "country_code"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_2aa
    const-string v12, "province"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2b8

    const-string v7, "province"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_2b8
    const-string v12, "district"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2c6

    const-string v4, "district"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2c6
    const-string v12, "street"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2d4

    const-string v3, "street"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2d4
    const-string v12, "street_number"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2e2

    const-string v2, "street_number"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2e2
    const-string v12, "adcode"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2f0

    const-string v0, "adcode"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2f0
    :goto_2f0
    if-eqz v1, :cond_324

    new-instance v1, Lcom/baidu/location/Address$Builder;

    invoke-direct {v1}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v1, v9}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/baidu/location/Address$Builder;->countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/baidu/location/Address$Builder;->cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/Address$Builder;->adcode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    :cond_324
    :goto_324
    const-string v0, "floor"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33f

    const-string v0, "floor"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33f

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    :cond_33f
    const-string v0, "indoor"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35e

    const-string v0, "indoor"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setUserIndoorState(I)V

    :cond_35e
    const-string v0, "loctp"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_379

    const-string v0, "loctp"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_379

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    :cond_379
    const-string v0, "bldgid"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_394

    const-string v0, "bldgid"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_394

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    :cond_394
    const-string v0, "bldg"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3af

    const-string v0, "bldg"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3af

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    :cond_3af
    const-string v0, "ibav"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c6

    const-string v0, "ibav"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c6

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->z:I

    :cond_3c6
    :goto_3c6
    const-string v0, "indoorflags"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_3cb
    .catch Ljava/lang/Exception; {:try_start_260 .. :try_end_3cb} :catch_14d
    .catch Ljava/lang/Error; {:try_start_260 .. :try_end_3cb} :catch_167

    move-result v0

    if-eqz v0, :cond_4ec

    :try_start_3ce
    const-string v0, "indoorflags"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "area"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f0

    const-string v1, "area"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4df

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setIndoorLocationSurpport(I)V

    :cond_3f0
    :goto_3f0
    const-string v1, "support"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_409

    const-string v1, "support"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setIndoorLocationSource(I)V

    :cond_409
    const-string v1, "inbldg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_419

    const-string v1, "inbldg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    :cond_419
    const-string v1, "inbldgid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_429

    const-string v1, "inbldgid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    :cond_429
    const-string v1, "polygon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43a

    const-string v1, "polygon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setIndoorSurpportPolygon(Ljava/lang/String;)V

    :cond_43a
    const-string v1, "ret_fields"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_43f
    .catch Ljava/lang/Exception; {:try_start_3ce .. :try_end_43f} :catch_4e8
    .catch Ljava/lang/Error; {:try_start_3ce .. :try_end_43f} :catch_167

    move-result v1

    if-eqz v1, :cond_4ec

    :try_start_442
    const-string v1, "ret_fields"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_450
    if-ge v0, v2, :cond_4ec

    aget-object v3, v1, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    iget-object v5, p0, Lcom/baidu/location/BDLocation;->O:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_465
    .catch Ljava/lang/Exception; {:try_start_442 .. :try_end_465} :catch_51d
    .catch Ljava/lang/Error; {:try_start_442 .. :try_end_465} :catch_167

    add-int/lit8 v0, v0, 0x1

    goto :goto_450

    :catch_468
    move-exception v1

    const/4 v1, 0x0

    move-object v13, v1

    move v1, v10

    move-object v10, v13

    goto/16 :goto_25e

    :cond_46f
    :try_start_46f
    const-string v1, "addr"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v10, v1

    if-lez v10, :cond_481

    const/4 v12, 0x0

    aget-object v7, v1, v12

    :cond_481
    const/4 v12, 0x1

    if-le v10, v12, :cond_487

    const/4 v12, 0x1

    aget-object v6, v1, v12

    :cond_487
    const/4 v12, 0x2

    if-le v10, v12, :cond_48d

    const/4 v12, 0x2

    aget-object v4, v1, v12

    :cond_48d
    const/4 v12, 0x3

    if-le v10, v12, :cond_493

    const/4 v12, 0x3

    aget-object v3, v1, v12

    :cond_493
    const/4 v12, 0x4

    if-le v10, v12, :cond_499

    const/4 v12, 0x4

    aget-object v2, v1, v12

    :cond_499
    const/4 v12, 0x5

    if-le v10, v12, :cond_49f

    const/4 v12, 0x5

    aget-object v5, v1, v12

    :cond_49f
    const/4 v12, 0x6

    if-le v10, v12, :cond_4a5

    const/4 v12, 0x6

    aget-object v9, v1, v12

    :cond_4a5
    const/4 v12, 0x7

    if-le v10, v12, :cond_4ab

    const/4 v12, 0x7

    aget-object v8, v1, v12

    :cond_4ab
    const/16 v12, 0x8

    if-le v10, v12, :cond_4b3

    const/16 v10, 0x8

    aget-object v0, v1, v10
    :try_end_4b3
    .catch Ljava/lang/Exception; {:try_start_46f .. :try_end_4b3} :catch_4b6
    .catch Ljava/lang/Error; {:try_start_46f .. :try_end_4b3} :catch_167

    :cond_4b3
    const/4 v1, 0x1

    goto/16 :goto_2f0

    :catch_4b6
    move-exception v1

    :try_start_4b7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto/16 :goto_2f0

    :cond_4bd
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setAddrStr(Ljava/lang/String;)V

    goto/16 :goto_324

    :cond_4c6
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d3

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->z:I

    goto/16 :goto_3c6

    :cond_4d3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->z:I
    :try_end_4dd
    .catch Ljava/lang/Exception; {:try_start_4b7 .. :try_end_4dd} :catch_14d
    .catch Ljava/lang/Error; {:try_start_4b7 .. :try_end_4dd} :catch_167

    goto/16 :goto_3c6

    :cond_4df
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f0

    const/4 v1, 0x1

    :try_start_4e3
    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setIndoorLocationSurpport(I)V
    :try_end_4e6
    .catch Ljava/lang/Exception; {:try_start_4e3 .. :try_end_4e6} :catch_4e8
    .catch Ljava/lang/Error; {:try_start_4e3 .. :try_end_4e6} :catch_167

    goto/16 :goto_3f0

    :catch_4e8
    move-exception v0

    :try_start_4e9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4ec
    :goto_4ec
    const-string v0, "gpscs"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_522

    const-string v0, "gpscs"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setGpsCheckStatus(I)V
    :try_end_4fd
    .catch Ljava/lang/Exception; {:try_start_4e9 .. :try_end_4fd} :catch_14d
    .catch Ljava/lang/Error; {:try_start_4e9 .. :try_end_4fd} :catch_167

    :goto_4fd
    :try_start_4fd
    const-string v0, "in_cn"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_527

    const-string v0, "in_cn"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V
    :try_end_512
    .catch Ljava/lang/Exception; {:try_start_4fd .. :try_end_512} :catch_52c
    .catch Ljava/lang/Error; {:try_start_4fd .. :try_end_512} :catch_167

    :goto_512
    :try_start_512
    iget v0, p0, Lcom/baidu/location/BDLocation;->A:I

    if-nez v0, :cond_52e

    const-string v0, "wgs84"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V
    :try_end_51b
    .catch Ljava/lang/Exception; {:try_start_512 .. :try_end_51b} :catch_14d
    .catch Ljava/lang/Error; {:try_start_512 .. :try_end_51b} :catch_167

    goto/16 :goto_9c

    :catch_51d
    move-exception v0

    :try_start_51e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_521
    .catch Ljava/lang/Exception; {:try_start_51e .. :try_end_521} :catch_4e8
    .catch Ljava/lang/Error; {:try_start_51e .. :try_end_521} :catch_167

    goto :goto_4ec

    :cond_522
    const/4 v0, 0x0

    :try_start_523
    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setGpsCheckStatus(I)V
    :try_end_526
    .catch Ljava/lang/Exception; {:try_start_523 .. :try_end_526} :catch_14d
    .catch Ljava/lang/Error; {:try_start_523 .. :try_end_526} :catch_167

    goto :goto_4fd

    :cond_527
    const/4 v0, 0x1

    :try_start_528
    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V
    :try_end_52b
    .catch Ljava/lang/Exception; {:try_start_528 .. :try_end_52b} :catch_52c
    .catch Ljava/lang/Error; {:try_start_528 .. :try_end_52b} :catch_167

    goto :goto_512

    :catch_52c
    move-exception v0

    goto :goto_512

    :cond_52e
    :try_start_52e
    const-string v0, "gcj02"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    goto/16 :goto_9c

    :cond_535
    const/16 v1, 0x42

    if-eq v2, v1, :cond_53d

    const/16 v1, 0x44

    if-ne v2, v1, :cond_588

    :cond_53d
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "point"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const-string v1, "radius"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string v1, "isCellChanged"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/BDLocation;->a(Ljava/lang/Boolean;)V

    const-string v0, "gcj02"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    goto/16 :goto_9c

    :cond_588
    const/16 v0, 0xa7

    if-ne v2, v0, :cond_9c

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V
    :try_end_590
    .catch Ljava/lang/Exception; {:try_start_52e .. :try_end_590} :catch_14d
    .catch Ljava/lang/Error; {:try_start_52e .. :try_end_590} :catch_167

    goto/16 :goto_9c

    :catch_592
    move-exception v1

    goto/16 :goto_12d
.end method

.method private a(Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->t:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAdCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->adcode:Ljava/lang/String;

    return-object v0
.end method

.method public getAddrStr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Lcom/baidu/location/Address;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    return-object v0
.end method

.method public getAltitude()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->f:D

    return-wide v0
.end method

.method public getBuildingID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildingName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCoorType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDerect()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/baidu/location/BDLocation;->m:F

    return v0
.end method

.method public getDirection()F
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->m:F

    return v0
.end method

.method public getDistrict()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getFloor()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsAccuracyStatus()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->P:I

    return v0
.end method

.method public getGpsCheckStatus()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->Q:I

    return v0
.end method

.method public getIndoorLocationSource()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->H:I

    return v0
.end method

.method public getIndoorLocationSurpport()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->F:I

    return v0
.end method

.method public getIndoorLocationSurpportBuidlingID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    return-object v0
.end method

.method public getIndoorLocationSurpportBuidlingName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    return-object v0
.end method

.method public getIndoorNetworkState()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->G:I

    return v0
.end method

.method public getIndoorSurpportPolygon()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->c:D

    return-wide v0
.end method

.method public getLocType()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->a:I

    return v0
.end method

.method public getLocTypeDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationDescribe()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationWhere()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->A:I

    return v0
.end method

.method public getLongitude()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->d:D

    return-wide v0
.end method

.method public getNetworkLocationType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getOperators()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->C:I

    return v0
.end method

.method public getPoiList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/Poi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()F
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->j:F

    return v0
.end method

.method public getRetFields(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->O:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSatelliteNumber()I
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->k:Z

    iget v0, p0, Lcom/baidu/location/BDLocation;->l:I

    return v0
.end method

.method public getSemaAptag()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->h:F

    return v0
.end method

.method public getStreet()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->streetNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIndoorState()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->E:I

    return v0
.end method

.method public hasAddr()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    return v0
.end method

.method public hasAltitude()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    return v0
.end method

.method public hasRadius()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->i:Z

    return v0
.end method

.method public hasSateNumber()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->k:Z

    return v0
.end method

.method public hasSpeed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->g:Z

    return v0
.end method

.method public isCellChangeFlag()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->t:Z

    return v0
.end method

.method public isIndoorLocMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->y:Z

    return v0
.end method

.method public isParkAvailable()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->z:I

    return v0
.end method

.method public setAddr(Lcom/baidu/location/Address;)V
    .registers 3

    if-eqz p1, :cond_7

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    :cond_7
    return-void
.end method

.method public setAddrStr(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    if-nez p1, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    goto :goto_7
.end method

.method public setAltitude(D)V
    .registers 4

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->f:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    return-void
.end method

.method public setBuildingID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    return-void
.end method

.method public setBuildingName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    return-void
.end method

.method public setCoorType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    return-void
.end method

.method public setDirection(F)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->m:F

    return-void
.end method

.method public setFloor(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    return-void
.end method

.method public setGpsAccuracyStatus(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->P:I

    return-void
.end method

.method public setGpsCheckStatus(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->Q:I

    return-void
.end method

.method public setIndoorLocMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->y:Z

    return-void
.end method

.method public setIndoorLocationSource(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->H:I

    return-void
.end method

.method public setIndoorLocationSurpport(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->F:I

    return-void
.end method

.method public setIndoorNetworkState(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->G:I

    return-void
.end method

.method public setIndoorSurpportPolygon(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .registers 3

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->c:D

    return-void
.end method

.method public setLocType(I)V
    .registers 3

    iput p1, p0, Lcom/baidu/location/BDLocation;->a:I

    sparse-switch p1, :sswitch_data_40

    const-string v0, "UnKnown!"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setLocTypeDescription(Ljava/lang/String;)V

    :goto_a
    return-void

    :sswitch_b
    const-string v0, "Location failed beacuse we can not get any loc information!"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setLocTypeDescription(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_11
    const-string v0, "GPS location successful!"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setLocTypeDescription(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setUserIndoorState(I)V

    goto :goto_a

    :sswitch_1b
    const-string v0, "NetWork location successful!"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setLocTypeDescription(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_21
    const-string v0, "Offline location failed, please check the net (wifi/cell)!"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setLocTypeDescription(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_27
    const-string v0, "Offline location successful!"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setLocTypeDescription(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_2d
    const-string v0, "NetWork location failed because baidu location service can not caculate the location!"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setLocTypeDescription(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_33
    const-string v0, "NetWork location failed because baidu location service can not decrypt the request query, please check the so file !"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setLocTypeDescription(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_39
    const-string v0, "NetWork location failed because baidu location service check the key is unlegal, please check the key in AndroidManifest.xml !"

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setLocTypeDescription(Ljava/lang/String;)V

    goto :goto_a

    nop

    :sswitch_data_40
    .sparse-switch
        0x3d -> :sswitch_11
        0x3e -> :sswitch_b
        0x3f -> :sswitch_21
        0x42 -> :sswitch_27
        0x43 -> :sswitch_21
        0xa1 -> :sswitch_1b
        0xa2 -> :sswitch_33
        0xa7 -> :sswitch_2d
        0x1f9 -> :sswitch_39
    .end sparse-switch
.end method

.method public setLocTypeDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    return-void
.end method

.method public setLocationDescribe(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    return-void
.end method

.method public setLocationID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    return-void
.end method

.method public setLocationWhere(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->A:I

    return-void
.end method

.method public setLongitude(D)V
    .registers 3

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->d:D

    return-void
.end method

.method public setNetworkLocationType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    return-void
.end method

.method public setOperators(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->C:I

    return-void
.end method

.method public setParkAvailable(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->z:I

    return-void
.end method

.method public setPoiList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/Poi;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    return-void
.end method

.method public setRadius(F)V
    .registers 3

    iput p1, p0, Lcom/baidu/location/BDLocation;->j:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->i:Z

    return-void
.end method

.method public setSatelliteNumber(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->l:I

    return-void
.end method

.method public setSpeed(F)V
    .registers 3

    iput p1, p0, Lcom/baidu/location/BDLocation;->h:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->g:Z

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/location/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setLocationID(Ljava/lang/String;)V

    return-void
.end method

.method public setUserIndoorState(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->E:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget v0, p0, Lcom/baidu/location/BDLocation;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->d:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->f:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->h:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->m:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->z:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->province:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->district:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->street:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->streetNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->cityCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->adcode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->C:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->A:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->E:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->F:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->G:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->H:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->P:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->Q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x7

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->e:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->g:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->i:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->k:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->o:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->t:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->y:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
