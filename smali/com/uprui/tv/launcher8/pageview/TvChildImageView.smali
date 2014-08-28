.class public Lcom/uprui/tv/launcher8/pageview/TvChildImageView;
.super Landroid/widget/ImageView;
.source "TvChildImageView.java"

# interfaces
.implements Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCallback;


# instance fields
.field private apkBitmap:Landroid/graphics/Bitmap;

.field private apkIconBg:Landroid/graphics/drawable/Drawable;

.field private apkIconPaddingLeft:I

.field private apkIconPaddingTop:I

.field private bg:Landroid/graphics/drawable/Drawable;

.field private drawRect:Landroid/graphics/Rect;

.field private info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

.field private loadTask:Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->init()V

    .line 33
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->drawRect:Landroid/graphics/Rect;

    .line 47
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->bg:Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->apkIconBg:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellApkIconMarginLeft:I

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->apkIconPaddingLeft:I

    .line 50
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v0

    iget v0, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellApkIconMarginTop:I

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->apkIconPaddingTop:I

    .line 51
    return-void
.end method


# virtual methods
.method public callBack(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->loadTask:Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;

    .line 110
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    iget v0, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconType:I

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iput-object p2, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->apkBitmap:Landroid/graphics/Bitmap;

    .line 113
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->invalidate()V

    goto :goto_0

    .line 116
    :pswitch_1
    new-instance v0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;

    invoke-direct {v0, p2}, Lcom/uprui/tv/launcher8/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 124
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->loadTask:Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->getInstance()Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    move-result-object v0

    iget-object v1, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->loadTask:Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;

    invoke-virtual {v0, v1, p0}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->cancelLoad(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCallback;)V

    .line 126
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    iget v0, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconType:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 103
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 90
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->bg:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 91
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->apkBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->apkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->apkBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->apkIconPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->apkIconPaddingTop:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->apkIconBg:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 96
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->apkIconBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setItem(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 54
    iput-object p1, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 55
    iget-object v2, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->loadTask:Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;

    if-eqz v2, :cond_0

    .line 56
    invoke-static {}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->getInstance()Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    move-result-object v2

    iget-object v3, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->loadTask:Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;

    invoke-virtual {v2, v3, p0}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->cancelLoad(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCallback;)V

    .line 59
    :cond_0
    new-instance v1, Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;

    invoke-direct {v1, p1}, Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;-><init>(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V

    .line 60
    .local v1, task:Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;
    invoke-static {}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->getInstance()Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->loadBitmap(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCallback;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v2, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconType:I

    packed-switch v2, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iput-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->apkBitmap:Landroid/graphics/Bitmap;

    .line 66
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->invalidate()V

    goto :goto_0

    .line 69
    :pswitch_1
    if-eqz v0, :cond_1

    .line 70
    iput-object v4, p0, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->loadTask:Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;

    .line 71
    new-instance v2, Lcom/uprui/tv/launcher8/FastBitmapDrawable;

    invoke-direct {v2, v0}, Lcom/uprui/tv/launcher8/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0, v4}, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
