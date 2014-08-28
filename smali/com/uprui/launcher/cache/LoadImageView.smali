.class public Lcom/uprui/launcher/cache/LoadImageView;
.super Landroid/widget/ImageView;
.source "LoadImageView.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LoadImageView"


# instance fields
.field private attachToWindow:Z

.field private drawProgress:Z

.field private fileCallback:Lcom/uprui/executor/RuiHttpFileCallback;

.field private filePath:Ljava/lang/String;

.field private httpTask:Lcom/uprui/executor/RuiHttpTask;

.field private loaddingHttp:Z

.field private localCallback:Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;

.field private localTask:Lcom/uprui/launcher/cache/LocalBitmapTask;

.field private model:Lcom/uprui/launcher/cache/MemoryModel;

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private progress:I

.field private tmpRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 167
    new-instance v0, Lcom/uprui/launcher/cache/LoadImageView$1;

    invoke-direct {v0, p0}, Lcom/uprui/launcher/cache/LoadImageView$1;-><init>(Lcom/uprui/launcher/cache/LoadImageView;)V

    iput-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->localCallback:Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;

    .line 55
    invoke-direct {p0}, Lcom/uprui/launcher/cache/LoadImageView;->init()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    new-instance v0, Lcom/uprui/launcher/cache/LoadImageView$1;

    invoke-direct {v0, p0}, Lcom/uprui/launcher/cache/LoadImageView$1;-><init>(Lcom/uprui/launcher/cache/LoadImageView;)V

    iput-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->localCallback:Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;

    .line 50
    invoke-direct {p0}, Lcom/uprui/launcher/cache/LoadImageView;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    new-instance v0, Lcom/uprui/launcher/cache/LoadImageView$1;

    invoke-direct {v0, p0}, Lcom/uprui/launcher/cache/LoadImageView$1;-><init>(Lcom/uprui/launcher/cache/LoadImageView;)V

    iput-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->localCallback:Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;

    .line 45
    invoke-direct {p0}, Lcom/uprui/launcher/cache/LoadImageView;->init()V

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/uprui/launcher/cache/LoadImageView;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->attachToWindow:Z

    return v0
.end method

