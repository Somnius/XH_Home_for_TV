.class public Lcom/uprui/executor/RuiHttpThreadPoolExecutor;
.super Lcom/uprui/executor/RuiThreadPoolExecutor;
.source "RuiHttpThreadPoolExecutor.java"


# static fields
.field public static final DISCONNECT_STATUS:I = 0x0

.field public static final MOBILE_STATUS:I = 0x1

.field public static final WIFI_STATUS:I = 0x2


# instance fields
.field private httpDelayQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/uprui/executor/RuiHttpTask",
            "<**>;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final httpLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final httpTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/executor/RuiHttpTask",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
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
    .line 50
    .local p6, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p6}, Lcom/uprui/executor/RuiThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 19
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpTasks:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpDelayQueue:Ljava/util/HashMap;

    .line 52
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
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
    .line 26
    .line 27
    .local p6, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p7}, Lcom/uprui/executor/RuiThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 19
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpTasks:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpDelayQueue:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
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
    .line 43
    .line 44
    .local p6, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p7}, Lcom/uprui/executor/RuiThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 19
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpTasks:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpDelayQueue:Ljava/util/HashMap;

    .line 46
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
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
    .line 35
    .line 36
    .local p6, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p8}, Lcom/uprui/executor/RuiThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 19
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpTasks:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpDelayQueue:Ljava/util/HashMap;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/uprui/executor/RuiHttpThreadPoolExecutor;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$1(Lcom/uprui/executor/RuiHttpThreadPoolExecutor;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpDelayQueue:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "r"
    .parameter "t"

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/uprui/executor/RuiThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "t"
    .parameter "r"

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 59
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 63
    invoke-super {p0, p1, p2}, Lcom/uprui/executor/RuiThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 64
    return-void

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 62
    throw v0
.end method

.method public cancelAllHttp()I
    .locals 10

    .prologue
    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v1, cancelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/executor/RuiHttpTask<**>;>;"
    const/4 v6, 0x0

    .line 133
    .local v6, size:I
    :try_start_0
    iget-object v8, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 134
    iget-object v8, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->runingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 135
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 143
    iget-object v8, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object v8, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpDelayQueue:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 146
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 147
    .local v2, delayIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/uprui/executor/RuiHttpTask<**>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_2

    .line 153
    iget-object v8, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 156
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 157
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-lt v3, v6, :cond_3

    .line 161
    return v6

    .line 136
    .end local v2           #delayIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/uprui/executor/RuiHttpTask<**>;>;"
    .end local v3           #i:I
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 137
    .local v5, runnable:Ljava/lang/Runnable;
    instance-of v8, v5, Lcom/uprui/executor/RuiHttpTask;

    if-eqz v8, :cond_0

    .line 138
    move-object v0, v5

    check-cast v0, Lcom/uprui/executor/RuiHttpTask;

    move-object v7, v0

    .line 139
    .local v7, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<**>;"
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    .end local v5           #runnable:Ljava/lang/Runnable;
    .end local v7           #task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<**>;"
    :catchall_0
    move-exception v8

    .line 153
    iget-object v9, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 154
    throw v8

    .line 148
    .restart local v2       #delayIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/uprui/executor/RuiHttpTask<**>;>;"
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uprui/executor/RuiHttpTask;

    .line 149
    .restart local v7       #task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<**>;"
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 158
    .end local v7           #task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<**>;"
    .restart local v3       #i:I
    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/uprui/executor/RuiHttpTask;

    invoke-virtual {v8}, Lcom/uprui/executor/RuiHttpTask;->cancelThreadSafe()Z

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public cancelHttp(I)I
    .locals 10
    .parameter "createID"

    .prologue
    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v1, cancelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/executor/RuiHttpTask<**>;>;"
    const/4 v6, 0x0

    .line 214
    .local v6, size:I
    :try_start_0
    iget-object v8, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 215
    iget-object v8, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->runingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 216
    .local v4, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 226
    iget-object v8, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpTasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 227
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v6, :cond_3

    .line 234
    iget-object v8, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpDelayQueue:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 235
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 236
    .local v2, delayIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/uprui/executor/RuiHttpTask<**>;>;"
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_5

    .line 243
    iget-object v8, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 246
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 247
    const/4 v3, 0x0

    :goto_3
    if-lt v3, v6, :cond_6

    .line 251
    return v6

    .line 217
    .end local v2           #delayIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/uprui/executor/RuiHttpTask<**>;>;"
    .end local v3           #i:I
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 218
    .local v5, runnable:Ljava/lang/Runnable;
    instance-of v8, v5, Lcom/uprui/executor/RuiHttpTask;

    if-eqz v8, :cond_0

    .line 219
    move-object v0, v5

    check-cast v0, Lcom/uprui/executor/RuiHttpTask;

    move-object v7, v0

    .line 220
    .local v7, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<**>;"
    invoke-virtual {v7}, Lcom/uprui/executor/RuiHttpTask;->getCreateId()I

    move-result v8

    if-ne v8, p1, :cond_0

    .line 221
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 242
    .end local v4           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    .end local v5           #runnable:Ljava/lang/Runnable;
    .end local v7           #task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<**>;"
    :catchall_0
    move-exception v8

    .line 243
    iget-object v9, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 244
    throw v8

    .line 228
    .restart local v3       #i:I
    .restart local v4       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uprui/executor/RuiHttpTask;

    .line 229
    .restart local v7       #task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<**>;"
    invoke-virtual {v7}, Lcom/uprui/executor/RuiHttpTask;->getCreateId()I

    move-result v8

    if-ne v8, p1, :cond_4

    .line 230
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 237
    .end local v7           #task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<**>;"
    .restart local v2       #delayIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/uprui/executor/RuiHttpTask<**>;>;"
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uprui/executor/RuiHttpTask;

    .line 238
    .restart local v7       #task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<**>;"
    invoke-virtual {v7}, Lcom/uprui/executor/RuiHttpTask;->getCreateId()I

    move-result v8

    if-ne v8, p1, :cond_1

    .line 239
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 248
    .end local v7           #task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<**>;"
    :cond_6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/uprui/executor/RuiHttpTask;

    invoke-virtual {v8}, Lcom/uprui/executor/RuiHttpTask;->cancelThreadSafe()Z

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public cancelHttpGroup(Ljava/lang/Object;)I
    .locals 10
    .parameter "groupKey"

    .prologue
    .line 165
    if-nez p1, :cond_1

    .line 166
    const/4 v6, 0x0

    .line 207
    :cond_0
    return v6

    .line 167
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v1, cancelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/executor/RuiHttpTask<**>;>;"
    const/4 v6, 0x0

    .line 170
    .local v6, size:I
    :try_start_0
    iget-object v8, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 171
    iget-object v8, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->runingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 172
    .local v4, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 182
    iget-object v8, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpTasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 183
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v6, :cond_5

    .line 190
    iget-object v8, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpDelayQueue:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 191
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 192
    .local v2, delayIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/uprui/executor/RuiHttpTask<**>;>;"
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_7

    .line 199
    iget-object v8, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 202
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 203
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_0

    .line 204
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/uprui/executor/RuiHttpTask;

    invoke-virtual {v8}, Lcom/uprui/executor/RuiHttpTask;->cancelThreadSafe()Z

    .line 203
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 173
    .end local v2           #delayIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/uprui/executor/RuiHttpTask<**>;>;"
    .end local v3           #i:I
    :cond_4
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 174
    .local v5, runnable:Ljava/lang/Runnable;
    instance-of v8, v5, Lcom/uprui/executor/RuiHttpTask;

    if-eqz v8, :cond_2

    .line 175
    move-object v0, v5

    check-cast v0, Lcom/uprui/executor/RuiHttpTask;

    move-object v7, v0

    .line 176
    .local v7, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<**>;"
    invoke-virtual {v7}, Lcom/uprui/executor/RuiHttpTask;->getCancelGroup()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, p1, :cond_2

    .line 177
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    .end local v4           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    .end local v5           #runnable:Ljava/lang/Runnable;
    .end local v7           #task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<**>;"
    :catchall_0
    move-exception v8

    .line 199
    iget-object v9, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 200
    throw v8

    .line 184
    .restart local v3       #i:I
    .restart local v4       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_5
    :try_start_2
    iget-object v8, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uprui/executor/RuiHttpTask;

    .line 185
    .restart local v7       #task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<**>;"
    invoke-virtual {v7}, Lcom/uprui/executor/RuiHttpTask;->getCancelGroup()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, p1, :cond_6

    .line 186
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 193
    .end local v7           #task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<**>;"
    .restart local v2       #delayIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/uprui/executor/RuiHttpTask<**>;>;"
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uprui/executor/RuiHttpTask;

    .line 194
    .restart local v7       #task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<**>;"
    invoke-virtual {v7}, Lcom/uprui/executor/RuiHttpTask;->getCancelGroup()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, p1, :cond_3

    .line 195
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public executeHttp(Lcom/uprui/executor/RuiHttpTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<**>;"
    :try_start_0
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 82
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-super {p0, p1}, Lcom/uprui/executor/RuiThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 88
    return-void

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 86
    throw v0
.end method

.method public executeHttpDelay(Lcom/uprui/executor/RuiHttpTask;J)V
    .locals 3
    .parameter
    .parameter "delay"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<**>;J)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<**>;"
    new-instance v0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor$1;

    invoke-direct {v0, p0, p1}, Lcom/uprui/executor/RuiHttpThreadPoolExecutor$1;-><init>(Lcom/uprui/executor/RuiHttpThreadPoolExecutor;Lcom/uprui/executor/RuiHttpTask;)V

    .line 120
    .local v0, runnable:Ljava/lang/Runnable;
    :try_start_0
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 121
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpDelayQueue:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->schedulHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 127
    return-void

    .line 123
    :catchall_0
    move-exception v1

    .line 124
    iget-object v2, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 125
    throw v1
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "task"

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 95
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 96
    invoke-super {p0, p1}, Lcom/uprui/executor/RuiThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpDelayQueue:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 96
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 99
    throw v0
.end method

.method protected terminated()V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->cancelAllHttp()I

    .line 76
    invoke-super {p0}, Lcom/uprui/executor/RuiThreadPoolExecutor;->terminated()V

    .line 77
    return-void
.end method
