.class public interface abstract Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
.super Ljava/lang/Object;
.source "WorkSpaceLauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract bindClassifiedsAdded(Ljava/util/ArrayList;)V
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

.method public abstract bindItems(Ljava/util/ArrayList;)V
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

.method public abstract bindShortcutRemoved(Ljava/util/ArrayList;)V
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

.method public abstract finishBindingItems()V
.end method

.method public abstract setLoadOnResume()Z
.end method

.method public abstract startBinding()V
.end method
