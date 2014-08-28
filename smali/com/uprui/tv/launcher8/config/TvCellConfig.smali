.class public Lcom/uprui/tv/launcher8/config/TvCellConfig;
.super Ljava/lang/Object;
.source "TvCellConfig.java"


# static fields
.field private static CONFIG:Lcom/uprui/tv/launcher8/config/TvCellConfig; = null

.field public static final DEBUG:Z = false

.field private static final SCALE:F = 0.9f

.field public static final TAG:Ljava/lang/String; = "TvCellConfig"


# instance fields
.field private final HOME_CELL_COLS:I

.field private final HOME_CELL_ROWS:I

.field public apkIconHeight:I

.field public apkIconWidth:I

.field public cateImageHeight:I

.field public cateImageWidth:I

.field public cellApkIconMarginLeft:I

.field public cellApkIconMarginTop:I

.field public cellCols:I

.field public cellHeight:I

.field public cellHeightSpace:I

.field private final cellIconHeightRatio:F

.field private final cellIconPaddingRatio:F

.field private final cellIconWidthRatio:F

.field public cellRows:I

.field public cellTextMarginBottm:I

.field public cellTextMarginLeft:I

.field public cellTextMarginRight:I

.field public cellWidth:I

.field public cellWidthSpace:I

.field private density:F

.field public homeCellCols:I

.field public homeCellHeight:I

.field public homeCellRows:I

.field public homeCellWidth:I

.field public homeHeightSpace:I

.field public homeIconSize:I

.field public homePagePaddingBottom:I

.field public homePagePaddingLeft:I

.field public homePagePaddingRight:I

.field public homePagePaddingTop:I

.field public homeWidthSpace:I

.field public pagePaddingBottom:I

.field public pagePaddingLeft:I

.field public pagePaddingRight:I

.field public pagePaddingTop:I

.field private final rato:F

