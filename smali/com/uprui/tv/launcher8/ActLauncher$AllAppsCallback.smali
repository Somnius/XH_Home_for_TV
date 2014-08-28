.class public interface abstract Lcom/uprui/tv/launcher8/ActLauncher$AllAppsCallback;
.super Ljava/lang/Object;
.source "ActLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/ActLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AllAppsCallback"
.end annotation


# virtual methods
.method public abstract bindAllApplications(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract bindAppsAdded(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppsRemoved(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract bindAppsUpdated(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindClassifiedsAdded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method
