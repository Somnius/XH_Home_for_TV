.class public Lcom/uprui/executor/RuiHttpTask;
.super Ljava/lang/Object;
.source "RuiHttpTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/io/OutputStream;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static AVILE:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field private static final BUFFER_COUNT:I = 0x2000

.field private static CREATE:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field public static final MASK_NETWORK:I = 0x3

.field public static final RETYR_DELAY_TIME:I = 0x5dc

.field public static final RUN_CANCEL:I = 0x6

.field public static final RUN_FAIL:I = 0x3

.field public static final RUN_FINISH:I = 0x5

.field public static final RUN_NETWORK:I = 0x2

.field public static final RUN_POSITION:I = 0x2

.field public static final RUN_RETRY:I = 0x7

.field public static final RUN_START:I = 0x1

.field public static final RUN_SUCCESS:I = 0x4

.field public static final RUN_WAIT:I = 0x0

.field public static final RUN_WIFI:I = 0x1

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private DEBUG:Z

.field private cancelGroup:Ljava/lang/Object;

.field protected client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field protected context:Lorg/apache/http/protocol/HttpContext;

.field private createId:I

.field protected executor:Lcom/uprui/executor/RuiHttpThreadPoolExecutor;

.field protected handler:Landroid/os/Handler;

.field protected is:Ljava/io/InputStream;

.field protected listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/uprui/executor/RuiHttpListener",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field protected os:Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field protected request:Lorg/apache/http/client/methods/HttpUriRequest;

.field protected retryCount:I

.field private runPermissions:I

.field private volatile runStatus:I

.field private statusLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private streamCallback:Lcom/uprui/executor/RuiHttpStreamType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uprui/executor/RuiHttpStreamType",
            "<TT;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/uprui/executor/RuiHttpTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uprui/executor/RuiHttpTask;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/uprui/executor/RuiHttpTask;->CREATE:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/uprui/executor/RuiHttpTask;->AVILE:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/uprui/executor/RuiHttpThreadPoolExecutor;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/uprui/executor/RuiHttpStreamType;Lcom/uprui/executor/RuiHttpListener;)V
    .locals 2
    .parameter "executor"
    .parameter "client"
    .parameter "context"
    .parameter "request"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpThreadPoolExecutor;",
            "Lorg/apache/http/impl/client/DefaultHttpClient;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lcom/uprui/executor/RuiHttpStreamType",
            "<TT;TO;>;",
            "Lcom/uprui/executor/RuiHttpListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    .local p5, streamCallback:Lcom/uprui/executor/RuiHttpStreamType;,"Lcom/uprui/executor/RuiHttpStreamType<TT;TO;>;"
    .local p6, httpListener:Lcom/uprui/executor/RuiHttpListener;,"Lcom/uprui/executor/RuiHttpListener<TT;>;"
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/uprui/executor/RuiHttpTask;->DEBUG:Z

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/uprui/executor/RuiHttpTask;->runPermissions:I

    .line 69
    iput v1, p0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    .line 71
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 81
    iput-object p2, p0, Lcom/uprui/executor/RuiHttpTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 82
    iput-object p3, p0, Lcom/uprui/executor/RuiHttpTask;->context:Lorg/apache/http/protocol/HttpContext;

    .line 83
    iput-object p4, p0, Lcom/uprui/executor/RuiHttpTask;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 84
    iput-object p1, p0, Lcom/uprui/executor/RuiHttpTask;->executor:Lcom/uprui/executor/RuiHttpThreadPoolExecutor;

    .line 85
    iput-object p5, p0, Lcom/uprui/executor/RuiHttpTask;->streamCallback:Lcom/uprui/executor/RuiHttpStreamType;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    .line 87
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/uprui/executor/RuiHttpTask;->CREATE:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/uprui/executor/RuiHttpTask;->createId:I

    .line 89
    sget-object v0, Lcom/uprui/executor/RuiHttpTask;->AVILE:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 91
    invoke-interface {p6, p0}, Lcom/uprui/executor/RuiHttpListener;->onWait(Lcom/uprui/executor/RuiHttpTask;)V

    .line 92
    return-void
.end method

