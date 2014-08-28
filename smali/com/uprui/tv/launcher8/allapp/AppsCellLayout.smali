.class public Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;
.super Landroid/view/ViewGroup;
.source "AppsCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;,
        Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final cellHeight:I

.field private final cellInfo:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;

.field private final cellWidth:I

.field cellXY:[I

.field private dirtyTag:Z

.field heightGap:I

.field private lastDownOnOccupiedCell:Z

.field private final longAxisCells:I

.field private final longAxisStartPadding:I

.field private final mLongAxisEndPadding:I

.field private mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

.field occupied:[[Z

.field private portrait:Z

.field private final rect:Landroid/graphics/Rect;

.field private shortAxisCells:I

.field private final shortAxisEndPadding:I

.field private final shortAxisStartPadding:I

.field private final wallpaperManager:Landroid/app/WallpaperManager;

.field widthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->setDescendantFocusability(I)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->setDescendantFocusability(I)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-boolean v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->DEBUG:Z

    .line 27
    const-class v2, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->TAG:Ljava/lang/String;

    .line 45
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->rect:Landroid/graphics/Rect;

    .line 46
    new-instance v2, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;

    invoke-direct {v2}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;-><init>()V

    iput-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellInfo:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;

    .line 48
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellXY:[I

    .line 52
    iput-boolean v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->lastDownOnOccupiedCell:Z

    .line 72
    sget-object v2, Lcom/uprui/tv/launcher8/R$styleable;->CellLayout:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    move-result-object v2

    iput-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    .line 74
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getAppCellWidth()I

    move-result v2

    iput v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellWidth:I

    .line 75
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getAppCellHeight()I

    move-result v2

    iput v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellHeight:I

    .line 76
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getAppLongStartPadding()I

    move-result v2

    iput v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisStartPadding:I

    .line 77
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getAppLongEndPadding()I

    move-result v2

    iput v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->mLongAxisEndPadding:I

    .line 79
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getLongAxisCells()I

    move-result v2

    iput v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisCells:I

    .line 80
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getShortAxisCells()I

    move-result v2

    iput v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisCells:I

    .line 82
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getAppShortStartPadding()I

    move-result v2

    iput v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisStartPadding:I

    .line 83
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getAppShortEndPadding()I

    move-result v2

    iput v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisEndPadding:I

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 86
    .local v1, orient:I
    if-ne v1, v5, :cond_2

    .line 87
    iput-boolean v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->portrait:Z

    .line 92
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    invoke-virtual {p0, v3}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 96
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->occupied:[[Z

    if-nez v2, :cond_1

    .line 97
    iget-boolean v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->portrait:Z

    if-eqz v2, :cond_3

    .line 98
    iget v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisCells:I

    iget v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisCells:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->occupied:[[Z

    .line 104
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->wallpaperManager:Landroid/app/WallpaperManager;

    .line 106
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->setDescendantFocusability(I)V

    .line 107
    invoke-virtual {p0, v4}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->setFocusable(Z)V

    .line 108
    invoke-virtual {p0, v4}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 109
    return-void

    .line 88
    :cond_2
    if-ne v1, v4, :cond_0

    .line 89
    iput-boolean v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->portrait:Z

    goto :goto_0

    .line 100
    :cond_3
    iget v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisCells:I

    iget v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisCells:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->occupied:[[Z

    goto :goto_1
.end method

.method static synthetic access$1(Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;IIII[[Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    invoke-static/range {p0 .. p5}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->findIntersectingVacantCells(Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;IIII[[Z)V

    return-void
.end method

.method private static addVacantCell(Landroid/graphics/Rect;Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;)V
    .locals 3
    .parameter "current"
    .parameter "cellInfo"

    .prologue
    .line 296
    invoke-static {}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo$VacantCell;->acquire()Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo$VacantCell;

    move-result-object v0

    .line 297
    .local v0, cell:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo$VacantCell;
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo$VacantCell;->cellX:I

    .line 298
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo$VacantCell;->cellY:I

    .line 299
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo$VacantCell;->spanX:I

    .line 300
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo$VacantCell;->spanY:I

    .line 301
    iget v1, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo$VacantCell;->spanX:I

    iget v2, p1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->maxVacantSpanX:I

    if-le v1, v2, :cond_0

    .line 302
    iget v1, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->maxVacantSpanX:I

    .line 303
    iget v1, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 305
    :cond_0
    iget v1, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo$VacantCell;->spanY:I

    iget v2, p1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->maxVacantSpanY:I

    if-le v1, v2, :cond_1

    .line 306
    iget v1, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->maxVacantSpanY:I

    .line 307
    iget v1, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 309
    :cond_1
    iget-object v1, p1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method private static findIntersectingVacantCells(Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;IIII[[Z)V
    .locals 1
    .parameter "cellInfo"
    .parameter "x"
    .parameter "y"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/high16 v0, -0x8000

    .line 244
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->maxVacantSpanX:I

    .line 245
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 246
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->maxVacantSpanY:I

    .line 247
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 248
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->clearVacantCells()V

    .line 250
    aget-object v0, p5, p1

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 256
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-static {v0, p3, p4, p5, p0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;)V

    goto :goto_0
.end method

.method private findOccupiedCells(II[[ZLandroid/view/View;)V
    .locals 8
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"
    .parameter "ignoreView"

    .prologue
    .line 614
    const/4 v4, 0x0

    .local v4, x:I
    :goto_0
    if-lt v4, p1, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getChildCount()I

    move-result v1

    .line 621
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v1, :cond_2

    .line 631
    return-void

    .line 615
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_0
    const/4 v5, 0x0

    .local v5, y:I
    :goto_2
    if-lt v5, p2, :cond_1

    .line 614
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 616
    :cond_1
    aget-object v6, p3, v4

    const/4 v7, 0x0

    aput-boolean v7, v6, v5

    .line 615
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 622
    .end local v5           #y:I
    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_2
    invoke-virtual {p0, v2}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 623
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;

    .line 625
    .local v3, lp:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;
    iget v4, v3, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellX:I

    :goto_3
    iget v6, v3, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellX:I

    iget v7, v3, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_3

    if-lt v4, p1, :cond_4

    .line 621
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 626
    :cond_4
    iget v5, v3, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellY:I

    .restart local v5       #y:I
    :goto_4
    iget v6, v3, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellY:I

    iget v7, v3, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_5

    if-lt v5, p2, :cond_6

    .line 625
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 627
    :cond_6
    aget-object v6, p3, v4

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    .line 626
    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method

.method private static findVacantCell(Landroid/graphics/Rect;II[[ZLcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;)V
    .locals 3
    .parameter "current"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"
    .parameter "cellInfo"

    .prologue
    .line 260
    invoke-static {p0, p4}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->addVacantCell(Landroid/graphics/Rect;Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;)V

    .line 262
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    .line 263
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 265
    invoke-static {p0, p1, p2, p3, p4}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;)V

    .line 266
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 270
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_1

    .line 271
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 273
    invoke-static {p0, p1, p2, p3, p4}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;)V

    .line 274
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 278
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_2

    .line 279
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 281
    invoke-static {p0, p1, p2, p3, p4}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;)V

    .line 282
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 286
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_3

    .line 287
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 289
    invoke-static {p0, p1, p2, p3, p4}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;)V

    .line 290
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 293
    :cond_3
    return-void
.end method

.method private static isColumnEmpty(III[[Z)Z
    .locals 2
    .parameter "x"
    .parameter "top"
    .parameter "bottom"
    .parameter "occupied"

    .prologue
    .line 313
    move v0, p1

    .local v0, y:I
    :goto_0
    if-le v0, p2, :cond_0

    .line 318
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 314
    :cond_0
    aget-object v1, p3, p0

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 315
    const/4 v1, 0x0

    goto :goto_1

    .line 313
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static isRowEmpty(III[[Z)Z
    .locals 2
    .parameter "y"
    .parameter "left"
    .parameter "right"
    .parameter "occupied"

    .prologue
    .line 322
    move v0, p1

    .local v0, x:I
    :goto_0
    if-le v0, p2, :cond_0

    .line 327
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 323
    :cond_0
    aget-object v1, p3, v0

    aget-boolean v1, v1, p0

    if-eqz v1, :cond_1

    .line 324
    const/4 v1, 0x0

    goto :goto_1

    .line 322
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 137
    move-object v0, p3

    check-cast v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;

    .line 138
    .local v0, cellParams:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->regenerateId:Z

    .line 140
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 141
    return-void
.end method

.method protected calculateGap(IIIIII)V
    .locals 10
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "heightSpecSize"
    .parameter "widthSpecSize"
    .parameter "longAxisStartPadding"
    .parameter "shortAxisStartPadding"

    .prologue
    .line 541
    iget v5, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisCells:I

    .line 542
    .local v5, shortAxisCells:I
    iget v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisCells:I

    .line 543
    .local v1, longAxisCells:I
    iget v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->mLongAxisEndPadding:I

    .line 544
    .local v2, longAxisEndPadding:I
    iget v6, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisEndPadding:I

    .line 546
    .local v6, shortAxisEndPadding:I
    add-int/lit8 v4, v5, -0x1

    .line 547
    .local v4, numShortGaps:I
    add-int/lit8 v3, v1, -0x1

    .line 549
    .local v3, numLongGaps:I
    iget-boolean v8, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->portrait:Z

    if-eqz v8, :cond_1

    .line 550
    sub-int v8, p3, p5

    sub-int/2addr v8, v2

    mul-int v9, p2, v1

    sub-int v7, v8, v9

    .line 551
    .local v7, vSpaceLeft:I
    div-int v8, v7, v3

    iput v8, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->heightGap:I

    .line 553
    sub-int v8, p4, p6

    sub-int/2addr v8, v6

    mul-int v9, p1, v5

    sub-int v0, v8, v9

    .line 554
    .local v0, hSpaceLeft:I
    if-lez v4, :cond_0

    .line 555
    div-int v8, v0, v4

    iput v8, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->widthGap:I

    .line 570
    :goto_0
    return-void

    .line 557
    :cond_0
    const/4 v8, 0x0

    iput v8, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->widthGap:I

    goto :goto_0

    .line 560
    .end local v0           #hSpaceLeft:I
    .end local v7           #vSpaceLeft:I
    :cond_1
    sub-int v8, p4, p5

    sub-int/2addr v8, v2

    mul-int v9, p1, v1

    sub-int v0, v8, v9

    .line 561
    .restart local v0       #hSpaceLeft:I
    div-int v8, v0, v3

    iput v8, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->widthGap:I

    .line 563
    sub-int v8, p3, p6

    sub-int/2addr v8, v6

    mul-int v9, p2, v5

    sub-int v7, v8, v9

    .line 564
    .restart local v7       #vSpaceLeft:I
    if-lez v4, :cond_2

    .line 565
    div-int v8, v7, v4

    iput v8, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->heightGap:I

    goto :goto_0

    .line 567
    :cond_2
    const/4 v8, 0x0

    iput v8, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->heightGap:I

    goto :goto_0
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 120
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getChildCount()I

    move-result v1

    .line 121
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 125
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0, v2}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method cellToPoint(II[I)V
    .locals 6
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 438
    iget-boolean v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->portrait:Z

    .line 440
    .local v1, portrait:Z
    if-eqz v1, :cond_0

    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisStartPadding:I

    .line 441
    .local v0, hStartPadding:I
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisStartPadding:I

    .line 443
    .local v2, vStartPadding:I
    :goto_1
    const/4 v3, 0x0

    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellWidth:I

    iget v5, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->widthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p1

    add-int/2addr v4, v0

    aput v4, p3, v3

    .line 444
    const/4 v3, 0x1

    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellHeight:I

    iget v5, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->heightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int/2addr v4, v2

    aput v4, p3, v3

    .line 445
    return-void

    .line 440
    .end local v0           #hStartPadding:I
    .end local v2           #vStartPadding:I
    :cond_0
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisStartPadding:I

    goto :goto_0

    .line 441
    .restart local v0       #hStartPadding:I
    :cond_1
    iget v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisStartPadding:I

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 640
    instance-of v0, p1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 114
    return-void
.end method

.method findAllVacantCells([ZLandroid/view/View;)Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;
    .locals 10
    .parameter "occupiedCells"
    .parameter "ignoreView"

    .prologue
    .line 331
    iget-boolean v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->portrait:Z

    .line 332
    .local v3, portrait:Z
    if-eqz v3, :cond_0

    iget v5, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisCells:I

    .line 333
    .local v5, xCount:I
    :goto_0
    if-eqz v3, :cond_1

    iget v7, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisCells:I

    .line 335
    .local v7, yCount:I
    :goto_1
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->occupied:[[Z

    .line 337
    .local v2, occupied:[[Z
    if-eqz p1, :cond_4

    .line 338
    const/4 v6, 0x0

    .local v6, y:I
    :goto_2
    if-lt v6, v7, :cond_2

    .line 347
    .end local v6           #y:I
    :goto_3
    new-instance v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;

    invoke-direct {v0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;-><init>()V

    .line 349
    .local v0, cellInfo:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;
    const/4 v8, -0x1

    iput v8, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cellX:I

    .line 350
    const/4 v8, -0x1

    iput v8, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cellY:I

    .line 351
    const/4 v8, 0x0

    iput v8, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->spanY:I

    .line 352
    const/4 v8, 0x0

    iput v8, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->spanX:I

    .line 353
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->maxVacantSpanX:I

    .line 354
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 355
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->maxVacantSpanY:I

    .line 356
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 357
    iget-object v8, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellInfo:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;

    iget v8, v8, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->screen:I

    iput v8, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->screen:I

    .line 359
    iget-object v1, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->current:Landroid/graphics/Rect;

    .line 361
    .local v1, current:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .local v4, x:I
    :goto_4
    if-lt v4, v5, :cond_5

    .line 371
    iget-object v8, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_8

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->valid:Z

    .line 373
    return-object v0

    .line 332
    .end local v0           #cellInfo:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;
    .end local v1           #current:Landroid/graphics/Rect;
    .end local v2           #occupied:[[Z
    .end local v4           #x:I
    .end local v5           #xCount:I
    .end local v7           #yCount:I
    :cond_0
    iget v5, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisCells:I

    goto :goto_0

    .line 333
    .restart local v5       #xCount:I
    :cond_1
    iget v7, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisCells:I

    goto :goto_1

    .line 339
    .restart local v2       #occupied:[[Z
    .restart local v6       #y:I
    .restart local v7       #yCount:I
    :cond_2
    const/4 v4, 0x0

    .restart local v4       #x:I
    :goto_6
    if-lt v4, v5, :cond_3

    .line 338
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 340
    :cond_3
    aget-object v8, v2, v4

    mul-int v9, v6, v5

    add-int/2addr v9, v4

    aget-boolean v9, p1, v9

    aput-boolean v9, v8, v6

    .line 339
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 344
    .end local v4           #x:I
    .end local v6           #y:I
    :cond_4
    invoke-direct {p0, v5, v7, v2, p2}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    goto :goto_3

    .line 362
    .restart local v0       #cellInfo:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;
    .restart local v1       #current:Landroid/graphics/Rect;
    .restart local v4       #x:I
    :cond_5
    const/4 v6, 0x0

    .restart local v6       #y:I
    :goto_7
    if-lt v6, v7, :cond_6

    .line 361
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 363
    :cond_6
    aget-object v8, v2, v4

    aget-boolean v8, v8, v6

    if-nez v8, :cond_7

    .line 364
    invoke-virtual {v1, v4, v6, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 365
    invoke-static {v1, v5, v7, v2, v0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;)V

    .line 366
    aget-object v8, v2, v4

    const/4 v9, 0x1

    aput-boolean v9, v8, v6

    .line 362
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 371
    .end local v6           #y:I
    :cond_8
    const/4 v8, 0x0

    goto :goto_5
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 635
    new-instance v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 645
    new-instance v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getBottomPadding()I
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->portrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->mLongAxisEndPadding:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisEndPadding:I

    goto :goto_0
.end method

.method getCellHeight()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellHeight:I

    return v0
.end method

.method getCellWidth()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellWidth:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 838
    .local v0, focus:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 840
    .local v1, index:I
    if-ge p2, v1, :cond_1

    .line 849
    .end local v1           #index:I
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 842
    .restart local v1       #index:I
    .restart local p2
    :cond_1
    add-int/lit8 v2, p1, -0x1

    if-ge p2, v2, :cond_2

    .line 843
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    move p2, v1

    .line 845
    goto :goto_0
.end method

.method getCountX()I
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->portrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisCells:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisCells:I

    goto :goto_0
.end method

.method getCountY()I
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->portrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisCells:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisCells:I

    goto :goto_0
.end method

.method getLeftPadding()I
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->portrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisStartPadding:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisStartPadding:I

    goto :goto_0
.end method

.method getRightPadding()I
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->portrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisEndPadding:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->mLongAxisEndPadding:I

    goto :goto_0
.end method

.method protected getScreen()I
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellInfo:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->screen:I

    return v0
.end method

.method public getTag()Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;
    .locals 7

    .prologue
    .line 227
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;

    .line 228
    .local v0, info:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;
    iget-boolean v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->dirtyTag:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->valid:Z

    if-eqz v1, :cond_0

    .line 229
    iget-boolean v6, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->portrait:Z

    .line 230
    .local v6, portrait:Z
    if-eqz v6, :cond_1

    iget v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisCells:I

    .line 231
    .local v3, xCount:I
    :goto_0
    if-eqz v6, :cond_2

    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisCells:I

    .line 233
    .local v4, yCount:I
    :goto_1
    iget-object v5, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->occupied:[[Z

    .line 234
    .local v5, occupied:[[Z
    const/4 v1, 0x0

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 236
    iget v1, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cellX:I

    iget v2, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cellY:I

    invoke-static/range {v0 .. v5}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->findIntersectingVacantCells(Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;IIII[[Z)V

    .line 238
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->dirtyTag:Z

    .line 240
    .end local v3           #xCount:I
    .end local v4           #yCount:I
    .end local v5           #occupied:[[Z
    .end local v6           #portrait:Z
    :cond_0
    return-object v0

    .line 230
    .restart local v6       #portrait:Z
    :cond_1
    iget v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisCells:I

    goto :goto_0

    .line 231
    .restart local v3       #xCount:I
    :cond_2
    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisCells:I

    goto :goto_1
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getTag()Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method getTopPadding()I
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->portrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisStartPadding:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisStartPadding:I

    goto :goto_0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 828
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->lastDownOnOccupiedCell:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 156
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellInfo:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->screen:I

    .line 157
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "ev"

    .prologue
    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 162
    .local v3, action:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellInfo:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;

    .line 164
    .local v4, cellInfo:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;
    if-nez v3, :cond_8

    .line 165
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->rect:Landroid/graphics/Rect;

    .line 166
    .local v9, frame:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getScrollX()I

    move-result v19

    add-int v14, v18, v19

    .line 167
    .local v14, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getScrollY()I

    move-result v19

    add-int v16, v18, v19

    .line 168
    .local v16, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getChildCount()I

    move-result v7

    .line 170
    .local v7, count:I
    const/4 v8, 0x0

    .line 171
    .local v8, found:Z
    add-int/lit8 v10, v7, -0x1

    .local v10, i:I
    :goto_0
    if-gez v10, :cond_2

    .line 191
    :goto_1
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->lastDownOnOccupiedCell:Z

    .line 193
    if-nez v8, :cond_0

    .line 194
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellXY:[I

    .line 195
    .local v5, cellXY:[I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1, v5}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->pointToCellExact(II[I)V

    .line 197
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->portrait:Z

    .line 198
    .local v13, portrait:Z
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisCells:I

    .line 199
    .local v15, xCount:I
    :goto_2
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisCells:I

    move/from16 v17, v0

    .line 200
    .local v17, yCount:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->occupied:[[Z

    .line 201
    .local v12, occupied:[[Z
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v15, v1, v12, v2}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 203
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cell:Landroid/view/View;

    .line 204
    const/16 v18, 0x0

    aget v18, v5, v18

    move/from16 v0, v18

    iput v0, v4, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cellX:I

    .line 205
    const/16 v18, 0x1

    aget v18, v5, v18

    move/from16 v0, v18

    iput v0, v4, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cellY:I

    .line 206
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v4, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->spanX:I

    .line 207
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v4, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->spanY:I

    .line 208
    const/16 v18, 0x0

    aget v18, v5, v18

    if-ltz v18, :cond_7

    const/16 v18, 0x1

    aget v18, v5, v18

    if-ltz v18, :cond_7

    const/16 v18, 0x0

    aget v18, v5, v18

    move/from16 v0, v18

    if-ge v0, v15, :cond_7

    const/16 v18, 0x1

    aget v18, v5, v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    const/16 v18, 0x0

    aget v18, v5, v18

    aget-object v18, v12, v18

    const/16 v19, 0x1

    aget v19, v5, v19

    aget-boolean v18, v18, v19

    if-nez v18, :cond_7

    const/16 v18, 0x1

    :goto_4
    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->valid:Z

    .line 209
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->dirtyTag:Z

    .line 211
    .end local v5           #cellXY:[I
    .end local v12           #occupied:[[Z
    .end local v13           #portrait:Z
    .end local v15           #xCount:I
    .end local v17           #yCount:I
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->setTag(Ljava/lang/Object;)V

    .line 222
    .end local v7           #count:I
    .end local v8           #found:Z
    .end local v9           #frame:Landroid/graphics/Rect;
    .end local v10           #i:I
    .end local v14           #x:I
    .end local v16           #y:I
    :cond_1
    :goto_5
    const/16 v18, 0x0

    return v18

    .line 172
    .restart local v7       #count:I
    .restart local v8       #found:Z
    .restart local v9       #frame:Landroid/graphics/Rect;
    .restart local v10       #i:I
    .restart local v14       #x:I
    .restart local v16       #y:I
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 174
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-eqz v18, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 175
    :cond_3
    invoke-virtual {v6, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 176
    move/from16 v0, v16

    invoke-virtual {v9, v14, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 177
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;

    .line 178
    .local v11, lp:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;
    iput-object v6, v4, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cell:Landroid/view/View;

    .line 179
    iget v0, v11, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellX:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cellX:I

    .line 180
    iget v0, v11, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellY:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cellY:I

    .line 181
    iget v0, v11, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellHSpan:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->spanX:I

    .line 182
    iget v0, v11, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellVSpan:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->spanY:I

    .line 183
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->valid:Z

    .line 184
    const/4 v8, 0x1

    .line 185
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->dirtyTag:Z

    goto/16 :goto_1

    .line 171
    .end local v11           #lp:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;
    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_0

    .line 198
    .end local v6           #child:Landroid/view/View;
    .restart local v5       #cellXY:[I
    .restart local v13       #portrait:Z
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisCells:I

    goto/16 :goto_2

    .line 199
    .restart local v15       #xCount:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisCells:I

    move/from16 v17, v0

    goto/16 :goto_3

    .line 208
    .restart local v12       #occupied:[[Z
    .restart local v17       #yCount:I
    :cond_7
    const/16 v18, 0x0

    goto :goto_4

    .line 212
    .end local v5           #cellXY:[I
    .end local v7           #count:I
    .end local v8           #found:Z
    .end local v9           #frame:Landroid/graphics/Rect;
    .end local v10           #i:I
    .end local v12           #occupied:[[Z
    .end local v13           #portrait:Z
    .end local v14           #x:I
    .end local v15           #xCount:I
    .end local v16           #y:I
    .end local v17           #yCount:I
    :cond_8
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_1

    .line 213
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cell:Landroid/view/View;

    .line 214
    const/16 v18, -0x1

    move/from16 v0, v18

    iput v0, v4, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cellX:I

    .line 215
    const/16 v18, -0x1

    move/from16 v0, v18

    iput v0, v4, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cellY:I

    .line 216
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->spanX:I

    .line 217
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->spanY:I

    .line 218
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->valid:Z

    .line 219
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->dirtyTag:Z

    .line 220
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getChildCount()I

    move-result v11

    .line 576
    .local v11, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-lt v12, v11, :cond_0

    .line 595
    return-void

    .line 577
    :cond_0
    invoke-virtual {p0, v12}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 578
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 580
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;

    .line 582
    .local v13, lp:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;
    iget v9, v13, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->x:I

    .line 583
    .local v9, childLeft:I
    iget v10, v13, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->y:I

    .line 584
    .local v10, childTop:I
    iget v0, v13, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->width:I

    add-int/2addr v0, v9

    iget v1, v13, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->height:I

    add-int/2addr v1, v10

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 586
    iget-boolean v0, v13, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_1

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->dropped:Z

    .line 589
    iget-object v7, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellXY:[I

    .line 590
    .local v7, cellXY:[I
    invoke-virtual {p0, v7}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getLocationOnScreen([I)V

    .line 591
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    const/4 v3, 0x0

    aget v3, v7, v3

    add-int/2addr v3, v9

    iget v4, v13, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v4, v10

    iget v5, v13, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 576
    .end local v7           #cellXY:[I
    .end local v9           #childLeft:I
    .end local v10           #childTop:I
    .end local v13           #lp:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 23
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 473
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 474
    .local v22, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 476
    .local v6, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 477
    .local v20, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 479
    .local v5, heightSpecSize:I
    if-eqz v22, :cond_0

    if-nez v20, :cond_1

    .line 480
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v10, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v2, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 483
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellWidth:I

    .line 484
    .local v3, cellWidth:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellHeight:I

    .line 485
    .local v4, cellHeight:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisStartPadding:I

    .line 486
    .local v7, longAxisStartPadding:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisStartPadding:I

    .line 490
    .local v8, shortAxisStartPadding:I
    if-le v5, v6, :cond_2

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->portrait:Z

    move-object/from16 v2, p0

    .line 492
    invoke-virtual/range {v2 .. v8}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->calculateGap(IIIIII)V

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getChildCount()I

    move-result v19

    .line 507
    .local v19, count:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 527
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->setMeasuredDimension(II)V

    .line 528
    return-void

    .line 490
    .end local v19           #count:I
    .end local v21           #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 508
    .restart local v19       #count:I
    .restart local v21       #i:I
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 509
    .local v16, child:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;

    .line 511
    .local v9, lp:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->portrait:Z

    if-eqz v2, :cond_5

    .line 512
    move-object/from16 v0, p0

    iget v12, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->widthGap:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->heightGap:I

    move v10, v3

    move v11, v4

    move v14, v8

    move v15, v7

    invoke-virtual/range {v9 .. v15}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->setup(IIIIII)V

    .line 517
    :goto_2
    iget-boolean v2, v9, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->regenerateId:Z

    if-eqz v2, :cond_4

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getId()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    iget v10, v9, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellX:I

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v2, v10

    iget v10, v9, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellY:I

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v2, v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 519
    const/4 v2, 0x0

    iput-boolean v2, v9, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->regenerateId:Z

    .line 522
    :cond_4
    iget v2, v9, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->width:I

    const/high16 v10, 0x4000

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 523
    .local v17, childWidthMeasureSpec:I
    iget v2, v9, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->height:I

    const/high16 v10, 0x4000

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 524
    .local v18, childheightMeasureSpec:I
    invoke-virtual/range {v16 .. v18}, Landroid/view/View;->measure(II)V

    .line 507
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 514
    .end local v17           #childWidthMeasureSpec:I
    .end local v18           #childheightMeasureSpec:I
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->widthGap:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->heightGap:I

    move v10, v3

    move v11, v4

    move v14, v7

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->setup(IIIIII)V

    goto :goto_2
.end method

.method pointToCellExact(II[I)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 387
    iget-boolean v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->portrait:Z

    .line 389
    .local v1, portrait:Z
    if-eqz v1, :cond_4

    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisStartPadding:I

    .line 390
    .local v0, hStartPadding:I
    :goto_0
    if-eqz v1, :cond_5

    iget v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisStartPadding:I

    .line 392
    .local v2, vStartPadding:I
    :goto_1
    sub-int v5, p1, v0

    iget v6, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellWidth:I

    iget v7, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->widthGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    aput v5, p3, v8

    .line 393
    sub-int v5, p2, v2

    iget v6, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellHeight:I

    iget v7, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->heightGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    aput v5, p3, v9

    .line 395
    if-eqz v1, :cond_6

    iget v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisCells:I

    .line 396
    .local v3, xAxis:I
    :goto_2
    if-eqz v1, :cond_7

    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisCells:I

    .line 398
    .local v4, yAxis:I
    :goto_3
    aget v5, p3, v8

    if-gez v5, :cond_0

    .line 399
    aput v8, p3, v8

    .line 401
    :cond_0
    aget v5, p3, v8

    if-lt v5, v3, :cond_1

    .line 402
    add-int/lit8 v5, v3, -0x1

    aput v5, p3, v8

    .line 404
    :cond_1
    aget v5, p3, v9

    if-gez v5, :cond_2

    .line 405
    aput v8, p3, v9

    .line 407
    :cond_2
    aget v5, p3, v9

    if-lt v5, v4, :cond_3

    .line 408
    add-int/lit8 v5, v4, -0x1

    aput v5, p3, v9

    .line 410
    :cond_3
    return-void

    .line 389
    .end local v0           #hStartPadding:I
    .end local v2           #vStartPadding:I
    .end local v3           #xAxis:I
    .end local v4           #yAxis:I
    :cond_4
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisStartPadding:I

    goto :goto_0

    .line 390
    .restart local v0       #hStartPadding:I
    :cond_5
    iget v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisStartPadding:I

    goto :goto_1

    .line 395
    .restart local v2       #vStartPadding:I
    :cond_6
    iget v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->longAxisCells:I

    goto :goto_2

    .line 396
    .restart local v3       #xAxis:I
    :cond_7
    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->shortAxisCells:I

    goto :goto_3
.end method

.method pointToCellRounded(II[I)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    .line 423
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->cellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->pointToCellExact(II[I)V

    .line 424
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 146
    if-eqz p1, :cond_0

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 148
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 151
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getChildCount()I

    move-result v0

    .line 600
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 606
    return-void

    .line 601
    :cond_0
    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 602
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 604
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 610
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 611
    return-void
.end method
