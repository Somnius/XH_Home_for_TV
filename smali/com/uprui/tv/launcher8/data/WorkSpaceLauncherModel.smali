.class public Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "WorkSpaceLauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;,
        Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;,
        Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;
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

.field public static final APP_START_COUNT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCollator:Ljava/text/Collator;

.field private static final worker:Landroid/os/Handler;

.field private static final workerThread:Landroid/os/HandlerThread;


# instance fields
.field private final app:Lcom/uprui/tv/launcher8/LauncherApplication;

.field private callbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

.field private loaderTask:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

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
    .line 63
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->workerThread:Landroid/os/HandlerThread;

    .line 66
    sget-object v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->workerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->workerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->worker:Landroid/os/Handler;

    .line 480
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->sCollator:Ljava/text/Collator;

    .line 481
    new-instance v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$1;

    invoke-direct {v0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$1;-><init>()V

    sput-object v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 489
    new-instance v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$2;

    invoke-direct {v0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$2;-><init>()V

    sput-object v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->APP_CATEGORY_COMPARATOR:Ljava/util/Comparator;

    .line 512
    new-instance v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$3;

    invoke-direct {v0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$3;-><init>()V

    sput-object v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->APP_START_COUNT_COMPARATOR:Ljava/util/Comparator;

    .line 521
    return-void
.end method

.method public constructor <init>(Lcom/uprui/tv/launcher8/LauncherApplication;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;)V
    .locals 1
    .parameter "app"
    .parameter "bitmapCache"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->lock:Ljava/lang/Object;

    .line 60
    new-instance v0, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    invoke-direct {v0}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->mItems:Ljava/util/ArrayList;

    .line 90
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;

    .line 92
    invoke-virtual {p1}, Lcom/uprui/tv/launcher8/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uprui/tv/launcher8/allapp/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 93
    return-void
.end method

.method static synthetic access$0()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$1(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->loaderTask:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$4(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->loaderTask:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    return-void
.end method

.method static synthetic access$5(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$6(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Lcom/uprui/tv/launcher8/LauncherApplication;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;

    return-object v0
.end method

.method private getTopNCategoryCode(II)I
    .locals 5
    .parameter "category"
    .parameter "N"

    .prologue
    const/4 v4, 0x0

    .line 732
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 734
    .local v1, categoryStr:Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 739
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 740
    .local v0, categoryCode:I
    return v0

    .line 735
    .end local v0           #categoryCode:I
    :catch_0
    move-exception v2

    .line 736
    .local v2, e:Ljava/lang/Exception;
    add-int/lit8 v3, p2, -0x2

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getUpdateList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 705
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 706
    .local v3, updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 728
    return-object v3

    .line 706
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 707
    .local v2, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    iget v5, v2, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->categoryCode:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 708
    iget v5, v2, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->categoryCode:I

    const/4 v6, 0x3

    invoke-direct {p0, v5, v6}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->getTopNCategoryCode(II)I

    move-result v0

    .line 709
    .local v0, baseCategory:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 711
    :pswitch_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 714
    :pswitch_2
    iget v5, v2, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->categoryCode:I

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->getTopNCategoryCode(II)I

    move-result v1

    .line 715
    .local v1, branchCategory:I
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 719
    :sswitch_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 715
    :sswitch_data_0
    .sparse-switch
        0x28a1 -> :sswitch_0
        0x28a3 -> :sswitch_0
        0x28a8 -> :sswitch_0
    .end sparse-switch
.end method

.method private isInItems(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 582
    const/4 v1, 0x0

    .line 583
    .local v1, isInItem:Z
    iget-object v2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 589
    :goto_0
    return v1

    .line 583
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 584
    .local v0, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    iget-object v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 585
    const/4 v1, 0x1

    .line 586
    goto :goto_0
.end method

.method private isInstall(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 3
    .parameter "pm"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 691
    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v1

    .line 695
    :cond_1
    const/16 v2, 0x2000

    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    const/4 v1, 0x1

    goto :goto_0

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private loadAllApps()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v8, allInstallInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    new-instance v15, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v15, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 652
    .local v15, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;

    invoke-virtual {v3}, Lcom/uprui/tv/launcher8/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 654
    .local v17, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;

    invoke-virtual {v3}, Lcom/uprui/tv/launcher8/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 655
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 657
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/rui/launcher/common/RLauncherSettings$Classifieds;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 659
    const-string v3, "title"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 660
    .local v18, titleIndex:I
    const-string v3, "component"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 661
    .local v12, cnIndex:I
    const-string v3, "categoryCode"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 663
    .local v10, categoryCodeIndex:I
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_3

    .line 683
    :cond_1
    if-eqz v9, :cond_2

    .line 684
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 687
    .end local v10           #categoryCodeIndex:I
    .end local v12           #cnIndex:I
    .end local v18           #titleIndex:I
    :cond_2
    :goto_1
    return-object v8

    .line 664
    .restart local v10       #categoryCodeIndex:I
    .restart local v12       #cnIndex:I
    .restart local v18       #titleIndex:I
    :cond_3
    :try_start_1
    new-instance v14, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    invoke-direct {v14}, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;-><init>()V

    .line 665
    .local v14, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->setTitle(Ljava/lang/String;)V

    .line 666
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    .line 667
    .local v11, cn:Landroid/content/ComponentName;
    invoke-virtual {v15, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 668
    iput-object v15, v14, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->intent:Landroid/content/Intent;

    .line 669
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v14, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    .line 670
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v14, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->className:Ljava/lang/String;

    .line 671
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v14, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->categoryCode:I

    .line 672
    const/4 v3, 0x0

    iput v3, v14, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconType:I

    .line 673
    const/4 v3, 0x0

    iput v3, v14, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconFrom:I

    .line 674
    iget-object v3, v14, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->isInstall(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v16

    .line 675
    .local v16, isInstall:Z
    if-eqz v16, :cond_0

    .line 676
    move/from16 v0, v16

    iput-boolean v0, v14, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->isInstall:Z

    .line 677
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 680
    .end local v10           #categoryCodeIndex:I
    .end local v11           #cn:Landroid/content/ComponentName;
    .end local v12           #cnIndex:I
    .end local v14           #info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    .end local v16           #isInstall:Z
    .end local v18           #titleIndex:I
    :catch_0
    move-exception v13

    .line 681
    .local v13, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 683
    if-eqz v9, :cond_2

    .line 684
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 682
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 683
    if-eqz v9, :cond_4

    .line 684
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 686
    :cond_4
    throw v3
.end method

.method private updateItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 18
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 744
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    .local p2, updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;

    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 745
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 747
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;

    invoke-static {v2}, Lcom/uprui/tv/launcher8/DialogPopView;->getDeleteSCIPackageName(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v8

    .line 748
    .local v8, deleteSCIArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 756
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_4

    .line 770
    if-eqz v7, :cond_2

    .line 771
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 775
    .end local v8           #deleteSCIArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    :cond_2
    :goto_2
    return-void

    .line 748
    .restart local v8       #deleteSCIArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 749
    .local v14, updateInfo:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    sget-object v2, Lcom/uprui/tv/launcher8/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "packageName= ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v0, v14, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 750
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v14, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 751
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 767
    .end local v8           #deleteSCIArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #updateInfo:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    :catch_0
    move-exception v9

    .line 768
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 770
    if-eqz v7, :cond_2

    .line 771
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 757
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #deleteSCIArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    :cond_4
    :try_start_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 758
    .local v10, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    iget-object v2, v10, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 759
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;

    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 761
    .local v12, resolver:Landroid/content/ContentResolver;
    const-string v15, "packageName= ?"

    .line 762
    .local v15, where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v10, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    aput-object v3, v13, v2

    .line 763
    .local v13, selectionArgs:[Ljava/lang/String;
    sget-object v2, Lcom/uprui/tv/launcher8/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v2, v15, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 769
    .end local v8           #deleteSCIArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    .end local v11           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    .end local v12           #resolver:Landroid/content/ContentResolver;
    .end local v13           #selectionArgs:[Ljava/lang/String;
    .end local v15           #where:Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 770
    if-eqz v7, :cond_5

    .line 771
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 773
    :cond_5
    throw v2
.end method


# virtual methods
.method public declared-synchronized addClassifieds(Landroid/content/Context;Ljava/util/List;)V
    .locals 13
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
    .line 524
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 579
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 528
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/uprui/tv/launcher8/DialogPopView;->getDeleteSCIPackageName(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    .line 529
    .local v6, deleteSCIArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 536
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 537
    .local v0, N:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v1, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-lt v7, v0, :cond_4

    .line 572
    iget-object v11, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;

    if-eqz v11, :cond_0

    .line 573
    iget-object v11, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;

    .line 574
    .local v4, callbarck:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
    if-eqz v4, :cond_0

    .line 575
    iget-object v11, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->mItems:Ljava/util/ArrayList;

    sget-object v12, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->APP_START_COUNT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 576
    invoke-interface {v4, v1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;->bindClassifiedsAdded(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 524
    .end local v0           #N:I
    .end local v1           #addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    .end local v4           #callbarck:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
    .end local v6           #deleteSCIArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #i:I
    .end local v9           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 530
    .restart local v6       #deleteSCIArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :cond_3
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/rui/launcher/common/services/ClassifiedInfo;

    .line 531
    .local v10, str:Lcom/rui/launcher/common/services/ClassifiedInfo;
    iget-object v11, v10, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 532
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 540
    .end local v10           #str:Lcom/rui/launcher/common/services/ClassifiedInfo;
    .restart local v0       #N:I
    .restart local v1       #addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    .restart local v7       #i:I
    :cond_4
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rui/launcher/common/services/ClassifiedInfo;

    .line 541
    .local v5, cinfo:Lcom/rui/launcher/common/services/ClassifiedInfo;
    if-eqz v5, :cond_5

    const/4 v11, -0x1

    iget v12, v5, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    if-ne v11, v12, :cond_6

    .line 539
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 545
    :cond_6
    iget v11, v5, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->getTopNCategoryCode(II)I

    move-result v2

    .line 546
    .local v2, baseCategory:I
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 548
    :pswitch_1
    iget-object v11, v5, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->isInItems(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 549
    new-instance v8, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    iget-object v11, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;

    iget-object v12, v5, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v11, v12}, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 550
    .local v8, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    iget-object v11, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 555
    .end local v8           #info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    :pswitch_2
    iget v11, v5, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->getTopNCategoryCode(II)I

    move-result v3

    .line 556
    .local v3, branchCategory:I
    sparse-switch v3, :sswitch_data_0

    goto :goto_3

    .line 560
    :sswitch_0
    iget-object v11, v5, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->isInItems(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 561
    new-instance v8, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    iget-object v11, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;

    iget-object v12, v5, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v11, v12}, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 562
    .restart local v8       #info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    iget-object v11, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 556
    :sswitch_data_0
    .sparse-switch
        0x28a1 -> :sswitch_0
        0x28a3 -> :sswitch_0
        0x28a8 -> :sswitch_0
    .end sparse-switch
.end method

.method public bindWorkspaceAfterClassify()V
    .locals 2

    .prologue
    .line 618
    sget-object v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->worker:Landroid/os/Handler;

    new-instance v1, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;

    invoke-direct {v1, p0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;-><init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 638
    return-void
.end method

.method enqueuePackageUpdated(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 396
    sget-object v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->worker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 397
    return-void
.end method

.method public initTableClassifieds(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 598
    if-nez p1, :cond_0

    .line 599
    iget-object p1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;

    .line 600
    :cond_0
    move-object v0, p1

    .line 601
    .local v0, cx:Landroid/content/Context;
    sget-object v1, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->worker:Landroid/os/Handler;

    new-instance v2, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$4;

    invoke-direct {v2, p0, v0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$4;-><init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 614
    return-void
.end method

.method public initialize(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;)V
    .locals 2
    .parameter "callbacks"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;

    .line 99
    monitor-exit v1

    .line 102
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadClassifyedApp(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 641
    .local p1, mItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    iget-object v2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;

    invoke-static {v2}, Lcom/rui/launcher/common/RContentHelper;->isClassified(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 647
    :goto_0
    return-void

    .line 644
    :cond_0
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->loadAllApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 645
    .local v0, allList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    invoke-direct {p0, v0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->getUpdateList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 646
    .local v1, updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    invoke-direct {p0, p1, v1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->updateItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
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

    .line 112
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, packageName:Ljava/lang/String;
    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 114
    .local v5, replacing:Z
    const/4 v2, 0x0

    .line 116
    .local v2, op:I
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 162
    .end local v2           #op:I
    .end local v3           #packageName:Ljava/lang/String;
    .end local v5           #replacing:Z
    :cond_1
    :goto_0
    return-void

    .line 121
    .restart local v2       #op:I
    .restart local v3       #packageName:Ljava/lang/String;
    .restart local v5       #replacing:Z
    :cond_2
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 122
    const/4 v2, 0x2

    .line 136
    :cond_3
    :goto_1
    if-eqz v2, :cond_1

    .line 137
    new-instance v7, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;

    new-array v8, v8, [Ljava/lang/String;

    aput-object v3, v8, v9

    invoke-direct {v7, p0, v2, v8}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;-><init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->enqueuePackageUpdated(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 123
    :cond_4
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 124
    if-nez v5, :cond_3

    .line 125
    const/4 v2, 0x3

    .line 128
    goto :goto_1

    :cond_5
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 129
    if-nez v5, :cond_6

    .line 130
    const/4 v2, 0x1

    .line 131
    goto :goto_1

    .line 132
    :cond_6
    const/4 v2, 0x2

    goto :goto_1

    .line 140
    .end local v2           #op:I
    .end local v3           #packageName:Ljava/lang/String;
    .end local v5           #replacing:Z
    :cond_7
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 141
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, packages:[Ljava/lang/String;
    new-instance v7, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;

    invoke-direct {v7, p0, v8, v4}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;-><init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->enqueuePackageUpdated(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;)V

    .line 144
    const/4 v6, 0x1

    .line 145
    .local v6, runLoader:Z
    iget-object v7, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_8

    .line 146
    iget-object v7, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;

    .line 147
    .local v1, callbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
    if-eqz v1, :cond_8

    .line 148
    invoke-interface {v1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 149
    const/4 v6, 0x0

    .line 153
    .end local v1           #callbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
    :cond_8
    if-eqz v6, :cond_1

    .line 154
    iget-object v7, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;

    invoke-virtual {p0, v7, v9}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    .line 157
    .end local v4           #packages:[Ljava/lang/String;
    .end local v6           #runLoader:Z
    :cond_9
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 158
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 159
    .restart local v4       #packages:[Ljava/lang/String;
    new-instance v7, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;

    const/4 v8, 0x4

    invoke-direct {v7, p0, v8, v4}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;-><init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->enqueuePackageUpdated(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;)V

    goto :goto_0
.end method

.method public startLoader(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 166
    iget-object v2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 169
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->loaderTask:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    .line 170
    .local v0, oldTask:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;
    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->isLaunching()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const/4 p2, 0x1

    .line 175
    :cond_0
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->stopLocked()V

    .line 178
    :cond_1
    new-instance v1, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;-><init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->loaderTask:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    .line 179
    new-instance v1, Lcom/uprui/executor/RuiHttpClient;

    invoke-direct {v1}, Lcom/uprui/executor/RuiHttpClient;-><init>()V

    iget-object v3, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->loaderTask:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    invoke-virtual {v1, v3}, Lcom/uprui/executor/RuiHttpClient;->execute(Ljava/lang/Runnable;)V

    .line 166
    .end local v0           #oldTask:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;
    :cond_2
    monitor-exit v2

    .line 182
    return-void

    .line 166
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
    .line 185
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->loaderTask:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->loaderTask:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->stopLocked()V

    .line 185
    :cond_0
    monitor-exit v1

    .line 190
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateItemDatas(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 778
    iget-object v3, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->mItems:Ljava/util/ArrayList;

    monitor-enter v3

    .line 779
    :try_start_0
    iget-object v2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 778
    monitor-exit v3

    .line 786
    return-void

    .line 780
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 781
    .local v0, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    iget-object v2, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 782
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 778
    .end local v0           #info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
