.class public interface abstract Lcom/uprui/executor/RuiHttpListener;
.super Ljava/lang/Object;
.source "RuiHttpListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onCancel(Lcom/uprui/executor/RuiHttpTask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<TT;+",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onFaile(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<TT;+",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onFinish(Lcom/uprui/executor/RuiHttpTask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<TT;+",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onProgress(Lcom/uprui/executor/RuiHttpTask;JJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<TT;+",
            "Ljava/io/OutputStream;",
            ">;JJ)V"
        }
    .end annotation
.end method

.method public abstract onRetry(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/Exception;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<TT;+",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/lang/Exception;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onStart(Lcom/uprui/executor/RuiHttpTask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<TT;+",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSuccess(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<TT;+",
            "Ljava/io/OutputStream;",
            ">;TT;Z)V"
        }
    .end annotation
.end method

.method public abstract onWait(Lcom/uprui/executor/RuiHttpTask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<TT;+",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation
.end method
