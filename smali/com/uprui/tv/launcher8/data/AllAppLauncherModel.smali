.class public Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "AllAppLauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;,
        Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;,
        Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;
    }
.end annotation


# static fields
.field public static final APP_CATEGORY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/IconItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final APP_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/IconItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static final sCollator:Ljava/text/Collator;

.field private static final worker:Landroid/os/Handler;

.field private static final workerThread:Landroid/os/HandlerThread;


# instance fields
.field private allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;

.field private allAppsLoadDelay:I

.field private allAppsLoaded:Z

.field private final app:Lcom/uprui/tv/launcher8/LauncherApplication;

.field private batchSize:I

.field private bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

.field private callbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

.field private loaderTask:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;

.field private final lock:Ljava/lang/Object;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->DEBUG:Z

    .line 45
    const-string v0, "AllAppLauncherModel"

    sput-object v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "allapp-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->workerThread:Landroid/os/HandlerThread;

    .line 58
    sget-object v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->workerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->workerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->worker:Landroid/os/Handler;

    .line 551
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->sCollator:Ljava/text/Collator;

    .line 552
    new-instance v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$1;

    invoke-direct {v0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$1;-><init>()V

    sput-object v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 560
    new-instance v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$2;

    invoke-direct {v0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$2;-><init>()V

    sput-object v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->APP_CATEGORY_COMPARATOR:Ljava/util/Comparator;

    .line 581
    return-void
.end method

.method public constructor <init>(Lcom/uprui/tv/launcher8/LauncherApplication;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;)V
    .locals 2
    .parameter "app"
    .parameter "bitmapCache"

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->lock:Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    invoke-direct {v0}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->mItems:Ljava/util/ArrayList;

    .line 85
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;

    .line 86
    new-instance v0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    invoke-direct {v0, p2}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;-><init>(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    .line 87
    iput-object p2, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    .line 89
    invoke-virtual {p1}, Lcom/uprui/tv/launcher8/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uprui/tv/launcher8/allapp/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 91
    invoke-virtual {p1}, Lcom/uprui/tv/launcher8/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsLoadDelay:I

    .line 93
    invoke-virtual {p1}, Lcom/uprui/tv/launcher8/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->batchSize:I

    .line 94
    return-void
.end method

.method static synthetic access$0()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 551
    sget-object v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$1()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->DEBUG:Z

    return v0
.end method

.method static synthetic access$10(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->batchSize:I

    return v0
.end method

.method static synthetic access$11(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    return-object v0
.end method

.method static synthetic access$12(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsLoadDelay:I

    return v0
.end method

.method static synthetic access$13(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/LauncherApplication;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->loaderTask:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$5(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->loaderTask:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;

    return-void
.end method

.method static synthetic access$6(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$8(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsLoaded:Z

    return v0
.end method

.method static synthetic access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    return-object v0
.end method

.method private bulidValues(Lcom/uprui/tv/launcher8/allapp/AppInfo;)Landroid/content/ContentValues;
    .locals 4
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 773
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 774
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "title"

    iget-object v2, p1, Lcom/uprui/tv/launcher8/allapp/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v1, "intent"

    invoke-virtual {p1}, Lcom/uprui/tv/launcher8/allapp/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v1, "packageName"

    iget-object v2, p1, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v1, "className"

    iget-object v2, p1, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v1, "categoryCode"

    iget v2, p1, Lcom/uprui/tv/launcher8/allapp/AppInfo;->category:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 779
    const-string v1, "iconType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 780
    const-string v1, "isInstall"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 781
    return-object v0
.end method

.method private getTopNCategoryCode(II)I
    .locals 5
    .parameter "category"
    .parameter "N"

    .prologue
    const/4 v4, 0x0

    .line 761
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 763
    .local v1, categoryStr:Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 768
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 769
    .local v0, categoryCode:I
    return v0

    .line 764
    .end local v0           #categoryCode:I
    :catch_0
    move-exception v2

    .line 765
    .local v2, e:Ljava/lang/Exception;
    add-int/lit8 v3, p2, -0x2

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getUpdateList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    iget-object v5, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    iget-object v3, v5, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->added:Ljava/util/ArrayList;

    .line 732
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    const-string v5, "TAG_SYL"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getUpdateList ===> data size: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v4, updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 757
    return-object v4

    .line 734
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    .line 735
    .local v2, info:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    iget v6, v2, Lcom/uprui/tv/launcher8/allapp/AppInfo;->category:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 736
    iget v6, v2, Lcom/uprui/tv/launcher8/allapp/AppInfo;->category:I

    const/4 v7, 0x3

    invoke-direct {p0, v6, v7}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->getTopNCategoryCode(II)I

    move-result v0

    .line 737
    .local v0, baseCategory:I
    const-string v6, "TAG_SYL"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getUpdateList ====> baseCategory: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/uprui/tv/launcher8/allapp/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 740
    :pswitch_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 743
    :pswitch_2
    iget v6, v2, Lcom/uprui/tv/launcher8/allapp/AppInfo;->category:I

    const/4 v7, 0x4

    invoke-direct {p0, v6, v7}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->getTopNCategoryCode(II)I

    move-result v1

    .line 744
    .local v1, branchCategory:I
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 748
    :sswitch_0
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 738
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 744
    :sswitch_data_0
    .sparse-switch
        0x28a1 -> :sswitch_0
        0x28a3 -> :sswitch_0
        0x28a8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected addCategoryToAppInfo()V
    .locals 15

    .prologue
    const/4 v2, 0x0

    .line 638
    iget-object v11, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;

    .line 639
    .local v11, context:Landroid/content/Context;
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 640
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v14, "categoryCode ASC"

    .line 641
    .local v14, order:Ljava/lang/String;
    sget-object v1, Lcom/rui/launcher/common/RLauncherSettings$Classifieds;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "categoryCode ASC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 643
    .local v6, c:Landroid/database/Cursor;
    new-instance v13, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v13}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 645
    .local v13, lock:Ljava/util/concurrent/locks/ReentrantLock;
    :try_start_0
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 646
    const-string v1, "component"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 647
    .local v10, componentIndex:I
    const-string v1, "categoryCode"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 649
    .local v7, categoryIndex:I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 661
    if-eqz v6, :cond_1

    .line 662
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 664
    :cond_1
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 666
    return-void

    .line 650
    :cond_2
    :try_start_1
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 651
    .local v9, component:Landroid/content/ComponentName;
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 653
    .local v8, cd:I
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    invoke-virtual {v1, v9, v8}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->findAndUpdateApplicationInfoBy(Landroid/content/ComponentName;I)Lcom/uprui/tv/launcher8/allapp/AppInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 655
    .local v12, info:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    if-nez v12, :cond_0

    goto :goto_0

    .line 660
    .end local v7           #categoryIndex:I
    .end local v8           #cd:I
    .end local v9           #component:Landroid/content/ComponentName;
    .end local v10           #componentIndex:I
    .end local v12           #info:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    :catchall_0
    move-exception v1

    .line 661
    if-eqz v6, :cond_3

    .line 662
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 664
    :cond_3
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 665
    throw v1
.end method

.method public declared-synchronized addClassifieds(Landroid/content/Context;Ljava/util/List;)V
    .locals 9
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/rui/launcher/common/services/ClassifiedInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 584
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 607
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 587
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v1, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 589
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v0, :cond_2

    .line 600
    iget-object v6, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_0

    .line 601
    iget-object v6, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;

    .line 602
    .local v2, callbarck:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;
    if-eqz v2, :cond_0

    .line 603
    sget-object v6, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->APP_CATEGORY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 604
    invoke-interface {v2, v1}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;->bindClassifiedsAdded(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 584
    .end local v0           #N:I
    .end local v1           #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    .end local v2           #callbarck:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;
    .end local v4           #i:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 590
    .restart local v0       #N:I
    .restart local v1       #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    .restart local v4       #i:I
    :cond_2
    :try_start_1
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rui/launcher/common/services/ClassifiedInfo;

    .line 591
    .local v3, cinfo:Lcom/rui/launcher/common/services/ClassifiedInfo;
    if-eqz v3, :cond_3

    const/4 v6, -0x1

    iget v7, v3, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    if-ne v6, v7, :cond_4

    .line 589
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 595
    :cond_4
    iget-object v6, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    iget-object v7, v3, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    iget v8, v3, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    invoke-virtual {v6, v7, v8}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->findAndUpdateApplicationInfoBy(Landroid/content/ComponentName;I)Lcom/uprui/tv/launcher8/allapp/AppInfo;

    move-result-object v5

    .line 596
    .local v5, info:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    if-eqz v5, :cond_3

    .line 597
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public bindAllAppsAfterClassify()V
    .locals 2

    .prologue
    .line 699
    sget-object v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->worker:Landroid/os/Handler;

    new-instance v1, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;

    invoke-direct {v1, p0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;-><init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 723
    return-void
.end method

.method enqueuePackageUpdated(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 399
    sget-object v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->worker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 400
    return-void
.end method

.method protected getClassifyMap()Ljava/util/HashMap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 673
    iget-object v12, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;

    .line 674
    .local v12, context:Landroid/content/Context;
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 675
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v13, "categoryCode ASC"

    .line 676
    .local v13, order:Ljava/lang/String;
    sget-object v1, Lcom/rui/launcher/common/RLauncherSettings$Classifieds;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "categoryCode ASC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 677
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 678
    .local v14, size:I
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, v14}, Ljava/util/HashMap;-><init>(I)V

    .line 680
    .local v9, classifyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    :try_start_0
    const-string v1, "component"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 681
    .local v11, componentIndex:I
    const-string v1, "categoryCode"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 683
    .local v8, categoryIndex:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 690
    if-eqz v6, :cond_0

    .line 691
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 694
    :cond_0
    return-object v9

    .line 684
    :cond_1
    :try_start_1
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 685
    .local v10, component:Landroid/content/ComponentName;
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 687
    .local v7, category:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 689
    .end local v7           #category:I
    .end local v8           #categoryIndex:I
    .end local v10           #component:Landroid/content/ComponentName;
    .end local v11           #componentIndex:I
    :catchall_0
    move-exception v1

    .line 690
    if-eqz v6, :cond_2

    .line 691
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 693
    :cond_2
    throw v1
.end method

.method public initTableClassifieds(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 615
    if-nez p1, :cond_0

    .line 616
    iget-object p1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;

    .line 617
    :cond_0
    move-object v0, p1

    .line 618
    .local v0, cx:Landroid/content/Context;
    sget-object v1, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->worker:Landroid/os/Handler;

    new-instance v2, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$3;

    invoke-direct {v2, p0, v0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$3;-><init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 631
    return-void
.end method

.method public initialize(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;)V
    .locals 2
    .parameter "callbacks"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;

    .line 100
    monitor-exit v1

    .line 103
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 114
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, packageName:Ljava/lang/String;
    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 117
    .local v5, replacing:Z
    const/4 v2, 0x0

    .line 119
    .local v2, op:I
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 165
    .end local v2           #op:I
    .end local v3           #packageName:Ljava/lang/String;
    .end local v5           #replacing:Z
    :cond_1
    :goto_0
    return-void

    .line 124
    .restart local v2       #op:I
    .restart local v3       #packageName:Ljava/lang/String;
    .restart local v5       #replacing:Z
    :cond_2
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 125
    const/4 v2, 0x2

    .line 139
    :cond_3
    :goto_1
    if-eqz v2, :cond_1

    .line 140
    new-instance v7, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;

    new-array v8, v8, [Ljava/lang/String;

    aput-object v3, v8, v9

    invoke-direct {v7, p0, v2, v8}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;-><init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->enqueuePackageUpdated(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 126
    :cond_4
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 127
    if-nez v5, :cond_3

    .line 128
    const/4 v2, 0x3

    .line 131
    goto :goto_1

    :cond_5
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 132
    if-nez v5, :cond_6

    .line 133
    const/4 v2, 0x1

    .line 134
    goto :goto_1

    .line 135
    :cond_6
    const/4 v2, 0x2

    goto :goto_1

    .line 143
    .end local v2           #op:I
    .end local v3           #packageName:Ljava/lang/String;
    .end local v5           #replacing:Z
    :cond_7
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 144
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, packages:[Ljava/lang/String;
    new-instance v7, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;

    invoke-direct {v7, p0, v8, v4}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;-><init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->enqueuePackageUpdated(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;)V

    .line 147
    const/4 v6, 0x1

    .line 148
    .local v6, runLoader:Z
    iget-object v7, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_8

    .line 149
    iget-object v7, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;

    .line 150
    .local v1, callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;
    if-eqz v1, :cond_8

    .line 151
    invoke-interface {v1}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 152
    const/4 v6, 0x0

    .line 156
    .end local v1           #callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;
    :cond_8
    if-eqz v6, :cond_1

    .line 157
    iget-object v7, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;

    invoke-virtual {p0, v7, v9}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    .line 160
    .end local v4           #packages:[Ljava/lang/String;
    .end local v6           #runLoader:Z
    :cond_9
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 161
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 162
    .restart local v4       #packages:[Ljava/lang/String;
    new-instance v7, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;

    const/4 v8, 0x4

    invoke-direct {v7, p0, v8, v4}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;-><init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->enqueuePackageUpdated(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;)V

    goto :goto_0
.end method

.method public startLoader(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 169
    sget-boolean v1, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startLoader[isLanching:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 173
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->loaderTask:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;

    .line 174
    .local v0, oldTask:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;
    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->isLaunching()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const/4 p2, 0x1

    .line 179
    :cond_1
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->stopLocked()V

    .line 182
    :cond_2
    new-instance v1, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;-><init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->loaderTask:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;

    .line 183
    new-instance v1, Lcom/uprui/executor/RuiHttpClient;

    invoke-direct {v1}, Lcom/uprui/executor/RuiHttpClient;-><init>()V

    iget-object v3, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->loaderTask:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;

    invoke-virtual {v1, v3}, Lcom/uprui/executor/RuiHttpClient;->execute(Ljava/lang/Runnable;)V

    .line 170
    .end local v0           #oldTask:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;
    :cond_3
    monitor-exit v2

    .line 186
    return-void

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopLoader()V
    .locals 2

    .prologue
    .line 189
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->loaderTask:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->loaderTask:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->stopLocked()V

    .line 189
    :cond_0
    monitor-exit v1

    .line 194
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
