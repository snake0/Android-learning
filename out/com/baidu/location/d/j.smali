.class public Lcom/baidu/location/d/j;
.super Ljava/lang/Object;


# static fields
.field public static A:F

.field public static B:F

.field public static C:I

.field public static D:I

.field public static E:I

.field public static F:I

.field public static G:I

.field public static H:I

.field public static I:I

.field public static J:F

.field public static K:F

.field public static L:F

.field public static M:F

.field public static N:I

.field public static O:F

.field public static P:I

.field public static Q:F

.field public static R:F

.field public static S:F

.field public static T:I

.field public static U:I

.field public static V:I

.field public static W:I

.field public static X:I

.field public static Y:I

.field public static Z:Z

.field public static a:Z

.field private static aA:Ljava/lang/String;

.field private static aB:Ljava/lang/String;

.field public static aa:Z

.field public static ab:I

.field public static ac:I

.field public static ad:I

.field public static ae:I

.field public static af:J

.field public static ag:J

.field public static ah:J

.field public static ai:J

.field public static aj:J

.field public static ak:J

.field public static al:I

.field public static am:I

.field public static an:I

.field public static ao:I

.field public static ap:F

.field public static aq:F

.field public static ar:F

.field public static as:I

.field public static at:I

.field public static au:I

.field private static av:Ljava/lang/String;

.field private static aw:Ljava/lang/String;

.field private static ax:Ljava/lang/String;

.field private static ay:Ljava/lang/String;

.field private static az:Ljava/lang/String;

.field public static b:Z

.field public static c:Z

.field public static d:I

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Z

.field public static i:Z

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Z

.field public static p:I

.field public static q:D

.field public static r:D

.field public static s:D

.field public static t:D

.field public static u:I