.method private closeStream()V
    .locals 1

    .prologue
    .line 367
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->is:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lcom/uprui/executor/RuiHttpTask;->safeCloseStream(Ljava/io/Closeable;)V

    .line 368
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->os:Ljava/io/OutputStream;

    invoke-virtual {p0, v0}, Lcom/uprui/executor/RuiHttpTask;->safeCloseStream(Ljava/io/Closeable;)V

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getAvile()I
    .locals 1

    .prologue
    .line 568
    sget-object v0, Lcom/uprui/executor/RuiHttpTask;->AVILE:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static getCreate()I
    .locals 1

    .prologue
    .line 564
    sget-object v0, Lcom/uprui/executor/RuiHttpTask;->CREATE:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private getDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 580
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/uprui/executor/RuiHttpTask;->createId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uprui/executor/RuiHttpTask;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private resetUriRequest()V
    .locals 5

    .prologue
    .line 585
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    iget-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, method:Ljava/lang/String;
    iget-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    .line 587
    .local v3, uri:Ljava/net/URI;
    iget-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .line 588
    .local v0, headers:[Lorg/apache/http/Header;
    iget-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 589
    .local v2, params:Lorg/apache/http/params/HttpParams;
    const-string v4, "GET"

    if-ne v1, v4, :cond_1

    .line 590
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    iput-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 591
    iget-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 592
    iget-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    const-string v4, "POST"

    if-ne v1, v4, :cond_0

    .line 594
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    iput-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 595
    iget-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 596
    iget-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    goto :goto_0
.end method


# virtual methods
.method public addHttpListener(Lcom/uprui/executor/RuiHttpListener;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    .local p1, httpListener:Lcom/uprui/executor/RuiHttpListener;,"Lcom/uprui/executor/RuiHttpListener<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 97
    iget-boolean v0, p0, Lcom/uprui/executor/RuiHttpTask;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uprui/executor/RuiHttpTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addHttpListener "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/uprui/executor/RuiHttpTask;->getDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 103
    return-void

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    throw v0
.end method

.method public cancel()Z
    .locals 2

    .prologue
    .line 333
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->executor:Lcom/uprui/executor/RuiHttpThreadPoolExecutor;

    invoke-virtual {v0, p0}, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 334
    iget v0, p0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 335
    iget v0, p0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 336
    :cond_0
    const/4 v0, 0x0

    .line 341
    :goto_0
    return v0

    .line 338
    :cond_1
    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->onCancel()V

    .line 339
    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->onFinish()V

    .line 340
    invoke-direct {p0}, Lcom/uprui/executor/RuiHttpTask;->closeStream()V

    .line 341
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cancelThreadSafe()Z
    .locals 2

    .prologue
    .line 350
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->executor:Lcom/uprui/executor/RuiHttpThreadPoolExecutor;

    invoke-virtual {v0, p0}, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 353
    iget v0, p0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 354
    iget v0, p0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 355
    const/4 v0, 0x0

    .line 360
    :goto_0
    return v0

    .line 357
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->onCancel()V

    .line 358
    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->onFinish()V

    .line 359
    invoke-direct {p0}, Lcom/uprui/executor/RuiHttpTask;->closeStream()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 360
    const/4 v0, 0x1

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    .line 362
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 363
    throw v0
.end method

.method public getCancelGroup()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->cancelGroup:Ljava/lang/Object;

    return-object v0
.end method

.method public getCreateId()I
    .locals 1

    .prologue
    .line 116
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    iget v0, p0, Lcom/uprui/executor/RuiHttpTask;->createId:I

    return v0
.end method

.method public getRunPermission()I
    .locals 1

    .prologue
    .line 132
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    iget v0, p0, Lcom/uprui/executor/RuiHttpTask;->runPermissions:I

    return v0
.end method

.method public isFinish()Z
    .locals 2

    .prologue
    .line 544
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    iget v0, p0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needRetry(Ljava/io/IOException;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 548
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 549
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v0

    .line 550
    .local v0, retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;
    iget v1, p0, Lcom/uprui/executor/RuiHttpTask;->retryCount:I

    iget-object v2, p0, Lcom/uprui/executor/RuiHttpTask;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1, v1, v2}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    iget v1, p0, Lcom/uprui/executor/RuiHttpTask;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/uprui/executor/RuiHttpTask;->retryCount:I

    invoke-virtual {p0, p1, v1}, Lcom/uprui/executor/RuiHttpTask;->onRetry(Ljava/lang/Exception;I)V

    .line 553
    const/4 v1, 0x1

    .line 555
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCancel()V
    .locals 6

    .prologue
    .line 430
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    iget-boolean v3, p0, Lcom/uprui/executor/RuiHttpTask;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/uprui/executor/RuiHttpTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "on cancel "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/uprui/executor/RuiHttpTask;->getDebugString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    const/4 v3, 0x6

    iput v3, p0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    .line 432
    iget-object v3, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 433
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 448
    return-void

    .line 434
    :cond_1
    iget-object v3, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/executor/RuiHttpListener;

    .line 435
    .local v0, httpListener:Lcom/uprui/executor/RuiHttpListener;,"Lcom/uprui/executor/RuiHttpListener<TT;>;"
    if-eqz v0, :cond_2

    .line 436
    iget-object v3, p0, Lcom/uprui/executor/RuiHttpTask;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    .line 437
    iget-object v3, p0, Lcom/uprui/executor/RuiHttpTask;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/uprui/executor/RuiHttpTask$3;

    invoke-direct {v4, p0, v0}, Lcom/uprui/executor/RuiHttpTask$3;-><init>(Lcom/uprui/executor/RuiHttpTask;Lcom/uprui/executor/RuiHttpListener;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 433
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    :cond_3
    invoke-interface {v0, p0}, Lcom/uprui/executor/RuiHttpListener;->onCancel(Lcom/uprui/executor/RuiHttpTask;)V

    goto :goto_1
.end method

.method protected onFaile(Ljava/lang/Exception;)V
    .locals 7
    .parameter "e"

    .prologue
    .line 474
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    iget-boolean v4, p0, Lcom/uprui/executor/RuiHttpTask;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/uprui/executor/RuiHttpTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "on fail "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/uprui/executor/RuiHttpTask;->getDebugString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    :cond_0
    const/4 v4, 0x3

    iput v4, p0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    .line 476
    iget-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->streamCallback:Lcom/uprui/executor/RuiHttpStreamType;

    invoke-interface {v4}, Lcom/uprui/executor/RuiHttpStreamType;->onError()V

    .line 477
    invoke-static {p1}, Lcom/uprui/executor/RuiHttpClient;->getFailDescriptionString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, description:Ljava/lang/String;
    iget-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 479
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 495
    return-void

    .line 480
    :cond_1
    iget-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uprui/executor/RuiHttpListener;

    .line 481
    .local v1, httpListener:Lcom/uprui/executor/RuiHttpListener;,"Lcom/uprui/executor/RuiHttpListener<TT;>;"
    if-eqz v1, :cond_2

    .line 482
    iget-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_3

    .line 483
    iget-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/uprui/executor/RuiHttpTask$5;

    invoke-direct {v5, p0, v1, v0}, Lcom/uprui/executor/RuiHttpTask$5;-><init>(Lcom/uprui/executor/RuiHttpTask;Lcom/uprui/executor/RuiHttpListener;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 479
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    :cond_3
    invoke-interface {v1, p0, v0}, Lcom/uprui/executor/RuiHttpListener;->onFaile(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onFinish()V
    .locals 6

    .prologue
    .line 521
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    iget-boolean v3, p0, Lcom/uprui/executor/RuiHttpTask;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/uprui/executor/RuiHttpTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "on finish "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/uprui/executor/RuiHttpTask;->getDebugString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    const/4 v3, 0x5

    iput v3, p0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    .line 523
    sget-object v3, Lcom/uprui/executor/RuiHttpTask;->AVILE:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 524
    iget-object v3, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 525
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 541
    return-void

    .line 526
    :cond_1
    iget-object v3, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/executor/RuiHttpListener;

    .line 527
    .local v0, httpListener:Lcom/uprui/executor/RuiHttpListener;,"Lcom/uprui/executor/RuiHttpListener<TT;>;"
    if-eqz v0, :cond_2

    .line 528
    iget-object v3, p0, Lcom/uprui/executor/RuiHttpTask;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    .line 529
    iget-object v3, p0, Lcom/uprui/executor/RuiHttpTask;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/uprui/executor/RuiHttpTask$7;

    invoke-direct {v4, p0, v0}, Lcom/uprui/executor/RuiHttpTask$7;-><init>(Lcom/uprui/executor/RuiHttpTask;Lcom/uprui/executor/RuiHttpListener;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 525
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    :cond_3
    invoke-interface {v0, p0}, Lcom/uprui/executor/RuiHttpListener;->onFinish(Lcom/uprui/executor/RuiHttpTask;)V

    goto :goto_1
.end method

.method protected onProgress(JJ)V
    .locals 10
    .parameter "totalSize"
    .parameter "readCount"

    .prologue
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    const/4 v7, 0x2

    .line 408
    iget-boolean v0, p0, Lcom/uprui/executor/RuiHttpTask;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uprui/executor/RuiHttpTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onProgress :totalSize %s,percent %s"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/uprui/executor/RuiHttpTask;->getDebugString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    iput v7, p0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    .line 410
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 411
    .local v9, size:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-lt v8, v9, :cond_1

    .line 426
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uprui/executor/RuiHttpListener;

    .line 413
    .local v2, httpListener:Lcom/uprui/executor/RuiHttpListener;,"Lcom/uprui/executor/RuiHttpListener<TT;>;"
    if-eqz v2, :cond_2

    .line 414
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 415
    iget-object v7, p0, Lcom/uprui/executor/RuiHttpTask;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/uprui/executor/RuiHttpTask$2;

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/uprui/executor/RuiHttpTask$2;-><init>(Lcom/uprui/executor/RuiHttpTask;Lcom/uprui/executor/RuiHttpListener;JJ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 411
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    .line 423
    invoke-interface/range {v2 .. v7}, Lcom/uprui/executor/RuiHttpListener;->onProgress(Lcom/uprui/executor/RuiHttpTask;JJ)V

    goto :goto_1
.end method

.method protected onRetry(Ljava/lang/Exception;I)V
    .locals 6
    .parameter "e"
    .parameter "retryCount"

    .prologue
    .line 499
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    iget-boolean v3, p0, Lcom/uprui/executor/RuiHttpTask;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/uprui/executor/RuiHttpTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "on retry:retrtCout="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/uprui/executor/RuiHttpTask;->getDebugString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    :cond_0
    const/4 v3, 0x7

    iput v3, p0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    .line 501
    iget-object v3, p0, Lcom/uprui/executor/RuiHttpTask;->streamCallback:Lcom/uprui/executor/RuiHttpStreamType;

    invoke-interface {v3}, Lcom/uprui/executor/RuiHttpStreamType;->onRetroy()V

    .line 502
    iget-object v3, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 503
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 518
    return-void

    .line 504
    :cond_1
    iget-object v3, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/executor/RuiHttpListener;

    .line 505
    .local v0, httpListener:Lcom/uprui/executor/RuiHttpListener;,"Lcom/uprui/executor/RuiHttpListener<TT;>;"
    if-eqz v0, :cond_2

    .line 506
    iget-object v3, p0, Lcom/uprui/executor/RuiHttpTask;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    .line 507
    iget-object v3, p0, Lcom/uprui/executor/RuiHttpTask;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/uprui/executor/RuiHttpTask$6;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/uprui/executor/RuiHttpTask$6;-><init>(Lcom/uprui/executor/RuiHttpTask;Lcom/uprui/executor/RuiHttpListener;Ljava/lang/Exception;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 503
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    :cond_3
    invoke-interface {v0, p0, p1, p2}, Lcom/uprui/executor/RuiHttpListener;->onRetry(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/Exception;I)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 6

    .prologue
    .line 385
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    iget-boolean v3, p0, Lcom/uprui/executor/RuiHttpTask;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/uprui/executor/RuiHttpTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "on start "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/uprui/executor/RuiHttpTask;->getDebugString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    const/4 v3, 0x1

    iput v3, p0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    .line 387
    iget-object v3, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 388
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 404
    return-void

    .line 389
    :cond_1
    iget-object v3, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/executor/RuiHttpListener;

    .line 390
    .local v0, httpListener:Lcom/uprui/executor/RuiHttpListener;,"Lcom/uprui/executor/RuiHttpListener<TT;>;"
    if-eqz v0, :cond_2

    .line 391
    iget-object v3, p0, Lcom/uprui/executor/RuiHttpTask;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    .line 392
    iget-object v3, p0, Lcom/uprui/executor/RuiHttpTask;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/uprui/executor/RuiHttpTask$1;

    invoke-direct {v4, p0, v0}, Lcom/uprui/executor/RuiHttpTask$1;-><init>(Lcom/uprui/executor/RuiHttpTask;Lcom/uprui/executor/RuiHttpListener;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 388
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    :cond_3
    invoke-interface {v0, p0}, Lcom/uprui/executor/RuiHttpListener;->onStart(Lcom/uprui/executor/RuiHttpTask;)V

    goto :goto_1
.end method

.method protected onSuccess(Ljava/io/OutputStream;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    .local p1, os:Ljava/io/OutputStream;,"TO;"
    iget-boolean v4, p0, Lcom/uprui/executor/RuiHttpTask;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/uprui/executor/RuiHttpTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onSuccess "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/uprui/executor/RuiHttpTask;->getDebugString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    const/4 v4, 0x4

    iput v4, p0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    .line 453
    iget-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->streamCallback:Lcom/uprui/executor/RuiHttpStreamType;

    invoke-interface {v4, p1}, Lcom/uprui/executor/RuiHttpStreamType;->onSuccess(Ljava/io/OutputStream;)Ljava/lang/Object;

    move-result-object v2

    .line 454
    .local v2, result:Ljava/lang/Object;,"TT;"
    iget-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 455
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 470
    return-void

    .line 456
    :cond_1
    iget-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/executor/RuiHttpListener;

    .line 457
    .local v0, httpListener:Lcom/uprui/executor/RuiHttpListener;,"Lcom/uprui/executor/RuiHttpListener<TT;>;"
    if-eqz v0, :cond_2

    .line 458
    iget-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_3

    .line 459
    iget-object v4, p0, Lcom/uprui/executor/RuiHttpTask;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/uprui/executor/RuiHttpTask$4;

    invoke-direct {v5, p0, v0, v2}, Lcom/uprui/executor/RuiHttpTask$4;-><init>(Lcom/uprui/executor/RuiHttpTask;Lcom/uprui/executor/RuiHttpListener;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 455
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    :cond_3
    const/4 v4, 0x0

    invoke-interface {v0, p0, v2, v4}, Lcom/uprui/executor/RuiHttpListener;->onSuccess(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/Object;Z)V

    goto :goto_1
.end method

.method public removeHttpListener(Lcom/uprui/executor/RuiHttpListener;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    .local p1, httpListener:Lcom/uprui/executor/RuiHttpListener;,"Lcom/uprui/executor/RuiHttpListener<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 108
    iget-boolean v0, p0, Lcom/uprui/executor/RuiHttpTask;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uprui/executor/RuiHttpTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeHttpListener "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/uprui/executor/RuiHttpTask;->getDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 113
    return-void

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 112
    throw v0
.end method

.method public reset()Z
    .locals 3

    .prologue
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    const/4 v0, 0x0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 316
    iget v1, p0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 317
    const/4 v0, 0x0

    iput v0, p0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/uprui/executor/RuiHttpTask;->retryCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 319
    const/4 v0, 0x1

    .line 321
    :goto_0
    return v0

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    .line 323
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 324
    throw v0
.end method

.method public run()V
    .locals 23

    .prologue
    .line 140
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/uprui/executor/RuiHttpTask;->DEBUG:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    sget-object v20, Lcom/uprui/executor/RuiHttpTask;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "createId:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->createId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " run"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 143
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 155
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runPermissions:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_1

    .line 205
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->context:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 206
    .local v15, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 207
    .local v16, statusCode:I
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 208
    .local v8, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v17

    .line 209
    .local v17, totalSize:J
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/uprui/executor/RuiHttpTask;->is:Ljava/io/InputStream;

    .line 211
    const/16 v20, 0xc8

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 213
    new-instance v7, Lcom/uprui/executor/RuiResponseErrorStatusCodeException;

    invoke-direct {v7}, Lcom/uprui/executor/RuiResponseErrorStatusCodeException;-><init>()V

    .line 214
    .local v7, e:Lcom/uprui/executor/RuiResponseErrorStatusCodeException;
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/uprui/executor/RuiResponseErrorStatusCodeException;->setStatusCode(I)V

    .line 215
    sget-object v20, Lcom/uprui/executor/RuiHttpTask;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "statusCode="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", url="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/uprui/executor/RuiHttpTask;->onFaile(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->closeStream()V

    .line 298
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 300
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->onFinish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 303
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 306
    .end local v7           #e:Lcom/uprui/executor/RuiResponseErrorStatusCodeException;
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #statusCode:I
    .end local v17           #totalSize:J
    :goto_0
    return-void

    .line 150
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v20

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 151
    throw v20

    .line 157
    :pswitch_1
    invoke-static {}, Lcom/uprui/executor/RuiHttpClient;->getWifiState()Landroid/net/NetworkInfo$State;

    move-result-object v19

    .line 158
    .local v19, wifiState:Landroid/net/NetworkInfo$State;
    sget-object v20, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 160
    sget-object v20, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->executor:Lcom/uprui/executor/RuiHttpThreadPoolExecutor;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x5dc

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->executeHttpDelay(Lcom/uprui/executor/RuiHttpTask;J)V

    goto :goto_0

    .line 165
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 166
    new-instance v7, Lcom/uprui/executor/RuiWifiException;

    invoke-direct {v7}, Lcom/uprui/executor/RuiWifiException;-><init>()V

    .line 167
    .local v7, e:Lcom/uprui/executor/RuiWifiException;
    sget v20, Lcom/example/ruithreadpoolexecutor/R$string;->no_wifi:I

    invoke-static/range {v20 .. v20}, Lcom/uprui/executor/RuiHttpClient;->getRescourseString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/uprui/executor/RuiWifiException;->setDescription(Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/uprui/executor/RuiHttpTask;->onFaile(Ljava/lang/Exception;)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->onFinish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 172
    .end local v7           #e:Lcom/uprui/executor/RuiWifiException;
    :catchall_1
    move-exception v20

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 174
    throw v20

    .line 180
    .end local v19           #wifiState:Landroid/net/NetworkInfo$State;
    :pswitch_2
    invoke-static {}, Lcom/uprui/executor/RuiHttpClient;->getNetWorkState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    .line 181
    .local v11, networkState:Landroid/net/NetworkInfo$State;
    sget-object v20, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v20

    if-eq v11, v0, :cond_1

    .line 183
    sget-object v20, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v20

    if-ne v11, v0, :cond_5

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->executor:Lcom/uprui/executor/RuiHttpThreadPoolExecutor;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x5dc

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->executeHttpDelay(Lcom/uprui/executor/RuiHttpTask;J)V

    goto/16 :goto_0

    .line 188
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 189
    new-instance v7, Lcom/uprui/executor/RuiNetWorkException;

    invoke-direct {v7}, Lcom/uprui/executor/RuiNetWorkException;-><init>()V

    .line 190
    .local v7, e:Lcom/uprui/executor/RuiNetWorkException;
    sget v20, Lcom/example/ruithreadpoolexecutor/R$string;->no_network:I

    invoke-static/range {v20 .. v20}, Lcom/uprui/executor/RuiHttpClient;->getRescourseString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/uprui/executor/RuiNetWorkException;->setDescription(Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/uprui/executor/RuiHttpTask;->onFaile(Ljava/lang/Exception;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->onFinish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 195
    .end local v7           #e:Lcom/uprui/executor/RuiNetWorkException;
    :catchall_2
    move-exception v20

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 197
    throw v20

    .line 302
    .end local v11           #networkState:Landroid/net/NetworkInfo$State;
    .local v7, e:Lcom/uprui/executor/RuiResponseErrorStatusCodeException;
    .restart local v8       #entity:Lorg/apache/http/HttpEntity;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #statusCode:I
    .restart local v17       #totalSize:J
    :catchall_3
    move-exception v20

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 304
    throw v20

    .line 220
    .end local v7           #e:Lcom/uprui/executor/RuiResponseErrorStatusCodeException;
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/uprui/executor/RuiHttpTask;->is:Ljava/io/InputStream;

    .line 221
    .local v9, ism:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->streamCallback:Lcom/uprui/executor/RuiHttpStreamType;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/uprui/executor/RuiHttpStreamType;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/uprui/executor/RuiHttpTask;->os:Ljava/io/OutputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 223
    .local v12, osm:Ljava/io/OutputStream;,"TO;"
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 235
    :goto_1
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->closeStream()V

    .line 298
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 300
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->onFinish()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 303
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 302
    :catchall_4
    move-exception v20

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 304
    throw v20

    .line 228
    :cond_9
    const/16 v20, 0x2

    :try_start_9
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    .line 229
    if-nez v12, :cond_c

    .line 230
    new-instance v20, Ljava/io/IOException;

    const-string v21, "out put stream is null"

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/uprui/executor/RuiHttpTask;->onFaile(Ljava/lang/Exception;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->onFinish()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    .line 234
    :catchall_5
    move-exception v20

    .line 235
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 236
    throw v20
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 260
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .end local v9           #ism:Ljava/io/InputStream;
    .end local v12           #osm:Ljava/io/OutputStream;,"TO;"
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #statusCode:I
    .end local v17           #totalSize:J
    :catch_0
    move-exception v7

    .line 261
    .local v7, e:Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 262
    const/4 v10, 0x0

    .line 264
    .local v10, needRetry:Z
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 274
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->closeStream()V

    .line 298
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 300
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->onFinish()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 303
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 235
    .end local v7           #e:Ljava/io/IOException;
    .end local v10           #needRetry:Z
    .restart local v8       #entity:Lorg/apache/http/HttpEntity;
    .restart local v9       #ism:Ljava/io/InputStream;
    .restart local v12       #osm:Ljava/io/OutputStream;,"TO;"
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #statusCode:I
    .restart local v17       #totalSize:J
    :cond_c
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 238
    const-wide/16 v20, 0x2000

    cmp-long v20, v17, v20

    if-lez v20, :cond_f

    const-wide/16 v20, 0x2000

    :goto_2
    move-wide/from16 v0, v20

    long-to-int v6, v0

    .line 240
    .local v6, bufferSize:I
    new-array v5, v6, [B

    .line 241
    .local v5, buffer:[B
    const/4 v13, -0x1

    .line 242
    .local v13, readCount:I
    const/4 v14, 0x0

    .line 243
    .local v14, readTotal:I
    :goto_3
    invoke-virtual {v9, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    move-result v13

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_11

    .line 250
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 257
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->closeStream()V

    .line 298
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 300
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->onFinish()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 303
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 239
    .end local v5           #buffer:[B
    .end local v6           #bufferSize:I
    .end local v13           #readCount:I
    .end local v14           #readTotal:I
    :cond_f
    const-wide/16 v20, 0x0

    cmp-long v20, v17, v20

    if-lez v20, :cond_10

    move-wide/from16 v20, v17

    goto :goto_2

    :cond_10
    const-wide/16 v20, 0x2000

    goto :goto_2

    .line 244
    .restart local v5       #buffer:[B
    .restart local v6       #bufferSize:I
    .restart local v13       #readCount:I
    .restart local v14       #readTotal:I
    :cond_11
    const/16 v20, 0x0

    :try_start_13
    move/from16 v0, v20

    invoke-virtual {v12, v5, v0, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 245
    add-int/2addr v14, v13

    .line 246
    int-to-long v0, v14

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/uprui/executor/RuiHttpTask;->onProgress(JJ)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    goto :goto_3

    .line 283
    .end local v5           #buffer:[B
    .end local v6           #bufferSize:I
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .end local v9           #ism:Ljava/io/InputStream;
    .end local v12           #osm:Ljava/io/OutputStream;,"TO;"
    .end local v13           #readCount:I
    .end local v14           #readTotal:I
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #statusCode:I
    .end local v17           #totalSize:J
    :catch_1
    move-exception v7

    .line 284
    .local v7, e:Ljava/lang/Exception;
    :try_start_14
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 286
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e

    .line 293
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->closeStream()V

    .line 298
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 300
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->onFinish()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    .line 303
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 302
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v5       #buffer:[B
    .restart local v6       #bufferSize:I
    .restart local v8       #entity:Lorg/apache/http/HttpEntity;
    .restart local v9       #ism:Ljava/io/InputStream;
    .restart local v12       #osm:Ljava/io/OutputStream;,"TO;"
    .restart local v13       #readCount:I
    .restart local v14       #readTotal:I
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #statusCode:I
    .restart local v17       #totalSize:J
    :catchall_6
    move-exception v20

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 304
    throw v20

    .line 255
    :cond_14
    :try_start_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/uprui/executor/RuiHttpTask;->onSuccess(Ljava/io/OutputStream;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 257
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->closeStream()V

    .line 298
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 300
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->onFinish()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    .line 303
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 256
    :catchall_7
    move-exception v20

    .line 257
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 258
    throw v20
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1

    .line 295
    .end local v5           #buffer:[B
    .end local v6           #bufferSize:I
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .end local v9           #ism:Ljava/io/InputStream;
    .end local v12           #osm:Ljava/io/OutputStream;,"TO;"
    .end local v13           #readCount:I
    .end local v14           #readTotal:I
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #statusCode:I
    .end local v17           #totalSize:J
    :catchall_8
    move-exception v20

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->closeStream()V

    .line 298
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    .line 300
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->onFinish()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    .line 303
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 305
    throw v20

    .line 302
    .local v7, e:Ljava/io/IOException;
    .restart local v10       #needRetry:Z
    :catchall_9
    move-exception v20

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 304
    throw v20

    .line 269
    :cond_19
    :try_start_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/uprui/executor/RuiHttpTask;->needRetry(Ljava/io/IOException;)Z

    move-result v10

    .line 270
    if-nez v10, :cond_1a

    .line 271
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/uprui/executor/RuiHttpTask;->onFaile(Ljava/lang/Exception;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    .line 274
    :cond_1a
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 278
    if-eqz v10, :cond_1b

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->resetUriRequest()V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->executor:Lcom/uprui/executor/RuiHttpThreadPoolExecutor;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x5dc

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->executeHttpDelay(Lcom/uprui/executor/RuiHttpTask;J)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    .line 296
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->closeStream()V

    .line 298
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    .line 300
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->onFinish()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    .line 303
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 273
    :catchall_a
    move-exception v20

    .line 274
    :try_start_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 275
    throw v20
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    .line 302
    :catchall_b
    move-exception v20

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 304
    throw v20

    .line 302
    .end local v10           #needRetry:Z
    .local v7, e:Ljava/lang/Exception;
    :catchall_c
    move-exception v20

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 304
    throw v20

    .line 291
    :cond_1e
    :try_start_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/uprui/executor/RuiHttpTask;->onFaile(Ljava/lang/Exception;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    .line 293
    :try_start_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->closeStream()V

    .line 298
    :try_start_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/executor/RuiHttpTask;->runStatus:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_20

    .line 300
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/executor/RuiHttpTask;->onFinish()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    .line 303
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 292
    :catchall_d
    move-exception v20

    .line 293
    :try_start_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 294
    throw v20
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    .line 302
    :catchall_e
    move-exception v20

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 304
    throw v20

    .line 302
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v20

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 304
    throw v20

    .line 302
    .restart local v5       #buffer:[B
    .restart local v6       #bufferSize:I
    .restart local v8       #entity:Lorg/apache/http/HttpEntity;
    .restart local v9       #ism:Ljava/io/InputStream;
    .restart local v12       #osm:Ljava/io/OutputStream;,"TO;"
    .restart local v13       #readCount:I
    .restart local v14       #readTotal:I
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #statusCode:I
    .restart local v17       #totalSize:J
    :catchall_10
    move-exception v20

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/executor/RuiHttpTask;->statusLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 304
    throw v20

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch

    .line 155
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected safeCloseStream(Ljava/io/Closeable;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 378
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCallbackHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 572
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    iput-object p1, p0, Lcom/uprui/executor/RuiHttpTask;->handler:Landroid/os/Handler;

    .line 573
    return-void
.end method

.method public setCancelGroup(Ljava/lang/Object;)V
    .locals 0
    .parameter "cancelGroup"

    .prologue
    .line 124
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    iput-object p1, p0, Lcom/uprui/executor/RuiHttpTask;->cancelGroup:Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public setNoRetry()V
    .locals 1

    .prologue
    .line 559
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    const v0, 0x7fffffff

    iput v0, p0, Lcom/uprui/executor/RuiHttpTask;->retryCount:I

    .line 560
    return-void
.end method

.method public setRunPermission(I)V
    .locals 0
    .parameter "runPermissions"

    .prologue
    .line 120
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    iput p1, p0, Lcom/uprui/executor/RuiHttpTask;->runPermissions:I

    .line 121
    return-void
.end method

.method public setTaskDebug(Z)V
    .locals 0
    .parameter "debug"

    .prologue
    .line 576
    .local p0, this:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    iput-boolean p1, p0, Lcom/uprui/executor/RuiHttpTask;->DEBUG:Z

    .line 577
    return-void
.end method
