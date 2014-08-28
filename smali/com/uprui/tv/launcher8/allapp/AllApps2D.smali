.class public Lcom/uprui/tv/launcher8/allapp/AllApps2D;
.super Landroid/widget/RelativeLayout;
.source "AllApps2D.java"

# interfaces
.implements Lcom/uprui/tv/launcher8/allapp/AllAppsView;


# static fields
.field private static final TYPE_ADD:I = 0x0

.field private static final TYPE_CLASSIFY:I = 0x2

.field private static final TYPE_REMOVE:I = 0x1

.field public static final cateTagKey:I = 0x7f07002c


# instance fields
.field private allAppIndicator:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

.field private appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

.field categoryScreenNumsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private classified:Z

.field private final classifiedList:Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

.field private column:I

.field private launcher:Lcom/uprui/tv/launcher8/allapp/AllAppActivity;

.field private loading:Landroid/widget/ProgressBar;

.field private mZoom:F

.field private mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

.field private row:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput v6, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->row:I

    .line 51
    iput v6, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->column:I

    .line 58
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->allAppIndicator:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

    .line 60
    invoke-static {}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->getInstance()Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

    move-result-object v5

    iput-object v5, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->classifiedList:Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

    .line 61
    iput-boolean v6, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->classified:Z

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    move-result-object v5

    iput-object v5, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    .line 72
    sget-object v5, Lcom/uprui/tv/launcher8/R$styleable;->AllAppsView:[I

    invoke-virtual {p1, p2, v5, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, a:Landroid/content/res/TypedArray;
    sget-object v3, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    .line 74
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 75
    .local v2, orient:I
    iget-object v5, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    invoke-virtual {v5}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getLongAxisCells()I

    move-result v1

    .line 76
    .local v1, longAxisCells:I
    iget-object v5, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    invoke-virtual {v5}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getShortAxisCells()I

    move-result v4

    .line 77
    .local v4, shortAxisCells:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 78
    iput v4, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->row:I

    .line 79
    iput v1, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->column:I

    .line 85
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->setVisibility(I)V

    .line 88
    invoke-virtual {p0, v6}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->setSoundEffectsEnabled(Z)V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    move-result-object v5

    iput-object v5, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    .line 92
    const/high16 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->setDescendantFocusability(I)V

    .line 93
    return-void

    .line 80
    :cond_1
    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 81
    iput v1, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->row:I

    .line 82
    iput v4, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->column:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method private createAppView(Landroid/view/ViewGroup;Lcom/uprui/tv/launcher8/allapp/IconItemInfo;)Landroid/view/View;
    .locals 6
    .parameter "parent"
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    .line 386
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->launcher:Lcom/uprui/tv/launcher8/allapp/AllAppActivity;

    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 387
    .local v0, app:Landroid/view/View;
    const v2, 0x7f09000c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;

    .line 389
    .local v1, appIcon:Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p2, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/rui/launcher/common/utils/RUtilities;->isNewInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    invoke-virtual {v1, v5, v5}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->setTopRightIconVisibility(ZI)V

    .line 393
    :cond_0
    invoke-virtual {v1, p2}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->setIcon(Lcom/uprui/tv/launcher8/allapp/ItemInfo;)V

    .line 394
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->getTitleByLocale(Ljava/util/Locale;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 395
    invoke-virtual {v1, p2}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->setTag(Ljava/lang/Object;)V

    .line 396
    return-object v1
.end method

.method private findAvailableScreenByCategory(II)I
    .locals 7
    .parameter "category"
    .parameter "group"

    .prologue
    .line 283
    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    .line 284
    const/4 v5, 0x3

    invoke-static {p1, v5}, Lcom/rui/launcher/common/CategoryManager;->getTopNCategoryCode(II)I

    move-result p1

    .line 286
    :cond_0
    const/4 v3, 0x0

    .line 288
    .local v3, startScreen:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v5, Lcom/uprui/tv/launcher8/data/TVCategoryManager;->TOP_CATOGORYS:[I

    array-length v5, v5

    if-lt v1, v5, :cond_3

    .line 296
    :cond_1
    iget-object v5, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->categoryScreenNumsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 297
    iget-object v5, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    invoke-virtual {v5}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 312
    .end local v3           #startScreen:I
    :cond_2
    :goto_1
    return v3

    .line 289
    .restart local v3       #startScreen:I
    :cond_3
    sget-object v5, Lcom/uprui/tv/launcher8/data/TVCategoryManager;->TOP_CATOGORYS:[I

    aget v5, v5, v1

    if-eq v5, p1, :cond_1

    .line 292
    iget-object v5, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->categoryScreenNumsMap:Ljava/util/HashMap;

    sget-object v6, Lcom/uprui/tv/launcher8/data/TVCategoryManager;->TOP_CATOGORYS:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v3, v5

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_4
    move v1, v3

    :goto_2
    iget-object v5, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->categoryScreenNumsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v3

    if-ge v1, v5, :cond_2

    .line 300
    iget-object v5, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    invoke-virtual {v5, v1}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;

    .line 301
    .local v2, screenLayout:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;
    const v5, 0x7f07002c

    invoke-virtual {v2, v5}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 302
    .local v4, tag:Ljava/lang/Integer;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_6

    .line 303
    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getChildCount()I

    move-result v0

    .line 304
    .local v0, count:I
    if-lt v0, p2, :cond_5

    .line 299
    .end local v0           #count:I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .restart local v0       #count:I
    :cond_5
    move v3, v1

    .line 307
    goto :goto_1

    .line 309
    .end local v0           #count:I
    :cond_6
    const-string v5, ""

    const-string v6, "\u5c4f\u5e55\u5206\u914d\u51fa\u73b0\u5f02\u5e38"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private initWorkspace()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->removeAllViews()V

    .line 252
    return-void
.end method

.method private loadAllApps()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 349
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->column:I

    iget v12, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->row:I

    mul-int v8, v0, v12

    .line 350
    .local v8, group:I
    const/4 v11, 0x0

    .local v11, pos:I
    const/4 v2, 0x0

    .local v2, screen:I
    const/4 v4, 0x0

    .local v4, row:I
    const/4 v3, 0x0

    .line 351
    .local v3, col:I
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->classified:Z

    if-nez v0, :cond_2

    .line 352
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->classifiedList:Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->size()I

    move-result v0

    if-lt v9, v0, :cond_1

    .line 379
    :cond_0
    return-void

    .line 353
    :cond_1
    div-int v2, v9, v8

    .line 354
    rem-int v11, v9, v8

    .line 355
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->column:I

    div-int v4, v11, v0

    .line 356
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->column:I

    rem-int v3, v11, v0

    .line 358
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->classifiedList:Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

    invoke-virtual {v0, v9}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->get(I)Lcom/uprui/tv/launcher8/allapp/IconItemInfo;

    move-result-object v6

    .line 359
    .local v6, app:Lcom/uprui/tv/launcher8/allapp/IconItemInfo;
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    invoke-virtual {v0, v2}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;

    .line 360
    .local v10, layout:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;
    invoke-direct {p0, v10, v6}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->createAppView(Landroid/view/ViewGroup;Lcom/uprui/tv/launcher8/allapp/IconItemInfo;)Landroid/view/View;

    move-result-object v1

    .line 362
    .local v1, view:Landroid/view/View;
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    invoke-virtual/range {v0 .. v5}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->addInScreen(Landroid/view/View;IIIZ)V

    .line 352
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 365
    .end local v1           #view:Landroid/view/View;
    .end local v6           #app:Lcom/uprui/tv/launcher8/allapp/IconItemInfo;
    .end local v9           #i:I
    .end local v10           #layout:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;
    :cond_2
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_1
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->classifiedList:Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->classifiedList:Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

    invoke-virtual {v0, v9}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->get(I)Lcom/uprui/tv/launcher8/allapp/IconItemInfo;

    move-result-object v6

    .line 369
    .restart local v6       #app:Lcom/uprui/tv/launcher8/allapp/IconItemInfo;
    iget v0, v6, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->category:I

    invoke-direct {p0, v0, v8}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->findAvailableScreenByCategory(II)I

    move-result v2

    .line 370
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    invoke-virtual {v0, v2}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;

    .line 371
    .restart local v10       #layout:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;
    invoke-virtual {v10}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getChildCount()I

    move-result v7

    .line 372
    .local v7, count:I
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->column:I

    div-int v4, v7, v0

    .line 373
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->column:I

    rem-int v3, v7, v0

    .line 375
    invoke-direct {p0, v10, v6}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->createAppView(Landroid/view/ViewGroup;Lcom/uprui/tv/launcher8/allapp/IconItemInfo;)Landroid/view/View;

    move-result-object v1

    .line 376
    .restart local v1       #view:Landroid/view/View;
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    invoke-virtual/range {v0 .. v5}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->addInScreen(Landroid/view/View;IIIZ)V

    .line 365
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private updateAppList(Ljava/util/ArrayList;I)V
    .locals 6
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 220
    .local v0, N:I
    packed-switch p2, :pswitch_data_0

    .line 245
    :cond_0
    return-void

    .line 222
    :pswitch_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 223
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    .line 225
    .local v3, item:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->classifiedList:Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

    sget-object v5, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v4, v3, v5}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->binarySearch(Lcom/uprui/tv/launcher8/allapp/IconItemInfo;Ljava/util/Comparator;)I

    move-result v2

    .line 226
    .local v2, index:I
    if-gez v2, :cond_1

    .line 227
    add-int/lit8 v4, v2, 0x1

    neg-int v2, v4

    .line 229
    :cond_1
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->classifiedList:Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

    invoke-virtual {v4, v2, v3}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->add(ILcom/uprui/tv/launcher8/allapp/IconItemInfo;)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v3           #item:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    :pswitch_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 234
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    .line 235
    .restart local v3       #item:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->classifiedList:Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

    invoke-virtual {v4, v3}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->remove(Lcom/uprui/tv/launcher8/allapp/IconItemInfo;)V

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    .end local v1           #i:I
    .end local v3           #item:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    :pswitch_2
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_0

    .line 240
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    .line 241
    .restart local v3       #item:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->classifiedList:Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

    invoke-virtual {v4, v3}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->classify(Lcom/uprui/tv/launcher8/allapp/IconItemInfo;)V

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateScreenPrompt()V
    .locals 5

    .prologue
    .line 332
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    invoke-virtual {v4}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v2

    .line 334
    .local v2, screenNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 346
    return-void

    .line 335
    :cond_0
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    invoke-virtual {v4, v1}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;

    .line 336
    .local v0, cellLayout:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 337
    iget-boolean v4, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->classified:Z

    if-nez v4, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/rui/launcher/common/utils/RUtilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 339
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v3, target:Landroid/content/Intent;
    const/high16 v4, 0x1400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 334
    .end local v3           #target:Landroid/content/Intent;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateWorkspaceView()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->loading:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 321
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->syncScreenNum()V

    .line 323
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->loadAllApps()V

    .line 326
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->updateScreenPrompt()V

    .line 328
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->loading:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 329
    return-void
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->updateAppList(Ljava/util/ArrayList;I)V

    .line 196
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->updateWorkspaceView()V

    .line 197
    return-void
.end method

.method public dumpState()V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method public getAppsWorkspace()Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    return-object v0
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v0

    return v0
.end method

.method public isOpaque()Z
    .locals 2

    .prologue
    .line 182
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->mZoom:F

    const v1, 0x3f7fbe77

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->mZoom:F

    const v1, 0x3a83126f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->setVisibility(I)V

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->mZoom:F

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->mZoom:F

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 0
    .parameter "target"
    .parameter "success"

    .prologue
    .line 134
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 102
    const v1, 0x7f090008

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    .line 103
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v1}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v1, ""

    const-string v2, "Can\'t find necessary layout elements for AllApps2D"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :goto_0
    return-void

    .line 106
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->setHapticFeedbackEnabled(Z)V

    .line 108
    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->allAppIndicator:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

    .line 109
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->allAppIndicator:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->init(Landroid/content/Context;)V

    .line 110
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->allAppIndicator:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->addItem()V

    .line 111
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->allAppIndicator:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->setLastIndicatorNextFocus()V

    .line 112
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->allAppIndicator:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    invoke-virtual {v1, v2}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->setAppsWorkspace(Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;)V

    .line 114
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->allAppIndicator:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

    invoke-virtual {v1, v2}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->setAllappIndicator(Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;)V

    .line 116
    const v1, 0x7f090009

    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->loading:Landroid/widget/ProgressBar;

    .line 118
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->initWorkspace()V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "prev"

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->requestFocus()Z

    .line 131
    :cond_0
    return-void
.end method

.method public refreshWorkSpaceView()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->updateWorkspaceView()V

    .line 416
    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->updateAppList(Ljava/util/ArrayList;I)V

    .line 202
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->updateWorkspaceView()V

    .line 203
    return-void
.end method

.method public setApps(Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter
    .parameter "classified"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    iput-boolean p2, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->classified:Z

    .line 188
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->classifiedList:Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

    invoke-virtual {v0, p2}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->enableClassfied(Z)V

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->updateAppList(Ljava/util/ArrayList;I)V

    .line 190
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->updateWorkspaceView()V

    .line 191
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    invoke-virtual {v0, p1}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->setCurrentScreen(I)V

    .line 407
    return-void
.end method

.method public setLauncher(Lcom/uprui/tv/launcher8/allapp/AllAppActivity;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 424
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->launcher:Lcom/uprui/tv/launcher8/allapp/AllAppActivity;

    .line 425
    return-void
.end method

.method public surrender()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method public syncScreenNum()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f03000d

    .line 258
    iget v6, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->column:I

    iget v7, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->row:I

    mul-int v0, v6, v7

    .line 259
    .local v0, group:I
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    invoke-virtual {v6}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->removeAllViews()V

    .line 260
    iget-boolean v6, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->classified:Z

    if-nez v6, :cond_1

    .line 261
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->classifiedList:Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

    invoke-virtual {v6, v0}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->getScreenCounts(I)I

    move-result v5

    .line 262
    .local v5, screenNum:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 279
    .end local v2           #k:I
    .end local v5           #screenNum:I
    :goto_1
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->allAppIndicator:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

    iget-object v7, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    invoke-virtual {v6, v7}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->setAppsWorkspace(Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;)V

    .line 280
    return-void

    .line 263
    .restart local v2       #k:I
    .restart local v5       #screenNum:I
    :cond_0
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->launcher:Lcom/uprui/tv/launcher8/allapp/AllAppActivity;

    invoke-static {v6, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;

    .line 264
    .local v3, layout:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    invoke-virtual {v6, v3}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->addView(Landroid/view/View;)V

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v2           #k:I
    .end local v3           #layout:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;
    .end local v5           #screenNum:I
    :cond_1
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->classifiedList:Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

    invoke-virtual {v6, v0}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->getCategoryScreens(I)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->categoryScreenNumsMap:Ljava/util/HashMap;

    .line 268
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget-object v6, Lcom/uprui/tv/launcher8/data/TVCategoryManager;->TOP_CATOGORYS:[I

    array-length v6, v6

    if-lt v1, v6, :cond_2

    .line 277
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->allAppIndicator:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

    iget-object v7, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->categoryScreenNumsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->setCategoryScreenNumsMap(Ljava/util/HashMap;)V

    goto :goto_1

    .line 269
    :cond_2
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->categoryScreenNumsMap:Ljava/util/HashMap;

    sget-object v7, Lcom/uprui/tv/launcher8/data/TVCategoryManager;->TOP_CATOGORYS:[I

    aget v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 271
    .local v4, num:I
    const/4 v2, 0x0

    .restart local v2       #k:I
    :goto_3
    if-lt v2, v4, :cond_3

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 272
    :cond_3
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->launcher:Lcom/uprui/tv/launcher8/allapp/AllAppActivity;

    invoke-static {v6, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;

    .line 273
    .restart local v3       #layout:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;
    const v6, 0x7f07002c

    sget-object v7, Lcom/uprui/tv/launcher8/data/TVCategoryManager;->TOP_CATOGORYS:[I

    aget v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->setTag(ILjava/lang/Object;)V

    .line 274
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->appWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    invoke-virtual {v6, v3}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->addView(Landroid/view/View;)V

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->updateAppList(Ljava/util/ArrayList;I)V

    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->updateAppList(Ljava/util/ArrayList;I)V

    .line 210
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->updateWorkspaceView()V

    .line 211
    return-void
.end method

.method public updateAppsAfterClassify(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->updateAppList(Ljava/util/ArrayList;I)V

    .line 215
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->updateWorkspaceView()V

    .line 216
    return-void
.end method

.method public zoom(FZ)V
    .locals 2
    .parameter "zoom"
    .parameter "animate"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->cancelLongPress()V

    .line 146
    iput p1, p0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->mZoom:F

    .line 148
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->setVisibility(I)V

    .line 151
    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->onAnimationEnd()V

    goto :goto_0

    .line 157
    :cond_1
    if-eqz p2, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->onAnimationEnd()V

    goto :goto_0
.end method
