.class public Lcom/uprui/tv/launcher8/pageview/TvPageView;
.super Landroid/view/ViewGroup;
.source "TvPageView.java"

# interfaces
.implements Lcom/uprui/tv/launcher8/pageview/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;,
        Lcom/uprui/tv/launcher8/pageview/TvPageView$LayoutParams;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator; = null

.field public static final FLAG_PAGE_RESTSIZE:I = 0x4

.field public static final FLAG_SCROLLING:I = 0x2

.field public static final FLAG_TOUCH_MODE:I = 0x1

.field public static FOCUS_DEBUG:Z = false

.field public static final GRAVITY_CENTER:I = 0x0

.field public static final GRAVITY_SPACE:I = 0x1

.field public static final SCROLL_DURATION:I = 0x2ee

.field public static final SCROLL_IDLE:I = 0x0

.field public static final SCROLL_NEXT:I = 0x1

.field public static final SCROLL_PREVIOUS:I = -0x1

.field public static TAG:Ljava/lang/String;


# instance fields
.field private currentScreen:I

.field protected destinationScrollX:I

.field protected firstPageLeft:I

.field private gravity:I

.field private insets:Landroid/graphics/Rect;

.field private invaile_screen:I

.field private nextScreen:I

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingTop:I

.field private pageFlag:I

.field private pageHeight:I

.field private pageSpace:I

.field private pageWidth:I

.field private scroll:Landroid/widget/Scroller;

.field protected scrollDirection:I

.field protected startScroolX:I

.field protected unboundedScrollX:I

