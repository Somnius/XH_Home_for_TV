.class public Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# static fields
.field private static bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

.field private static final callbackCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private static callbackLock:Ljava/lang/Object;

.field public static defaultIcon:Landroid/graphics/Bitmap;


# instance fields
.field private handler:Landroid/os/Handler;

.field private idleHandler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

.field private mContext:Landroid/content/Context;

.field private memoryCache:Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;

.field private pm:Landroid/content/pm/PackageManager;

.field private threadClient:Lcom/uprui/executor/RuiHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->callbackCache:Ljava/util/HashMap;

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;)Lcom/uprui/executor/RuiHttpClient;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->threadClient:Lcom/uprui/executor/RuiHttpClient;

    return-object v0
.end method

.method static synthetic access$1(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->handlerBackBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$3()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->callbackCache:Ljava/util/HashMap;

    return-object v0
.end method

.method private getBitmapFromKey(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "key"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->memoryCache:Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;

    invoke-virtual {v1, p1}, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .local v0, bitmap:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;
    .locals 2

    .prologue
    .line 63
    const-class v1, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    invoke-direct {v0}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;-><init>()V

    sput-object v0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    .line 66
    :cond_0
    sget-object v0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handlerBackBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "can not handler back a bitmap with null key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_0
    sget-object v2, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->callbackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 138
    :try_start_0
    sget-object v1, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->callbackCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 139
    .local v0, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCallback;>;"
    if-nez v0, :cond_1

    .line 140
    monitor-exit v2

    .line 158
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->memoryCache:Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;

    invoke-virtual {v1, p1, p2}, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 143
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$2;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$2;-><init>(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    monitor-exit v2

    goto :goto_0

    .end local v0           #calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCallback;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private makeDefaultIcon()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 54
    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 55
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 57
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 59
    return-object v0
.end method


# virtual methods
.method public cancelLoad(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCallback;)V
    .locals 3
    .parameter "task"
    .parameter "callback"

    .prologue
    .line 123
    invoke-interface {p1}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;->getTaskKey()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, key:Ljava/lang/String;
    sget-object v2, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->callbackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 125
    :try_start_0
    sget-object v1, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->callbackCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    sget-object v1, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->callbackCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    monitor-exit v2

    .line 130
    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDefaultBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->defaultIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconAndTitle(Lcom/uprui/tv/launcher8/allapp/AppInfo;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .parameter "appInfo"
    .parameter "resolveInfo"

    .prologue
    .line 161
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 162
    .local v0, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, title:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 164
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 166
    :cond_0
    iput-object v1, p1, Lcom/uprui/tv/launcher8/allapp/AppInfo;->title:Ljava/lang/CharSequence;

    .line 167
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 41
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    .line 42
    .local v1, memClass:I
    const/high16 v2, 0x10

    mul-int/2addr v2, v1

    shr-int/lit8 v0, v2, 0x2

    .line 43
    .local v0, cacheSize:I
    invoke-static {v0}, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->getInstance(I)Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;

    move-result-object v2

    iput-object v2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->memoryCache:Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;

    .line 44
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->handler:Landroid/os/Handler;

    .line 45
    new-instance v2, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    invoke-direct {v2}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;-><init>()V

    iput-object v2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->idleHandler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    .line 46
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->callbackLock:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->pm:Landroid/content/pm/PackageManager;

    .line 49
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->makeDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->defaultIcon:Landroid/graphics/Bitmap;

    .line 50
    new-instance v2, Lcom/uprui/executor/RuiHttpClient;

    invoke-direct {v2}, Lcom/uprui/executor/RuiHttpClient;-><init>()V

    iput-object v2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->threadClient:Lcom/uprui/executor/RuiHttpClient;

    .line 51
    return-void
.end method

.method public loadBitmap(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCallback;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "task"
    .parameter "callback"

    .prologue
    .line 82
    invoke-interface {p1}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;->getTaskKey()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, key:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->getBitmapFromKey(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 85
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 88
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    sget-object v4, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->callbackLock:Ljava/lang/Object;

    monitor-enter v4

    .line 89
    :try_start_0
    sget-object v3, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->callbackCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    sget-object v3, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->callbackCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    sget-object v3, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->callbackCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    sget-object v0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->defaultIcon:Landroid/graphics/Bitmap;

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    monitor-exit v4

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 95
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v1, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCallback;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v3, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->callbackCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->idleHandler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    new-instance v4, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;

    invoke-direct {v4, p0, p1, v2}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;-><init>(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 118
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseBitmap(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 75
    sget-object v1, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->callbackCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->memoryCache:Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;

    invoke-virtual {v0, p1}, Lcom/uprui/tv/launcher8/allapp/bitmap/MemoryCache;->release(Ljava/lang/String;)V

    .line 75
    monitor-exit v1

    .line 79
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
