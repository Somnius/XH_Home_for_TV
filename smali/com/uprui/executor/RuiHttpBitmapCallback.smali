.class public Lcom/uprui/executor/RuiHttpBitmapCallback;
.super Ljava/lang/Object;
.source "RuiHttpBitmapCallback.java"

# interfaces
.implements Lcom/uprui/executor/RuiHttpListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/uprui/executor/RuiHttpListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/uprui/executor/RuiHttpTask;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<",
            "Landroid/graphics/Bitmap;",
            "+",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Landroid/graphics/Bitmap;+Ljava/io/OutputStream;>;"
    return-void
.end method

.method public onFaile(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "description"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<",
            "Landroid/graphics/Bitmap;",
            "+",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Landroid/graphics/Bitmap;+Ljava/io/OutputStream;>;"
    return-void
.end method

.method public onFinish(Lcom/uprui/executor/RuiHttpTask;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<",
            "Landroid/graphics/Bitmap;",
            "+",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Landroid/graphics/Bitmap;+Ljava/io/OutputStream;>;"
    return-void
.end method

.method public onProgress(Lcom/uprui/executor/RuiHttpTask;JJ)V
    .locals 0
    .parameter
    .parameter "totalSize"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<",
            "Landroid/graphics/Bitmap;",
            "+",
            "Ljava/io/OutputStream;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Landroid/graphics/Bitmap;+Ljava/io/OutputStream;>;"
    return-void
.end method

.method public onRetry(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/Exception;I)V
    .locals 0
    .parameter
    .parameter "e"
    .parameter "retryCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<",
            "Landroid/graphics/Bitmap;",
            "+",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/lang/Exception;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Landroid/graphics/Bitmap;+Ljava/io/OutputStream;>;"
    return-void
.end method

.method public onStart(Lcom/uprui/executor/RuiHttpTask;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<",
            "Landroid/graphics/Bitmap;",
            "+",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Landroid/graphics/Bitmap;+Ljava/io/OutputStream;>;"
    return-void
.end method

.method public onSuccess(Lcom/uprui/executor/RuiHttpTask;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter
    .parameter "t"
    .parameter "inCache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<",
            "Landroid/graphics/Bitmap;",
            "+",
            "Ljava/io/OutputStream;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Landroid/graphics/Bitmap;+Ljava/io/OutputStream;>;"
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/uprui/executor/RuiHttpTask;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/uprui/executor/RuiHttpBitmapCallback;->onSuccess(Lcom/uprui/executor/RuiHttpTask;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public onWait(Lcom/uprui/executor/RuiHttpTask;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<",
            "Landroid/graphics/Bitmap;",
            "+",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Landroid/graphics/Bitmap;+Ljava/io/OutputStream;>;"
    return-void
.end method
