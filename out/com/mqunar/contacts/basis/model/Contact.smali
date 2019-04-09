.class public Lcom/mqunar/contacts/basis/model/Contact;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/mqunar/xutils/dbutils/annotation/Table;
    name = "contacts"
.end annotation


# static fields
.field public static final NUMBER:Ljava/lang/String; = "#"

.field public static final OTHER:Ljava/lang/String; = "*"


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private phone:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mobile"
    .end annotation
.end field

.field private prefix:Ljava/lang/String;
    .annotation runtime Lcom/mqunar/xutils/dbutils/annotation/Transient;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    if-ne p0, p1, :cond_5

    .line 74
    :cond_4
    :goto_4
    return v0

    .line 69
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    .line 71
    :cond_13
    check-cast p1, Lcom/mqunar/contacts/basis/model/Contact;

    .line 73
    iget-object v2, p0, Lcom/mqunar/contacts/basis/model/Contact;->name:Ljava/lang/String;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/mqunar/contacts/basis/model/Contact;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/contacts/basis/model/Contact;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_23
    move v0, v1

    goto :goto_4

    :cond_25
    iget-object v2, p1, Lcom/mqunar/contacts/basis/model/Contact;->name:Ljava/lang/String;

    if-nez v2, :cond_23

    .line 74
    :cond_29
    iget-object v2, p0, Lcom/mqunar/contacts/basis/model/Contact;->phone:Ljava/lang/String;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/mqunar/contacts/basis/model/Contact;->phone:Ljava/lang/String;

    iget-object v3, p1, Lcom/mqunar/contacts/basis/model/Contact;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_37
    move v0, v1

    goto :goto_4

    :cond_39
    iget-object v2, p1, Lcom/mqunar/contacts/basis/model/Contact;->phone:Ljava/lang/String;

    if-nez v2, :cond_37

    goto :goto_4
.end method

.method public getId()I
    .registers 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .prologue
    .line 30
    iget v0, p0, Lcom/mqunar/contacts/basis/model/Contact;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mqunar/contacts/basis/model/Contact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mobile"
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mqunar/contacts/basis/model/Contact;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mqunar/contacts/basis/model/Contact;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/mqunar/contacts/basis/model/Contact;->name:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mqunar/contacts/basis/model/Contact;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 81
    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mqunar/contacts/basis/model/Contact;->phone:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v1, p0, Lcom/mqunar/contacts/basis/model/Contact;->phone:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_17
    add-int/2addr v0, v1

    .line 82
    return v0

    :cond_19
    move v0, v1

    .line 80
    goto :goto_b
.end method

.method public setId(I)V
    .registers 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .prologue
    .line 35
    iput p1, p0, Lcom/mqunar/contacts/basis/model/Contact;->id:I

    .line 36
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mqunar/contacts/basis/model/Contact;->name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mobile"
    .end annotation

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mqunar/contacts/basis/model/Contact;->phone:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mqunar/contacts/basis/model/Contact;->prefix:Ljava/lang/String;

    .line 64
    return-void
.end method
