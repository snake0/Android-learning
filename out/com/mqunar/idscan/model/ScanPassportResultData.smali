.class public Lcom/mqunar/idscan/model/ScanPassportResultData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public birthday:Ljava/lang/String;

.field public certs_cardlssuePlace2Code:Ljava/lang/String;

.field public certs_cardlssuePlaceName:Ljava/lang/String;

.field public certs_invalidday:Ljava/lang/String;

.field public certs_name:Ljava/lang/String;

.field public certs_number:Ljava/lang/String;

.field public certs_type:Ljava/lang/String;

.field public cvName:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field public isPP:Z

.field public name:Ljava/lang/String;

.field public nationality2Code:Ljava/lang/String;

.field public nationalityName:Ljava/lang/String;

.field public ok:Z

.field public scanResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/idscan/model/ScanPassportResultData;->ok:Z

    return-void
.end method
