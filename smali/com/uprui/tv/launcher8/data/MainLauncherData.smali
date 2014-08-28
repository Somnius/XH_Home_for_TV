.class public Lcom/uprui/tv/launcher8/data/MainLauncherData;
.super Ljava/lang/Object;
.source "MainLauncherData.java"


# static fields
.field public static final Category:[I = null

.field public static final MENU_ABOUT_RUI:I = 0x7

.field private static final MENU_ADD:I = 0x2

.field public static final MENU_GROUP_ADD:I = 0x1

.field static final MENU_GROUP_RUI:I = 0x3

.field public static final MENU_GROUP_WALLPAPER:I = 0x2

.field public static final MENU_MANAGE_APPS:I = 0x3

.field public static final MENU_MANUAL_CLASSIFY:I = 0x8

.field public static final MENU_MANUAL_RECOMMEND_UPDATE:I = 0x9

.field public static final MENU_MANUAL_RUI_UPDATE:I = 0xa

.field static final MENU_RUI:I = 0x6

.field public static final MENU_SETTINGS:I = 0x5

.field static final MENU_WALLPAPER_SETTINGS:I = 0x4

.field static final PREFERENCES:Ljava/lang/String; = "launcher.preferences"

.field private static mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

.field public static waitingForResult:Z

.field public static windowHeight:I

.field public static windowWidth:I


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private appCellHeight:I

.field private appCellWidth:I

.field private appIconHeight:I

.field private appIconWidth:I

.field private appIndicatorHeight:I

.field private appItemHeight:I

.field private appItemWidth:I

.field private appLongEndPadding:I

.field private appLongStartPadding:I

.field private appShortEndPadding:I

.field private appShortStartPadding:I

.field private appTitleHeight:I

.field private appdownLoadIconHeight:I

.field private appdownLoadIconWidth:I

.field private appdownLoadPaddintTop:I

.field private cellApkIconMarginLeft:I

.field private cellApkIconMarginTop:I

.field private final cellIconHeightRatio:F

.field private final cellIconPaddingRatio:F

.field private final cellIconWidthRatio:F

.field private context:Landroid/content/Context;

.field private indicatorIconSize:I

.field private indicatorItemHeight:I

.field private indicatorItemWidth:I

.field private longAxisCells:I

.field private mAppWorkSpaceLongCells:I

.field private mAppWorkSpaceShortCells:I

.field private shortAxisCells:I

.field private topImgIconSize:I

.field private final widthHeightRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->Category:[I

    .line 45
    return-void

    .line 43
    nop

    :array_0
    .array-data 0x4
        0x66t 0x0t 0x0t 0x0t
        0xa1t 0x28t 0x0t 0x0t
        0xa2t 0x28t 0x0t 0x0t
        0xa3t 0x28t 0x0t 0x0t
        0xa4t 0x28t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->DEBUG:Z

    .line 13
    const-class v0, Lcom/uprui/tv/launcher8/data/MainLauncherData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x4

    iput v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->mAppWorkSpaceLongCells:I

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->mAppWorkSpaceShortCells:I

    .line 75
    const v0, 0x3fca3d71

    iput v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->widthHeightRatio:F

    .line 76
    const v0, 0x3ed9f22a

    iput v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->cellIconWidthRatio:F

    .line 77
    const v0, 0x3f286bca

    iput v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->cellIconHeightRatio:F

    .line 78
    const v0, 0x3d6d2308

    iput v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->cellIconPaddingRatio:F

    .line 88
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->context:Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->computeAppCellLayoutDemession()V

    .line 90
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->computeAppItemDemessions()V

    .line 91
    return-void
.end method

.method private computeAppCellLayoutDemession()V
    .locals 14

    .prologue
    const v13, 0x3f59999a

    const v12, 0x3d23d70a

    const v10, 0x3fca3d71

    const/high16 v11, 0x3f40

    .line 94
    iget-object v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 95
    .local v2, displayMetrics:Landroid/util/DisplayMetrics;
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 96
    .local v6, screenWidth:I
    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 98
    .local v5, screenHeight:I
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    sput v8, Lcom/uprui/tv/launcher8/data/MainLauncherData;->windowWidth:I

    .line 99
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    sput v8, Lcom/uprui/tv/launcher8/data/MainLauncherData;->windowHeight:I

    .line 101
    iget v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->mAppWorkSpaceShortCells:I

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->shortAxisCells:I

    .line 102
    iget v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->mAppWorkSpaceLongCells:I

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->longAxisCells:I

    .line 104
    sget v8, Lcom/uprui/tv/launcher8/data/MainLauncherData;->windowHeight:I

    int-to-float v8, v8

    const v9, 0x3df5c28f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appShortStartPadding:I

    .line 105
    sget v8, Lcom/uprui/tv/launcher8/data/MainLauncherData;->windowHeight:I

    int-to-float v8, v8

    const/high16 v9, 0x3e80

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appShortEndPadding:I

    .line 107
    sget v8, Lcom/uprui/tv/launcher8/data/MainLauncherData;->windowWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v12

    float-to-int v8, v8

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appLongStartPadding:I

    .line 108
    sget v8, Lcom/uprui/tv/launcher8/data/MainLauncherData;->windowWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v12

    float-to-int v8, v8

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appLongEndPadding:I

    .line 110
    sget v8, Lcom/uprui/tv/launcher8/data/MainLauncherData;->windowWidth:I

    iget v9, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appLongStartPadding:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appLongEndPadding:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->longAxisCells:I

    div-int/2addr v8, v9

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellWidth:I

    .line 111
    sget v8, Lcom/uprui/tv/launcher8/data/MainLauncherData;->windowHeight:I

    iget v9, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appShortStartPadding:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appShortEndPadding:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->shortAxisCells:I

    div-int/2addr v8, v9

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellHeight:I

    .line 112
    iget v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    float-to-int v4, v8

    .line 113
    .local v4, result:I
    iget v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellWidth:I

    if-le v4, v8, :cond_0

    .line 114
    iget v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    float-to-int v8, v8

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellWidth:I

    .line 115
    iget v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    float-to-int v8, v8

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellHeight:I

    .line 121
    :goto_0
    sget v8, Lcom/uprui/tv/launcher8/data/MainLauncherData;->windowWidth:I

    iget v9, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appLongStartPadding:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appLongEndPadding:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->longAxisCells:I

    iget v10, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellWidth:I

    mul-int/2addr v9, v10

    sub-int v7, v8, v9

    .line 122
    .local v7, widthRemain:I
    iget v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellWidth:I

    div-int v0, v7, v8

    .line 123
    .local v0, addedCols:I
    iget v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->longAxisCells:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->longAxisCells:I

    .line 125
    sget v8, Lcom/uprui/tv/launcher8/data/MainLauncherData;->windowHeight:I

    iget v9, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appShortStartPadding:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appShortEndPadding:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->shortAxisCells:I

    iget v10, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellHeight:I

    mul-int/2addr v9, v10

    sub-int v3, v8, v9

    .line 126
    .local v3, heightRemain:I
    iget v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellHeight:I

    div-int v1, v3, v8

    .line 127
    .local v1, addedRows:I
    iget v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->shortAxisCells:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->shortAxisCells:I

    .line 138
    iget v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appShortEndPadding:I

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appIndicatorHeight:I

    .line 139
    iget v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appIndicatorHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v13

    float-to-int v8, v8

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->indicatorItemHeight:I

    .line 140
    iget v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appIndicatorHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v13

    float-to-int v8, v8

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->indicatorItemWidth:I

    .line 141
    iget v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->indicatorItemWidth:I

    int-to-float v8, v8

    const v9, 0x3f19999a

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->indicatorIconSize:I

    .line 143
    iget v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appShortStartPadding:I

    int-to-float v8, v8

    const v9, 0x3f4ccccd

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appTitleHeight:I

    .line 144
    iget v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appTitleHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    float-to-int v8, v8

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->topImgIconSize:I

    .line 145
    return-void

    .line 117
    .end local v0           #addedCols:I
    .end local v1           #addedRows:I
    .end local v3           #heightRemain:I
    .end local v7           #widthRemain:I
    :cond_0
    iget v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    float-to-int v8, v8

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellHeight:I

    .line 118
    iget v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    float-to-int v8, v8

    iput v8, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellWidth:I

    goto :goto_0
.end method

.method private computeAppItemDemessions()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f80

    const/high16 v2, 0x3e80

    .line 152
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appItemWidth:I

    .line 153
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appItemHeight:I

    .line 155
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appItemWidth:I

    int-to-float v0, v0

    const v1, 0x3ed9f22a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appIconWidth:I

    .line 156
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appItemHeight:I

    int-to-float v0, v0

    const v1, 0x3f286bca

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appIconHeight:I

    .line 158
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appItemWidth:I

    iget v1, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appIconWidth:I

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->cellApkIconMarginLeft:I

    .line 159
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appItemHeight:I

    int-to-float v0, v0

    const v1, 0x3d6d2308

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->cellApkIconMarginTop:I

    .line 161
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appdownLoadIconWidth:I

    .line 162
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appdownLoadIconHeight:I

    .line 164
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appdownLoadIconHeight:I

    int-to-float v0, v0

    const v1, 0x3e99999a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appdownLoadPaddintTop:I

    .line 165
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;
    .locals 2
    .parameter "context"

    .prologue
    .line 81
    const-class v1, Lcom/uprui/tv/launcher8/data/MainLauncherData;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/uprui/tv/launcher8/data/MainLauncherData;

    invoke-direct {v0, p0}, Lcom/uprui/tv/launcher8/data/MainLauncherData;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    .line 84
    :cond_0
    sget-object v0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAppCellHeight()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellHeight:I

    return v0
.end method

.method public getAppCellWidth()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appCellWidth:I

    return v0
.end method

.method public getAppIndicatorHeight()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appIndicatorHeight:I

    return v0
.end method

.method public getAppItemHeight()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appItemHeight:I

    return v0
.end method

.method public getAppItemWidth()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appItemWidth:I

    return v0
.end method

.method public getAppLongEndPadding()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appLongEndPadding:I

    return v0
.end method

.method public getAppLongStartPadding()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appLongStartPadding:I

    return v0
.end method

.method public getAppShortEndPadding()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appShortEndPadding:I

    return v0
.end method

.method public getAppShortStartPadding()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appShortStartPadding:I

    return v0
.end method

.method public getAppTitleHeight()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appTitleHeight:I

    return v0
.end method

.method public getAppdownLoadIconHeight()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appdownLoadIconHeight:I

    return v0
.end method

.method public getAppdownLoadIconWidth()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appdownLoadIconWidth:I

    return v0
.end method

.method public getAppdownLoadPaddintTop()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appdownLoadPaddintTop:I

    return v0
.end method

.method public getCellApkIconMarginLeft()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->cellApkIconMarginLeft:I

    return v0
.end method

.method public getCellApkIconMarginTop()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->cellApkIconMarginTop:I

    return v0
.end method

.method public getIndicatorIconSize()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->indicatorIconSize:I

    return v0
.end method

.method public getIndicatorItemHeight()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->indicatorItemHeight:I

    return v0
.end method

.method public getIndicatorItemWidth()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->indicatorItemWidth:I

    return v0
.end method

.method public getLongAxisCells()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->longAxisCells:I

    return v0
.end method

.method public getShortAxisCells()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->shortAxisCells:I

    return v0
.end method

.method public getTopImgIconSize()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->topImgIconSize:I

    return v0
.end method

.method public getappIconHeight()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appIconHeight:I

    return v0
.end method

.method public getappIconWidth()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->appIconWidth:I

    return v0
.end method
