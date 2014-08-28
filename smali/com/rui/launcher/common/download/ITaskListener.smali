.class public interface abstract Lcom/rui/launcher/common/download/ITaskListener;
.super Ljava/lang/Object;
.source "ITaskListener.java"


# virtual methods
.method public abstract cancel(Lcom/rui/launcher/common/download/CallableTask;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rui/launcher/common/download/CallableTask",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract completed(Lcom/rui/launcher/common/download/CallableTask;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rui/launcher/common/download/CallableTask",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract failed(Lcom/rui/launcher/common/download/CallableTask;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rui/launcher/common/download/CallableTask",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract progress(Lcom/rui/launcher/common/download/CallableTask;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rui/launcher/common/download/CallableTask",
            "<*>;J)V"
        }
    .end annotation
.end method

.method public abstract started(Lcom/rui/launcher/common/download/CallableTask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rui/launcher/common/download/CallableTask",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract waiting(Lcom/rui/launcher/common/download/CallableTask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rui/launcher/common/download/CallableTask",
            "<*>;)V"
        }
    .end annotation
.end method
