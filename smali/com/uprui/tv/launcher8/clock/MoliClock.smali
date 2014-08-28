.class public Lcom/uprui/tv/launcher8/clock/MoliClock;
.super Landroid/view/View;
.source "MoliClock.java"


# instance fields
.field private bitmapBg:Landroid/graphics/Bitmap;

.field private bitmapDot:Landroid/graphics/Bitmap;

.field private mBgHeight:I

.field private mBgWidth:I

.field private minPointerHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/clock/MoliClock;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/clock/MoliClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020060

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/clock/MoliClock;->bitmapDot:Landroid/graphics/Bitmap;

    .line 43
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/clock/MoliClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/clock/MoliClock;->bitmapBg:Landroid/graphics/Bitmap;

    .line 45
    iget-object v0, p0, Lcom/uprui/tv/launcher8/clock/MoliClock;->bitmapBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/uprui/tv/launcher8/clock/MoliClock;->mBgWidth:I

    .line 46
    iget-object v0, p0, Lcom/uprui/tv/launcher8/clock/MoliClock;->bitmapBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/uprui/tv/launcher8/clock/MoliClock;->mBgHeight:I

    .line 47
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .parameter "canvas"

    .prologue
    .line 50
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "MoliClock==>onDraw"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 54
    .local v11, cal:Ljava/util/Calendar;
    const/16 v3, 0xa

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v16, v0

    .line 55
    .local v16, hour:D
    const/16 v3, 0xc

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v20, v0

    .line 57
    .local v20, minute:D
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " hour="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " minute="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    const-wide/high16 v3, 0x403e

    mul-double v3, v3, v16

    const-wide/high16 v5, 0x403e

    const-wide/high16 v28, 0x404e

    div-double v28, v20, v28

    mul-double v5, v5, v28

    add-double v18, v3, v5

    .line 60
    .local v18, hourRotate:D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    .line 61
    const-wide/high16 v3, 0x4018

    mul-double v22, v20, v3

    .line 62
    .local v22, minuteRotate:D
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/clock/MoliClock;->getWidth()I

    move-result v10

    .line 66
    .local v10, availableWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/tv/launcher8/clock/MoliClock;->getHeight()I

    move-result v9

    .line 68
    .local v9, availableHeight:I
    div-int/lit8 v12, v10, 0x2

    .line 69
    .local v12, centerX:I
    div-int/lit8 v13, v9, 0x2

    .line 70
    .local v13, centerY:I
    const/16 v27, 0x0

    .line 71
    .local v27, scaled:Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->mBgWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->mBgHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->minPointerHeight:I

    .line 72
    move-object/from16 v0, p0

    iget v3, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->mBgWidth:I

    if-lt v10, v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->mBgHeight:I

    if-ge v9, v3, :cond_1

    .line 73
    :cond_0
    const/16 v27, 0x1

    .line 74
    int-to-float v3, v10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->mBgWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v9

    move-object/from16 v0, p0

    iget v5, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->mBgHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v26

    .line 75
    .local v26, scale:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 76
    int-to-float v3, v12

    int-to-float v4, v13

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 77
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f733333

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->mBgWidth:I

    .line 78
    move-object/from16 v0, p0

    iget v3, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->mBgWidth:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->mBgHeight:I

    .line 79
    move-object/from16 v0, p0

    iget v3, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->mBgHeight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->minPointerHeight:I

    .line 82
    .end local v26           #scale:F
    :cond_1
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 83
    .local v8, paint:Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 85
    const/high16 v3, 0x4080

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    const/4 v3, -0x1

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->bitmapBg:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->mBgWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v12, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->mBgHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v13, v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->bitmapDot:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 92
    .local v15, dotWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->bitmapDot:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 93
    .local v14, dotHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->bitmapDot:Landroid/graphics/Bitmap;

    div-int/lit8 v4, v15, 0x2

    sub-int v4, v12, v4

    int-to-float v4, v4

    div-int/lit8 v5, v14, 0x2

    sub-int v5, v13, v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 95
    move-object/from16 v0, p0

    iget v3, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->minPointerHeight:I

    int-to-float v3, v3

    const v4, 0x3e4ccccd

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v24, v0

    .line 96
    .local v24, pointerHourHeight:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/uprui/tv/launcher8/clock/MoliClock;->minPointerHeight:I

    int-to-float v3, v3

    const v4, 0x3e99999a

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v25, v0

    .line 99
    .local v25, pointerminHeight:I
    int-to-float v4, v12

    int-to-float v5, v13

    int-to-double v6, v12

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v6, v6, v28

    double-to-int v3, v6

    int-to-float v6, v3

    int-to-double v0, v13

    move-wide/from16 v28, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v3, v0

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 102
    int-to-float v4, v12

    int-to-float v5, v13

    int-to-double v6, v12

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v6, v6, v28

    double-to-int v3, v6

    int-to-float v6, v3

    int-to-double v0, v13

    move-wide/from16 v28, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v3, v0

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 104
    if-eqz v27, :cond_2

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 108
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 109
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 38
    return-void
.end method
