.class public Lcom/rui/launcher/common/download/DownLoadObserverable;
.super Ljava/lang/Object;
.source "DownLoadObserverable.java"


# static fields
.field private static observerable:Lcom/rui/launcher/common/download/DownLoadObserverable;


# instance fields
.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rui/launcher/common/download/DownloadObserver;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->listeners:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 18
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 19
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 21
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/rui/launcher/common/download/DownLoadObserverable;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/rui/launcher/common/download/DownLoadObserverable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/rui/launcher/common/download/DownLoadObserverable;->observerable:Lcom/rui/launcher/common/download/DownLoadObserverable;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/rui/launcher/common/download/DownLoadObserverable;

    invoke-direct {v0}, Lcom/rui/launcher/common/download/DownLoadObserverable;-><init>()V

    sput-object v0, Lcom/rui/launcher/common/download/DownLoadObserverable;->observerable:Lcom/rui/launcher/common/download/DownLoadObserverable;

    .line 30
    :cond_0
    sget-object v0, Lcom/rui/launcher/common/download/DownLoadObserverable;->observerable:Lcom/rui/launcher/common/download/DownLoadObserverable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public notifyDownLoadCancel(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 134
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 137
    :try_start_0
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 138
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 144
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 146
    return-void

    .line 140
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rui/launcher/common/download/DownloadObserver;

    invoke-interface {v2, p1}, Lcom/rui/launcher/common/download/DownloadObserver;->onLoadCancel(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    .line 144
    iget-object v3, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 145
    throw v2
.end method

.method public notifyDownLoadEnd(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 102
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 106
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 112
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 114
    return-void

    .line 108
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rui/launcher/common/download/DownloadObserver;

    invoke-interface {v2, p1}, Lcom/rui/launcher/common/download/DownloadObserver;->onLoadEnd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    .line 112
    iget-object v3, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 113
    throw v2
.end method

.method public notifyDownLoadError(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 118
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 122
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 128
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 130
    return-void

    .line 124
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rui/launcher/common/download/DownloadObserver;

    invoke-interface {v2, p1}, Lcom/rui/launcher/common/download/DownloadObserver;->onLoadError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    .line 128
    iget-object v3, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 129
    throw v2
.end method

.method public notifyDownLoadPosition(Ljava/lang/String;J)V
    .locals 4
    .parameter "url"
    .parameter "position"

    .prologue
    .line 86
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 90
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 96
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 98
    return-void

    .line 92
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rui/launcher/common/download/DownloadObserver;

    invoke-interface {v2, p1, p2, p3}, Lcom/rui/launcher/common/download/DownloadObserver;->onLoadPosition(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    .line 96
    iget-object v3, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 97
    throw v2
.end method

.method public notifyDownLoadStart(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 70
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 74
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 80
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 82
    return-void

    .line 76
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rui/launcher/common/download/DownloadObserver;

    invoke-interface {v2, p1}, Lcom/rui/launcher/common/download/DownloadObserver;->onLoadStart(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    .line 80
    iget-object v3, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 81
    throw v2
.end method

.method public registerOnDownLoadObserver(Lcom/rui/launcher/common/download/DownloadObserver;)V
    .locals 2
    .parameter "observer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "can not regiter null observer on DownloadObserverable"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 51
    return-void

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 50
    throw v0
.end method

.method public unRegisterOnDownLoadObserver(Lcom/rui/launcher/common/download/DownloadObserver;)V
    .locals 2
    .parameter "observer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "can not regiter null observer on DownloadObserverable"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 66
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownLoadObserverable;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 65
    throw v0
.end method
