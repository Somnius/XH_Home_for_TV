.class public Lcom/uprui/tv/launcher8/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;,
        Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "LauncherApplication"

.field private static isClassified:Z

.field public static resources:Landroid/content/res/Resources;


# instance fields
.field private allAppsModel:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

.field private bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

.field private final mFavoritesObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mRBroadcastReceiver:Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;

.field private workSpaceModel:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uprui/tv/launcher8/LauncherApplication;->isClassified:Z

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 125
    new-instance v0, Lcom/uprui/tv/launcher8/LauncherApplication$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/uprui/tv/launcher8/LauncherApplication$1;-><init>(Lcom/uprui/tv/launcher8/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/uprui/tv/launcher8/LauncherApplication;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->workSpaceModel:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    return-object v0
.end method

.method static synthetic access$1(Lcom/uprui/tv/launcher8/LauncherApplication;)Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->allAppsModel:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    return-object v0
.end method

.method static synthetic access$2(Z)V
    .locals 0
    .parameter

    .prologue
    .line 53
    sput-boolean p0, Lcom/uprui/tv/launcher8/LauncherApplication;->isClassified:Z

    return-void
.end method

.method static synthetic access$3(Lcom/uprui/tv/launcher8/LauncherApplication;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getProcessName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 426
    const-string v0, ""

    .line 427
    .local v0, currentProcName:Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 428
    .local v2, pid:I
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/uprui/tv/launcher8/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 429
    .local v1, manager:Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 434
    return-object v0

    .line 429
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 430
    .local v3, processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v2, :cond_0

    .line 431
    iget-object v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isClassfied()Z
    .locals 1

    .prologue
    .line 157
    sget-boolean v0, Lcom/uprui/tv/launcher8/LauncherApplication;->isClassified:Z

    return v0
.end method

.method public static requestClassify(Landroid/content/Context;ZLjava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter "auto"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uprui.tv.launcher.action.CLASSIFY_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "autoMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    const-string v1, "classifiedData"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 177
    return-void
.end method

.method public static requestDownLoadRecIcons(Landroid/content/Context;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "context"
    .parameter "response"
    .parameter "auto"

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uprui.tv.launcher.action.DOWNLOAD_REC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "autoMode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    const-string v1, "response"

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    return-void
.end method

.method public static requestRUIUpdate(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "auto"

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uprui.mid.launcher8.action.RUI_UPDATE_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "autoMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    return-void
.end method

.method public static requestRecommendsUpdate(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "auto"

    .prologue
    .line 188
    return-void
.end method


# virtual methods
.method getAllAppLauncherModel()Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->allAppsModel:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    return-object v0
.end method

.method public getIconCache()Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    return-object v0
.end method

.method getWorkSpaceModel()Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->workSpaceModel:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    return-object v0
.end method

.method public initLauncherModel(Lcom/uprui/tv/launcher8/allapp/AllAppActivity;)Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;
    .locals 1
    .parameter "allApps"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->allAppsModel:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    invoke-virtual {v0, p1}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->initialize(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;)V

    .line 141
    iget-object v0, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->allAppsModel:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    return-object v0
.end method

.method public initLauncherModel(Lcom/uprui/tv/launcher8/ActLauncher;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
    .locals 2
    .parameter "launcher"

    .prologue
    .line 134
    const-string v0, "LauncherApplication"

    const-string v1, "initLauncherModel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->workSpaceModel:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    invoke-virtual {v0, p1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->initialize(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;)V

    .line 136
    iget-object v0, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->workSpaceModel:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 61
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/rui/launcher/common/DeviceType;->setMyDeviceType(I)V

    .line 63
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/LauncherApplication;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, currentProcName:Ljava/lang/String;
    const-string v2, "LauncherApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currentProcName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v2, "com.uprui.tv.launcher8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/uprui/executor/RuiHttpClient;->init(Landroid/app/Application;)V

    .line 69
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->init(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sput-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    .line 74
    invoke-static {}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->getInstance()Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    move-result-object v2

    iput-object v2, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    .line 75
    iget-object v2, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    invoke-virtual {v2, p0}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->init(Landroid/content/Context;)V

    .line 76
    invoke-static {p0}, Lcom/uprui/tv/launcher8/allapp/Utilities;->instance(Landroid/content/Context;)V

    .line 78
    new-instance v2, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    iget-object v3, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    invoke-direct {v2, p0, v3}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;-><init>(Lcom/uprui/tv/launcher8/LauncherApplication;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;)V

    iput-object v2, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->workSpaceModel:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    .line 79
    new-instance v2, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    iget-object v3, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    invoke-direct {v2, p0, v3}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;-><init>(Lcom/uprui/tv/launcher8/LauncherApplication;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;)V

    iput-object v2, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->allAppsModel:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    .line 81
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->workSpaceModel:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    invoke-virtual {p0, v2, v1}, Lcom/uprui/tv/launcher8/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    iget-object v2, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->allAppsModel:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    invoke-virtual {p0, v2, v1}, Lcom/uprui/tv/launcher8/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->workSpaceModel:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    invoke-virtual {p0, v2, v1}, Lcom/uprui/tv/launcher8/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    iget-object v2, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->allAppsModel:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    invoke-virtual {p0, v2, v1}, Lcom/uprui/tv/launcher8/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    new-instance v2, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;

    invoke-direct {v2, p0, p0}, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;-><init>(Lcom/uprui/tv/launcher8/LauncherApplication;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v2, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;-><init>(Lcom/uprui/tv/launcher8/LauncherApplication;)V

    iput-object v2, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->mRBroadcastReceiver:Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;

    .line 98
    iget-object v2, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->mRBroadcastReceiver:Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;

    iget-object v3, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->mRBroadcastReceiver:Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;

    invoke-virtual {v3}, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/uprui/tv/launcher8/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    invoke-static {p0}, Lcom/rui/launcher/common/RContentHelper;->isClassified(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->workSpaceModel:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    invoke-virtual {v2, p0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->initTableClassifieds(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 103
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/uprui/tv/launcher8/LauncherApplication;->isClassified:Z

    goto/16 :goto_0
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 115
    iget-object v1, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->workSpaceModel:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    iget-object v1, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->allAppsModel:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 119
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/uprui/tv/launcher8/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 120
    return-void
.end method
