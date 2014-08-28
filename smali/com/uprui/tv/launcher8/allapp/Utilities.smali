.class public final Lcom/uprui/tv/launcher8/allapp/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static final Canvas:Landroid/graphics/Canvas;

.field public static DEBUG:Z

.field private static final DISABLED_PAINT:Landroid/graphics/Paint;

.field private static final OLD_BOUNDS:Landroid/graphics/Rect;

.field public static TAG:Ljava/lang/String;

.field private static TVAPK_BACK:Landroid/graphics/drawable/Drawable;

.field private static TVSHORTCUT_BACK:Landroid/graphics/drawable/Drawable;

.field private static iconHeight:I

.field private static iconTextureHeight:I

.field private static iconTextureWidth:I

.field private static iconWidth:I

.field static sColorIndex:I

.field static sColors:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 42
    sput-boolean v2, Lcom/uprui/tv/launcher8/allapp/Utilities;->DEBUG:Z

    .line 43
    const-string v0, "Utilities"

    sput-object v0, Lcom/uprui/tv/launcher8/allapp/Utilities;->TAG:Ljava/lang/String;

    .line 45
    sput v1, Lcom/uprui/tv/launcher8/allapp/Utilities;->iconWidth:I

    .line 46
    sput v1, Lcom/uprui/tv/launcher8/allapp/Utilities;->iconHeight:I

    .line 47
    sput v1, Lcom/uprui/tv/launcher8/allapp/Utilities;->iconTextureWidth:I

    .line 48
    sput v1, Lcom/uprui/tv/launcher8/allapp/Utilities;->iconTextureHeight:I

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/uprui/tv/launcher8/allapp/Utilities;->DISABLED_PAINT:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/uprui/tv/launcher8/allapp/Utilities;->OLD_BOUNDS:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/uprui/tv/launcher8/allapp/Utilities;->Canvas:Landroid/graphics/Canvas;

    .line 56
    sget-object v0, Lcom/uprui/tv/launcher8/allapp/Utilities;->Canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 62
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/uprui/tv/launcher8/allapp/Utilities;->sColors:[I

    .line 63
    sput v2, Lcom/uprui/tv/launcher8/allapp/Utilities;->sColorIndex:I

    return-void

    .line 62
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeBitmapToTvShortcutBounds(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "res"
    .parameter "type"

    .prologue
    const/4 v10, 0x0

    .line 332
    sget-boolean v7, Lcom/uprui/tv/launcher8/allapp/Utilities;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/uprui/tv/launcher8/allapp/Utilities;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "changeBitmapToTvShortcutBounds res:[width:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "][height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "][type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v2

    .line 335
    .local v2, config:Lcom/uprui/tv/launcher8/config/TvCellConfig;
    iget v6, v2, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellWidth:I

    .line 336
    .local v6, width:I
    iget v5, v2, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellHeight:I

    .line 337
    .local v5, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v7, v6, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ne v7, v5, :cond_2

    .line 374
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 340
    .restart local p0
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v10, v10, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 342
    .local v3, dst:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 343
    .local v4, dstBitmap:Landroid/graphics/Bitmap;
    packed-switch p1, :pswitch_data_0

    :goto_1
    move-object p0, v4

    .line 374
    goto :goto_0

    .line 345
    :pswitch_0
    iget v1, v2, Lcom/uprui/tv/launcher8/config/TvCellConfig;->apkIconWidth:I

    .line 346
    .local v1, apkWidth:I
    iget v0, v2, Lcom/uprui/tv/launcher8/config/TvCellConfig;->apkIconHeight:I

    .line 347
    .local v0, apkHeight:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-eq v7, v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-eq v7, v0, :cond_1

    .line 350
    invoke-virtual {v3, v10, v10, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 351
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 353
    sget-object v8, Lcom/uprui/tv/launcher8/allapp/Utilities;->Canvas:Landroid/graphics/Canvas;

    monitor-enter v8

    .line 354
    :try_start_0
    sget-object v7, Lcom/uprui/tv/launcher8/allapp/Utilities;->Canvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 355
    sget-object v7, Lcom/uprui/tv/launcher8/allapp/Utilities;->Canvas:Landroid/graphics/Canvas;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, p0, v9, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 356
    sget-object v7, Lcom/uprui/tv/launcher8/allapp/Utilities;->Canvas:Landroid/graphics/Canvas;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 353
    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 362
    .end local v0           #apkHeight:I
    .end local v1           #apkWidth:I
    :pswitch_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 363
    sget-object v8, Lcom/uprui/tv/launcher8/allapp/Utilities;->Canvas:Landroid/graphics/Canvas;

    monitor-enter v8

    .line 364
    :try_start_1
    sget-object v7, Lcom/uprui/tv/launcher8/allapp/Utilities;->Canvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 365
    sget-object v7, Lcom/uprui/tv/launcher8/allapp/Utilities;->TVSHORTCUT_BACK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 366
    sget-object v7, Lcom/uprui/tv/launcher8/allapp/Utilities;->TVSHORTCUT_BACK:Landroid/graphics/drawable/Drawable;

    sget-object v9, Lcom/uprui/tv/launcher8/allapp/Utilities;->Canvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 367
    sget-object v7, Lcom/uprui/tv/launcher8/allapp/Utilities;->Canvas:Landroid/graphics/Canvas;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, p0, v9, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 368
    sget-object v7, Lcom/uprui/tv/launcher8/allapp/Utilities;->Canvas:Landroid/graphics/Canvas;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 363
    monitor-exit v8

    goto :goto_1

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v7

    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 112
    sget v3, Lcom/uprui/tv/launcher8/allapp/Utilities;->iconTextureWidth:I

    .line 113
    .local v3, textureWidth:I
    sget v2, Lcom/uprui/tv/launcher8/allapp/Utilities;->iconTextureHeight:I

    .line 114
    .local v2, textureHeight:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 115
    .local v1, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 116
    .local v0, sourceHeight:I
    if-le v1, v3, :cond_1

    if-le v0, v2, :cond_1

    .line 118
    sub-int v4, v1, v3

    div-int/lit8 v4, v4, 0x2

    sub-int v5, v0, v2

    div-int/lit8 v5, v5, 0x2

    invoke-static {p0, v4, v5, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 124
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 119
    .restart local p0
    :cond_1
    if-ne v1, v3, :cond_2

    if-eq v0, v2, :cond_0

    .line 124
    :cond_2
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v5, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    invoke-direct {v4, v5, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v4, p1}, Lcom/uprui/tv/launcher8/allapp/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 132
    sget-object v20, Lcom/uprui/tv/launcher8/allapp/Utilities;->Canvas:Landroid/graphics/Canvas;

    monitor-enter v20

    .line 134
    if-nez p0, :cond_0

    .line 135
    :try_start_0
    monitor-exit v20

    const/4 v8, 0x0

    .line 201
    :goto_0
    return-object v8

    .line 136
    :cond_0
    sget v3, Lcom/uprui/tv/launcher8/allapp/Utilities;->iconWidth:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 137
    invoke-static/range {p1 .. p1}, Lcom/uprui/tv/launcher8/allapp/Utilities;->initStatics(Landroid/content/Context;)V

    .line 140
    :cond_1
    sget v19, Lcom/uprui/tv/launcher8/allapp/Utilities;->iconWidth:I

    .line 141
    .local v19, width:I
    sget v10, Lcom/uprui/tv/launcher8/allapp/Utilities;->iconHeight:I

    .line 143
    .local v10, height:I
    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v3, :cond_7

    .line 144
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v12, v0

    .line 145
    .local v12, painter:Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 146
    invoke-virtual {v12, v10}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 155
    .end local v12           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 156
    .local v15, sourceWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    .line 158
    .local v14, sourceHeight:I
    if-lez v15, :cond_4

    if-lez v15, :cond_4

    .line 160
    move/from16 v0, v19

    if-lt v0, v15, :cond_3

    if-ge v10, v14, :cond_9

    .line 162
    :cond_3
    int-to-float v3, v15

    int-to-float v4, v14

    div-float v13, v3, v4

    .line 163
    .local v13, ratio:F
    if-le v15, v14, :cond_8

    .line 164
    move/from16 v0, v19

    int-to-float v3, v0

    div-float/2addr v3, v13

    float-to-int v10, v3

    .line 175
    .end local v13           #ratio:F
    :cond_4
    :goto_2
    sget v17, Lcom/uprui/tv/launcher8/allapp/Utilities;->iconTextureWidth:I

    .line 176
    .local v17, textureWidth:I
    sget v16, Lcom/uprui/tv/launcher8/allapp/Utilities;->iconTextureHeight:I

    .line 178
    .local v16, textureHeight:I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 179
    .local v8, bitmap:Landroid/graphics/Bitmap;
    sget-object v2, Lcom/uprui/tv/launcher8/allapp/Utilities;->Canvas:Landroid/graphics/Canvas;

    .line 180
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    sub-int v3, v17, v19

    div-int/lit8 v11, v3, 0x2

    .line 183
    .local v11, left:I
    sub-int v3, v16, v10

    div-int/lit8 v18, v3, 0x2

    .line 185
    .local v18, top:I
    sget-boolean v3, Lcom/uprui/tv/launcher8/allapp/Utilities;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 187
    sget-object v3, Lcom/uprui/tv/launcher8/allapp/Utilities;->sColors:[I

    sget v4, Lcom/uprui/tv/launcher8/allapp/Utilities;->sColorIndex:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 188
    sget v3, Lcom/uprui/tv/launcher8/allapp/Utilities;->sColorIndex:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/uprui/tv/launcher8/allapp/Utilities;->sColorIndex:I

    sget-object v4, Lcom/uprui/tv/launcher8/allapp/Utilities;->sColors:[I

    array-length v4, v4

    if-lt v3, v4, :cond_5

    .line 189
    const/4 v3, 0x0

    sput v3, Lcom/uprui/tv/launcher8/allapp/Utilities;->sColorIndex:I

    .line 191
    :cond_5
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 192
    .local v7, debugPaint:Landroid/graphics/Paint;
    const v3, -0x333400

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    int-to-float v3, v11

    move/from16 v0, v18

    int-to-float v4, v0

    add-int v5, v11, v19

    int-to-float v5, v5

    add-int v6, v18, v10

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 196
    .end local v7           #debugPaint:Landroid/graphics/Paint;
    :cond_6
    sget-object v3, Lcom/uprui/tv/launcher8/allapp/Utilities;->OLD_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 197
    add-int v3, v11, v19

    add-int v4, v18, v10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 199
    sget-object v3, Lcom/uprui/tv/launcher8/allapp/Utilities;->OLD_BOUNDS:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 201
    monitor-exit v20

    goto/16 :goto_0

    .line 132
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #height:I
    .end local v11           #left:I
    .end local v14           #sourceHeight:I
    .end local v15           #sourceWidth:I
    .end local v16           #textureHeight:I
    .end local v17           #textureWidth:I
    .end local v18           #top:I
    .end local v19           #width:I
    :catchall_0
    move-exception v3

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 147
    .restart local v10       #height:I
    .restart local v19       #width:I
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 149
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v9, v0

    .line 150
    .local v9, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 151
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    if-nez v3, :cond_2

    .line 152
    sget-object v3, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 165
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v13       #ratio:F
    .restart local v14       #sourceHeight:I
    .restart local v15       #sourceWidth:I
    :cond_8
    if-le v14, v15, :cond_4

    .line 166
    int-to-float v3, v10

    mul-float/2addr v3, v13

    float-to-int v0, v3

    move/from16 v19, v0

    .line 168
    goto/16 :goto_2

    .end local v13           #ratio:F
    :cond_9
    move/from16 v0, v19

    if-ge v15, v0, :cond_4

    if-ge v14, v10, :cond_4

    .line 170
    move/from16 v19, v15

    .line 171
    move v10, v14

    goto/16 :goto_2
.end method

.method public static getAndChangeIcon(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "context"
    .parameter "packageName"
    .parameter "info"
    .parameter "cn"

    .prologue
    const v4, 0x7f020037

    const v3, 0x7f02002e

    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, isbmap:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 261
    .local v0, cnNameToString:Ljava/lang/String;
    const-string v2, "com.android.quicksearchbox"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 328
    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/uprui/tv/launcher8/allapp/Utilities;->changeBitmapToTvShortcutBounds(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 263
    :cond_0
    const-string v2, "com.android.camera"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    const v3, 0x7f02002b

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 265
    goto :goto_0

    :cond_1
    const-string v2, "com.android.settings"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    const v3, 0x7f020038

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 267
    goto :goto_0

    :cond_2
    const-string v2, "android.rk.RockVideoPlayer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    const v3, 0x7f02003a

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 269
    goto :goto_0

    :cond_3
    const-string v2, "com.google.android.apps.maps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 270
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 271
    const-string v2, "com.google.android.apps.maps/com.google.android.maps.MapsActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 273
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    const v3, 0x7f020032

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 274
    goto :goto_0

    :cond_4
    const-string v2, "com.google.android.apps.maps/com.google.android.maps.LatitudeActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 276
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    const v3, 0x7f02003b

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 277
    goto :goto_0

    :cond_5
    const-string v2, "com.google.android.apps.maps/com.google.android.maps.PlacesActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 279
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 280
    goto :goto_0

    :cond_6
    const-string v2, "com.google.android.apps.maps/com.google.android.maps.driveabout.app.DestinationActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 282
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 283
    goto/16 :goto_0

    .line 285
    :cond_7
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 288
    goto/16 :goto_0

    :cond_8
    const-string v2, "com.android.email"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 289
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    const v3, 0x7f02002f

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 290
    goto/16 :goto_0

    :cond_9
    const-string v2, "com.android.calendar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 291
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    const v3, 0x7f02002a

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 292
    goto/16 :goto_0

    :cond_a
    const-string v2, "com.android.gallery3d"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 293
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    const v3, 0x7f020030

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 294
    goto/16 :goto_0

    :cond_b
    const-string v2, "com.google.android.talk"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 295
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    const v3, 0x7f020039

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 296
    goto/16 :goto_0

    :cond_c
    const-string v2, "com.android.music"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "com.miui.player"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "com.htc.music"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "com.sonyericsson.music"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 297
    const-string v2, "com.android.mediacenter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 298
    :cond_d
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    const v3, 0x7f020034

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 299
    goto/16 :goto_0

    :cond_e
    const-string v2, "com.google.android.gm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 300
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    const v3, 0x7f020031

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 301
    goto/16 :goto_0

    :cond_f
    const-string v2, "com.android.vending"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 302
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    const v3, 0x7f020036

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 303
    goto/16 :goto_0

    :cond_10
    const-string v2, "com.android.contacts"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "com.sonyericsson.android.socialphonebook"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "com.android.htccontacts"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 304
    const-string v2, "com.sec.android.app.dialertab"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 305
    :cond_11
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 306
    const-string v2, "com.sec.android.app.dialertab/com.sec.android.app.dialertab.DialerTabActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 307
    const-string v2, "com.android.contacts/com.android.contacts.activities.TwelveKeyDialer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 308
    const-string v2, "com.android.htccontacts/com.android.htccontacts.DialerTabActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 309
    const-string v2, "com.sonyericsson.android.socialphonebook/com.sonyericsson.android.socialphonebook.DialerEntryActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 310
    const-string v2, "com.android.contacts/com.android.contacts.DialtactsActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 311
    const-string v2, "com.android.contacts/com.android.contacts.activities.CallLogActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 312
    const-string v2, "com.android.contacts/com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 313
    const-string v2, "com.android.contacts/com.sec.android.app.contacts.PhoneBookTopMenuActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 314
    const-string v2, "com.android.contacts/com.sec.android.app.contacts.DialerEntryActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 316
    :cond_12
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    const v3, 0x7f02002d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 317
    goto/16 :goto_0

    .line 318
    :cond_13
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    const v3, 0x7f02002c

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 320
    goto/16 :goto_0

    :cond_14
    const-string v2, "com.android.browser"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 321
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    const v3, 0x7f020035

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 322
    goto/16 :goto_0

    :cond_15
    const-string v2, "com.android.mms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "com.sonyericsson.conversations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 323
    :cond_16
    sget-object v2, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    const v3, 0x7f020033

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 324
    goto/16 :goto_0

    .line 325
    :cond_17
    const-string v2, "TV"

    const-string v3, "get info build-in resource"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {p0, p2}, Lcom/uprui/tv/launcher8/allapp/Utilities;->getFullResIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getBitmapFromFile(Ljava/io/File;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "file"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v4, 0x0

    .line 73
    .local v4, bitmap:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 74
    .local v11, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput-boolean v14, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 75
    const/4 v9, 0x0

    .line 77
    .local v9, is:Ljava/io/InputStream;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 78
    const/4 v14, 0x0

    invoke-static {v9, v14, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 79
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v14

    .line 80
    .local v3, bit_width:F
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v14

    .line 81
    .local v2, bit_height:F
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 82
    .local v10, metrics:Landroid/util/DisplayMetrics;
    const-string v14, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 83
    .local v1, WM:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 84
    iget v6, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 85
    .local v6, dw:I
    iget v5, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 86
    .local v5, dh:I
    int-to-float v14, v6

    div-float v12, v3, v14

    .line 87
    .local v12, w_scale:F
    int-to-float v14, v5

    div-float v8, v2, v14

    .line 88
    .local v8, h_scale:F
    cmpl-float v14, v12, v8

    if-lez v14, :cond_1

    const/high16 v14, 0x3f80

    cmpl-float v14, v12, v14

    if-lez v14, :cond_0

    move v13, v12

    .line 89
    .local v13, zoom:F
    :goto_0
    const/4 v4, 0x0

    .line 91
    :try_start_0
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_1
    const/4 v14, 0x0

    iput-boolean v14, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 97
    float-to-int v14, v13

    iput v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 99
    const/4 v14, 0x0

    invoke-static {v9, v14, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 101
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    :goto_2
    return-object v4

    .line 88
    .end local v13           #zoom:F
    :cond_0
    const/high16 v13, 0x3f80

    goto :goto_0

    :cond_1
    const/high16 v14, 0x3f80

    cmpl-float v14, v8, v14

    if-lez v14, :cond_2

    move v13, v8

    goto :goto_0

    :cond_2
    const/high16 v13, 0x3f80

    goto :goto_0

    .line 92
    .restart local v13       #zoom:F
    :catch_0
    move-exception v7

    .line 93
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 102
    .end local v7           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 103
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getFullResIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "info"

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 250
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-nez p1, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 254
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getRecResIcon(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "context"
    .parameter "resources"
    .parameter "iconId"

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 239
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 244
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 245
    .local v3, target:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-static {v3, p0}, Lcom/uprui/tv/launcher8/allapp/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 240
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #target:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 241
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 244
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method public static getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 220
    const/4 v4, 0x0

    .line 221
    .local v4, targetInfo:Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v2, mainIntent:Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 224
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 225
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 231
    :goto_0
    const/4 v1, 0x0

    .line 232
    return-object v4

    .line 225
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 226
    .local v0, info:Landroid/content/pm/ResolveInfo;
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 227
    move-object v4, v0

    .line 228
    goto :goto_0
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 206
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 207
    .local v2, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 208
    .local v0, WM:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 210
    sget-object v3, Lcom/uprui/tv/launcher8/LauncherApplication;->resources:Landroid/content/res/Resources;

    const/high16 v4, 0x7f0c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/uprui/tv/launcher8/allapp/Utilities;->iconHeight:I

    sput v3, Lcom/uprui/tv/launcher8/allapp/Utilities;->iconWidth:I

    .line 211
    sget v3, Lcom/uprui/tv/launcher8/allapp/Utilities;->iconWidth:I

    add-int/lit8 v3, v3, 0x2

    sput v3, Lcom/uprui/tv/launcher8/allapp/Utilities;->iconTextureHeight:I

    sput v3, Lcom/uprui/tv/launcher8/allapp/Utilities;->iconTextureWidth:I

    .line 213
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 214
    .local v1, cm:Landroid/graphics/ColorMatrix;
    const v3, 0x3e4ccccd

    invoke-virtual {v1, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 215
    sget-object v3, Lcom/uprui/tv/launcher8/allapp/Utilities;->DISABLED_PAINT:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 216
    sget-object v3, Lcom/uprui/tv/launcher8/allapp/Utilities;->DISABLED_PAINT:Landroid/graphics/Paint;

    const/16 v4, 0x88

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 217
    return-void
.end method

.method public static instance(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/uprui/tv/launcher8/allapp/Utilities;->initStatics(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/uprui/tv/launcher8/allapp/Utilities;->TVSHORTCUT_BACK:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/uprui/tv/launcher8/allapp/Utilities;->TVAPK_BACK:Landroid/graphics/drawable/Drawable;

    .line 69
    return-void
.end method
