.class public Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;
.super Ljava/lang/Object;
.source "MemoryCache.java"


# static fields
.field private static cache:Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;

.field private static final sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;
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

.field private hardSize:I

.field private lock:Ljava/lang/Object;

.field private mostHardSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 4
    .parameter "size"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->mostHardSize:I

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->lock:Ljava/lang/Object;

    .line 23
    new-instance v0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache$1;

    const/16 v1, 0x14

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache$1;-><init>(Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;IFZ)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hardSize:I

    .line 28
    return-void
.end method

.method private computerMemorySize()V
    .locals 10

    .prologue
    .line 53
    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    .line 54
    .local v3, hardCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    sget-object v6, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .local v6, softCache:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    .line 56
    .local v5, size:I
    if-nez v5, :cond_0

    .line 73
    :goto_0
    return-void

    .line 59
    :cond_0
    new-array v4, v5, [Ljava/lang/String;

    .line 60
    .local v4, keys:[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, count:I
    :goto_1
    iget v8, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hardSize:I

    iget v9, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->mostHardSize:I

    if-le v8, v9, :cond_1

    if-lt v2, v5, :cond_2

    .line 72
    :cond_1
    const/4 v4, 0x0

    .line 73
    goto :goto_0

    .line 63
    :cond_2
    aget-object v8, v4, v2

    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 64
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 65
    .local v1, bitmapSize:I
    iget v8, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hardSize:I

    sub-int/2addr v8, v1

    iput v8, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hardSize:I

    .line 66
    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 67
    .local v7, srf:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    aget-object v8, v4, v2

    invoke-virtual {v6, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    aget-object v8, v4, v2

    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static declared-synchronized getInstance(I)Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;
    .locals 2
    .parameter "size"

    .prologue
    .line 31
    const-class v1, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->cache:Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;

    invoke-direct {v0, p0}, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;-><init>(I)V

    sput-object v0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->cache:Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;

    .line 34
    :cond_0
    sget-object v0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->cache:Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 76
    if-nez p1, :cond_0

    move-object v1, v3

    .line 95
    :goto_0
    return-object v1

    .line 79
    :cond_0
    const/4 v1, 0x0

    .line 80
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 83
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    monitor-exit v4

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 86
    :cond_1
    :try_start_1
    sget-object v2, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 87
    sget-object v2, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 88
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 89
    invoke-virtual {p0, p1, v1}, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 90
    sget-object v2, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    monitor-exit v4

    goto :goto_0

    .line 95
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    goto :goto_0
.end method

.method public getHardCacheSize()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hardSize:I

    return v0
.end method

.method public getSoftCacheSize()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 38
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hardSize:I

    invoke-direct {p0, p2}, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hardSize:I

    .line 45
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->computerMemorySize()V

    .line 39
    monitor-exit v1

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 124
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 126
    sget-object v0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 124
    monitor-exit v1

    .line 128
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 108
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hHardMemoryCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 110
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 111
    iget v1, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hardSize:I

    invoke-direct {p0, v0}, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->hardSize:I

    .line 112
    :cond_0
    sget-object v1, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->sSoftMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    monitor-exit v2

    .line 114
    return-void

    .line 108
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
