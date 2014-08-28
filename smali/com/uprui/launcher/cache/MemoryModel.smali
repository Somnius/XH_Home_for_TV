.class public Lcom/uprui/launcher/cache/MemoryModel;
.super Ljava/lang/Object;
.source "MemoryModel.java"

# interfaces
.implements Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MemoryModel"

.field private static mMemoryTask:Lcom/uprui/launcher/cache/MemoryModel;


# instance fields
.field private cache:Lcom/uprui/launcher/cache/MemoryCache;

.field private context:Landroid/content/Context;

.field private deferredHandler:Lcom/uprui/launcher/cache/DeferredHandler;

.field private handler:Landroid/os/Handler;

.field private httpClient:Lcom/uprui/executor/RuiHttpClient;

.field private httpLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private loaddingNetworkTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/uprui/executor/HttpKey;",
            "Lcom/uprui/executor/RuiHttpTask;",
            ">;"
        }
    .end annotation
.end field

.field private loadingLocalTask:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/uprui/launcher/cache/LocalBitmapTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/uprui/launcher/cache/MemoryModel;->handler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcom/uprui/launcher/cache/DeferredHandler;

    invoke-direct {v0}, Lcom/uprui/launcher/cache/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/uprui/launcher/cache/MemoryModel;->deferredHandler:Lcom/uprui/launcher/cache/DeferredHandler;

    .line 42
    new-instance v0, Lcom/uprui/executor/RuiHttpClient;

    invoke-direct {v0}, Lcom/uprui/executor/RuiHttpClient;-><init>()V

    iput-object v0, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpClient:Lcom/uprui/executor/RuiHttpClient;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/uprui/launcher/cache/MemoryModel;Lcom/uprui/executor/RuiHttpTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/uprui/launcher/cache/MemoryModel;->removeNetworkTask(Lcom/uprui/executor/RuiHttpTask;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/uprui/launcher/cache/MemoryModel;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/uprui/launcher/cache/MemoryModel;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/uprui/launcher/cache/MemoryModel;->mMemoryTask:Lcom/uprui/launcher/cache/MemoryModel;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/uprui/launcher/cache/MemoryModel;

    invoke-direct {v0}, Lcom/uprui/launcher/cache/MemoryModel;-><init>()V

    sput-object v0, Lcom/uprui/launcher/cache/MemoryModel;->mMemoryTask:Lcom/uprui/launcher/cache/MemoryModel;

    .line 49
    :cond_0
    sget-object v0, Lcom/uprui/launcher/cache/MemoryModel;->mMemoryTask:Lcom/uprui/launcher/cache/MemoryModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeNetworkTask(Lcom/uprui/executor/RuiHttpTask;)V
    .locals 5
    .parameter "task"

    .prologue
    .line 93
    :try_start_0
    iget-object v3, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 94
    iget-object v3, p0, Lcom/uprui/launcher/cache/MemoryModel;->loaddingNetworkTasks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 95
    .local v2, size:I
    new-array v1, v2, [Lcom/uprui/executor/HttpKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .local v1, keys:[Lcom/uprui/executor/HttpKey;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 102
    iget-object v3, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 104
    return-void

    .line 97
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/uprui/launcher/cache/MemoryModel;->loaddingNetworkTasks:Ljava/util/HashMap;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/uprui/launcher/cache/MemoryModel;->loaddingNetworkTasks:Ljava/util/HashMap;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0           #i:I
    .end local v1           #keys:[Lcom/uprui/executor/HttpKey;
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    .line 102
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 103
    throw v3
.end method


# virtual methods
.method public getLoadHttpBitmapInFile(Ljava/lang/String;Lcom/uprui/executor/RequestParams;Lcom/uprui/executor/RuiHttpFileCallback;)Lcom/uprui/executor/RuiHttpTask;
    .locals 4
    .parameter "url"
    .parameter "params"
    .parameter "callback"

    .prologue
    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 109
    new-instance v0, Lcom/uprui/executor/HttpKey;

    invoke-direct {v0, p1, p2}, Lcom/uprui/executor/HttpKey;-><init>(Ljava/lang/String;Lcom/uprui/executor/RequestParams;)V

    .line 110
    .local v0, key:Lcom/uprui/executor/HttpKey;
    iget-object v2, p0, Lcom/uprui/launcher/cache/MemoryModel;->loaddingNetworkTasks:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uprui/executor/RuiHttpTask;

    .line 111
    .local v1, task:Lcom/uprui/executor/RuiHttpTask;
    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v1, p3}, Lcom/uprui/executor/RuiHttpTask;->addHttpListener(Lcom/uprui/executor/RuiHttpListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 129
    return-object v1

    .line 114
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpClient:Lcom/uprui/executor/RuiHttpClient;

    invoke-virtual {v2, p1, p2, p3}, Lcom/uprui/executor/RuiHttpClient;->getHttp(Ljava/lang/String;Lcom/uprui/executor/RequestParams;Lcom/uprui/executor/RuiHttpListener;)Lcom/uprui/executor/RuiHttpTask;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_0

    .line 116
    new-instance v2, Lcom/uprui/launcher/cache/MemoryModel$1;

    invoke-virtual {p3}, Lcom/uprui/executor/RuiHttpFileCallback;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/uprui/launcher/cache/MemoryModel$1;-><init>(Lcom/uprui/launcher/cache/MemoryModel;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lcom/uprui/executor/RuiHttpTask;->addHttpListener(Lcom/uprui/executor/RuiHttpListener;)V

    .line 125
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/uprui/executor/RuiHttpTask;->setCallbackHandler(Landroid/os/Handler;)V

    .line 126
    iget-object v2, p0, Lcom/uprui/launcher/cache/MemoryModel;->loaddingNetworkTasks:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    .end local v0           #key:Lcom/uprui/executor/HttpKey;
    .end local v1           #task:Lcom/uprui/executor/RuiHttpTask;
    :catchall_0
    move-exception v2

    .line 131
    iget-object v3, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 132
    throw v2
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/uprui/launcher/cache/MemoryModel;->context:Landroid/content/Context;

    .line 54
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    .line 55
    .local v1, memClass:I
    const/high16 v2, 0x10

    mul-int/2addr v2, v1

    shr-int/lit8 v0, v2, 0x3

    .line 56
    .local v0, cacheSize:I
    new-instance v2, Lcom/uprui/launcher/cache/MemoryCache;

    invoke-direct {v2, v0}, Lcom/uprui/launcher/cache/MemoryCache;-><init>(I)V

    iput-object v2, p0, Lcom/uprui/launcher/cache/MemoryModel;->cache:Lcom/uprui/launcher/cache/MemoryCache;

    .line 57
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 58
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/uprui/launcher/cache/MemoryModel;->loadingLocalTask:Ljava/util/HashMap;

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/uprui/launcher/cache/MemoryModel;->loaddingNetworkTasks:Ljava/util/HashMap;

    .line 60
    return-void
.end method

.method public loadLocalBitmap(Ljava/io/File;Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;)Lcom/uprui/launcher/cache/LocalBitmapTask;
    .locals 5
    .parameter "localFile"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, key:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 69
    iget-object v3, p0, Lcom/uprui/launcher/cache/MemoryModel;->cache:Lcom/uprui/launcher/cache/MemoryCache;

    invoke-virtual {v3, v1}, Lcom/uprui/launcher/cache/MemoryCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, icon:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 71
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {p2, v3, v0, v4}, Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;->onSucess(Lcom/uprui/launcher/cache/LocalBitmapTask;Landroid/graphics/Bitmap;Z)V

    .line 72
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;->onFinish(Lcom/uprui/launcher/cache/LocalBitmapTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v3, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 85
    :goto_0
    return-object v2

    .line 76
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/uprui/launcher/cache/MemoryModel;->loadingLocalTask:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uprui/launcher/cache/LocalBitmapTask;

    .line 77
    .local v2, task:Lcom/uprui/launcher/cache/LocalBitmapTask;
    if-nez v2, :cond_1

    .line 78
    new-instance v2, Lcom/uprui/launcher/cache/LocalBitmapTask;

    .end local v2           #task:Lcom/uprui/launcher/cache/LocalBitmapTask;
    invoke-direct {v2, p1, p0}, Lcom/uprui/launcher/cache/LocalBitmapTask;-><init>(Ljava/io/File;Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;)V

    .line 79
    .restart local v2       #task:Lcom/uprui/launcher/cache/LocalBitmapTask;
    invoke-virtual {v2, p2}, Lcom/uprui/launcher/cache/LocalBitmapTask;->addCallback(Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;)V

    .line 80
    iget-object v3, p0, Lcom/uprui/launcher/cache/MemoryModel;->loadingLocalTask:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v3, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpClient:Lcom/uprui/executor/RuiHttpClient;

    invoke-virtual {v3, v2}, Lcom/uprui/executor/RuiHttpClient;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :goto_1
    iget-object v3, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 83
    :cond_1
    :try_start_2
    invoke-virtual {v2, p2}, Lcom/uprui/launcher/cache/LocalBitmapTask;->addCallback(Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 86
    .end local v0           #icon:Landroid/graphics/Bitmap;
    .end local v2           #task:Lcom/uprui/launcher/cache/LocalBitmapTask;
    :catchall_0
    move-exception v3

    .line 87
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 88
    throw v3
.end method

.method public onCancel(Lcom/uprui/launcher/cache/LocalBitmapTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 171
    return-void
.end method

.method public onError(Lcom/uprui/launcher/cache/LocalBitmapTask;Ljava/lang/String;)V
    .locals 0
    .parameter "task"
    .parameter "errorDescription"

    .prologue
    .line 166
    return-void
.end method

.method public onFinish(Lcom/uprui/launcher/cache/LocalBitmapTask;)V
    .locals 6
    .parameter "task"

    .prologue
    .line 179
    :try_start_0
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 180
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryModel;->loadingLocalTask:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 181
    .local v3, size:I
    new-array v2, v3, [Ljava/lang/String;

    .line 182
    .local v2, keys:[Ljava/lang/String;
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryModel;->loadingLocalTask:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 183
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 189
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryModel;->loadingLocalTask:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 193
    return-void

    .line 184
    :cond_0
    :try_start_1
    aget-object v1, v2, v0

    .line 185
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryModel;->loadingLocalTask:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 186
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryModel;->loadingLocalTask:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v0           #i:I
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keys:[Ljava/lang/String;
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    .line 191
    iget-object v5, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 192
    throw v4
.end method

.method public onProgress(Lcom/uprui/launcher/cache/LocalBitmapTask;I)V
    .locals 0
    .parameter "task"
    .parameter "progress"

    .prologue
    .line 204
    return-void
.end method

.method public onStart(Lcom/uprui/launcher/cache/LocalBitmapTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 140
    return-void
.end method

.method public onSucess(Lcom/uprui/launcher/cache/LocalBitmapTask;Landroid/graphics/Bitmap;Z)V
    .locals 6
    .parameter "task"
    .parameter "icon"
    .parameter "inCache"

    .prologue
    .line 145
    :try_start_0
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 146
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryModel;->loadingLocalTask:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 147
    .local v3, size:I
    new-array v2, v3, [Ljava/lang/String;

    .line 148
    .local v2, keys:[Ljava/lang/String;
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryModel;->loadingLocalTask:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 156
    :goto_1
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryModel;->loadingLocalTask:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 160
    return-void

    .line 150
    :cond_0
    :try_start_1
    aget-object v1, v2, v0

    .line 151
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryModel;->loadingLocalTask:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 152
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryModel;->cache:Lcom/uprui/launcher/cache/MemoryCache;

    invoke-virtual {v4, v1, p2}, Lcom/uprui/launcher/cache/MemoryCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 157
    .end local v0           #i:I
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keys:[Ljava/lang/String;
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    .line 158
    iget-object v5, p0, Lcom/uprui/launcher/cache/MemoryModel;->httpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 159
    throw v4

    .line 149
    .restart local v0       #i:I
    .restart local v1       #key:Ljava/lang/String;
    .restart local v2       #keys:[Ljava/lang/String;
    .restart local v3       #size:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public postIdle(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/uprui/launcher/cache/MemoryModel;->deferredHandler:Lcom/uprui/launcher/cache/DeferredHandler;

    invoke-virtual {v0, p1}, Lcom/uprui/launcher/cache/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method
