.class public abstract Lcom/rui/launcher/common/download/CallableTask;
.super Ljava/lang/Object;
.source "CallableTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/rui/launcher/common/download/CallableTask",
        "<TV;>;>;"
    }
.end annotation


# static fields
.field public static final PRIORITY_HIGH:I = 0xa

.field public static final PRIORITY_LOW:I = 0x1

.field public static final PRIORITY_NORMAL:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static counter:I


# instance fields
.field protected canceled:Z

.field protected id:I

.field protected listener:Lcom/rui/launcher/common/download/ITaskListener;

.field protected priority:I

.field protected progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/rui/launcher/common/download/CallableTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rui/launcher/common/download/CallableTask;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/rui/launcher/common/download/CallableTask;->counter:I

    return-void
.end method

.method public constructor <init>(ILcom/rui/launcher/common/download/ITaskListener;)V
    .locals 2
    .parameter "priority"
    .parameter "l"

    .prologue
    .line 26
    .local p0, this:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rui/launcher/common/download/CallableTask;->canceled:Z

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/rui/launcher/common/download/CallableTask;->progress:I

    .line 27
    sget v0, Lcom/rui/launcher/common/download/CallableTask;->counter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/rui/launcher/common/download/CallableTask;->counter:I

    iput v0, p0, Lcom/rui/launcher/common/download/CallableTask;->id:I

    .line 28
    iput p1, p0, Lcom/rui/launcher/common/download/CallableTask;->priority:I

    .line 29
    iput-object p2, p0, Lcom/rui/launcher/common/download/CallableTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    .line 30
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<TV;>;"
    const/4 v0, 0x0

    .line 81
    .local v0, v:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/rui/launcher/common/download/CallableTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/rui/launcher/common/download/CallableTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    invoke-interface {v1, p0}, Lcom/rui/launcher/common/download/ITaskListener;->started(Lcom/rui/launcher/common/download/CallableTask;)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/rui/launcher/common/download/CallableTask;->get()Ljava/lang/Object;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/rui/launcher/common/download/CallableTask;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/rui/launcher/common/download/CallableTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/rui/launcher/common/download/ITaskListener;->cancel(Lcom/rui/launcher/common/download/CallableTask;Ljava/lang/Throwable;)V

    .line 98
    :cond_1
    :goto_0
    return-object v0

    .line 92
    :cond_2
    invoke-virtual {p0}, Lcom/rui/launcher/common/download/CallableTask;->onPreDone()V

    .line 94
    iget-object v1, p0, Lcom/rui/launcher/common/download/CallableTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/rui/launcher/common/download/CallableTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    invoke-interface {v1, p0, v0}, Lcom/rui/launcher/common/download/ITaskListener;->completed(Lcom/rui/launcher/common/download/CallableTask;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected cancel()V
    .locals 1

    .prologue
    .line 33
    .local p0, this:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<TV;>;"
    monitor-enter p0

    .line 34
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/rui/launcher/common/download/CallableTask;->canceled:Z

    .line 33
    monitor-exit p0

    .line 36
    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public compareTo(Lcom/rui/launcher/common/download/CallableTask;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rui/launcher/common/download/CallableTask",
            "<TV;>;)I"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, this:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<TV;>;"
    .local p1, o:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<TV;>;"
    iget v0, p0, Lcom/rui/launcher/common/download/CallableTask;->priority:I

    iget v1, p1, Lcom/rui/launcher/common/download/CallableTask;->priority:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 111
    :cond_0
    iget v0, p0, Lcom/rui/launcher/common/download/CallableTask;->priority:I

    iget v1, p1, Lcom/rui/launcher/common/download/CallableTask;->priority:I

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/rui/launcher/common/download/CallableTask;

    invoke-virtual {p0, p1}, Lcom/rui/launcher/common/download/CallableTask;->compareTo(Lcom/rui/launcher/common/download/CallableTask;)I

    move-result v0

    return v0
.end method

.method protected abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract getTag()Ljava/lang/Object;
.end method

.method protected isCanceled()Z
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<TV;>;"
    monitor-enter p0

    .line 40
    :try_start_0
    iget-boolean v0, p0, Lcom/rui/launcher/common/download/CallableTask;->canceled:Z

    monitor-exit p0

    return v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract onPreDone()V
.end method

.method protected abstract onPreFailed()V
.end method

.method protected abstract onPreStart()V
.end method

.method public run()V
    .locals 4

    .prologue
    .line 60
    .local p0, this:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<TV;>;"
    const/4 v1, 0x0

    iput v1, p0, Lcom/rui/launcher/common/download/CallableTask;->progress:I

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/rui/launcher/common/download/CallableTask;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/rui/launcher/common/download/CallableTask;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/rui/launcher/common/download/CallableTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/rui/launcher/common/download/ITaskListener;->cancel(Lcom/rui/launcher/common/download/CallableTask;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 69
    :cond_1
    sget-object v1, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v2, Lcom/rui/launcher/common/download/CallableTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    invoke-virtual {p0}, Lcom/rui/launcher/common/download/CallableTask;->onPreFailed()V

    .line 71
    iget-object v1, p0, Lcom/rui/launcher/common/download/CallableTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/rui/launcher/common/download/CallableTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    invoke-interface {v1, p0, v0}, Lcom/rui/launcher/common/download/ITaskListener;->failed(Lcom/rui/launcher/common/download/CallableTask;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected setCancel()V
    .locals 2

    .prologue
    .line 45
    .local p0, this:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<TV;>;"
    iget-object v0, p0, Lcom/rui/launcher/common/download/CallableTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/rui/launcher/common/download/CallableTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/rui/launcher/common/download/ITaskListener;->cancel(Lcom/rui/launcher/common/download/CallableTask;Ljava/lang/Throwable;)V

    .line 48
    :cond_0
    return-void
.end method

.method protected setProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 102
    .local p0, this:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<TV;>;"
    iput p1, p0, Lcom/rui/launcher/common/download/CallableTask;->progress:I

    .line 103
    iget-object v0, p0, Lcom/rui/launcher/common/download/CallableTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/rui/launcher/common/download/CallableTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    int-to-long v1, p1

    invoke-interface {v0, p0, v1, v2}, Lcom/rui/launcher/common/download/ITaskListener;->progress(Lcom/rui/launcher/common/download/CallableTask;J)V

    .line 106
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    .local p0, this:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "# [priority="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/rui/launcher/common/download/CallableTask;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
