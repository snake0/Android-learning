.class public interface abstract annotation Lcom/mqunar/necro/agent/instrumentation/ReplaceCallSite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/mqunar/necro/agent/instrumentation/ReplaceCallSite;
        isStatic = false
        scope = ""
    .end subannotation
.end annotation


# virtual methods
.method public abstract isStatic()Z
.end method

.method public abstract scope()Ljava/lang/String;
.end method
