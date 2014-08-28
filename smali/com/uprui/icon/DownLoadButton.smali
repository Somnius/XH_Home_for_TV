.class public Lcom/uprui/icon/DownLoadButton;
.super Landroid/widget/Button;
.source "DownLoadButton.java"


# static fields
.field private static final DEFAULT_LOADDING_COLOR:I = -0x96acb

.field private static final DEFAULT_LOADDING_SECOND_COLOR:I = -0x1

.field private static final FINISH_LOAD:I = 0x0

.field private static final LOADDING:I = 0x2

.field private static final START_LOAD:I = 0x1


# instance fields
.field private loaddingColor:I

.field private loaddingProgress:I

.field private loaddingSecondColor:I

.field private progressIcon:Landroid/graphics/Bitmap;

.field private radius:F

.field private state:I

.field private tmpCanvas:Landroid/graphics/Canvas;

.field private tmpPaint:Landroid/graphics/Paint;

.field private tmpPath:Landroid/graphics/Path;

.field private tmpRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/uprui/icon/DownLoadButton;->state:I

    .line 29
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/uprui/icon/DownLoadButton;->radius:F

    .line 50
    const v0, -0x96acb

    iput v0, p0, Lcom/uprui/icon/DownLoadButton;->loaddingColor:I

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/uprui/icon/DownLoadButton;->loaddingSecondColor:I

    .line 52
    invoke-direct {p0}, Lcom/uprui/icon/DownLoadButton;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/uprui/icon/DownLoadButton;->state:I

    .line 29
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/uprui/icon/DownLoadButton;->radius:F

    .line 44
    invoke-direct {p0, p2}, Lcom/uprui/icon/DownLoadButton;->bindAttrs(Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lcom/uprui/icon/DownLoadButton;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/uprui/icon/DownLoadButton;->state:I

    .line 29
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/uprui/icon/DownLoadButton;->radius:F

    .line 38
    invoke-direct {p0, p2}, Lcom/uprui/icon/DownLoadButton;->bindAttrs(Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0}, Lcom/uprui/icon/DownLoadButton;->init()V

    .line 40
    return-void
.end method

.method private bindAttrs(Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "attrs"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/uprui/icon/DownLoadButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/example/ruithreadpoolexecutor/R$styleable;->DownLoadButton:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const v2, -0x96acb

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/uprui/icon/DownLoadButton;->loaddingColor:I

    .line 65
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/uprui/icon/DownLoadButton;->loaddingSecondColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    throw v1
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/uprui/icon/DownLoadButton;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/uprui/icon/DownLoadButton;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 110
    .local v0, saveCount:I
    iget-object v1, p0, Lcom/uprui/icon/DownLoadButton;->progressIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/uprui/icon/DownLoadButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/uprui/icon/DownLoadButton;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/uprui/icon/DownLoadButton;->progressIcon:Landroid/graphics/Bitmap;

    .line 112
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/uprui/icon/DownLoadButton;->progressIcon:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/uprui/icon/DownLoadButton;->tmpCanvas:Landroid/graphics/Canvas;

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/uprui/icon/DownLoadButton;->tmpCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 115
    iget-object v1, p0, Lcom/uprui/icon/DownLoadButton;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Lcom/uprui/icon/DownLoadButton;->drawProgressIcon(Landroid/graphics/Canvas;)V

    .line 117
    iget-object v1, p0, Lcom/uprui/icon/DownLoadButton;->progressIcon:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 118
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method private drawProgressIcon(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 122
    iget-object v2, p0, Lcom/uprui/icon/DownLoadButton;->tmpPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/uprui/icon/DownLoadButton;->loaddingSecondColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v2, p0, Lcom/uprui/icon/DownLoadButton;->tmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/uprui/icon/DownLoadButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/uprui/icon/DownLoadButton;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 124
    iget-object v2, p0, Lcom/uprui/icon/DownLoadButton;->tmpRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/uprui/icon/DownLoadButton;->radius:F

    iget v4, p0, Lcom/uprui/icon/DownLoadButton;->radius:F

    iget-object v5, p0, Lcom/uprui/icon/DownLoadButton;->tmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 125
    invoke-virtual {p0}, Lcom/uprui/icon/DownLoadButton;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/uprui/icon/DownLoadButton;->loaddingProgress:I

    mul-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x64

    .line 130
    .local v1, right:I
    iget v2, p0, Lcom/uprui/icon/DownLoadButton;->loaddingProgress:I

    const/16 v3, 0x63

    if-ge v2, v3, :cond_0

    .line 131
    const/16 v2, 0x8

    new-array v0, v2, [F

    iget v2, p0, Lcom/uprui/icon/DownLoadButton;->radius:F

    aput v2, v0, v7

    iget v2, p0, Lcom/uprui/icon/DownLoadButton;->radius:F

    aput v2, v0, v8

    aput v6, v0, v9

    aput v6, v0, v10

    const/4 v2, 0x4

    aput v6, v0, v2

    const/4 v2, 0x5

    aput v6, v0, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/uprui/icon/DownLoadButton;->radius:F

    aput v3, v0, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/uprui/icon/DownLoadButton;->radius:F

    aput v3, v0, v2

    .line 136
    .local v0, radii:[F
    :goto_0
    iget-object v2, p0, Lcom/uprui/icon/DownLoadButton;->tmpRectF:Landroid/graphics/RectF;

    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/uprui/icon/DownLoadButton;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    iget-object v2, p0, Lcom/uprui/icon/DownLoadButton;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 138
    iget-object v2, p0, Lcom/uprui/icon/DownLoadButton;->tmpPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/uprui/icon/DownLoadButton;->tmpRectF:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v0, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 139
    iget-object v2, p0, Lcom/uprui/icon/DownLoadButton;->tmpPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/uprui/icon/DownLoadButton;->loaddingColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v2, p0, Lcom/uprui/icon/DownLoadButton;->tmpPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/uprui/icon/DownLoadButton;->tmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 141
    return-void

    .line 133
    .end local v0           #radii:[F
    :cond_0
    const/16 v2, 0x8

    new-array v0, v2, [F

    iget v2, p0, Lcom/uprui/icon/DownLoadButton;->radius:F

    aput v2, v0, v7

    iget v2, p0, Lcom/uprui/icon/DownLoadButton;->radius:F

    aput v2, v0, v8

    iget v2, p0, Lcom/uprui/icon/DownLoadButton;->radius:F

    aput v2, v0, v9

    iget v2, p0, Lcom/uprui/icon/DownLoadButton;->radius:F

    aput v2, v0, v10

    const/4 v2, 0x4

    iget v3, p0, Lcom/uprui/icon/DownLoadButton;->radius:F

    aput v3, v0, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/uprui/icon/DownLoadButton;->radius:F

    aput v3, v0, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/uprui/icon/DownLoadButton;->radius:F

    aput v3, v0, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/uprui/icon/DownLoadButton;->radius:F

    aput v3, v0, v2

    .restart local v0       #radii:[F
    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/uprui/icon/DownLoadButton;->tmpPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/uprui/icon/DownLoadButton;->tmpRectF:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/uprui/icon/DownLoadButton;->tmpPath:Landroid/graphics/Path;

    .line 59
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 94
    iget v0, p0, Lcom/uprui/icon/DownLoadButton;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-direct {p0, p1}, Lcom/uprui/icon/DownLoadButton;->drawProgress(Landroid/graphics/Canvas;)V

    .line 101
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    return-void

    .line 98
    :cond_1
    invoke-direct {p0, p1}, Lcom/uprui/icon/DownLoadButton;->drawProgressIcon(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setLoadEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/uprui/icon/DownLoadButton;->state:I

    .line 88
    iput v0, p0, Lcom/uprui/icon/DownLoadButton;->loaddingProgress:I

    .line 89
    invoke-virtual {p0}, Lcom/uprui/icon/DownLoadButton;->postInvalidate()V

    .line 90
    return-void
.end method

.method public setLoadProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 81
    const/4 v0, 0x2

    iput v0, p0, Lcom/uprui/icon/DownLoadButton;->state:I

    .line 82
    iput p1, p0, Lcom/uprui/icon/DownLoadButton;->loaddingProgress:I

    .line 83
    invoke-virtual {p0}, Lcom/uprui/icon/DownLoadButton;->postInvalidate()V

    .line 84
    return-void
.end method

.method public setLoadStart()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/uprui/icon/DownLoadButton;->state:I

    .line 78
    return-void
.end method

.method public setLoaddingColor(II)V
    .locals 0
    .parameter "loaddingColor"
    .parameter "loaddingSecondColor"

    .prologue
    .line 72
    iput p1, p0, Lcom/uprui/icon/DownLoadButton;->loaddingColor:I

    .line 73
    iput p2, p0, Lcom/uprui/icon/DownLoadButton;->loaddingSecondColor:I

    .line 74
    return-void
.end method