.field private viewPort:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    .line 22
    sput-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->FOCUS_DEBUG:Z

    .line 23
    const-string v0, "TvPageView"

    sput-object v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    .line 438
    new-instance v0, Lcom/uprui/tv/launcher8/pageview/TvPageView$1;

    invoke-direct {v0}, Lcom/uprui/tv/launcher8/pageview/TvPageView$1;-><init>()V

    sput-object v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 446
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->invaile_screen:I

    .line 40
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->invaile_screen:I

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scrollDirection:I

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->initAttributes(Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->invaile_screen:I

    .line 40
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->invaile_screen:I

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scrollDirection:I

    .line 71
    invoke-direct {p0, p2}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->initAttributes(Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->invaile_screen:I

    .line 40
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->invaile_screen:I

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scrollDirection:I

    .line 66
    invoke-direct {p0, p2}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->initAttributes(Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method private beginScroll()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 384
    invoke-direct {p0, v2, v2}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->setFlag(II)V

    .line 385
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 386
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 388
    .local v1, index:I
    iget v2, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    if-eq v1, v2, :cond_0

    .line 389
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 393
    .end local v1           #index:I
    :cond_0
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->onBeginScroll()V

    .line 394
    return-void
.end method

.method private endScroll()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 400
    const/4 v2, 0x2

    invoke-direct {p0, v3, v2}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->setFlag(II)V

    .line 401
    iput v3, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scrollDirection:I

    .line 403
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->clearRotate()V

    .line 404
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 406
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 409
    .local v1, index:I
    sget-boolean v2, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "endScroll: [focusChild:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  [currentScreen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->currentScreen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    iget v2, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->currentScreen:I

    if-eq v1, v2, :cond_1

    .line 411
    iget v2, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->currentScreen:I

    invoke-virtual {p0, v2}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 415
    .end local v0           #child:Landroid/view/View;
    .end local v1           #index:I
    :cond_1
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->onEndScroll()V

    .line 416
    return-void
.end method

.method private initAttributes(Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->viewPort:Landroid/graphics/Rect;

    .line 81
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->insets:Landroid/graphics/Rect;

    .line 82
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scroll:Landroid/widget/Scroller;

    .line 83
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->setDescendantFocusability(I)V

    .line 85
    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/uprui/tv/launcher8/R$styleable;->PageView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageWidth:I

    .line 89
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageHeight:I

    .line 90
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->gravity:I

    .line 91
    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->gravity:I

    if-ne v1, v4, :cond_0

    .line 92
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageSpace:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_1
    return-void

    .line 93
    .restart local v0       #a:Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v1

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    throw v1
.end method

.method private setFlag(II)V
    .locals 2
    .parameter "flag"
    .parameter "FlagMask"

    .prologue
    .line 542
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageFlag:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageFlag:I

    .line 543
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageFlag:I

    .line 544
    return-void
.end method


# virtual methods
.method public addInPage(Landroid/view/View;Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;)V
    .locals 6
    .parameter "view"
    .parameter "info"

    .prologue
    .line 286
    iget v2, p2, Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;->screen:I

    invoke-virtual {p0, v2}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;

    .line 287
    .local v0, cellLayout:Lcom/uprui/tv/launcher8/pageview/TvCellLayout;
    new-instance v1, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;

    iget v2, p2, Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;->cellX:I

    iget v3, p2, Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;->cellY:I

    iget v4, p2, Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;->spanX:I

    iget v5, p2, Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;->spanY:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;-><init>(IIII)V

    .line 288
    .local v1, lp:Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;
    invoke-virtual {v0, p1, v1}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->addView(Landroid/view/View;Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;)V

    .line 289
    return-void
.end method

.method public addPage(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 281
    new-instance v0, Lcom/uprui/tv/launcher8/pageview/TvPageView$LayoutParams;

    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageWidth:I

    iget v2, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageHeight:I

    invoke-direct {v0, v1, v2}, Lcom/uprui/tv/launcher8/pageview/TvPageView$LayoutParams;-><init>(II)V

    .line 282
    .local v0, params:Lcom/uprui/tv/launcher8/pageview/TvPageView$LayoutParams;
    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    return-void
.end method

.method protected clearRotate()V
    .locals 4

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getChildCount()I

    move-result v2

    .line 424
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 428
    return-void

    .line 425
    :cond_0
    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 426
    .local v0, child:Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setRotationY(F)V

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 101
    iget-object v2, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scroll:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    sget-boolean v2, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "scroll:[x\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scroll:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scroll:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scroll:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 104
    .local v0, currentX:I
    iget-object v2, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scroll:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 106
    .local v1, currentY:I
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getScrollX()I

    move-result v2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getScrollY()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->postInvalidate()V

    .line 120
    .end local v0           #currentX:I
    .end local v1           #currentY:I
    :cond_1
    :goto_0
    return-void

    .line 109
    .restart local v0       #currentX:I
    .restart local v1       #currentY:I
    :cond_2
    iget-object v2, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scroll:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scroll:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scrollTo(II)V

    goto :goto_0

    .line 112
    .end local v0           #currentX:I
    .end local v1           #currentY:I
    :cond_3
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->isScrolling()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    iget v2, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    iput v2, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->currentScreen:I

    .line 114
    iget v2, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->invaile_screen:I

    iput v2, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    .line 115
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->endScroll()V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 548
    sget-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->FOCUS_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatchUnhandledMove:[focused:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][direction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public getViewPortHeight()I
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->viewPort:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getViewPortOffestH()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->viewPort:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getViewPortOffestV()I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->viewPort:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getViewPortWidth()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->viewPort:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public isScrolling()Z
    .locals 2

    .prologue
    .line 419
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageFlag:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBeginScroll()V
    .locals 3

    .prologue
    .line 396
    sget-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBeginScroll currentScreen-->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->currentScreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    return-void
.end method

.method public onEndScroll()V
    .locals 3

    .prologue
    .line 430
    sget-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onEndScroll currentScreen-->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->currentScreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 31
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 153
    sget-boolean v28, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v28, :cond_0

    sget-object v28, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "onLayout [left:"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "][top:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "][right:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "][bottom:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getChildCount()I

    move-result v5

    .line 155
    .local v5, childCount:I
    if-nez v5, :cond_1

    .line 209
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getViewPortWidth()I

    move-result v27

    .line 160
    .local v27, viewPortWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getViewPortHeight()I

    move-result v26

    .line 161
    .local v26, viewPortHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getMeasuredWidth()I

    move-result v13

    .line 162
    .local v13, measuredWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getMeasuredHeight()I

    move-result v12

    .line 163
    .local v12, measuredHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getPaddingTop()I

    move-result v19

    .line 164
    .local v19, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getPaddingLeft()I

    move-result v17

    .line 165
    .local v17, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getPaddingBottom()I

    move-result v16

    .line 166
    .local v16, paddingBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getPaddingRight()I

    move-result v18

    .line 168
    .local v18, paddingRight:I
    sget-boolean v28, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v28, :cond_2

    sget-object v28, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "paddingTop:"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_2
    sget-boolean v28, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v28, :cond_3

    sget-object v28, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "paddingLeft:"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_3
    sget-boolean v28, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v28, :cond_4

    sget-object v28, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "paddingBottom:"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_4
    sget-boolean v28, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v28, :cond_5

    sget-object v28, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "paddingRight:"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_5
    sub-int v28, v13, v27

    shr-int/lit8 v14, v28, 0x1

    .line 174
    .local v14, offestX:I
    sub-int v28, v12, v26

    shr-int/lit8 v15, v28, 0x1

    .line 176
    .local v15, offestY:I
    sget-boolean v28, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v28, :cond_6

    sget-object v28, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "[offestX:"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "][offestY:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->viewPort:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 179
    add-int v28, v14, v17

    sub-int v29, v27, v17

    sub-int v29, v29, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageWidth:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    shr-int/lit8 v29, v29, 0x1

    add-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/pageview/TvPageView;->firstPageLeft:I

    .line 180
    sget-boolean v28, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v28, :cond_7

    sget-object v28, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "pageWidth:"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageWidth:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_7
    sget-boolean v28, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v28, :cond_8

    sget-object v28, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "firstPageLeft:"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->firstPageLeft:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->firstPageLeft:I

    move/from16 v20, v0

    .line 183
    .local v20, pageLeft:I
    add-int v28, v15, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageHeight:I

    move/from16 v29, v0

    sub-int v29, v26, v29

    sub-int v29, v29, v19

    sub-int v29, v29, v16

    shr-int/lit8 v29, v29, 0x1

    add-int v21, v28, v29

    .line 184
    .local v21, pageTop:I
    const/16 v22, 0x0

    .line 185
    .local v22, params:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-lt v9, v5, :cond_9

    .line 208
    const/16 v28, 0x0

    const/16 v29, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->setFlag(II)V

    goto/16 :goto_0

    .line 186
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 187
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    .line 188
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 189
    .local v8, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 190
    .local v6, childHeight:I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 191
    .local v7, childParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    move/from16 v28, v0

    if-eqz v28, :cond_a

    move-object/from16 v22, v7

    .line 192
    check-cast v22, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 194
    :cond_a
    if-nez v22, :cond_c

    const/4 v11, 0x0

    .line 195
    .local v11, leftMargin:I
    :goto_2
    if-nez v22, :cond_d

    const/16 v25, 0x0

    .line 196
    .local v25, topMargin:I
    :goto_3
    add-int v10, v20, v11

    .line 197
    .local v10, left:I
    add-int v23, v10, v8

    .line 198
    .local v23, right:I
    add-int v24, v21, v25

    .line 199
    .local v24, top:I
    add-int v3, v24, v6

    .line 201
    .local v3, bottom:I
    move/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v4, v10, v0, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 203
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageWidth:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageSpace:I

    move/from16 v29, v0

    add-int v28, v28, v29

    add-int v20, v20, v28

    .line 185
    .end local v3           #bottom:I
    .end local v6           #childHeight:I
    .end local v7           #childParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v8           #childWidth:I
    .end local v10           #left:I
    .end local v11           #leftMargin:I
    .end local v23           #right:I
    .end local v24           #top:I
    .end local v25           #topMargin:I
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 194
    .restart local v6       #childHeight:I
    .restart local v7       #childParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v8       #childWidth:I
    :cond_c
    move-object/from16 v0, v22

    iget v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    .line 195
    .restart local v11       #leftMargin:I
    :cond_d
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v0

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 22
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 213
    sget-boolean v19, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v19, :cond_0

    sget-object v19, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    const-string v20, "onMeasure"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getChildCount()I

    move-result v5

    .line 215
    .local v5, childCount:I
    if-nez v5, :cond_1

    .line 216
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 278
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 220
    .local v18, widthSize:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 222
    .local v17, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 223
    .local v11, heightSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 225
    .local v10, heightMode:I
    if-eqz v17, :cond_2

    if-nez v10, :cond_3

    .line 226
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0

    .line 231
    :cond_3
    if-lez v18, :cond_4

    if-gtz v11, :cond_5

    .line 232
    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0

    .line 237
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->viewPort:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 238
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageWidth:I

    move/from16 v19, v0

    if-nez v19, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getPaddingLeft()I

    move-result v19

    sub-int v19, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageWidth:I

    .line 239
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageHeight:I

    move/from16 v19, v0

    if-nez v19, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getPaddingTop()I

    move-result v19

    sub-int v19, v11, v19

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getPaddingBottom()I

    move-result v20

    sub-int v19, v19, v20

    :goto_2
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageHeight:I

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->gravity:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getViewPortWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getPaddingLeft()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageWidth:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageSpace:I

    .line 244
    :cond_6
    sget-boolean v19, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v19, :cond_7

    sget-object v19, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "onMeasure [width:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "][height:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 247
    .local v9, dm:Landroid/util/DisplayMetrics;
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->insets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->insets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 250
    .local v13, maxSize:I
    move/from16 v16, v18

    .line 251
    .local v16, scaleWidth:I
    move v15, v11

    .line 252
    .local v15, scaleHeight:I
    sget-boolean v19, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v19, :cond_8

    sget-object v19, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "[scaleWidth:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "][scaleHeight:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_8
    move-object/from16 v0, p0

    iget v8, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageWidth:I

    .line 255
    .local v8, childWidth:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageHeight:I

    .line 256
    .local v6, childHeight:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    if-lt v12, v5, :cond_b

    .line 277
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 238
    .end local v6           #childHeight:I
    .end local v8           #childWidth:I
    .end local v9           #dm:Landroid/util/DisplayMetrics;
    .end local v12           #i:I
    .end local v13           #maxSize:I
    .end local v15           #scaleHeight:I
    .end local v16           #scaleWidth:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageWidth:I

    move/from16 v19, v0

    goto/16 :goto_1

    .line 239
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageHeight:I

    move/from16 v19, v0

    goto/16 :goto_2

    .line 257
    .restart local v6       #childHeight:I
    .restart local v8       #childWidth:I
    .restart local v9       #dm:Landroid/util/DisplayMetrics;
    .restart local v12       #i:I
    .restart local v13       #maxSize:I
    .restart local v15       #scaleHeight:I
    .restart local v16       #scaleWidth:I
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 258
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 259
    .local v7, childParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v14, 0x0

    .line 261
    .local v14, params:Landroid/view/ViewGroup$MarginLayoutParams;
    instance-of v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object v14, v7

    .line 262
    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 264
    :cond_c
    if-eqz v14, :cond_d

    .line 265
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v0

    sub-int v19, v8, v19

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    .line 266
    const/high16 v20, 0x4000

    .line 265
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 267
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    sub-int v20, v6, v20

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    const/high16 v21, 0x4000

    .line 266
    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 265
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 256
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 270
    :cond_d
    const/high16 v19, 0x4000

    .line 269
    move/from16 v0, v19

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 271
    const/high16 v20, 0x4000

    .line 270
    move/from16 v0, v20

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 269
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_4
.end method

.method public onPageSelect(I)V
    .locals 0
    .parameter "which"

    .prologue
    .line 436
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 493
    sget-boolean v1, Lcom/uprui/tv/launcher8/pageview/TvPageView;->FOCUS_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestChildFocus [child:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 495
    .local v0, index:I
    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->currentScreen:I

    if-eq v0, v1, :cond_1

    .line 496
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->snapToDestination(I)V

    .line 498
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 499
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 4
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 504
    sget-boolean v1, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestChildRectangleOnScreen [child:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_2

    .line 508
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 509
    .local v0, index:I
    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->currentScreen:I

    if-eq v0, v1, :cond_1

    .line 510
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->snapToDestination(I)V

    .line 512
    :cond_1
    const/4 v1, 0x1

    .line 515
    .end local v0           #index:I
    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 520
    sget-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->FOCUS_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    const-string v1, "requestFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public resetPadding(IIII)V
    .locals 0
    .parameter "paddingLeft"
    .parameter "paddingTop"
    .parameter "paddingRight"
    .parameter "paddingBottom"

    .prologue
    .line 538
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->setPadding(IIII)V

    .line 539
    return-void
.end method

.method public resetPageSize(III)V
    .locals 1
    .parameter "pageWidth"
    .parameter "pageHeight"
    .parameter "pageSpace"

    .prologue
    const/4 v0, 0x4

    .line 530
    iput p1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageWidth:I

    .line 531
    iput p2, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageHeight:I

    .line 532
    iput p3, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageSpace:I

    .line 533
    invoke-direct {p0, v0, v0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->setFlag(II)V

    .line 534
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->requestLayout()V

    .line 535
    return-void
.end method

.method public scrollTo(II)V
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v8, 0x3f80

    .line 123
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 124
    iput p1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->unboundedScrollX:I

    .line 125
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getChildCount()I

    move-result v4

    .line 126
    .local v4, size:I
    if-nez v4, :cond_0

    .line 141
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getViewPortOffestH()I

    move-result v6

    sub-int v5, p1, v6

    .line 131
    .local v5, viewPortOffestX:I
    iget v6, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageWidth:I

    iget v7, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageSpace:I

    add-int v1, v6, v7

    .line 132
    .local v1, pageScreenWidth:I
    div-int v0, v5, v1

    .line 134
    .local v0, left:I
    mul-int v6, v0, v1

    sub-int v6, v5, v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    int-to-float v7, v1

    div-float v2, v6, v7

    .line 136
    .local v2, percent:F
    add-int/lit8 v3, v0, 0x1

    .line 137
    .local v3, right:I
    cmpl-float v6, v2, v8

    if-gez v6, :cond_1

    const/4 v6, 0x0

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_2

    .line 138
    :cond_1
    move v3, v0

    .line 140
    :cond_2
    iget v6, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scrollDirection:I

    invoke-virtual {p0, v0, v3, v6, v2}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scrollTo(IIIF)V

    goto :goto_0
.end method

.method protected scrollTo(IIIF)V
    .locals 3
    .parameter "leftScreen"
    .parameter "rightScreen"
    .parameter "scrollDirection"
    .parameter "percent"

    .prologue
    .line 145
    sget-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scrollto:[leftScreen:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][rightScreen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][direction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][percent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "insets"

    .prologue
    .line 526
    iput-object p1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->insets:Landroid/graphics/Rect;

    .line 527
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 554
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 555
    sget-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v1, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "setVisibility:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    const-string v0, "gone"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    return-void

    .line 555
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const-string v0, "invisible"

    goto :goto_0

    :cond_2
    const-string v0, "visible"

    goto :goto_0
.end method

.method public snapToDestination(I)V
    .locals 8
    .parameter "whichScreen"

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->currentScreen:I

    if-eq p1, v0, :cond_0

    .line 359
    iput p1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    .line 360
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getChildCount()I

    move-result v5

    if-lt v0, v5, :cond_3

    .line 361
    :cond_2
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->invaile_screen:I

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    .line 362
    sget-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    const-string v5, "snapToPreviousScreen nextScreen is invaile_screen-->"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :cond_3
    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->unboundedScrollX:I

    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->startScroolX:I

    .line 366
    .local v1, startX:I
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getViewPortOffestH()I

    move-result v0

    iget v5, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    iget v6, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageWidth:I

    iget v7, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageSpace:I

    add-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v0, v5

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->destinationScrollX:I

    .line 367
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getScrollY()I

    move-result v2

    .line 368
    .local v2, startY:I
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->destinationScrollX:I

    sub-int v3, v0, v1

    .line 369
    .local v3, dx:I
    const/4 v4, 0x0

    .line 371
    .local v4, dy:I
    if-lez v3, :cond_5

    .line 372
    const/4 v0, 0x1

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scrollDirection:I

    .line 377
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scroll:Landroid/widget/Scroller;

    const/16 v5, 0x2ee

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 378
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->beginScroll()V

    .line 379
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->invalidate()V

    goto :goto_0

    .line 373
    :cond_5
    if-gez v3, :cond_4

    .line 374
    const/4 v0, -0x1

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scrollDirection:I

    goto :goto_1
.end method

.method public snapToNextScreen()V
    .locals 8

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    sget-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    const-string v5, "snapToNextScreen scroll not finished"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->currentScreen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    .line 313
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getChildCount()I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 314
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->invaile_screen:I

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    .line 315
    sget-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    const-string v5, "snapToNextScreen next screen invaile"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scrollDirection:I

    .line 320
    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->unboundedScrollX:I

    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->startScroolX:I

    .line 321
    .local v1, startX:I
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getViewPortOffestH()I

    move-result v0

    iget v5, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    iget v6, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageWidth:I

    iget v7, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageSpace:I

    add-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v0, v5

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->destinationScrollX:I

    .line 322
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getScrollY()I

    move-result v2

    .line 323
    .local v2, startY:I
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->destinationScrollX:I

    sub-int v3, v0, v1

    .line 324
    .local v3, dx:I
    const/4 v4, 0x0

    .line 325
    .local v4, dy:I
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scroll:Landroid/widget/Scroller;

    const/16 v5, 0x2ee

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 326
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->beginScroll()V

    .line 327
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->invalidate()V

    goto :goto_0
.end method

.method public snapToPreviousScreen()V
    .locals 8

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->currentScreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    .line 335
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    if-gez v0, :cond_2

    .line 336
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->invaile_screen:I

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    .line 337
    sget-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->TAG:Ljava/lang/String;

    const-string v5, "snapToPreviousScreen nextScreen is invaile_screen-->"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scrollDirection:I

    .line 342
    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->unboundedScrollX:I

    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->startScroolX:I

    .line 343
    .local v1, startX:I
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getViewPortOffestH()I

    move-result v0

    iget v5, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->nextScreen:I

    iget v6, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageWidth:I

    iget v7, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->pageSpace:I

    add-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v0, v5

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->destinationScrollX:I

    .line 344
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->getScrollY()I

    move-result v2

    .line 345
    .local v2, startY:I
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->destinationScrollX:I

    sub-int v3, v0, v1

    .line 346
    .local v3, dx:I
    const/4 v4, 0x0

    .line 347
    .local v4, dy:I
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scroll:Landroid/widget/Scroller;

    const/16 v5, 0x2ee

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 348
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->beginScroll()V

    .line 349
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->invalidate()V

    goto :goto_0
.end method
