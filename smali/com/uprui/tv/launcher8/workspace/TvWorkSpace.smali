.class public Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;
.super Lcom/uprui/tv/launcher8/pageview/TvPageView;
.source "TvWorkSpace.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "TvWorkSpace"


# instance fields
.field private config:Lcom/uprui/tv/launcher8/config/TvCellConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/uprui/tv/launcher8/pageview/TvPageView;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/uprui/tv/launcher8/pageview/TvPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/uprui/tv/launcher8/pageview/TvPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->init()V

    .line 22
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->config:Lcom/uprui/tv/launcher8/config/TvCellConfig;

    .line 36
    return-void
.end method


# virtual methods
.method public addInPage(Landroid/view/View;)V
    .locals 19
    .parameter "view"

    .prologue
    .line 39
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v16

    .line 40
    .local v16, cellConfig:Lcom/uprui/tv/launcher8/config/TvCellConfig;
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->getChildCount()I

    move-result v18

    .line 41
    .local v18, childCount:I
    if-nez v18, :cond_0

    .line 42
    new-instance v2, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;-><init>(Landroid/content/Context;)V

    .line 43
    .local v2, layout:Lcom/uprui/tv/launcher8/pageview/TvCellLayout;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->config:Lcom/uprui/tv/launcher8/config/TvCellConfig;

    iget v3, v8, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellWidth:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->config:Lcom/uprui/tv/launcher8/config/TvCellConfig;

    iget v4, v8, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellHeight:I

    .line 44
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->config:Lcom/uprui/tv/launcher8/config/TvCellConfig;

    iget v5, v8, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellWidthSpace:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->config:Lcom/uprui/tv/launcher8/config/TvCellConfig;

    iget v6, v8, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellHeightSpace:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->config:Lcom/uprui/tv/launcher8/config/TvCellConfig;

    iget v7, v8, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellRows:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->config:Lcom/uprui/tv/launcher8/config/TvCellConfig;

    iget v8, v8, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellCols:I

    .line 43
    invoke-virtual/range {v2 .. v8}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->resetCellSize(IIIIII)V

    .line 45
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->addView(Landroid/view/View;)V

    .line 46
    new-instance v3, Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;-><init>(IIIII)V

    .line 47
    .local v3, info:Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1, v3}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->addInPage(Landroid/view/View;Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;)V

    .line 72
    :goto_0
    return-void

    .line 49
    .end local v2           #layout:Lcom/uprui/tv/launcher8/pageview/TvCellLayout;
    .end local v3           #info:Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;
    :cond_0
    add-int/lit8 v4, v18, -0x1

    .line 50
    .local v4, screen:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;

    .line 51
    .restart local v2       #layout:Lcom/uprui/tv/launcher8/pageview/TvCellLayout;
    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildCount()I

    move-result v14

    .line 52
    .local v14, cellChildCount:I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellRows:I

    move/from16 v17, v0

    .line 53
    .local v17, cellRows:I
    move-object/from16 v0, v16

    iget v15, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellCols:I

    .line 54
    .local v15, cellCols:I
    mul-int v8, v17, v15

    if-ge v14, v8, :cond_1

    .line 55
    div-int v6, v14, v15

    .line 56
    .local v6, row:I
    rem-int v5, v14, v15

    .line 57
    .local v5, col:I
    new-instance v3, Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;-><init>(IIIII)V

    .line 58
    .restart local v3       #info:Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1, v3}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->addInPage(Landroid/view/View;Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;)V

    goto :goto_0

    .line 60
    .end local v3           #info:Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;
    .end local v5           #col:I
    .end local v6           #row:I
    :cond_1
    const-string v8, "TvWorkSpace"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "add cellLayout childCount-->"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v7, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;-><init>(Landroid/content/Context;)V

    .line 62
    .local v7, cellLayout:Lcom/uprui/tv/launcher8/pageview/TvCellLayout;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->config:Lcom/uprui/tv/launcher8/config/TvCellConfig;

    iget v8, v8, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellWidth:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->config:Lcom/uprui/tv/launcher8/config/TvCellConfig;

    iget v9, v9, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellHeight:I

    .line 63
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->config:Lcom/uprui/tv/launcher8/config/TvCellConfig;

    iget v10, v10, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellWidthSpace:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->config:Lcom/uprui/tv/launcher8/config/TvCellConfig;

    iget v11, v11, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellHeightSpace:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->config:Lcom/uprui/tv/launcher8/config/TvCellConfig;

    iget v12, v12, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellRows:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->config:Lcom/uprui/tv/launcher8/config/TvCellConfig;

    iget v13, v13, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellCols:I

    .line 62
    invoke-virtual/range {v7 .. v13}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->resetCellSize(IIIIII)V

    .line 64
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->addView(Landroid/view/View;)V

    .line 65
    add-int/lit8 v4, v4, 0x1

    .line 66
    new-instance v3, Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v8, v3

    move v9, v4

    invoke-direct/range {v8 .. v13}, Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;-><init>(IIIII)V

    .line 67
    .restart local v3       #info:Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1, v3}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->addInPage(Landroid/view/View;Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;)V

    goto/16 :goto_0
.end method
