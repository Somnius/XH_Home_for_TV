.class Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rui/launcher/common/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadThreadPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool$PriorityThreadFactory;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x2

.field private static final KEEP_ALIVE_TIME:I = 0xb4

.field private static final MAX_POOL_SIZE:I = 0x2

.field private static final TASK_QOS_PERIOD:I = 0xa

.field private static final WORK_QUEUE_CAPACITY:I = 0xa

.field private static handler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private static mWorkQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static sTaskBufferQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAccessBufferThread:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field final taskHandler:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 315
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 316
    const/16 v1, 0xa

    .line 315
    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->mWorkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 319
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->sTaskBufferQueue:Ljava/util/Queue;

    .line 322
    new-instance v0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool$1;

    invoke-direct {v0}, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool$1;-><init>()V

    sput-object v0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 349
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v1, 0x2

    .line 364
    const-wide/16 v3, 0xb4

    .line 365
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->mWorkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v7, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool$PriorityThreadFactory;

    invoke-direct {v7}, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool$PriorityThreadFactory;-><init>()V

    .line 366
    sget-object v8, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 334
    new-instance v0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool$2;

    invoke-direct {v0, p0}, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool$2;-><init>(Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;)V

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->mAccessBufferThread:Ljava/lang/Runnable;

    .line 346
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 353
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 354
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->mAccessBufferThread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->taskHandler:Ljava/util/concurrent/ScheduledFuture;

    .line 367
    iput-object p1, p0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->mContext:Landroid/content/Context;

    .line 368
    return-void
.end method

.method static synthetic access$0()Ljava/util/Queue;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->sTaskBufferQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;)Z
    .locals 1
    .parameter

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->hasMoreAcquire()Z

    move-result v0

    return v0
.end method

.method private hasMoreAcquire()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 357
    sget-object v1, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->sTaskBufferQueue:Ljava/util/Queue;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->sTaskBufferQueue:Ljava/util/Queue;

    .line 358
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "r"
    .parameter "t"

    .prologue
    .line 372
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 373
    instance-of v0, p1, Lcom/rui/launcher/common/download/DownloadTask;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/rui/launcher/common/download/DownloadTask;

    .end local p1
    invoke-virtual {p1}, Lcom/rui/launcher/common/download/DownloadTask;->getTag()Lcom/rui/launcher/common/download/DownloadInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/rui/launcher/common/download/DownloadInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/rui/launcher/common/download/DownloadManager;->removeId(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/rui/launcher/common/download/DownloadManager;->access$1(Landroid/content/Context;Ljava/lang/String;)V

    .line 376
    :cond_0
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "t"
    .parameter "r"

    .prologue
    .line 380
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 381
    instance-of v0, p2, Lcom/rui/launcher/common/download/DownloadTask;

    if-eqz v0, :cond_0

    .line 382
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->mContext:Landroid/content/Context;

    move-object v0, p2

    check-cast v0, Lcom/rui/launcher/common/download/DownloadTask;

    invoke-virtual {v0}, Lcom/rui/launcher/common/download/DownloadTask;->getTag()Lcom/rui/launcher/common/download/DownloadInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/rui/launcher/common/download/DownloadInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Lcom/rui/launcher/common/download/DownloadTask;

    .end local p2
    invoke-virtual {p2}, Lcom/rui/launcher/common/download/DownloadTask;->getTag()Lcom/rui/launcher/common/download/DownloadInfo;

    move-result-object v2

    iget v2, v2, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    #calls: Lcom/rui/launcher/common/download/DownloadManager;->addId(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v1, v0, v2}, Lcom/rui/launcher/common/download/DownloadManager;->access$2(Landroid/content/Context;Ljava/lang/String;I)V

    .line 384
    :cond_0
    return-void
.end method

.method public cancelTask(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->getTask(I)Lcom/rui/launcher/common/download/CallableTask;

    move-result-object v0

    .line 388
    .local v0, t:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<*>;"
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/rui/launcher/common/download/CallableTask;->cancel()V

    .line 390
    invoke-virtual {v0}, Lcom/rui/launcher/common/download/CallableTask;->isCanceled()Z

    move-result v1

    .line 392
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTask(I)Lcom/rui/launcher/common/download/CallableTask;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/rui/launcher/common/download/CallableTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 396
    sget-object v2, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->mWorkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 397
    sget-object v2, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->mWorkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 398
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 405
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 399
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rui/launcher/common/download/CallableTask;

    .line 400
    .local v1, t:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<*>;"
    iget v2, v1, Lcom/rui/launcher/common/download/CallableTask;->id:I

    if-ne p1, v2, :cond_0

    goto :goto_0
.end method

.method public isBusy()Z
    .locals 2

    .prologue
    .line 413
    sget-object v0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->mWorkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWaiting()Z
    .locals 1

    .prologue
    .line 409
    sget-object v0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->mWorkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeHead()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 421
    sget-object v0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->mWorkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method

.method public removeInQueue(Ljava/lang/Runnable;)Z
    .locals 1
    .parameter "r"

    .prologue
    .line 417
    sget-object v0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->mWorkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
