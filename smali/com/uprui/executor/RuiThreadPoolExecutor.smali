.class public Lcom/uprui/executor/RuiThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "RuiThreadPoolExecutor.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final executorSize:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final numTasks:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final runingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected schedulHandler:Landroid/os/Handler;

.field protected schedulQueue:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected final schedulThread:Landroid/os/HandlerThread;

.field private final startTime:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final totalTime:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/uprui/executor/RuiThreadPoolExecutor;->executorSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 33
    const-class v0, Lcom/uprui/executor/RuiThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uprui/executor/RuiThreadPoolExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 4
    .parameter "corePoolSize"
    .parameter "maximumPoolSize"
    .parameter "keepAliveTime"
    .parameter "unit"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p6, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 23
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RuiSchedulThread-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/uprui/executor/RuiThreadPoolExecutor;->executorSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->schedulThread:Landroid/os/HandlerThread;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->schedulQueue:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->startTime:Ljava/lang/ThreadLocal;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->numTasks:Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->totalTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->runingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 61
    invoke-direct {p0, p6}, Lcom/uprui/executor/RuiThreadPoolExecutor;->init(Ljava/util/concurrent/BlockingQueue;)V

    .line 62
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 4
    .parameter "corePoolSize"
    .parameter "maximumPoolSize"
    .parameter "keepAliveTime"
    .parameter "unit"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p6, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 23
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RuiSchedulThread-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/uprui/executor/RuiThreadPoolExecutor;->executorSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->schedulThread:Landroid/os/HandlerThread;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->schedulQueue:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->startTime:Ljava/lang/ThreadLocal;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->numTasks:Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->totalTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->runingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 38
    invoke-direct {p0, p6}, Lcom/uprui/executor/RuiThreadPoolExecutor;->init(Ljava/util/concurrent/BlockingQueue;)V

    .line 39
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 4
    .parameter "corePoolSize"
    .parameter "maximumPoolSize"
    .parameter "keepAliveTime"
    .parameter "unit"
    .parameter
    .parameter "threadFactory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .line 54
    .local p6, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 23
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RuiSchedulThread-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/uprui/executor/RuiThreadPoolExecutor;->executorSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->schedulThread:Landroid/os/HandlerThread;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->schedulQueue:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->startTime:Ljava/lang/ThreadLocal;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->numTasks:Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->totalTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->runingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 55
    invoke-direct {p0, p6}, Lcom/uprui/executor/RuiThreadPoolExecutor;->init(Ljava/util/concurrent/BlockingQueue;)V

    .line 56
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 4
    .parameter "corePoolSize"
    .parameter "maximumPoolSize"
    .parameter "keepAliveTime"
    .parameter "unit"
    .parameter
    .parameter "threadFactory"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .line 46
    .local p6, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 23
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RuiSchedulThread-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/uprui/executor/RuiThreadPoolExecutor;->executorSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->schedulThread:Landroid/os/HandlerThread;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->schedulQueue:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->startTime:Ljava/lang/ThreadLocal;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->numTasks:Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->totalTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->runingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 47
    invoke-direct {p0, p6}, Lcom/uprui/executor/RuiThreadPoolExecutor;->init(Ljava/util/concurrent/BlockingQueue;)V

    .line 48
    return-void
.end method

.method private init(Ljava/util/concurrent/BlockingQueue;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    iget-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->schedulThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->schedulThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->schedulHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "r"
    .parameter "t"

    .prologue
    .line 105
    :try_start_0
    iget-object v4, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->runingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 106
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 107
    .local v0, endTime:J
    iget-object v4, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->startTime:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v2, v0, v4

    .line 108
    .local v2, taskTime:J
    iget-object v4, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->numTasks:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 109
    iget-object v4, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->totalTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 115
    return-void

    .line 111
    .end local v0           #endTime:J
    .end local v2           #taskTime:J
    :catchall_0
    move-exception v4

    .line 112
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 113
    throw v4
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "t"
    .parameter "r"

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 97
    iget-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->runingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->startTime:Ljava/lang/ThreadLocal;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "command"

    .prologue
    .line 73
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public executeDelay(Ljava/lang/Runnable;J)V
    .locals 2
    .parameter "command"
    .parameter "delay"

    .prologue
    .line 79
    new-instance v0, Lcom/uprui/executor/RuiThreadPoolExecutor$1;

    invoke-direct {v0, p0, p1}, Lcom/uprui/executor/RuiThreadPoolExecutor$1;-><init>(Lcom/uprui/executor/RuiThreadPoolExecutor;Ljava/lang/Runnable;)V

    .line 88
    .local v0, runnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->schedulQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->schedulHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "task"

    .prologue
    .line 120
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->schedulQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 121
    .local v0, remove:Z
    :goto_0
    return v0

    .line 120
    .end local v0           #remove:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected terminated()V
    .locals 8

    .prologue
    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->schedulThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 129
    sget-object v0, Lcom/uprui/executor/RuiThreadPoolExecutor;->TAG:Ljava/lang/String;

    const-string v1, "RuiThreadPool terminated: avg time=%dns"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->totalTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v6, p0, Lcom/uprui/executor/RuiThreadPoolExecutor;->numTasks:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V

    .line 134
    return-void

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V

    .line 132
    throw v0
.end method
