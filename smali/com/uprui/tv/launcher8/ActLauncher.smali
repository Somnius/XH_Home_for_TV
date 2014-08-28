.class public Lcom/uprui/tv/launcher8/ActLauncher;
.super Landroid/support/v4/app/FragmentActivity;
.source "ActLauncher.java"

# interfaces
.implements Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
.implements Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/tv/launcher8/ActLauncher$AllAppsCallback;,
        Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final FRAGMENT_APPS:I = 0x3

.field public static final FRAGMENT_DEMANTVIDEO:I = 0x2

.field public static final FRAGMENT_GAME:I = 0x5

.field public static final FRAGMENT_LIVEVIDEO:I = 0x1

.field public static final FRAGMENT_MUSIC:I = 0x4

.field public static final FRAGMENT_NETWORK:I = 0x6

.field public static final FRAGMENT_SETTING:I = 0x8

.field public static final FRAGMENT_WIN8HOME:I = 0x7

.field public static final TAG:Ljava/lang/String; = "TvLauncher"

.field static listener:Landroid/location/LocationListener;


# instance fields
.field private fragmentStatus:I

.field private fragments:Landroid/support/v4/app/FragmentManager;

.field private homeFragment:Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;

.field private itemDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAllAppsCallback:Lcom/uprui/tv/launcher8/ActLauncher$AllAppsCallback;

.field private mAllAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;

.field private mItemCallback:Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;

.field private mWorkSpaceFragmentSelectListener:Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;

.field private model:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

.field private onResumeNeedsLoad:Z

.field private paused:Z

.field private restoring:Z

.field private specifiedFragment:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 431
    new-instance v0, Lcom/uprui/tv/launcher8/ActLauncher$1;

    invoke-direct {v0}, Lcom/uprui/tv/launcher8/ActLauncher$1;-><init>()V

    sput-object v0, Lcom/uprui/tv/launcher8/ActLauncher;->listener:Landroid/location/LocationListener;

    .line 448
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->paused:Z

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/uprui/tv/launcher8/ActLauncher;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->itemDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/uprui/tv/launcher8/ActLauncher;)Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mItemCallback:Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;

    return-object v0
.end method

