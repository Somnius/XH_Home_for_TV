.class public interface abstract Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;
.super Ljava/lang/Object;
.source "TvWorkspaceCallback.java"


# virtual methods
.method public abstract LoadEndFromDB(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadEndFormNetwork(Ljava/util/ArrayList;Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation
.end method

.method public abstract loadErrorFormNetwork(Ljava/lang/Exception;Landroid/content/Context;)V
.end method

.method public abstract loadPositionFormNetwork(ILandroid/content/Context;)V
.end method

.method public abstract loadStartFormNetwork(Landroid/content/Context;)V
.end method

.method public abstract loadWaitFormNetwork(Landroid/content/Context;)V
.end method
