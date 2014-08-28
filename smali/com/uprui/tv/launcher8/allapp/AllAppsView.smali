.class public interface abstract Lcom/uprui/tv/launcher8/allapp/AllAppsView;
.super Ljava/lang/Object;
.source "AllAppsView.java"


# virtual methods
.method public abstract addApps(Ljava/util/ArrayList;)V
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

.method public abstract dumpState()V
.end method

.method public abstract getCurrentScreen()I
.end method

.method public abstract isOpaque()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract refreshWorkSpaceView()V
.end method

.method public abstract removeApps(Ljava/util/ArrayList;)V
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

.method public abstract setApps(Ljava/util/ArrayList;Z)V
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

.method public abstract setCurrentScreen(I)V
.end method

.method public abstract setLauncher(Lcom/uprui/tv/launcher8/allapp/AllAppActivity;)V
.end method

.method public abstract surrender()V
.end method

.method public abstract updateApps(Ljava/util/ArrayList;)V
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

.method public abstract zoom(FZ)V
.end method
