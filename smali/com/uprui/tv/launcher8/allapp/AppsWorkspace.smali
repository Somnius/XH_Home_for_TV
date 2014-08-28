.class public Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;
.super Landroid/view/ViewGroup;
.source "AppsWorkspace.java"


# static fields
.field private static final BASELINE_FLING_VELOCITY:F = 2500.0f

.field private static final FLING_VELOCITY_INFLUENCE:F = 0.4f

.field private static final INVALID_POINTER:I = -0x1

.field private static final INVALID_SCREEN:I = -0x1

.field private static final NANOTIME_DIV:F = 1.0E9f

#the value of this static final field might be set in the static constructor
.field private static final SMOOTHING_CONSTANT:F = 0.0f

.field private static final SMOOTHING_SPEED:F = 0.75f

.field private static final SNAP_VELOCITY:I = 0x190

.field private static final TOUCH_STATE_DOWN:I = 0x2

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static mCurrentScreen:I


# instance fields
.field private activePointerId:I

.field private allAppIndicator:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

.field private allowLongPress:Z

.field private distance:I

.field private firstLayout:Z

.field private lastDownX:F

.field private lastMotionX:F

.field private lastMotionY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private maximumVelocity:I

.field private nextScreen:I

.field private scroller:Landroid/widget/Scroller;

.field private smoothingTime:F

.field private final tempCell:[I

.field private touchSlop:I

.field private touchState:I

.field private touchX:F

.field private vacantCache:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 67
    const-wide v0, 0x3f90624dd2f1a9fcL

    const-wide/high16 v2, 0x3fe8

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->SMOOTHING_CONSTANT:F

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-boolean v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->firstLayout:Z

    .line 35
    iput v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->nextScreen:I

    .line 46
    iput v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    .line 51
    iput-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->vacantCache:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->tempCell:[I

    .line 55
    iput-boolean v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->allowLongPress:Z

    .line 62
    iput v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->activePointerId:I

    .line 63
    iput-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->allAppIndicator:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    .line 75
    iput v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    .line 102
    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->setHapticFeedbackEnabled(Z)V

    .line 103
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->initWorkspace()V

    .line 104
    return-void
.end method

.method private clearVacantCache()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->vacantCache:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->vacantCache:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->clearVacantCells()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->vacantCache:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;

    .line 234
    :cond_0
    return-void
.end method

.method private initWorkspace()V
    .locals 4

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 111
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/widget/Scroller;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scroller:Landroid/widget/Scroller;

    .line 112
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 113
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchSlop:I

    .line 114
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->maximumVelocity:I

    .line 116
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->setDescendantFocusability(I)V

    .line 117
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 532
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 533
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 534
    .local v1, pointerId:I
    iget v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->activePointerId:I

    if-ne v1, v3, :cond_0

    .line 536
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 537
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastMotionX:F

    .line 538
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastMotionY:F

    .line 539
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->activePointerId:I

    .line 540
    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 541
    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 544
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 536
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private snapToScreen(IIZ)V
    .locals 10
    .parameter "whichScreen"
    .parameter "velocity"
    .parameter "settle"

    .prologue
    const/4 v2, 0x0

    .line 730
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 732
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->clearVacantCache()V

    .line 733
    sget v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v0, p1}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->enableChildrenCache(II)V

    .line 735
    iput p1, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->nextScreen:I

    .line 737
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 738
    .local v6, focusedChild:Landroid/view/View;
    if-eqz v6, :cond_0

    sget v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 739
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 742
    :cond_0
    const/4 v0, 0x1

    sget v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 743
    .local v8, screenDelta:I
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getWidth()I

    move-result v0

    mul-int v7, p1, v0

    .line 744
    .local v7, newX:I
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getScrollX()I

    move-result v0

    sub-int v3, v7, v0

    .line 745
    .local v3, delta:I
    add-int/lit8 v0, v8, 0x1

    mul-int/lit8 v5, v0, 0x64

    .line 747
    .local v5, duration:I
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 751
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 752
    if-lez p2, :cond_2

    .line 753
    int-to-float v0, v5

    int-to-float v1, v5

    int-to-float v4, p2

    const v9, 0x451c4000

    div-float/2addr v4, v9

    div-float/2addr v1, v4

    const v4, 0x3ecccccd

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    float-to-int v5, v0

    .line 758
    :goto_0
    invoke-virtual {p0, v5}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->awakenScrollBars(I)Z

    .line 759
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getScrollX()I

    move-result v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 760
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->invalidate()V

    .line 761
    return-void

    .line 755
    :cond_2
    add-int/lit8 v5, v5, 0x64

    goto :goto_0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 3
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    sget v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 402
    .local v0, parent:Landroid/view/View;
    if-nez v0, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 405
    const/16 v1, 0x11

    if-ne p2, v1, :cond_2

    .line 406
    sget v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    if-lez v1, :cond_0

    .line 407
    sget v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 409
    :cond_2
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    .line 410
    sget v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 411
    sget v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method addInScreen(Landroid/view/View;IIIZ)V
    .locals 6
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "insert"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 200
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v3

    if-lt p2, v3, :cond_1

    .line 201
    :cond_0
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The screen must be >= 0 and < "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "); skipping child"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->clearVacantCache()V

    .line 207
    invoke-virtual {p0, p2}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;

    .line 209
    .local v0, group:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;
    const/4 v1, 0x0

    .line 210
    .local v1, lp:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 211
    .local v2, vlp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v2, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;

    if-eqz v3, :cond_2

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;
    check-cast v1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;

    .line 215
    .restart local v1       #lp:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;
    :cond_2
    if-nez v1, :cond_3

    .line 216
    new-instance v1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;

    .end local v1           #lp:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;
    invoke-direct {v1, p3, p4, v5, v5}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;-><init>(IIII)V

    .line 224
    .restart local v1       #lp:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;
    :goto_1
    if-eqz p5, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v0, p1, v3, v1}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 226
    invoke-virtual {p1, v4}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    goto :goto_0

    .line 218
    :cond_3
    iput p3, v1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellX:I

    .line 219
    iput p4, v1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellY:I

    .line 220
    iput v5, v1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellHSpan:I

    .line 221
    iput v5, v1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellVSpan:I

    goto :goto_1

    .line 224
    :cond_4
    const/4 v3, -0x1

    goto :goto_2
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 129
    instance-of v0, p1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have AppsCellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 133
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 137
    instance-of v0, p1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have AppsCellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 141
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 145
    instance-of v0, p1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have AppsCellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 149
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 121
    instance-of v0, p1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have AppsCellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 125
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 153
    instance-of v0, p1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have AppsCellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    return-void