.field public static v:[B

.field public static w:Z

.field public static x:I

.field public static y:F

.field public static z:F


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/high16 v5, 0x41200000    # 10.0f

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    sput-boolean v2, Lcom/baidu/location/d/j;->a:Z

    sput-boolean v2, Lcom/baidu/location/d/j;->b:Z

    sput-boolean v2, Lcom/baidu/location/d/j;->c:Z

    sput v2, Lcom/baidu/location/d/j;->d:I

    const-string v0, "http://loc.map.baidu.com/sdk.php"

    sput-object v0, Lcom/baidu/location/d/j;->av:Ljava/lang/String;

    const-string v0, "http://loc.map.baidu.com/sdk_ep.php"

    sput-object v0, Lcom/baidu/location/d/j;->e:Ljava/lang/String;

    const-string v0, "http://loc.map.baidu.com/user_err.php"

    sput-object v0, Lcom/baidu/location/d/j;->aw:Ljava/lang/String;

    const-string v0, "http://loc.map.baidu.com/oqur.php"

    sput-object v0, Lcom/baidu/location/d/j;->ax:Ljava/lang/String;

    const-string v0, "http://loc.map.baidu.com/tcu.php"

    sput-object v0, Lcom/baidu/location/d/j;->ay:Ljava/lang/String;

    const-string v0, "http://loc.map.baidu.com/rtbu.php"

    sput-object v0, Lcom/baidu/location/d/j;->az:Ljava/lang/String;

    const-string v0, "http://loc.map.baidu.com/iofd.php"

    sput-object v0, Lcom/baidu/location/d/j;->aA:Ljava/lang/String;

    const-string v0, "http://loc.map.baidu.com/wloc"

    sput-object v0, Lcom/baidu/location/d/j;->aB:Ljava/lang/String;

    const-string v0, "https://loc.map.baidu.com/sdk.php"

    sput-object v0, Lcom/baidu/location/d/j;->f:Ljava/lang/String;

    const-string v0, "no"

    sput-object v0, Lcom/baidu/location/d/j;->g:Ljava/lang/String;

    sput-boolean v2, Lcom/baidu/location/d/j;->h:Z

    sput-boolean v2, Lcom/baidu/location/d/j;->i:Z

    sput-boolean v2, Lcom/baidu/location/d/j;->j:Z

    sput-boolean v2, Lcom/baidu/location/d/j;->k:Z

    sput-boolean v2, Lcom/baidu/location/d/j;->l:Z

    const-string v0, "gcj02"

    sput-object v0, Lcom/baidu/location/d/j;->m:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/location/d/j;->n:Ljava/lang/String;

    sput-boolean v1, Lcom/baidu/location/d/j;->o:Z

    sput v6, Lcom/baidu/location/d/j;->p:I

    sput-wide v3, Lcom/baidu/location/d/j;->q:D

    sput-wide v3, Lcom/baidu/location/d/j;->r:D

    sput-wide v3, Lcom/baidu/location/d/j;->s:D

    sput-wide v3, Lcom/baidu/location/d/j;->t:D

    sput v2, Lcom/baidu/location/d/j;->u:I

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/d/j;->v:[B

    sput-boolean v2, Lcom/baidu/location/d/j;->w:Z

    sput v2, Lcom/baidu/location/d/j;->x:I

    const v0, 0x3f8ccccd    # 1.1f

    sput v0, Lcom/baidu/location/d/j;->y:F

    const v0, 0x400ccccd    # 2.2f

    sput v0, Lcom/baidu/location/d/j;->z:F

    const v0, 0x40133333    # 2.3f

    sput v0, Lcom/baidu/location/d/j;->A:F

    const v0, 0x40733333    # 3.8f

    sput v0, Lcom/baidu/location/d/j;->B:F

    sput v6, Lcom/baidu/location/d/j;->C:I

    const/16 v0, 0xa

    sput v0, Lcom/baidu/location/d/j;->D:I

    const/4 v0, 0x2

    sput v0, Lcom/baidu/location/d/j;->E:I

    const/4 v0, 0x7

    sput v0, Lcom/baidu/location/d/j;->F:I

    const/16 v0, 0x14

    sput v0, Lcom/baidu/location/d/j;->G:I

    const/16 v0, 0x46

    sput v0, Lcom/baidu/location/d/j;->H:I

    const/16 v0, 0x78

    sput v0, Lcom/baidu/location/d/j;->I:I

    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/baidu/location/d/j;->J:F

    sput v5, Lcom/baidu/location/d/j;->K:F

    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Lcom/baidu/location/d/j;->L:F

    const/high16 v0, 0x43480000    # 200.0f

    sput v0, Lcom/baidu/location/d/j;->M:F

    const/16 v0, 0x10

    sput v0, Lcom/baidu/location/d/j;->N:I

    const v0, 0x3f666666    # 0.9f

    sput v0, Lcom/baidu/location/d/j;->O:F

    const/16 v0, 0x2710

    sput v0, Lcom/baidu/location/d/j;->P:I

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/baidu/location/d/j;->Q:F

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/d/j;->R:F

    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/baidu/location/d/j;->S:F

    const/16 v0, 0x1e

    sput v0, Lcom/baidu/location/d/j;->T:I

    const/16 v0, 0x64

    sput v0, Lcom/baidu/location/d/j;->U:I

    sput v2, Lcom/baidu/location/d/j;->V:I

    sput v2, Lcom/baidu/location/d/j;->W:I

    sput v2, Lcom/baidu/location/d/j;->X:I

    const v0, 0x668a0

    sput v0, Lcom/baidu/location/d/j;->Y:I

    sput-boolean v1, Lcom/baidu/location/d/j;->Z:Z

    sput-boolean v1, Lcom/baidu/location/d/j;->aa:Z

    const/16 v0, 0x14

    sput v0, Lcom/baidu/location/d/j;->ab:I

    const/16 v0, 0x12c

    sput v0, Lcom/baidu/location/d/j;->ac:I

    const/16 v0, 0x3e8

    sput v0, Lcom/baidu/location/d/j;->ad:I

    const v0, 0x7fffffff

    sput v0, Lcom/baidu/location/d/j;->ae:I

    const-wide/32 v0, 0xdbba0

    sput-wide v0, Lcom/baidu/location/d/j;->af:J

    const-wide/32 v0, 0x668a0

    sput-wide v0, Lcom/baidu/location/d/j;->ag:J

    const-wide/32 v0, 0x2bf20

    sput-wide v0, Lcom/baidu/location/d/j;->ah:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/location/d/j;->ai:J

    const-wide/16 v0, 0xf

    sput-wide v0, Lcom/baidu/location/d/j;->aj:J

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/baidu/location/d/j;->ak:J

    const/16 v0, 0x3e8

    sput v0, Lcom/baidu/location/d/j;->al:I

    sput v2, Lcom/baidu/location/d/j;->am:I

    const/16 v0, 0x7530

    sput v0, Lcom/baidu/location/d/j;->an:I

    const/16 v0, 0x7530

    sput v0, Lcom/baidu/location/d/j;->ao:I

    sput v5, Lcom/baidu/location/d/j;->ap:F

    const/high16 v0, 0x40c00000    # 6.0f

    sput v0, Lcom/baidu/location/d/j;->aq:F

    sput v5, Lcom/baidu/location/d/j;->ar:F

    const/16 v0, 0x3c

    sput v0, Lcom/baidu/location/d/j;->as:I

    const/16 v0, 0x46

    sput v0, Lcom/baidu/location/d/j;->at:I

    const/4 v0, 0x6

    sput v0, Lcom/baidu/location/d/j;->au:I

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    move-result v0

    :goto_b
    return v0

    :catch_c
    move-exception v0

    const/4 v0, 0x2

    goto :goto_b
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const/4 v3, -0x1

    const/high16 v0, -0x80000000

    if-eqz p0, :cond_d

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_d

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :try_start_2d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_30} :catch_32

    move-result v0

    goto :goto_d

    :catch_32
    move-exception v1

    goto :goto_d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v0

    goto :goto_3

    :catch_d
    move-exception v1

    goto :goto_3
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    array-length v0, p2

    new-array v2, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    array-length v3, p2

    :goto_9
    if-ge v0, v3, :cond_20

    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v0

    aget-object v4, v2, v0

    const-class v5, Ljava/lang/Integer;

    if-ne v4, v5, :cond_1d

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v0

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_20
    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_2e

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_2e
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .registers 13

    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v7, "%d-%02d-%02d %02d:%02d:%02d"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v11

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v12

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/baidu/location/b/a;Lcom/baidu/location/b/g;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/baidu/location/d/j;->a(Lcom/baidu/location/b/a;Lcom/baidu/location/b/g;Landroid/location/Location;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/baidu/location/b/a;Lcom/baidu/location/b/g;Landroid/location/Location;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 15

    const/4 v8, 0x3

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x400

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    if-eqz p0, :cond_18

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/location/b/b;->b(Lcom/baidu/location/b/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_18
    if-eqz p1, :cond_27

    if-nez p4, :cond_9f

    if-eqz p5, :cond_9a

    invoke-virtual {p1}, Lcom/baidu/location/b/g;->b()Ljava/lang/String;

    move-result-object v0

    :goto_22
    if-eqz v0, :cond_27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_27
    if-eqz p2, :cond_38

    sget v0, Lcom/baidu/location/d/j;->d:I

    if-eqz v0, :cond_a5

    if-eqz p4, :cond_a5

    invoke-static {p2}, Lcom/baidu/location/b/e;->c(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    :goto_33
    if-eqz v0, :cond_38

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_38
    const/4 v0, 0x0

    if-nez p4, :cond_3c

    move v0, v1

    :cond_3c
    invoke-static {}, Lcom/baidu/location/d/b;->a()Lcom/baidu/location/d/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/location/d/b;->a(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_49
    if-eqz p3, :cond_4e

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4e
    if-nez p4, :cond_50

    :cond_50
    if-eqz p0, :cond_6c

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/location/b/b;->a(Lcom/baidu/location/b/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x2ee

    if-ge v3, v4, :cond_6c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6c
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_ca

    if-eqz p1, :cond_ca

    :try_start_74
    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    sget v3, Lcom/baidu/location/d/j;->d:I

    invoke-virtual {p1}, Lcom/baidu/location/b/g;->g()I

    move-result v4

    invoke-virtual {p1}, Lcom/baidu/location/b/g;->a()I

    move-result v5

    invoke-virtual {p1}, Lcom/baidu/location/b/g;->h()Z

    move-result v6

    sget v7, Lcom/baidu/location/d/j;->aq:F

    cmpg-float v7, v2, v7

    if-gez v7, :cond_aa

    if-eq v3, v1, :cond_90

    if-nez v3, :cond_aa

    :cond_90
    sget v7, Lcom/baidu/location/d/j;->as:I

    if-lt v4, v7, :cond_96

    if-ne v6, v1, :cond_aa

    :cond_96
    const/4 v1, 0x1

    sput v1, Lcom/baidu/location/d/j;->p:I
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_99} :catch_c2

    :goto_99
    return-object v0

    :cond_9a
    invoke-virtual {p1}, Lcom/baidu/location/b/g;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_9f
    invoke-virtual {p1}, Lcom/baidu/location/b/g;->d()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :cond_a5
    invoke-static {p2}, Lcom/baidu/location/b/e;->b(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_aa
    :try_start_aa
    sget v6, Lcom/baidu/location/d/j;->ar:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_c6

    if-eq v3, v1, :cond_b6

    if-eqz v3, :cond_b6

    if-ne v3, v8, :cond_c6

    :cond_b6
    sget v1, Lcom/baidu/location/d/j;->at:I

    if-lt v4, v1, :cond_be

    sget v1, Lcom/baidu/location/d/j;->au:I

    if-le v5, v1, :cond_c6

    :cond_be
    const/4 v1, 0x2

    sput v1, Lcom/baidu/location/d/j;->p:I
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_c1} :catch_c2

    goto :goto_99

    :catch_c2
    move-exception v1

    sput v8, Lcom/baidu/location/d/j;->p:I

    goto :goto_99

    :cond_c6
    const/4 v1, 0x3

    :try_start_c7
    sput v1, Lcom/baidu/location/d/j;->p:I

    goto :goto_99

    :cond_ca
    const/4 v1, 0x3

    sput v1, Lcom/baidu/location/d/j;->p:I
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_cd} :catch_c2

    goto :goto_99
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/16 v2, 0x400

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_a

    :goto_9
    return-object v0

    :cond_a
    new-array v1, v2, [B

    :try_start_c
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_15
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_29

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_23} :catch_24

    goto :goto_15

    :catch_24
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :cond_29
    :try_start_29
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_24

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/d/j;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/Jni;->en1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/baidu/location/BDLocation;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_c

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_10

    :cond_c
    const/16 v1, 0x3e

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static b(Landroid/content/Context;)I
    .registers 5

    const/4 v0, -0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_13

    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_15

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, -0x2

    goto :goto_12

    :catch_15
    move-exception v1

    goto :goto_12
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0, p1, v0, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_16

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    :goto_11
    if-nez v0, :cond_19

    :goto_13
    return v2

    :cond_14
    move v0, v2

    goto :goto_11

    :catch_16
    move-exception v0

    move v0, v1

    goto :goto_11

    :cond_19
    move v2, v1

    goto :goto_13
.end method

.method public static varargs b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    array-length v0, p2

    new-array v2, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    array-length v3, p2

    :goto_9
    if-ge v0, v3, :cond_20

    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v0

    aget-object v4, v2, v0

    const-class v5, Ljava/lang/Integer;

    if-ne v4, v5, :cond_1d

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v0

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_20
    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_2e

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_2e
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static b()Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_14

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_14

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    const-string v1, ""

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_33
    array-length v1, v3

    if-ge v2, v1, :cond_70

    aget-byte v1, v3, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_58

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_68} :catch_6e

    move-result-object v1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v1

    goto :goto_33

    :catch_6e
    move-exception v0

    :cond_6f
    const/4 v0, 0x0

    :cond_70
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/android/bbalbs/common/a/b;->a([B)[B

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "SHA1WithRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/bbalbs/common/a/b;->a([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_34

    move-result v0

    :goto_33
    return v0

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_33
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/location/d/j;->av:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lcom/baidu/location/d/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Lcom/baidu/location/d/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lcom/baidu/location/d/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&per="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/location/d/j;->ay:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v1, -0x1

    if-eqz p0, :cond_32

    :try_start_3
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_30

    move-result v0

    :goto_1b
    move v1, v0

    :goto_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&netc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_30
    move-exception v0

    goto :goto_1c

    :cond_32
    move v0, v1

    goto :goto_1b
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    const-string v0, "https://daup.map.baidu.com/cltr/rcvr"

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/baidu/tempdata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_39

    :cond_36
    :goto_36
    return-object v0

    :cond_37
    move-object v0, v1

    goto :goto_36

    :catch_39
    move-exception v0

    move-object v0, v1

    goto :goto_36
.end method

.method public static g()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/baidu/location/d/j;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/baidu/tempdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static h()Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lldt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2f
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_34

    move-result-object v0

    :goto_33
    return-object v0

    :catch_34
    move-exception v0

    const/4 v0, 0x0

    goto :goto_33
.end method
