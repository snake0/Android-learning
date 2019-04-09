.class public Lcom/iflytek/cloud/thirdparty/dd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/cloud/thirdparty/dd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/iflytek/cloud/thirdparty/dd$1;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/dd$1;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/dd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/dd;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/dd;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/cloud/thirdparty/dd;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/iflytek/cloud/thirdparty/dd;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/iflytek/cloud/thirdparty/dd;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/iflytek/cloud/thirdparty/dd;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/dd;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/dd;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/dd;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/dd;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/dd;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/dd;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/iflytek/cloud/thirdparty/dd;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/dd;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/iflytek/cloud/thirdparty/dd;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/dd;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/iflytek/cloud/thirdparty/dd;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/dd;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/iflytek/cloud/thirdparty/dd;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/dd;->g:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/dd;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
