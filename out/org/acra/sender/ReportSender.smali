.class public interface abstract Lorg/acra/sender/ReportSender;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract send(Landroid/content/Context;Lorg/acra/collector/CrashReportData;Lorg/acra/config/ACRAConfiguration;Ljava/io/File;Ljava/lang/String;I)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/acra/collector/CrashReportData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
