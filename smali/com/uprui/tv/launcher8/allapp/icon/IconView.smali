.class public Lcom/uprui/tv/launcher8/allapp/icon/IconView;
.super Ljava/lang/Object;
.source "IconView.java"


# static fields
.field private static final Colors:[I

.field static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uprui/tv/launcher8/allapp/icon/IconView;->DEBUG:Z

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/uprui/tv/launcher8/allapp/icon/IconView;->Colors:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0xcct 0x0t 0xfft
        0x40t 0x40t 0x40t 0xfft
        0x99t 0x33t 0x0t 0xfft
        0x33t 0xcct 0x99t 0xfft
        0x0t 0x66t 0xcct 0xfft
        0x0t 0x0t 0xcct 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .locals 30
    .parameter "context"
    .parameter "src"
    .parameter "componentName"

    .prologue
    .line 39
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->hashCode()I

    move-result v27

    sget-object v28, Lcom/uprui/tv/launcher8/allapp/icon/IconView;->Colors:[I

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    rem-int v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 40
    .local v6, colorIndex:I
    sget-object v14, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    .line 42
    .local v14, resources:Landroid/content/res/Resources;
    const/16 v16, 0x8

    .line 44
    .local v16, roundPixel:I
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 45
    .local v18, spacings:[I
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/uprui/tv/launcher8/allapp/icon/IconView;->isSaturatedImage(Landroid/graphics/Bitmap;[I)Z

    move-result v10

    .line 47
    .local v10, isSaturatedImage:Z
    if-nez v10, :cond_0

    .line 48
    const/high16 v27, 0x7f0c

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v20, v0

    .line 49
    .local v20, targetWidth:I
    const/high16 v27, 0x7f0c

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v19, v0

    .line 51
    .local v19, targetHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f020015

    invoke-static/range {v27 .. v28}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 53
    .local v21, templateBitmap:Landroid/graphics/Bitmap;
    sget-object v27, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 54
    .local v12, newbm:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    .local v7, cv:Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 56
    .local v13, paint:Landroid/graphics/Paint;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    sget-object v27, Lcom/uprui/tv/launcher8/allapp/icon/IconView;->Colors:[I

    aget v27, v27, v6

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/uprui/tv/launcher8/allapp/icon/IconView;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 61
    .local v26, zoomTemplateBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/uprui/tv/launcher8/allapp/icon/IconView;->toRoundCorner(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 63
    .local v17, roundedTemplateBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v7, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 66
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    sub-int v27, v27, v28

    div-int/lit8 v11, v27, 0x2

    .line 67
    .local v11, left:I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    sub-int v27, v27, v28

    div-int/lit8 v22, v27, 0x2

    .line 68
    .local v22, top:I
    int-to-float v0, v11

    move/from16 v27, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v7, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 70
    const/16 v27, 0x1f

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 71
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 73
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->recycle()V

    .line 75
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    .end local v7           #cv:Landroid/graphics/Canvas;
    .end local v11           #left:I
    .end local v12           #newbm:Landroid/graphics/Bitmap;
    .end local v13           #paint:Landroid/graphics/Paint;
    .end local v17           #roundedTemplateBitmap:Landroid/graphics/Bitmap;
    .end local v19           #targetHeight:I
    .end local v20           #targetWidth:I
    .end local v21           #templateBitmap:Landroid/graphics/Bitmap;
    .end local v22           #top:I
    .end local v26           #zoomTemplateBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v12

    .line 79
    :cond_0
    const/16 v27, 0x0

    aget v27, v18, v27

    add-int/lit8 v23, v27, 0x1

    .line 80
    .local v23, x:I
    const/16 v27, 0x1

    aget v27, v18, v27

    add-int/lit8 v24, v27, 0x1

    .line 82
    .local v24, y:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const/high16 v28, 0x7f0c

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v9, v0

    .line 83
    .local v9, iconWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const/high16 v28, 0x7f0c

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v8, v0

    .line 84
    .local v8, iconHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    mul-int/lit8 v28, v23, 0x2

    sub-int v27, v27, v28

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    mul-int/lit8 v29, v24, 0x2

    sub-int v28, v28, v29

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 85
    .local v5, central:Landroid/graphics/Bitmap;
    move/from16 v0, v16

    invoke-static {v5, v0}, Lcom/uprui/tv/launcher8/allapp/icon/IconView;->toRoundCorner(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 86
    .local v15, round:Landroid/graphics/Bitmap;
    invoke-static {v15, v9, v8}, Lcom/uprui/tv/launcher8/allapp/icon/IconView;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 87
    .local v25, zoom:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v12, v25

    .line 89
    goto :goto_0
.end method

.method private static isSaturatedImage(Landroid/graphics/Bitmap;[I)Z
    .locals 14
    .parameter "source"
    .parameter "spacings"

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x3fc999999999999aL

    mul-double/2addr v10, v12

    double-to-int v5, v10

    .line 111
    .local v5, maxSpacing:I
    const/4 v8, 0x0

    .line 112
    .local v8, x:I
    const/4 v9, 0x0

    .line 113
    .local v9, y:I
    const/4 v3, 0x0

    .line 114
    .local v3, isBreak:Z
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-lt v4, v10, :cond_2

    .line 129
    :cond_0
    const/4 v3, 0x0

    .line 130
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-lt v2, v10, :cond_5

    .line 145
    :cond_1
    const/4 v10, 0x0

    aput v8, p1, v10

    .line 146
    const/4 v10, 0x1

    aput v9, p1, v10

    .line 147
    if-lt v8, v5, :cond_8

    .line 148
    const/4 v10, 0x0

    .line 160
    :goto_2
    return v10

    .line 115
    .end local v2           #i:I
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-lt v2, v10, :cond_3

    .line 125
    :goto_4
    if-nez v3, :cond_0

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p0, v2, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 117
    .local v1, colorValue:I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 118
    .local v0, alpha:I
    if-eqz v0, :cond_4

    .line 120
    move v9, v4

    .line 121
    const/4 v3, 0x1

    .line 122
    goto :goto_4

    .line 115
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 131
    .end local v0           #alpha:I
    .end local v1           #colorValue:I
    :cond_5
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-lt v4, v10, :cond_6

    .line 141
    :goto_6
    if-nez v3, :cond_1

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    :cond_6
    invoke-virtual {p0, v4, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 133
    .restart local v1       #colorValue:I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 134
    .restart local v0       #alpha:I
    if-eqz v0, :cond_7

    .line 136
    move v8, v2

    .line 137
    const/4 v3, 0x1

    .line 138
    goto :goto_6

    .line 131
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 149
    .end local v0           #alpha:I
    .end local v1           #colorValue:I
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 150
    .local v7, width:I
    mul-int/lit8 v10, v8, 0x2

    sub-int v10, v7, v10

    int-to-double v10, v10

    const-wide v12, 0x3fc999999999999aL

    mul-double/2addr v10, v12

    double-to-int v6, v10

    .line 151
    .local v6, round:I
    add-int/lit8 v2, v8, 0x1

    :goto_7
    add-int/lit8 v10, v8, 0x1

    sub-int v10, v7, v10

    if-lt v2, v10, :cond_9

    .line 160
    const/4 v10, 0x1

    goto :goto_2

    .line 152
    :cond_9
    add-int/lit8 v4, v9, 0x1

    :goto_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/lit8 v11, v9, 0x1

    sub-int/2addr v10, v11

    if-lt v4, v10, :cond_a

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 153
    :cond_a
    invoke-virtual {p0, v2, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 154
    .restart local v1       #colorValue:I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 155
    .restart local v0       #alpha:I
    if-nez v0, :cond_b

    add-int v10, v6, v8

    if-lt v2, v10, :cond_b

    add-int v10, v6, v8

    sub-int v10, v7, v10

    if-gt v2, v10, :cond_b

    .line 156
    const/4 v10, 0x0

    goto :goto_2

    .line 152
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_8
.end method

.method public static stateChanged(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "context"
    .parameter "bitmapRes"
    .parameter "originalDrawable"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 95
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 97
    .local v3, statelistDrawable:Landroid/graphics/drawable/StateListDrawable;
    const v2, 0x10100a7

    .line 99
    .local v2, pressed:I
    new-array v4, v7, [I

    neg-int v5, v2

    aput v5, v4, v6

    invoke-virtual {v3, v4, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-static {p1}, Lcom/uprui/tv/launcher8/allapp/icon/IconView;->toDownLightBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, bitmapComposeSelect:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 104
    .local v1, drawableSelect:Landroid/graphics/drawable/Drawable;
    new-array v4, v7, [I

    aput v2, v4, v6

    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 106
    return-object v3
.end method

.method public static toDownLightBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmapRes"

    .prologue
    const/4 v11, 0x0

    .line 202
    const/16 v8, 0x14

    new-array v1, v8, [F

    fill-array-data v1, :array_0

    .line 203
    .local v1, colorArray:[F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 204
    .local v7, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 206
    .local v4, height:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 207
    .local v5, newBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 208
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 210
    .local v6, paint:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 211
    new-instance v8, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-direct {v8, v9, v10}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 213
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 214
    .local v3, colorMatrix:Landroid/graphics/ColorMatrix;
    invoke-virtual {v3, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 216
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 217
    .local v2, colorFilter:Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 218
    invoke-virtual {v0, p0, v11, v11, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 220
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 221
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 223
    return-object v5

    .line 202
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0xc1t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0xc1t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0xc1t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bitmap"
    .parameter "pixels"

    .prologue
    const/4 v10, 0x0

    .line 174
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 175
    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 176
    .local v0, canvas:Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 177
    .local v1, color:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 178
    .local v3, paint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 179
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 180
    .local v5, rectF:Landroid/graphics/RectF;
    int-to-float v6, p1

    .line 181
    .local v6, roundPx:F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 183
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    invoke-virtual {v0, v5, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 185
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 186
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 187
    return-object v2
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 192
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 193
    .local v4, h:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 194
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 195
    .local v9, scaleWidth:F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 196
    .local v8, scaleHeight:F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 197
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 198
    .local v7, newbmp:Landroid/graphics/Bitmap;
    return-object v7
.end method
