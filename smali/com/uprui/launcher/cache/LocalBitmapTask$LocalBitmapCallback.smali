.class public interface abstract Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;
.super Ljava/lang/Object;
.source "LocalBitmapTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/launcher/cache/LocalBitmapTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocalBitmapCallback"
.end annotation


# virtual methods
.method public abstract onCancel(Lcom/uprui/launcher/cache/LocalBitmapTask;)V
.end method

.method public abstract onError(Lcom/uprui/launcher/cache/LocalBitmapTask;Ljava/lang/String;)V
.end method

.method public abstract onFinish(Lcom/uprui/launcher/cache/LocalBitmapTask;)V
.end method

.method public abstract onProgress(Lcom/uprui/launcher/cache/LocalBitmapTask;I)V
.end method

.method public abstract onStart(Lcom/uprui/launcher/cache/LocalBitmapTask;)V
.end method

.method public abstract onSucess(Lcom/uprui/launcher/cache/LocalBitmapTask;Landroid/graphics/Bitmap;Z)V
.end method
