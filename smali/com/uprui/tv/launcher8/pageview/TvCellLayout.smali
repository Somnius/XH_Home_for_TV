.class public Lcom/uprui/tv/launcher8/pageview/TvCellLayout;
.super Landroid/view/ViewGroup;
.source "TvCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static final DEFAULT_COLS:I = 0x4

.field public static final DEFAULT_ROWS:I = 0x4

.field public static final FLAG_RESETSIZE:I = 0x1

.field public static FOCUS_DEBUG:Z

.field public static TAG:Ljava/lang/String;


# instance fields
.field private cellCols:I

.field private cellFlag:I

.field private cellHSpace:I

.field private cellHeight:I

.field private cellRows:I

.field private cellVSpace:I

.field private cellWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->DEBUG:Z

    .line 18
    sput-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->FOCUS_DEBUG:Z

    .line 19
    const-string v0, "TvCellLayout"

    sput-object v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->init()V

    .line 52
    invoke-direct {p0, p2}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->obtainAttrs(Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->init()V

    .line 44
    invoke-direct {p0, p2}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->obtainAttrs(Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->setFocusable(Z)V

    .line 57
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->setDescendantFocusability(I)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->setClickable(Z)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 60
    return-void
.end method

.method private obtainAttrs(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/uprui/tv/launcher8/R$styleable;->CellLayout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellWidth:I

    .line 68
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellHeight:I

    .line 69
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellHSpace:I

    .line 70
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellVSpace:I

    .line 72
    const/16 v1, 0x9

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellRows:I

    .line 73
    const/16 v1, 0xa

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellCols:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    sget-boolean v1, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "obtainAttrs [cellWidth:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    return-void

    .line 76
    :catchall_0
    move-exception v1

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    throw v1
.end method

.method private setFlag(II)V
    .locals 2
    .parameter "flag"
    .parameter "flagMask"

    .prologue
    .line 275
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellFlag:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellFlag:I

    .line 276
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellFlag:I

    .line 277
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;)V
    .locals 13
    .parameter "view"
    .parameter "lp"

    .prologue
    .line 177
    iget v11, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellRows:I

    iget v12, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellCols:I

    invoke-virtual {p2, v11, v12}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->createInfo(II)V

    .line 178
    iget v11, p2, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->id:I

    invoke-virtual {p1, v11}, Landroid/view/View;->setId(I)V

    .line 179
    const/4 v2, 0x0

    .line 180
    .local v2, index:I
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildCount()I

    move-result v10

    .line 182
    .local v10, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v10, :cond_3

    .line 191
    :cond_0
    if-lt v2, v10, :cond_4

    .line 192
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 194
    .local v4, parent:Landroid/view/ViewGroup;
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 195
    .local v3, indexInParent:I
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 196
    .local v5, parentChildCount:I
    add-int/lit8 v11, v5, -0x1

    if-ne v3, v11, :cond_2

    .line 197
    add-int/lit8 v8, v2, -0x1

    .line 198
    .local v8, previous:I
    if-ltz v8, :cond_1

    .line 199
    invoke-virtual {p0, v8}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 200
    .local v9, previousChild:Landroid/view/View;
    const/4 v11, -0x1

    invoke-virtual {v9, v11}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 202
    .end local v9           #previousChild:Landroid/view/View;
    :cond_1
    iget v11, p2, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->id:I

    invoke-virtual {p1, v11}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 204
    if-nez v10, :cond_2

    .line 205
    const/4 v11, 0x1

    if-lt v3, v11, :cond_2

    .line 206
    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;

    .line 207
    .local v6, perviousCell:Lcom/uprui/tv/launcher8/pageview/TvCellLayout;
    invoke-virtual {v6}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildCount()I

    move-result v7

    .line 208
    .local v7, perviousChildCount:I
    if-ltz v7, :cond_2

    .line 209
    add-int/lit8 v11, v7, -0x1

    invoke-virtual {v6, v11}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 219
    .end local v3           #indexInParent:I
    .end local v4           #parent:Landroid/view/ViewGroup;
    .end local v5           #parentChildCount:I
    .end local v6           #perviousCell:Lcom/uprui/tv/launcher8/pageview/TvCellLayout;
    .end local v7           #perviousChildCount:I
    .end local v8           #previous:I
    :cond_2
    :goto_1
    return-void

    .line 183
    :cond_3
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v1

    .line 184
    .local v1, id:I
    iget v11, p2, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->id:I

    if-ge v1, v11, :cond_0

    .line 185
    add-int/lit8 v2, v2, 0x1

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v1           #id:I
    :cond_4
    invoke-super {p0, p1, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 255
    sget-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->FOCUS_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->TAG:Ljava/lang/String;

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

    .line 256
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public findCellView(II)Landroid/view/View;
    .locals 5
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildCount()I

    move-result v2

    .line 263
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 271
    const/4 v3, 0x0

    :cond_0
    return-object v3

    .line 264
    :cond_1
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 266
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 265
    check-cast v1, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;

    .line 267
    .local v1, lp:Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;
    iget v4, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellCols:I

    invoke-virtual {v1, p1, p2, v4}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->containsCell(III)Z

    move-result v4

    if-nez v4, :cond_0

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 224
    .local v0, focus:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 226
    .local v1, index:I
    if-ge p2, v1, :cond_1

    .line 234
    .end local v1           #index:I
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 228
    .restart local v1       #index:I
    .restart local p2
    :cond_1
    add-int/lit8 v2, p1, -0x1

    if-ge p2, v2, :cond_2

    .line 229
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    move p2, v1

    .line 231
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 100
    sget-boolean v21, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->DEBUG:Z

    if-eqz v21, :cond_0

    sget-object v21, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->TAG:Ljava/lang/String;

    const-string v22, "onLayout"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildCount()I

    move-result v5

    .line 102
    .local v5, childCount:I
    if-nez v5, :cond_1

    .line 137
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getPaddingLeft()I

    move-result v16

    .line 106
    .local v16, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getPaddingRight()I

    move-result v17

    .line 107
    .local v17, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getPaddingTop()I

    move-result v18

    .line 108
    .local v18, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getPaddingBottom()I

    move-result v14

    .line 110
    .local v14, paddingBottom:I
    add-int v13, v16, v17

    .line 111
    .local v13, paddindWidth:I
    add-int v15, v18, v14

    .line 113
    .local v15, paddingHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellCols:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellHSpace:I

    move/from16 v23, v0

    add-int v22, v22, v23

    mul-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellHSpace:I

    move/from16 v22, v0

    sub-int v7, v21, v22

    .line 114
    .local v7, contentWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellRows:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellVSpace:I

    move/from16 v23, v0

    add-int v22, v22, v23

    mul-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellVSpace:I

    move/from16 v22, v0

    sub-int v6, v21, v22

    .line 117
    .local v6, contentHeight:I
    sget-object v21, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, " cellCols="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellCols:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " cellRows="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellRows:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v21, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, " cellHeight="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellHeight:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " cellVSpace="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellVSpace:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v21, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, " paddingTop="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " getMeasuredHeight="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getMeasuredHeight()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " paddingHeigh="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " contentHeight="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getMeasuredWidth()I

    move-result v21

    sub-int v21, v21, v13

    sub-int v21, v21, v7

    shr-int/lit8 v21, v21, 0x1

    add-int v11, v16, v21

    .line 122
    .local v11, offestH:I
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getMeasuredHeight()I

    move-result v21

    sub-int v21, v21, v15

    sub-int v21, v21, v6

    shr-int/lit8 v21, v21, 0x1

    add-int v12, v18, v21

    .line 124
    .local v12, offestV:I
    sget-object v21, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, " offestH="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " offestV="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-lt v8, v5, :cond_2

    .line 136
    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->setFlag(II)V

    goto/16 :goto_0

    .line 127
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 128
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;

    .line 129
    .local v10, lp:Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;
    iget v0, v10, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->x:I

    move/from16 v21, v0

    add-int v9, v21, v11

    .line 130
    .local v9, left:I
    iget v0, v10, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->y:I

    move/from16 v21, v0

    add-int v20, v12, v21

    .line 131
    .local v20, top:I
    iget v0, v10, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->width:I

    move/from16 v21, v0

    add-int v19, v9, v21

    .line 132
    .local v19, right:I
    iget v0, v10, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->height:I

    move/from16 v21, v0

    add-int v3, v20, v21

    .line 133
    .local v3, bottom:I
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v4, v9, v0, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 126
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 141
    sget-boolean v10, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->DEBUG:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "onMeasure:[cellWidth:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "][cellHeight:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildCount()I

    move-result v3

    .line 143
    .local v3, childCount:I
    if-nez v3, :cond_1

    .line 144
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 174
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 148
    .local v9, widthSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 150
    .local v8, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 151
    .local v5, heightSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 153
    .local v4, heightMode:I
    if-eqz v8, :cond_2

    if-nez v4, :cond_3

    .line 154
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0

    .line 158
    :cond_3
    if-eqz v9, :cond_4

    if-nez v5, :cond_5

    .line 159
    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0

    .line 163
    :cond_5
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-lt v6, v3, :cond_6

    .line 173
    invoke-virtual {p0, v9, v5}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->setMeasuredDimension(II)V

    goto :goto_0

    .line 164
    :cond_6
    invoke-virtual {p0, v6}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 165
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;

    .line 166
    .local v7, params:Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;
    iget v10, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellWidth:I

    iget v11, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellHeight:I

    iget v12, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellHSpace:I

    iget v13, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellVSpace:I

    invoke-virtual {v7, v10, v11, v12, v13}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->setup(IIII)V

    .line 167
    iget v1, v7, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->width:I

    .line 168
    .local v1, cellWidth:I
    iget v0, v7, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->height:I

    .line 169
    .local v0, cellHeight:I
    const/high16 v10, 0x4000

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/high16 v11, 0x4000

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Landroid/view/View;->measure(II)V

    .line 163
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 241
    sget-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->FOCUS_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->TAG:Ljava/lang/String;

    const-string v1, "requestChildFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 243
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 248
    sget-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->FOCUS_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->TAG:Ljava/lang/String;

    const-string v1, "requestFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public resetCellSize(IIIIII)V
    .locals 3
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "cellHSpace"
    .parameter "cellVSpace"
    .parameter "cellRows"
    .parameter "cellCols"

    .prologue
    const/4 v0, 0x1

    .line 87
    iput p1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellWidth:I

    .line 88
    iput p2, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellHeight:I

    .line 89
    iput p3, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellHSpace:I

    .line 90
    iput p4, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellVSpace:I

    .line 91
    iput p5, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellRows:I

    .line 92
    iput p6, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->cellCols:I

    .line 93
    invoke-direct {p0, v0, v0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->setFlag(II)V

    .line 94
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->requestLayout()V

    .line 95
    sget-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetCellSize [cellWidth:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    return-void
.end method
