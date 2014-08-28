.class public interface abstract Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;
.super Ljava/lang/Object;
.source "ActLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/ActLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemCallback"
.end annotation


# virtual methods
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

.method public abstract computeFourceIndex()V
.end method

.method public abstract setSwitchTag(Z)V
.end method
