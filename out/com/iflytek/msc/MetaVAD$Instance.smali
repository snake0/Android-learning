.class public Lcom/iflytek/msc/MetaVAD$Instance;
.super Ljava/lang/Object;


# static fields
.field public static final INVALID_HANDLE:J = 0x0L

.field public static final SEG:B = 0x2t

.field public static final SEG_FIRST:B = 0x1t

.field public static final SEG_LAST:B = 0x3t

.field public static final SEG_NONE:B


# instance fields
.field public begin:I

.field public end:I

.field public handle:J

.field public rate:I

.field public seg:I

.field public volume:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/msc/MetaVAD$Instance;->handle:J

    iput v2, p0, Lcom/iflytek/msc/MetaVAD$Instance;->rate:I

    iput v2, p0, Lcom/iflytek/msc/MetaVAD$Instance;->begin:I

    iput v2, p0, Lcom/iflytek/msc/MetaVAD$Instance;->end:I

    iput v2, p0, Lcom/iflytek/msc/MetaVAD$Instance;->seg:I

    iput v2, p0, Lcom/iflytek/msc/MetaVAD$Instance;->volume:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/msc/MetaVAD$Instance;->begin:I

    iput v0, p0, Lcom/iflytek/msc/MetaVAD$Instance;->end:I

    iput v0, p0, Lcom/iflytek/msc/MetaVAD$Instance;->seg:I

    iput v0, p0, Lcom/iflytek/msc/MetaVAD$Instance;->volume:I

    return-void
.end method