.end method

.method clearChildrenCache()V
    .locals 4

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v0

    .line 587
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 590
    return-void

    .line 588
    :cond_0
    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const v6, 0x4e6e6b28

    .line 248
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchX:F

    .line 250
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v4, v6

    iput v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->smoothingTime:F

    .line 251
    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchX:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scrollTo(II)V

    .line 253
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v5

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 254
    .local v3, percent:F
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->allAppIndicator:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

    invoke-virtual {v4, v3}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->indicate(F)V

    .line 256
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->postInvalidate()V

    .line 274
    .end local v3           #percent:F
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->nextScreen:I

    if-eq v4, v7, :cond_2

    .line 258
    const/4 v4, 0x0

    iget v5, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->nextScreen:I

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sput v4, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    .line 259
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v5

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 260
    .restart local v3       #percent:F
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->allAppIndicator:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

    invoke-virtual {v4, v3}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->indicate(F)V

    .line 261
    iput v7, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->nextScreen:I

    .line 262
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->clearChildrenCache()V

    goto :goto_0

    .line 263
    .end local v3           #percent:F
    :cond_2
    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 264
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v4, v4

    div-float v2, v4, v6

    .line 265
    .local v2, now:F
    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->smoothingTime:F

    sub-float v4, v2, v4

    sget v5, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->SMOOTHING_CONSTANT:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 266
    .local v1, e:F
    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchX:F

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float v0, v4, v5

    .line 267
    .local v0, dx:F
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getScrollX()I

    move-result v4

    mul-float v5, v0, v1

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scrollTo(II)V

    .line 268
    iput v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->smoothingTime:F

    .line 270
    const/high16 v4, 0x3f80

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_3

    const/high16 v4, -0x4080

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 271
    :cond_3
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->postInvalidate()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v2, 0x1

    .line 278
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v8

    if-ge v8, v2, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const/4 v4, 0x0

    .line 282
    .local v4, restore:Z
    const/4 v5, 0x0

    .line 284
    .local v5, restoreCount:I
    iget v8, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    if-eq v8, v2, :cond_2

    iget v8, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->nextScreen:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 285
    .local v2, fastDraw:Z
    :goto_1
    if-eqz v2, :cond_4

    .line 286
    sget v8, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-le v8, v9, :cond_3

    .line 287
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getDrawingTime()J

    move-result-wide v9

    invoke-virtual {p0, p1, v8, v9, v10}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0

    .line 284
    .end local v2           #fastDraw:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 289
    .restart local v2       #fastDraw:Z
    :cond_3
    sget v8, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v8}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getDrawingTime()J

    move-result-wide v9

    invoke-virtual {p0, p1, v8, v9, v10}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0

    .line 292
    :cond_4
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getDrawingTime()J

    move-result-wide v0

    .line 293
    .local v0, drawingTime:J
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    .line 294
    .local v7, scrollPos:F
    float-to-int v3, v7

    .line 295
    .local v3, leftScreen:I
    add-int/lit8 v6, v3, 0x1

    .line 296
    .local v6, rightScreen:I
    if-ltz v3, :cond_5

    .line 297
    invoke-virtual {p0, v3}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 299
    :cond_5
    int-to-float v8, v3

    cmpl-float v8, v7, v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 300
    invoke-virtual {p0, v6}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 385
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v1

    if-lez v1, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->snapToScreen(I)V

    .line 396
    :goto_0
    return v0

    .line 390
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 391
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->snapToScreen(I)V

    goto :goto_0

    .line 396
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method enableChildrenCache(II)V
    .locals 3
    .parameter "fromScreen"
    .parameter "toScreen"

    .prologue
    .line 573
    if-le p1, p2, :cond_0

    .line 574
    move v1, p1

    .line 575
    .local v1, temp:I
    move p1, p2

    .line 576
    move p2, v1

    .line 579
    .end local v1           #temp:I
    :cond_0
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v0

    .line 581
    .local v0, count:I
    const/4 v2, 0x0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 582
    add-int/lit8 v2, v0, -0x1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 583
    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .parameter "focused"

    .prologue
    .line 553
    sget v3, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 554
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 556
    .local v2, v:Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 557
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 567
    :cond_0
    return-void

    .line 560
    :cond_1
    if-eq v2, p0, :cond_0

    .line 563
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 564
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 565
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 566
    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method getCurrentScreen()I
    .locals 1

    .prologue
    .line 165
    sget v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 311
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 312
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->computeScroll()V

    .line 313
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 420
    .local v0, action:I
    const/4 v10, 0x2

    if-ne v0, v10, :cond_0

    iget v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    if-eqz v10, :cond_0

    .line 421
    const/4 v10, 0x1

    .line 528
    :goto_0
    return v10

    .line 424
    :cond_0
    iget-object v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_1

    .line 425
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 427
    :cond_1
    iget-object v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 429
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    .line 528
    :cond_2
    :goto_1
    :pswitch_0
    iget v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    if-eqz v10, :cond_16

    const/4 v10, 0x1

    goto :goto_0

    .line 431
    :pswitch_1
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v10

    if-nez v10, :cond_3

    iget v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_7

    iget v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    .line 432
    :cond_4
    iget v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_5

    .line 433
    iget v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    .line 434
    iget v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    div-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    .line 435
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v10

    if-nez v10, :cond_6

    .line 436
    iget v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scrollTo(II)V

    .line 441
    :cond_5
    :goto_2
    const/4 v10, 0x0

    iput v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    goto :goto_1

    .line 437
    :cond_6
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_5

    .line 438
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v10

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getWidth()I

    move-result v11

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    add-int/2addr v10, v11

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scrollTo(II)V

    goto :goto_2

    .line 443
    :cond_7
    iget v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->activePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 444
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 445
    .local v4, x:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 446
    .local v7, y:F
    iget v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastMotionX:F

    sub-float v10, v4, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v5, v10

    .line 447
    .local v5, xDiff:I
    iget v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastMotionY:F

    sub-float v10, v7, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v8, v10

    .line 449
    .local v8, yDiff:I
    iget v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchSlop:I

    .line 450
    .local v3, touchSlop:I
    if-le v5, v3, :cond_a

    const/4 v6, 0x1

    .line 451
    .local v6, xMoved:Z
    :goto_3
    if-le v8, v3, :cond_b

    const/4 v9, 0x1

    .line 453
    .local v9, yMoved:Z
    :goto_4
    if-nez v6, :cond_8

    if-eqz v9, :cond_2

    .line 455
    :cond_8
    if-eqz v6, :cond_9

    .line 456
    const/4 v10, 0x1

    iput v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    .line 457
    iput v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastMotionX:F

    .line 458
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    iput v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchX:F

    .line 459
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    long-to-float v10, v10

    const v11, 0x4e6e6b28

    div-float/2addr v10, v11

    iput v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->smoothingTime:F

    .line 460
    sget v10, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    add-int/lit8 v10, v10, -0x1

    sget v11, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->enableChildrenCache(II)V

    .line 462
    :cond_9
    iget-boolean v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->allowLongPress:Z

    if-eqz v10, :cond_2

    .line 463
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->allowLongPress:Z

    .line 465
    sget v10, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v10}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 466
    .local v1, currentScreen:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    goto/16 :goto_1

    .line 450
    .end local v1           #currentScreen:Landroid/view/View;
    .end local v6           #xMoved:Z
    .end local v9           #yMoved:Z
    :cond_a
    const/4 v6, 0x0

    goto :goto_3

    .line 451
    .restart local v6       #xMoved:Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_4

    .line 473
    .end local v2           #pointerIndex:I
    .end local v3           #touchSlop:I
    .end local v4           #x:F
    .end local v5           #xDiff:I
    .end local v6           #xMoved:Z
    .end local v7           #y:F
    .end local v8           #yDiff:I
    :pswitch_2
    iget v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_c

    iget v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    if-nez v10, :cond_c

    .line 474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    .line 476
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 477
    .restart local v4       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 478
    .restart local v7       #y:F
    iput v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastMotionX:F

    .line 479
    iput v7, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastMotionY:F

    .line 480
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->activePointerId:I

    .line 481
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->allowLongPress:Z

    .line 482
    iget-object v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x0

    :goto_5
    iput v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    goto/16 :goto_1

    :cond_d
    const/4 v10, 0x1

    goto :goto_5

    .line 487
    .end local v4           #x:F
    .end local v7           #y:F
    :pswitch_3
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v10

    if-nez v10, :cond_e

    iget v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_f

    :cond_e
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_14

    iget v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_14

    .line 488
    :cond_f
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_2

    .line 489
    :cond_10
    iget v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    if-eqz v10, :cond_11

    .line 490
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 492
    :cond_11
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v10

    if-nez v10, :cond_13

    .line 493
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scrollTo(II)V

    .line 497
    :cond_12
    :goto_6
    const/4 v10, 0x0

    iput v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    .line 498
    const/4 v10, 0x0

    iput v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    goto/16 :goto_1

    .line 494
    :cond_13
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_12

    .line 495
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v10

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getWidth()I

    move-result v11

    mul-int/2addr v10, v11

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scrollTo(II)V

    goto :goto_6

    .line 501
    :cond_14
    iget v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_15

    .line 502
    sget v10, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v10}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;

    .line 503
    .local v1, currentScreen:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;
    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->lastDownOnOccupiedCell()Z

    move-result v10

    if-nez v10, :cond_15

    .line 504
    iget-object v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->tempCell:[I

    invoke-virtual {p0, v10}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getLocationOnScreen([I)V

    .line 509
    .end local v1           #currentScreen:Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;
    :cond_15
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->clearChildrenCache()V

    .line 510
    const/4 v10, 0x0

    iput v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    .line 511
    const/4 v10, -0x1

    iput v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->activePointerId:I

    .line 512
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->allowLongPress:Z

    .line 514
    iget-object v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_2

    .line 515
    iget-object v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 516
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 522
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 528
    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 346
    const/4 v1, 0x0

    .line 348
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v3

    .line 349
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v3, :cond_0

    .line 357
    return-void

    .line 350
    :cond_0
    invoke-virtual {p0, v4}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 351
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 352
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 353
    .local v2, childWidth:I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 354
    add-int/2addr v1, v2

    .line 349
    .end local v2           #childWidth:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    const/4 v6, 0x0

    .line 317
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 319
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 320
    .local v3, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 321
    .local v4, widthMode:I
    if-eq v4, v5, :cond_0

    .line 322
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 325
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 326
    .local v1, heightMode:I
    if-eq v1, v5, :cond_1

    .line 327
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 331
    :cond_1
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v0

    .line 332
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_3

    .line 336
    iget-boolean v5, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->firstLayout:Z

    if-eqz v5, :cond_2

    .line 337
    invoke-virtual {p0, v6}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->setHorizontalScrollBarEnabled(Z)V

    .line 338
    sget v5, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    mul-int/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scrollTo(II)V

    .line 339
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->setHorizontalScrollBarEnabled(Z)V

    .line 340
    iput-boolean v6, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->firstLayout:Z

    .line 342
    :cond_2
    return-void

    .line 333
    :cond_3
    invoke-virtual {p0, v2}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 372
    iget v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->nextScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 373
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->nextScreen:I

    .line 377
    .local v0, focusableScreen:I
    :goto_0
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 378
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 380
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 375
    .end local v0           #focusableScreen:I
    :cond_1
    sget v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    .restart local v0       #focusableScreen:I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "ev"

    .prologue
    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 595
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 597
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 599
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 601
    .local v3, action:I
    and-int/lit16 v0, v3, 0xff

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 722
    :cond_1
    :goto_0
    :pswitch_0
    const/16 v17, 0x1

    :goto_1
    return v17

    .line 603
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 604
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    .line 606
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_3

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    .line 610
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastMotionX:F

    .line 611
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->activePointerId:I

    .line 612
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 613
    sget v17, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    add-int/lit8 v17, v17, -0x1

    sget v18, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->enableChildrenCache(II)V

    goto :goto_0

    .line 615
    :cond_4
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    goto :goto_0

    .line 619
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v17

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    sub-float v17, v17, v18

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-ltz v17, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    sub-float v17, v17, v18

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_9

    .line 621
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_7

    .line 622
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    .line 623
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    .line 624
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v17

    if-nez v17, :cond_8

    .line 625
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scrollTo(II)V

    .line 630
    :cond_7
    :goto_2
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    goto/16 :goto_0

    .line 626
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getWidth()I

    move-result v18

    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    move/from16 v18, v0

    add-int v17, v17, v18

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scrollTo(II)V

    goto :goto_2

    .line 632
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 634
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->activePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 635
    .local v9, pointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    .line 636
    .local v15, x:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    .line 637
    .local v16, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastMotionX:F

    move/from16 v17, v0

    sub-float v6, v17, v15

    .line 638
    .local v6, deltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_c

    .line 639
    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    .line 640
    move-object/from16 v0, p0

    iput v15, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastMotionX:F

    .line 641
    const/16 v17, 0x0

    cmpg-float v17, v6, v17

    if-gez v17, :cond_f

    .line 642
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchX:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_c

    .line 643
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchX:F

    move/from16 v18, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v18

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchX:F

    .line 644
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x4e6e6b28

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->smoothingTime:F

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->invalidate()V

    .line 658
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastMotionY:F

    move/from16 v17, v0

    sub-float v17, v17, v16

    move/from16 v0, v17

    float-to-int v7, v0

    .line 659
    .local v7, deltaY:I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchSlop:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 660
    :cond_d
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    .line 663
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getScrollX()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getWidth()I

    move-result v19

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v8, v17, v18

    .line 664
    .local v8, percent:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->allAppIndicator:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->indicate(F)V

    goto/16 :goto_0

    .line 647
    .end local v7           #deltaY:I
    .end local v8           #percent:F
    :cond_f
    const/16 v17, 0x0

    cmpl-float v17, v6, v17

    if-lez v17, :cond_10

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v4, v17, v18

    .line 649
    .local v4, availableToScroll:F
    const/16 v17, 0x0

    cmpl-float v17, v4, v17

    if-lez v17, :cond_c

    .line 650
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchX:F

    move/from16 v17, v0

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v18

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchX:F

    .line 651
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x4e6e6b28

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->smoothingTime:F

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->invalidate()V

    goto/16 :goto_3

    .line 655
    .end local v4           #availableToScroll:F
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->awakenScrollBars()Z

    goto/16 :goto_3

    .line 669
    .end local v6           #deltaX:F
    .end local v9           #pointerIndex:I
    .end local v15           #x:F
    .end local v16           #y:F
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v17

    if-nez v17, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    sub-float v17, v17, v18

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-ltz v17, :cond_12

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    sub-float v17, v17, v18

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_16

    .line 670
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    move/from16 v17, v0

    if-eqz v17, :cond_13

    .line 671
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 673
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v17

    if-nez v17, :cond_15

    .line 674
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scrollTo(II)V

    .line 678
    :cond_14
    :goto_4
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->lastDownX:F

    .line 679
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->distance:I

    goto/16 :goto_0

    .line 675
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getWidth()I

    move-result v18

    mul-int v17, v17, v18

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scrollTo(II)V

    goto :goto_4

    .line 681
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 682
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 683
    .local v12, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->maximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 684
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->activePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v13, v0

    .line 686
    .local v13, velocityX:I
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getWidth()I

    move-result v10

    .line 687
    .local v10, screenWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getScrollX()I

    move-result v17

    div-int/lit8 v18, v10, 0x2

    add-int v17, v17, v18

    div-int v14, v17, v10

    .line 688
    .local v14, whichScreen:I
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getScrollX()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    div-float v11, v17, v18

    .line 690
    .local v11, scrolledPos:F
    const/16 v17, 0x190

    move/from16 v0, v17

    if-le v13, v0, :cond_19

    sget v17, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    if-lez v17, :cond_19

    .line 691
    int-to-float v0, v14

    move/from16 v17, v0

    cmpg-float v17, v11, v17

    if-gez v17, :cond_18

    sget v17, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    add-int/lit8 v5, v17, -0x1

    .line 692
    .local v5, bound:I
    :goto_5
    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v13, v2}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->snapToScreen(IIZ)V

    .line 700
    .end local v5           #bound:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->recycle()V

    .line 702
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 705
    .end local v10           #screenWidth:I
    .end local v11           #scrolledPos:F
    .end local v12           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v13           #velocityX:I
    .end local v14           #whichScreen:I
    :cond_17
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    .line 706
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->activePointerId:I

    goto/16 :goto_0

    .line 691
    .restart local v10       #screenWidth:I
    .restart local v11       #scrolledPos:F
    .restart local v12       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v13       #velocityX:I
    .restart local v14       #whichScreen:I
    :cond_18
    sget v5, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    goto :goto_5

    .line 693
    :cond_19
    const/16 v17, -0x190

    move/from16 v0, v17

    if-ge v13, v0, :cond_1b

    sget v17, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1b

    .line 694
    int-to-float v0, v14

    move/from16 v17, v0

    cmpl-float v17, v11, v17

    if-lez v17, :cond_1a

    sget v17, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    add-int/lit8 v5, v17, 0x1

    .line 695
    .restart local v5       #bound:I
    :goto_7
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v13, v2}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->snapToScreen(IIZ)V

    goto :goto_6

    .line 694
    .end local v5           #bound:I
    :cond_1a
    sget v5, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    goto :goto_7

    .line 697
    :cond_1b
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v14, v1, v2}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->snapToScreen(IIZ)V

    goto :goto_6

    .line 710
    .end local v10           #screenWidth:I
    .end local v11           #scrolledPos:F
    .end local v12           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v13           #velocityX:I
    .end local v14           #whichScreen:I
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v17

    if-eqz v17, :cond_1

    .line 711
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchState:I

    .line 712
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->activePointerId:I

    goto/16 :goto_0

    .line 716
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getCurrentScreen()I

    move-result v17

    if-eqz v17, :cond_1

    .line 717
    invoke-direct/range {p0 .. p1}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 362
    .local v0, screen:I
    sget v1, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    :cond_0
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->snapToScreen(I)V

    .line 364
    const/4 v1, 0x1

    .line 366
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->clearVacantCache()V

    .line 765
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    sget v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    if-lez v0, :cond_0

    .line 767
    sget v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->snapToScreen(I)V

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->nextScreen:I

    if-lez v0, :cond_0

    .line 771
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->nextScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->snapToScreen(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 777
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->clearVacantCache()V

    .line 778
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    sget v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 780
    sget v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->snapToScreen(I)V

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->nextScreen:I

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 784
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->nextScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->snapToScreen(I)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 241
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 242
    int-to-float v0, p1

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->touchX:F

    .line 243
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->smoothingTime:F

    .line 244
    return-void
.end method

.method public setAllappIndicator(Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;)V
    .locals 0
    .parameter "allAppIndicator"

    .prologue
    .line 790
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->allAppIndicator:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

    .line 791
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 3
    .parameter "currentScreen"

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->clearVacantCache()V

    .line 178
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    .line 179
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->allAppIndicator:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

    invoke-virtual {v0, p1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->indicate(I)V

    .line 181
    sget v0, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->scrollTo(II)V

    .line 182
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->invalidate()V

    .line 183
    return-void
.end method

.method setLauncher(Lcom/uprui/tv/launcher8/allapp/AllAppActivity;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 237
    return-void
.end method

.method snapToScreen(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    const/4 v0, 0x0

    .line 726
    invoke-direct {p0, p1, v0, v0}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->snapToScreen(IIZ)V

    .line 727
    return-void
.end method