.method static synthetic access$1(Lcom/uprui/launcher/cache/LoadImageView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/uprui/launcher/cache/LoadImageView;->progress:I

    return-void
.end method

.method static synthetic access$2(Lcom/uprui/launcher/cache/LoadImageView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/uprui/launcher/cache/LoadImageView;->loaddingHttp:Z

    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/uprui/launcher/cache/MemoryModel;->getInstance()Lcom/uprui/launcher/cache/MemoryModel;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->model:Lcom/uprui/launcher/cache/MemoryModel;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->tmpRectF:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->paint:Landroid/graphics/Paint;

    .line 62
    return-void
.end method

.method private removeOldCallback()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->httpTask:Lcom/uprui/executor/RuiHttpTask;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->httpTask:Lcom/uprui/executor/RuiHttpTask;

    iget-object v1, p0, Lcom/uprui/launcher/cache/LoadImageView;->fileCallback:Lcom/uprui/executor/RuiHttpFileCallback;

    invoke-virtual {v0, v1}, Lcom/uprui/executor/RuiHttpTask;->removeHttpListener(Lcom/uprui/executor/RuiHttpListener;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->localTask:Lcom/uprui/launcher/cache/LocalBitmapTask;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->localTask:Lcom/uprui/launcher/cache/LocalBitmapTask;

    iget-object v1, p0, Lcom/uprui/launcher/cache/LoadImageView;->localCallback:Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;

    invoke-virtual {v0, v1}, Lcom/uprui/launcher/cache/LocalBitmapTask;->removeCallback(Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;)V

    .line 243
    :cond_1
    return-void
.end method


# virtual methods
.method public LoadFile(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath"

    .prologue
    .line 81
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, file:Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/uprui/launcher/cache/LoadImageView;->loadFile(Ljava/io/File;)V

    .line 83
    return-void
.end method

.method public drawProgress(Z)V
    .locals 0
    .parameter "drawProgress"

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/uprui/launcher/cache/LoadImageView;->drawProgress:Z

    .line 247
    return-void
.end method

.method public loadFile(Ljava/io/File;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/uprui/launcher/cache/LoadImageView;->removeOldCallback()V

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->filePath:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->model:Lcom/uprui/launcher/cache/MemoryModel;

    iget-object v1, p0, Lcom/uprui/launcher/cache/LoadImageView;->localCallback:Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;

    invoke-virtual {v0, p1, v1}, Lcom/uprui/launcher/cache/MemoryModel;->loadLocalBitmap(Ljava/io/File;Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;)Lcom/uprui/launcher/cache/LocalBitmapTask;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->localTask:Lcom/uprui/launcher/cache/LocalBitmapTask;

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v0, "LoadImageView"

    const-string v1, "load file is not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadNetWorkImageInFile(Ljava/io/File;Ljava/lang/String;Lcom/uprui/executor/RequestParams;)V
    .locals 3
    .parameter "file"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 99
    const-string v0, "LoadImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadNetWorkImageInFile url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/uprui/launcher/cache/LoadImageView;->removeOldCallback()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->loaddingHttp:Z

    .line 102
    new-instance v0, Lcom/uprui/launcher/cache/LoadImageView$2;

    invoke-direct {v0, p0, p1}, Lcom/uprui/launcher/cache/LoadImageView$2;-><init>(Lcom/uprui/launcher/cache/LoadImageView;Ljava/io/File;)V

    iput-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->fileCallback:Lcom/uprui/executor/RuiHttpFileCallback;

    .line 163
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->model:Lcom/uprui/launcher/cache/MemoryModel;

    iget-object v1, p0, Lcom/uprui/launcher/cache/LoadImageView;->fileCallback:Lcom/uprui/executor/RuiHttpFileCallback;

    invoke-virtual {v0, p2, p3, v1}, Lcom/uprui/launcher/cache/MemoryModel;->getLoadHttpBitmapInFile(Ljava/lang/String;Lcom/uprui/executor/RequestParams;Lcom/uprui/executor/RuiHttpFileCallback;)Lcom/uprui/executor/RuiHttpTask;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->httpTask:Lcom/uprui/executor/RuiHttpTask;

    .line 165
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->attachToWindow:Z

    .line 70
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uprui/launcher/cache/LoadImageView;->attachToWindow:Z

    .line 77
    invoke-direct {p0}, Lcom/uprui/launcher/cache/LoadImageView;->removeOldCallback()V

    .line 78
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 254
    .local v3, mainSaveCount:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/uprui/launcher/cache/LoadImageView;->tmpRectF:Landroid/graphics/RectF;

    .line 255
    .local v6, rect:Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/launcher/cache/LoadImageView;->getWidth()I

    move-result v10

    .line 256
    .local v10, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/uprui/launcher/cache/LoadImageView;->getHeight()I

    move-result v2

    .line 257
    .local v2, height:I
    if-eqz v10, :cond_0

    if-nez v2, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/uprui/launcher/cache/LoadImageView;->tmpRectF:Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/4 v13, 0x0

    int-to-float v14, v10

    int-to-float v15, v2

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 265
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 266
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/uprui/launcher/cache/LoadImageView;->drawProgress:Z

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/uprui/launcher/cache/LoadImageView;->loaddingHttp:Z

    if-eqz v11, :cond_0

    .line 270
    div-int/lit8 v5, v10, 0x3

    .line 271
    .local v5, progressWidth:I
    const/16 v4, 0x14

    .line 273
    .local v4, progressHeight:I
    sub-int v11, v10, v5

    div-int/lit8 v8, v11, 0x2

    .line 274
    .local v8, startProgressX:I
    sub-int v11, v2, v4

    div-int/lit8 v9, v11, 0x2

    .line 276
    .local v9, startProgressY:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/uprui/launcher/cache/LoadImageView;->progress:I

    mul-int/2addr v11, v5

    div-int/lit8 v1, v11, 0x64

    .line 278
    .local v1, currentProgressWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 281
    .local v7, saveCount:I
    int-to-float v11, v8

    int-to-float v12, v9

    add-int v13, v8, v5

    int-to-float v13, v13

    add-int v14, v9, v4

    int-to-float v14, v14

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 282
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/uprui/launcher/cache/LoadImageView;->paint:Landroid/graphics/Paint;

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 283
    const/high16 v11, 0x4120

    const/high16 v12, 0x4120

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/uprui/launcher/cache/LoadImageView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11, v12, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 285
    int-to-float v11, v8

    int-to-float v12, v9

    add-int v13, v8, v1

    int-to-float v13, v13

    add-int v14, v9, v4

    int-to-float v14, v14

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 286
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 287
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/uprui/launcher/cache/LoadImageView;->paint:Landroid/graphics/Paint;

    const v12, -0xff0001

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 288
    const/high16 v11, 0x4120

    const/high16 v12, 0x4120

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/uprui/launcher/cache/LoadImageView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11, v12, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 289
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 290
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method