.method private loadPersonRecommend()V
    .locals 8

    .prologue
    .line 134
    invoke-static {p0}, Lcom/rui/launcher/common/utils/RUtilities;->getLicense(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, license:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v3, pairs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "license"

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "startid"

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "direction"

    const-string v7, "+"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v4, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/ActLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;-><init>(Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 145
    .local v4, task:Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-long v0, v5

    .line 146
    .local v0, delayTime:J
    new-instance v5, Lcom/uprui/executor/RuiHttpClient;

    invoke-direct {v5}, Lcom/uprui/executor/RuiHttpClient;-><init>()V

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v0

    invoke-virtual {v5, v4, v6, v7}, Lcom/uprui/executor/RuiHttpClient;->executeDelay(Ljava/lang/Runnable;J)V

    .line 147
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/ActLauncher;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragments:Landroid/support/v4/app/FragmentManager;

    .line 152
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragments:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->homeFragment:Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;

    .line 153
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragments:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->specifiedFragment:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;

    .line 155
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/ActLauncher;->showWin8Home()V

    .line 156
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/ActLauncher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/LauncherApplication;

    invoke-virtual {v0, p0}, Lcom/uprui/tv/launcher8/LauncherApplication;->initLauncherModel(Lcom/uprui/tv/launcher8/ActLauncher;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->model:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    .line 157
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->restoring:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->model:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public LoadEndFromDB(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 535
    .local p1, lists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    return-void
.end method

.method public bindAllAppsCallback(Lcom/uprui/tv/launcher8/ActLauncher$AllAppsCallback;)V
    .locals 2
    .parameter "mAllAppsCallback"

    .prologue
    .line 505
    iput-object p1, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mAllAppsCallback:Lcom/uprui/tv/launcher8/ActLauncher$AllAppsCallback;

    .line 506
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mAllAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mAllAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mAllAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    iget-object v0, v0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mAllAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->isClassified()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/uprui/tv/launcher8/ActLauncher$AllAppsCallback;->bindAllApplications(Ljava/util/ArrayList;Z)V

    .line 509
    :cond_0
    return-void
.end method

.method public bindClassifiedsAdded(Ljava/util/ArrayList;)V
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
    .line 639
    .local p1, classifiedAddShortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 645
    iget-object v1, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mItemCallback:Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;

    if-eqz v1, :cond_1

    .line 646
    new-instance v1, Lcom/uprui/tv/launcher8/ActLauncher$6;

    invoke-direct {v1, p0}, Lcom/uprui/tv/launcher8/ActLauncher$6;-><init>(Lcom/uprui/tv/launcher8/ActLauncher;)V

    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/ActLauncher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 653
    :cond_1
    return-void

    .line 639
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 640
    .local v0, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    iget-object v2, p0, Lcom/uprui/tv/launcher8/ActLauncher;->itemDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 641
    iget-object v2, p0, Lcom/uprui/tv/launcher8/ActLauncher;->itemDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bindItemCallback(Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;)V
    .locals 1
    .parameter "mItemCallback"

    .prologue
    .line 491
    iput-object p1, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mItemCallback:Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;

    .line 492
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->itemDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 493
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;->setSwitchTag(Z)V

    .line 494
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->itemDatas:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;->bindItems(Ljava/util/ArrayList;)V

    .line 496
    :cond_0
    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 466
    .local p1, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->itemDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 467
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->itemDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 469
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mItemCallback:Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mItemCallback:Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;

    invoke-interface {v0, p1}, Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;->bindItems(Ljava/util/ArrayList;)V

    .line 472
    :cond_0
    return-void
.end method

.method public bindShortcutRemoved(Ljava/util/ArrayList;)V
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
    .line 622
    .local p1, removedShortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 626
    iget-object v1, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mItemCallback:Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;

    if-eqz v1, :cond_0

    .line 627
    new-instance v1, Lcom/uprui/tv/launcher8/ActLauncher$5;

    invoke-direct {v1, p0}, Lcom/uprui/tv/launcher8/ActLauncher$5;-><init>(Lcom/uprui/tv/launcher8/ActLauncher;)V

    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/ActLauncher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 635
    :cond_0
    return-void

    .line 622
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 623
    .local v0, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    iget-object v2, p0, Lcom/uprui/tv/launcher8/ActLauncher;->itemDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public finishBindingItems()V
    .locals 0

    .prologue
    .line 477
    return-void
.end method

.method public getSpecifiedFragment()Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->specifiedFragment:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;

    return-object v0
.end method

.method public loadEndFormNetwork(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 14
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 554
    .local p1, lists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    iget-object v12, p0, Lcom/uprui/tv/launcher8/ActLauncher;->itemDatas:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 555
    .local v10, size:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 557
    .local v8, len:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v3, cover:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v8, :cond_1

    .line 572
    invoke-static {}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->getInstance()Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    move-result-object v0

    .line 573
    .local v0, cache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 574
    .local v9, removeSize:I
    const/4 v4, 0x0

    :goto_1
    if-lt v4, v9, :cond_4

    .line 579
    iget-object v12, p0, Lcom/uprui/tv/launcher8/ActLauncher;->itemDatas:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 580
    iget-object v12, p0, Lcom/uprui/tv/launcher8/ActLauncher;->itemDatas:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 581
    iget-object v12, p0, Lcom/uprui/tv/launcher8/ActLauncher;->model:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    iget-object v13, p0, Lcom/uprui/tv/launcher8/ActLauncher;->itemDatas:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->loadClassifyedApp(Ljava/util/ArrayList;)V

    .line 583
    iget-object v12, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mItemCallback:Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;

    if-eqz v12, :cond_0

    .line 584
    new-instance v12, Lcom/uprui/tv/launcher8/ActLauncher$4;

    invoke-direct {v12, p0}, Lcom/uprui/tv/launcher8/ActLauncher$4;-><init>(Lcom/uprui/tv/launcher8/ActLauncher;)V

    invoke-virtual {p0, v12}, Lcom/uprui/tv/launcher8/ActLauncher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 594
    :cond_0
    return-void

    .line 559
    .end local v0           #cache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;
    .end local v9           #removeSize:I
    :cond_1
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 560
    .local v5, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    invoke-virtual {v5}, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 561
    .local v1, cn:Landroid/content/ComponentName;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    if-lt v7, v10, :cond_2

    .line 558
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 562
    :cond_2
    iget-object v12, p0, Lcom/uprui/tv/launcher8/ActLauncher;->itemDatas:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 563
    .local v6, infoCompare:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    invoke-virtual {v6}, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 564
    .local v2, cncompare:Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 565
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 561
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 575
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v2           #cncompare:Landroid/content/ComponentName;
    .end local v5           #info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    .end local v6           #infoCompare:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    .end local v7           #j:I
    .restart local v0       #cache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;
    .restart local v9       #removeSize:I
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    invoke-static {v12}, Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;->getTaskKey(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)Ljava/lang/String;

    move-result-object v11

    .line 576
    .local v11, taskKey:Ljava/lang/String;
    invoke-virtual {v0, v11}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->releaseBitmap(Ljava/lang/String;)V

    .line 574
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public loadErrorFormNetwork(Ljava/lang/Exception;Landroid/content/Context;)V
    .locals 0
    .parameter "e"
    .parameter "context"

    .prologue
    .line 601
    return-void
.end method

.method public loadPositionFormNetwork(ILandroid/content/Context;)V
    .locals 0
    .parameter "position"
    .parameter "context"

    .prologue
    .line 550
    return-void
.end method

.method public loadStartFormNetwork(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 545
    return-void
.end method

.method public loadWaitFormNetwork(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 540
    return-void
.end method

.method public onAppsShow()V
    .locals 2

    .prologue
    .line 315
    const/4 v0, 0x3

    iput v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    .line 316
    const-string v0, "TvLauncher"

    const-string v1, "onAppsShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mWorkSpaceFragmentSelectListener:Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mWorkSpaceFragmentSelectListener:Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;

    invoke-interface {v0}, Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;->onAppsShow()V

    .line 320
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 417
    iget v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    if-eq v0, v1, :cond_0

    .line 418
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/ActLauncher;->showHome(Z)V

    .line 419
    iput v1, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    .line 421
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 101
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/ActLauncher;->setContentView(I)V

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/uprui/tv/launcher8/ActLauncher;->itemDatas:Ljava/util/ArrayList;

    .line 105
    new-instance v1, Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    invoke-static {}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->getInstance()Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;-><init>(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;)V

    iput-object v1, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mAllAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    .line 106
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/ActLauncher;->setupView()V

    .line 109
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/uprui/tv/launcher8/RUIAppService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/ActLauncher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 111
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/ActLauncher;->loadPersonRecommend()V

    .line 115
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "LauncherTimes"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 117
    const/4 v1, 0x0

    invoke-static {p0, v4, v1}, Lcom/uprui/tv/launcher8/LauncherApplication;->requestClassify(Landroid/content/Context;ZLjava/util/ArrayList;)V

    .line 123
    :goto_0
    invoke-static {p0, v3}, Lcom/uprui/tv/launcher8/LauncherApplication;->requestRUIUpdate(Landroid/content/Context;Z)V

    .line 127
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->updateOnlineConfig(Landroid/content/Context;)V

    .line 129
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onError(Landroid/content/Context;)V

    .line 131
    return-void

    .line 119
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LauncherTimes"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onDemantVideoShow()V
    .locals 2

    .prologue
    .line 291
    const/4 v0, 0x2

    iput v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    .line 292
    const-string v0, "TvLauncher"

    const-string v1, "onDemantVideoShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mWorkSpaceFragmentSelectListener:Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mWorkSpaceFragmentSelectListener:Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;

    invoke-interface {v0}, Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;->onDemantVideoShow()V

    .line 296
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 425
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 426
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->model:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->stopLoader()V

    .line 427
    return-void
.end method

.method public onGameShow()V
    .locals 2

    .prologue
    .line 299
    const/4 v0, 0x5

    iput v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    .line 300
    const-string v0, "TvLauncher"

    const-string v1, "onGameShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mWorkSpaceFragmentSelectListener:Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mWorkSpaceFragmentSelectListener:Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;

    invoke-interface {v0}, Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;->onGameShow()V

    .line 304
    :cond_0
    return-void
.end method

.method public onLiveVideoShow()V
    .locals 2

    .prologue
    .line 283
    const/4 v0, 0x1

    iput v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    .line 284
    const-string v0, "TvLauncher"

    const-string v1, "onLiveVideoShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mWorkSpaceFragmentSelectListener:Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mWorkSpaceFragmentSelectListener:Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;

    invoke-interface {v0}, Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;->onLiveVideoShow()V

    .line 288
    :cond_0
    return-void
.end method

.method public onMusicShow()V
    .locals 2

    .prologue
    .line 307
    const/4 v0, 0x4

    iput v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    .line 308
    const-string v0, "TvLauncher"

    const-string v1, "onMusicShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mWorkSpaceFragmentSelectListener:Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mWorkSpaceFragmentSelectListener:Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;

    invoke-interface {v0}, Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;->onMusicShow()V

    .line 312
    :cond_0
    return-void
.end method

.method public onNetWorkShow()V
    .locals 2

    .prologue
    .line 323
    const/4 v0, 0x6

    iput v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    .line 324
    const-string v0, "TvLauncher"

    const-string v1, "onNetWorkShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mWorkSpaceFragmentSelectListener:Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mWorkSpaceFragmentSelectListener:Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;

    invoke-interface {v0}, Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;->onNetWorkShow()V

    .line 328
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 337
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 338
    const-string v1, "com.uprui.tv.launcher.action.DOWNLOAD_RUI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    const-string v1, "response"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, response:Ljava/lang/String;
    invoke-virtual {p0, p0, v0}, Lcom/uprui/tv/launcher8/ActLauncher;->showRuiUpdateDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 342
    .end local v0           #response:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 409
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->paused:Z

    .line 412
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 413
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 393
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 394
    iput-boolean v2, p0, Lcom/uprui/tv/launcher8/ActLauncher;->paused:Z

    .line 395
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->restoring:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->onResumeNeedsLoad:Z

    if-eqz v0, :cond_1

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->model:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 397
    iput-boolean v2, p0, Lcom/uprui/tv/launcher8/ActLauncher;->restoring:Z

    .line 398
    iput-boolean v2, p0, Lcom/uprui/tv/launcher8/ActLauncher;->onResumeNeedsLoad:Z

    .line 402
    :cond_1
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 404
    return-void
.end method

.method public onSettingShow()V
    .locals 2

    .prologue
    .line 267
    const/16 v0, 0x8

    iput v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    .line 268
    const-string v0, "TvLauncher"

    const-string v1, "onWin8HomeShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mWorkSpaceFragmentSelectListener:Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mWorkSpaceFragmentSelectListener:Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;

    invoke-interface {v0}, Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;->onSettingShow()V

    .line 272
    :cond_0
    return-void
.end method

.method public onWin8HomeShow()V
    .locals 2

    .prologue
    .line 275
    const/4 v0, 0x7

    iput v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    .line 276
    const-string v0, "TvLauncher"

    const-string v1, "onWin8HomeShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mWorkSpaceFragmentSelectListener:Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mWorkSpaceFragmentSelectListener:Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;

    invoke-interface {v0}, Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;->onWin8HomeShow()V

    .line 280
    :cond_0
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 452
    iget-boolean v1, p0, Lcom/uprui/tv/launcher8/ActLauncher;->paused:Z

    if-eqz v1, :cond_0

    .line 453
    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->onResumeNeedsLoad:Z

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWorkspaceSelectListener(Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mWorkSpaceFragmentSelectListener:Lcom/uprui/tv/launcher8/workspace/WorkSpaceFragmentSelectListener;

    .line 332
    return-void
.end method

.method public showApps()V
    .locals 4

    .prologue
    .line 229
    const-string v1, "TvLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showApps[fragmentStatus:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/ActLauncher;->startActivity(Landroid/content/Intent;)V

    .line 233
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/ActLauncher;->onAppsShow()V

    .line 234
    return-void
.end method

.method public showDemandVideo()V
    .locals 3

    .prologue
    .line 204
    const-string v0, "TvLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showDemantVideo[fragmentStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x2

    iput v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    .line 207
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->specifiedFragment:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;

    new-instance v1, Lcom/uprui/tv/launcher8/workspace/DemandCategoryAcceptAble;

    invoke-direct {v1}, Lcom/uprui/tv/launcher8/workspace/DemandCategoryAcceptAble;-><init>()V

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->setCategoryAcceptAble(Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem$CategoryAcceptAble;)V

    .line 208
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->specifiedFragment:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/ActLauncher;->bindItemCallback(Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;)V

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/ActLauncher;->showHome(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/ActLauncher;->onDemantVideoShow()V

    .line 214
    return-void
.end method

.method public showGame()V
    .locals 3

    .prologue
    .line 217
    const-string v0, "TvLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showGame[fragmentStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, 0x5

    iput v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    .line 219
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->specifiedFragment:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;

    new-instance v1, Lcom/uprui/tv/launcher8/workspace/GameCategoryAcceptAble;

    invoke-direct {v1}, Lcom/uprui/tv/launcher8/workspace/GameCategoryAcceptAble;-><init>()V

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->setCategoryAcceptAble(Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem$CategoryAcceptAble;)V

    .line 220
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->specifiedFragment:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/ActLauncher;->bindItemCallback(Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;)V

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/ActLauncher;->showHome(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/ActLauncher;->onGameShow()V

    .line 226
    return-void
.end method

.method public showHome(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const v3, 0x10a0003

    const v2, 0x10a0002

    .line 164
    iget-object v1, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragments:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 165
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 166
    if-eqz p1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/uprui/tv/launcher8/ActLauncher;->homeFragment:Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 168
    iget-object v1, p0, Lcom/uprui/tv/launcher8/ActLauncher;->specifiedFragment:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 174
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 175
    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/uprui/tv/launcher8/ActLauncher;->homeFragment:Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;

    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->saveFocusChild()V

    .line 171
    iget-object v1, p0, Lcom/uprui/tv/launcher8/ActLauncher;->specifiedFragment:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 172
    iget-object v1, p0, Lcom/uprui/tv/launcher8/ActLauncher;->homeFragment:Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public showLiveVideo()V
    .locals 3

    .prologue
    .line 193
    const-string v0, "TvLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showLiveVide[fragmentStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x1

    iput v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    .line 195
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->specifiedFragment:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;

    new-instance v1, Lcom/uprui/tv/launcher8/workspace/LiveVideoCategoryAcceptAble;

    invoke-direct {v1}, Lcom/uprui/tv/launcher8/workspace/LiveVideoCategoryAcceptAble;-><init>()V

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->setCategoryAcceptAble(Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem$CategoryAcceptAble;)V

    .line 196
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->specifiedFragment:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/ActLauncher;->bindItemCallback(Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;)V

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/ActLauncher;->showHome(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/ActLauncher;->onLiveVideoShow()V

    .line 201
    return-void
.end method

.method public showMusic()V
    .locals 3

    .prologue
    .line 237
    const-string v0, "TvLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showMusic[fragmentStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x4

    iput v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    .line 239
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->specifiedFragment:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;

    new-instance v1, Lcom/uprui/tv/launcher8/workspace/MusicCategoryAcceptAble;

    invoke-direct {v1}, Lcom/uprui/tv/launcher8/workspace/MusicCategoryAcceptAble;-><init>()V

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->setCategoryAcceptAble(Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem$CategoryAcceptAble;)V

    .line 240
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->specifiedFragment:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/ActLauncher;->bindItemCallback(Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;)V

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/ActLauncher;->showHome(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/ActLauncher;->onMusicShow()V

    .line 245
    return-void
.end method

.method public showNetWork()V
    .locals 6

    .prologue
    .line 248
    const-string v3, "TvLauncher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "showNetWork[fragmentStatus:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 254
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 253
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, lang:Ljava/lang/String;
    const-string v3, "zh_CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    const-string v3, "http://hao.360.cn/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 260
    .local v0, content_url:Landroid/net/Uri;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/ActLauncher;->startActivitySafely(Landroid/content/Intent;)V

    .line 263
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/ActLauncher;->onNetWorkShow()V

    .line 264
    return-void

    .line 258
    .end local v0           #content_url:Landroid/net/Uri;
    :cond_0
    const-string v3, "http://google.com/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #content_url:Landroid/net/Uri;
    goto :goto_0
.end method

.method showRuiUpdateDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "response"

    .prologue
    .line 346
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 347
    .local v4, resObj:Lorg/json/JSONObject;
    const-string v6, "downloadUrl"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, url:Ljava/lang/String;
    const-string v6, "describe"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, describe:Ljava/lang/String;
    const-string v6, "TvLauncher"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " url"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v6, "TvLauncher"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " describe"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 354
    .local v0, adBuilder:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    .line 355
    const v6, 0x7f07006e

    invoke-virtual {v0, v6}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setTitle(I)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    .line 356
    const v6, 0x7f070067

    new-instance v7, Lcom/uprui/tv/launcher8/ActLauncher$2;

    invoke-direct {v7, p0, v5, p1}, Lcom/uprui/tv/launcher8/ActLauncher$2;-><init>(Lcom/uprui/tv/launcher8/ActLauncher;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v6, v7}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v6

    .line 377
    const v7, 0x7f070068

    new-instance v8, Lcom/uprui/tv/launcher8/ActLauncher$3;

    invoke-direct {v8, p0}, Lcom/uprui/tv/launcher8/ActLauncher$3;-><init>(Lcom/uprui/tv/launcher8/ActLauncher;)V

    invoke-virtual {v6, v7, v8}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    .line 383
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 384
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 385
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x258

    const/4 v8, -0x2

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setLayout(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v0           #adBuilder:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .end local v1           #describe:Ljava/lang/String;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v4           #resObj:Lorg/json/JSONObject;
    .end local v5           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v3

    .line 387
    .local v3, e1:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public showSetting()V
    .locals 4

    .prologue
    .line 178
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v1, in:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/ActLauncher;->startActivitySafely(Landroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/ActLauncher;->onSettingShow()V

    .line 183
    return-void
.end method

.method public showWin8Home()V
    .locals 3

    .prologue
    .line 186
    const-string v0, "TvLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showWin8Home[fragmentStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x7

    iput v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->fragmentStatus:I

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/ActLauncher;->showHome(Z)V

    .line 189
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/ActLauncher;->onWin8HomeShow()V

    .line 190
    return-void
.end method

.method public startActivitySafely(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const v3, 0x7f07005f

    const/4 v2, 0x0

    .line 480
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 482
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/ActLauncher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 488
    :goto_0
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 485
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 486
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public startBinding()V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public unBindAllAppsCallback(Lcom/uprui/tv/launcher8/ActLauncher$AllAppsCallback;)V
    .locals 1
    .parameter "mAllAppsCallback"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mAllAppsCallback:Lcom/uprui/tv/launcher8/ActLauncher$AllAppsCallback;

    if-ne v0, p1, :cond_0

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mAllAppsCallback:Lcom/uprui/tv/launcher8/ActLauncher$AllAppsCallback;

    .line 515
    :cond_0
    return-void
.end method

.method public unBindItemCallback(Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;)V
    .locals 1
    .parameter "mItemCallback"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mItemCallback:Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;

    if-ne v0, p1, :cond_0

    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher;->mItemCallback:Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;

    .line 502
    :cond_0
    return-void
.end method

.method public updateItemDatas(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 608
    iget-object v3, p0, Lcom/uprui/tv/launcher8/ActLauncher;->itemDatas:Ljava/util/ArrayList;

    monitor-enter v3

    .line 609
    :try_start_0
    iget-object v2, p0, Lcom/uprui/tv/launcher8/ActLauncher;->itemDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 608
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    iget-object v2, p0, Lcom/uprui/tv/launcher8/ActLauncher;->model:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    invoke-virtual {v2, p1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->updateItemDatas(Ljava/lang/String;)V

    .line 618
    return-void

    .line 610
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 611
    .local v0, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    iget-object v2, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 612
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 608
    .end local v0           #info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
