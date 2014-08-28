.class public Lcom/uprui/launcher/cache/MemoryCache;
.super Ljava/lang/Object;
.source "MemoryCache.java"


# instance fields
.field private hHardMemoryCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/lang/Object;

.field private sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private size:I

.field private totalHardSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .parameter "size"

    .prologue
    const/16 v3, 0x14

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/uprui/launcher/cache/MemoryCache;->size:I

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/uprui/launcher/cache/MemoryCache;->lock:Ljava/lang/Object;

    .line 20
    new-instance v0, Lcom/uprui/launcher/cache/MemoryCache$1;

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/uprui/launcher/cache/MemoryCache$1;-><init>(Lcom/uprui/launcher/cache/MemoryCache;IFZ)V

    iput-object v0, p0, Lcom/uprui/launcher/cache/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/uprui/launcher/cache/MemoryCache;->sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    return-void
.end method

.method private computerMemorySize()V
    .locals 6

    .prologue
    .line 94
    iget v4, p0, Lcom/uprui/launcher/cache/MemoryCache;->totalHardSize:I

    iget v5, p0, Lcom/uprui/launcher/cache/MemoryCache;->size:I

    if-gt v4, v5, :cond_1

    .line 109
    :cond_0
    return-void

    .line 98
    :cond_1
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 99
    .local v2, key:[Ljava/lang/String;
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/uprui/launcher/cache/MemoryCache;->totalHardSize:I

    iget v5, p0, Lcom/uprui/launcher/cache/MemoryCache;->size:I

    if-le v4, v5, :cond_0

    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 102
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 103
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v4, p0, Lcom/uprui/launcher/cache/MemoryCache;->totalHardSize:I

    invoke-direct {p0, v0}, Lcom/uprui/launcher/cache/MemoryCache;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/uprui/launcher/cache/MemoryCache;->totalHardSize:I

    .line 104
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 105
    .local v3, srBit:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    iget-object v4, p0, Lcom/uprui/launcher/cache/MemoryCache;->sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 141
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 184
    iget-object v1, p0, Lcom/uprui/launcher/cache/MemoryCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/uprui/launcher/cache/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 186
    iget-object v0, p0, Lcom/uprui/launcher/cache/MemoryCache;->sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/uprui/launcher/cache/MemoryCache;->totalHardSize:I

    .line 184
    monitor-exit v1

    .line 189
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 118
    if-nez p1, :cond_0

    move-object v1, v4

    .line 136
    :goto_0
    return-object v1

    .line 121
    :cond_0
    const/4 v1, 0x0

    .line 122
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/uprui/launcher/cache/MemoryCache;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 123
    :try_start_0
    iget-object v3, p0, Lcom/uprui/launcher/cache/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 124
    if-eqz v1, :cond_1

    .line 125
    monitor-exit v5

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 127
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/uprui/launcher/cache/MemoryCache;->sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 128
    .local v2, srBit:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 130
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 131
    invoke-virtual {p0, p1, v1}, Lcom/uprui/launcher/cache/MemoryCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 132
    monitor-exit v5

    goto :goto_0

    .line 136
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    goto :goto_0
.end method

.method public getBitmapFromSoftReference(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "key"

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 76
    :cond_0
    iget-object v3, p0, Lcom/uprui/launcher/cache/MemoryCache;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/uprui/launcher/cache/MemoryCache;->sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 78
    .local v1, srBit:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 80
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    monitor-exit v3

    .line 87
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 83
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/uprui/launcher/cache/MemoryCache;->sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    monitor-exit v3

    .line 87
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    .end local v1           #srBit:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getHardMemorySize()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/uprui/launcher/cache/MemoryCache;->totalHardSize:I

    return v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/uprui/launcher/cache/MemoryCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    iget v2, p0, Lcom/uprui/launcher/cache/MemoryCache;->totalHardSize:I

    iget-object v0, p0, Lcom/uprui/launcher/cache/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/uprui/launcher/cache/MemoryCache;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v0

    sub-int v0, v2, v0

    iput v0, p0, Lcom/uprui/launcher/cache/MemoryCache;->totalHardSize:I

    .line 39
    iget-object v0, p0, Lcom/uprui/launcher/cache/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget v0, p0, Lcom/uprui/launcher/cache/MemoryCache;->totalHardSize:I

    invoke-direct {p0, p2}, Lcom/uprui/launcher/cache/MemoryCache;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/uprui/launcher/cache/MemoryCache;->totalHardSize:I

    .line 41
    invoke-direct {p0}, Lcom/uprui/launcher/cache/MemoryCache;->computerMemorySize()V

    .line 37
    monitor-exit v1

    .line 43
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putBitmapInSoftReference(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 57
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/uprui/launcher/cache/MemoryCache;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 60
    :try_start_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 61
    .local v0, srBit:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lcom/uprui/launcher/cache/MemoryCache;->sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    monitor-exit v2

    .line 63
    const/4 v1, 0x1

    return v1

    .line 59
    .end local v0           #srBit:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public refushBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/uprui/launcher/cache/MemoryCache;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/uprui/launcher/cache/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 159
    .local v0, bit:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/uprui/launcher/cache/MemoryCache;->sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget v1, p0, Lcom/uprui/launcher/cache/MemoryCache;->totalHardSize:I

    invoke-direct {p0, v0}, Lcom/uprui/launcher/cache/MemoryCache;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/uprui/launcher/cache/MemoryCache;->totalHardSize:I

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/uprui/launcher/cache/MemoryCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 157
    monitor-exit v2

    goto :goto_0

    .end local v0           #bit:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeBitmap(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/uprui/launcher/cache/MemoryCache;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/uprui/launcher/cache/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 175
    .local v0, bit:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/uprui/launcher/cache/MemoryCache;->sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget v1, p0, Lcom/uprui/launcher/cache/MemoryCache;->totalHardSize:I

    invoke-direct {p0, v0}, Lcom/uprui/launcher/cache/MemoryCache;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/uprui/launcher/cache/MemoryCache;->totalHardSize:I

    .line 173
    monitor-exit v2

    goto :goto_0

    .end local v0           #bit:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
