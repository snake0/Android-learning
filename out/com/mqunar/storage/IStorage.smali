.class public interface abstract Lcom/mqunar/storage/IStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cleanAllStorage()Z
.end method

.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract getAll()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getBytes(Ljava/lang/String;[B)[B
.end method

.method public abstract getDouble(Ljava/lang/String;D)D
.end method

.method public abstract getFloat(Ljava/lang/String;F)F
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract getSerializable(Ljava/lang/String;Ljava/lang/Class;Ljava/io/Serializable;)Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getShort(Ljava/lang/String;S)S
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract putBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract putBytes(Ljava/lang/String;[B)Z
.end method

.method public abstract putDouble(Ljava/lang/String;D)Z
.end method

.method public abstract putFloat(Ljava/lang/String;F)Z
.end method

.method public abstract putInt(Ljava/lang/String;I)Z
.end method

.method public abstract putLong(Ljava/lang/String;J)Z
.end method

.method public abstract putSerializable(Ljava/lang/String;Ljava/io/Serializable;)Z
.end method

.method public abstract putShort(Ljava/lang/String;S)Z
.end method

.method public abstract putSmoothBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract putSmoothBytes(Ljava/lang/String;[B)Z
.end method

.method public abstract putSmoothDouble(Ljava/lang/String;D)Z
.end method

.method public abstract putSmoothFloat(Ljava/lang/String;F)Z
.end method

.method public abstract putSmoothInt(Ljava/lang/String;I)Z
.end method

.method public abstract putSmoothLong(Ljava/lang/String;J)Z
.end method

.method public abstract putSmoothSerializable(Ljava/lang/String;Ljava/io/Serializable;)Z
.end method

.method public abstract putSmoothShort(Ljava/lang/String;S)Z
.end method

.method public abstract putSmoothString(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract remove(Ljava/lang/String;)Z
.end method