.field public topCategoryHeight:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x3

    iput v0, p0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->HOME_CELL_ROWS:I

    .line 15
    const/4 v0, 0x4

    iput v0, p0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->HOME_CELL_COLS:I

    .line 37
    const v0, 0x3fca3d71

    iput v0, p0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->rato:F

    .line 60
    const v0, 0x3ed9f22a

    iput v0, p0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellIconWidthRatio:F

    .line 61
    const v0, 0x3f286bca

    iput v0, p0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellIconHeightRatio:F

    .line 62
    const v0, 0x3d6d2308

    iput v0, p0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellIconPaddingRatio:F

    .line 64
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;
    .locals 2

    .prologue
    .line 191
    const-class v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->CONFIG:Lcom/uprui/tv/launcher8/config/TvCellConfig;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;

    invoke-direct {v0}, Lcom/uprui/tv/launcher8/config/TvCellConfig;-><init>()V

    sput-object v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->CONFIG:Lcom/uprui/tv/launcher8/config/TvCellConfig;

    .line 194
    :cond_0
    sget-object v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->CONFIG:Lcom/uprui/tv/launcher8/config/TvCellConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getPxels(I)I
    .locals 2
    .parameter "dimension"

    .prologue
    .line 187
    iget v0, p0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 30
    .parameter "context"

    .prologue
    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 68
    .local v18, res:Landroid/content/res/Resources;
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 69
    .local v7, display:Landroid/util/DisplayMetrics;
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    .line 70
    .local v21, screenWidth:I
    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    .line 72
    .local v20, screenHeight:I
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->density:F

    .line 75
    const/16 v27, 0x3

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellRows:I

    .line 76
    const/16 v27, 0x4

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellCols:I

    .line 78
    const v14, 0x3e19999a

    .line 79
    .local v14, homeSpaceRatio:F
    const v13, 0x3e4ccccd

    .line 81
    .local v13, homePaddingRatio:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellCols:I

    move/from16 v27, v0

    div-int v24, v21, v27

    .line 82
    .local v24, tempCellWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellRows:I

    move/from16 v27, v0

    div-int v23, v20, v27

    .line 83
    .local v23, tempCellHeight:I
    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    .line 84
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3f59999a

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellHeight:I

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellWidth:I

    .line 90
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3f19999a

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeIconSize:I

    .line 92
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3e4ccccd

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v10, v0

    .line 93
    .local v10, homeCellLayoutPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellCols:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellWidth:I

    move/from16 v28, v0

    mul-int v27, v27, v28

    sub-int v27, v21, v27

    mul-int/lit8 v28, v10, 0x2

    sub-int v15, v27, v28

    .line 94
    .local v15, homeWidthRemain:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellRows:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellHeight:I

    move/from16 v28, v0

    mul-int v27, v27, v28

    sub-int v27, v20, v27

    mul-int/lit8 v28, v10, 0x2

    sub-int v11, v27, v28

    .line 96
    .local v11, homeHeightRemain:I
    :goto_1
    if-lez v15, :cond_1

    if-lez v11, :cond_1

    .line 106
    int-to-float v0, v15

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellCols:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v14

    const/high16 v29, 0x4000

    mul-float v29, v29, v13

    add-float v28, v28, v29

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v16, v0

    .line 107
    .local v16, homewidthResult:I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v13

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homePagePaddingLeft:I

    .line 108
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v13

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homePagePaddingRight:I

    .line 109
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v14

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeWidthSpace:I

    .line 111
    int-to-float v0, v11

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellRows:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v14

    const/high16 v29, 0x4000

    mul-float v29, v29, v13

    add-float v28, v28, v29

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v12, v0

    .line 112
    .local v12, homeHeightResult:I
    int-to-float v0, v12

    move/from16 v27, v0

    mul-float v27, v27, v13

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homePagePaddingTop:I

    .line 113
    int-to-float v0, v12

    move/from16 v27, v0

    mul-float v27, v27, v13

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homePagePaddingBottom:I

    .line 114
    int-to-float v0, v12

    move/from16 v27, v0

    mul-float v27, v27, v14

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeHeightSpace:I

    .line 116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeWidthSpace:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeHeightSpace:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeWidthSpace:I

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeHeightSpace:I

    .line 125
    const v27, 0x7f0b0004

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellRows:I

    .line 126
    const v27, 0x7f0b0005

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellCols:I

    .line 128
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3e19999a

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->topCategoryHeight:I

    .line 129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->topCategoryHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3f19999a

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cateImageHeight:I

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cateImageWidth:I

    .line 131
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->topCategoryHeight:I

    move/from16 v27, v0

    sub-int v6, v20, v27

    .line 132
    .local v6, contentHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellRows:I

    move/from16 v27, v0

    div-int v27, v6, v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellHeight:I

    .line 133
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellCols:I

    move/from16 v27, v0

    div-int v27, v21, v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellWidth:I

    .line 134
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3fca3d71

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v19, v0

    .line 136
    .local v19, result:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellWidth:I

    move/from16 v27, v0

    move/from16 v0, v19

    move/from16 v1, v27

    if-le v0, v1, :cond_2

    .line 137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3f47ae14

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellWidth:I

    .line 138
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3fca3d71

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellHeight:I

    .line 144
    :goto_2
    const v22, 0x3e4ccccd

    .line 145
    .local v22, spaceRatio:F
    const v17, 0x3ecccccd

    .line 147
    .local v17, paddingRatio:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3e4ccccd

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v4, v0

    .line 148
    .local v4, cellLayoutPaddingHor:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3e4ccccd

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v5, v0

    .line 150
    .local v5, cellLayoutPaddingVer:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellCols:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellWidth:I

    move/from16 v28, v0

    mul-int v27, v27, v28

    sub-int v27, v21, v27

    mul-int/lit8 v28, v4, 0x2

    sub-int v25, v27, v28

    .line 151
    .local v25, widthRemain:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellWidth:I

    move/from16 v27, v0

    div-int v2, v25, v27

    .line 152
    .local v2, addedCol:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellCols:I

    move/from16 v27, v0

    add-int v27, v27, v2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellCols:I

    .line 153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellCols:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellWidth:I

    move/from16 v28, v0

    mul-int v27, v27, v28

    sub-int v27, v21, v27

    mul-int/lit8 v28, v4, 0x2

    sub-int v25, v27, v28

    .line 155
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellCols:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v22

    const/high16 v29, 0x4000

    mul-float v29, v29, v17

    add-float v28, v28, v29

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v26, v0

    .line 156
    .local v26, widthResult:I
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v17

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->pagePaddingLeft:I

    .line 157
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v17

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->pagePaddingRight:I

    .line 158
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v22

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellWidthSpace:I

    .line 160
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellRows:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellHeight:I

    move/from16 v28, v0

    mul-int v27, v27, v28

    sub-int v27, v6, v27

    mul-int/lit8 v28, v5, 0x2

    sub-int v8, v27, v28

    .line 161
    .local v8, heightRemain:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellHeight:I

    move/from16 v27, v0

    div-int v3, v8, v27

    .line 162
    .local v3, addedRow:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellRows:I

    move/from16 v27, v0

    add-int v27, v27, v3

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellRows:I

    .line 163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellRows:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellHeight:I

    move/from16 v28, v0

    mul-int v27, v27, v28

    sub-int v27, v6, v27

    mul-int/lit8 v28, v5, 0x2

    sub-int v8, v27, v28

    .line 164
    int-to-float v0, v8

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellRows:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v22

    const/high16 v29, 0x4000

    mul-float v29, v29, v17

    add-float v28, v28, v29

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v9, v0

    .line 165
    .local v9, heightResult:I
    int-to-float v0, v9

    move/from16 v27, v0

    mul-float v27, v27, v17

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->pagePaddingTop:I

    .line 166
    int-to-float v0, v9

    move/from16 v27, v0

    mul-float v27, v27, v17

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->pagePaddingBottom:I

    .line 167
    int-to-float v0, v9

    move/from16 v27, v0

    mul-float v27, v27, v22

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellHeightSpace:I

    .line 170
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3ed9f22a

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->apkIconWidth:I

    .line 171
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3f286bca

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->apkIconHeight:I

    .line 173
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->apkIconWidth:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    shr-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellApkIconMarginLeft:I

    .line 174
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3d6d2308

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellApkIconMarginTop:I

    .line 176
    const v27, 0x7f0c0012

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3f666666

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellTextMarginLeft:I

    .line 177
    const v27, 0x7f0c0013

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3f666666

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellTextMarginRight:I

    .line 178
    const v27, 0x7f0c0015

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellTextMarginBottm:I

    .line 184
    return-void

    .line 86
    .end local v2           #addedCol:I
    .end local v3           #addedRow:I
    .end local v4           #cellLayoutPaddingHor:I
    .end local v5           #cellLayoutPaddingVer:I
    .end local v6           #contentHeight:I
    .end local v8           #heightRemain:I
    .end local v9           #heightResult:I
    .end local v10           #homeCellLayoutPadding:I
    .end local v11           #homeHeightRemain:I
    .end local v12           #homeHeightResult:I
    .end local v15           #homeWidthRemain:I
    .end local v16           #homewidthResult:I
    .end local v17           #paddingRatio:F
    .end local v19           #result:I
    .end local v22           #spaceRatio:F
    .end local v25           #widthRemain:I
    .end local v26           #widthResult:I
    :cond_0
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3f59999a

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellWidth:I

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellHeight:I

    goto/16 :goto_0

    .line 97
    .restart local v10       #homeCellLayoutPadding:I
    .restart local v11       #homeHeightRemain:I
    .restart local v15       #homeWidthRemain:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3f7ae148

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellWidth:I

    .line 98
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellHeight:I

    .line 100
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3e4ccccd

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v10, v0

    .line 101
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellCols:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellWidth:I

    move/from16 v28, v0

    mul-int v27, v27, v28

    sub-int v27, v21, v27

    mul-int/lit8 v28, v10, 0x2

    sub-int v15, v27, v28

    .line 102
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellRows:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellHeight:I

    move/from16 v28, v0

    mul-int v27, v27, v28

    sub-int v27, v20, v27

    mul-int/lit8 v28, v10, 0x2

    sub-int v11, v27, v28

    goto/16 :goto_1

    .line 140
    .restart local v6       #contentHeight:I
    .restart local v12       #homeHeightResult:I
    .restart local v16       #homewidthResult:I
    .restart local v19       #result:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3f47ae14

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellHeight:I

    .line 141
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3fca3d71

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellWidth:I

    goto/16 :goto_2
.end method
