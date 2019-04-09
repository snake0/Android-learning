.class public Lcom/mqunar/cock/network/tcpmodel/rec/GroupChangedInfo$Alter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public addDetail:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mqunar/cock/network/tcpmodel/MemberInfo;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public notice:Ljava/lang/String;

.field public rmv:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
