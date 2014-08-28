.class public Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;
.super Landroid/widget/ImageView;
.source "AppImageView.java"

# interfaces
.implements Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCallback;


# instance fields
.field private apkBitmap:Landroid/graphics/Bitmap;

.field private apkIconBg:Landroid/graphics/drawable/Drawable;

.field private apkIconBgArray:[I

.field private apkIconPaddingLeft:I

.field private apkIconPaddingTop:I

.field private bg:Landroid/graphics/drawable/Drawable;

.field private drawRect:Landroid/graphics/Rect;

.field private dst:Landroid/graphics/Rect;

.field private iconHeight:I

.field private iconWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->drawRect:Landroid/graphics/Rect;

    .line 20
    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->bg:Landroid/graphics/drawable/Drawable;

    .line 21
    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconBg:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkBitmap:Landroid/graphics/Bitmap;

    .line 23
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconPaddingLeft:I

    .line 24
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconPaddingTop:I

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 26
    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconBgArray:[I

    .line 29
    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->dst:Landroid/graphics/Rect;

    .line 43
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->init()V

    .line 44
    return-void

    .line 25
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x2t 0x7ft
        0x2t 0x0t 0x2t 0x7ft
        0x3t 0x0t 0x2t 0x7ft
        0x4t 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->drawRect:Landroid/graphics/Rect;

    .line 20
    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->bg:Landroid/graphics/drawable/Drawable;

    .line 21
    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconBg:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkBitmap:Landroid/graphics/Bitmap;

    .line 23
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconPaddingLeft:I

    .line 24
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconPaddingTop:I

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 26
    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconBgArray:[I

    .line 29
    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->dst:Landroid/graphics/Rect;

    .line 38
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->init()V

    .line 39
    return-void

    .line 25
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x2t 0x7ft
        0x2t 0x0t 0x2t 0x7ft
        0x3t 0x0t 0x2t 0x7ft
        0x4t 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->drawRect:Landroid/graphics/Rect;

    .line 20
    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->bg:Landroid/graphics/drawable/Drawable;

    .line 21
    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconBg:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkBitmap:Landroid/graphics/Bitmap;

    .line 23
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconPaddingLeft:I

    .line 24
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconPaddingTop:I

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 26
    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconBgArray:[I

    .line 29
    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->dst:Landroid/graphics/Rect;

    .line 33
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->init()V

    .line 34
    return-void

    .line 25
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x2t 0x7ft
        0x2t 0x0t 0x2t 0x7ft
        0x3t 0x0t 0x2t 0x7ft
        0x4t 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private init()V
    .locals 7

    .prologue
    .line 47
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->drawRect:Landroid/graphics/Rect;

    .line 48
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->bg:Landroid/graphics/drawable/Drawable;

    .line 51
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getCellApkIconMarginLeft()I

    move-result v1

    iput v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconPaddingLeft:I

    .line 52
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getCellApkIconMarginTop()I

    move-result v1

    iput v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconPaddingTop:I

    .line 53
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getappIconWidth()I

    move-result v1

    iput v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->iconWidth:I

    .line 54
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getappIconHeight()I

    move-result v1

    iput v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->iconHeight:I

    .line 56
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconPaddingLeft:I

    iget v3, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconPaddingTop:I

    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconPaddingLeft:I

    iget v5, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->iconWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconPaddingTop:I

    iget v6, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->iconHeight:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->dst:Landroid/graphics/Rect;

    .line 57
    return-void
.end method


# virtual methods
.method public callBack(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 88
    iput-object p2, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkBitmap:Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->invalidate()V

    .line 90
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 74
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->drawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->drawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 75
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->drawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->drawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 76
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->drawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->drawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 77
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->bg:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 78
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->dst:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconBg:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 83
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 84
    return-void
.end method

.method public setItem(Lcom/uprui/tv/launcher8/allapp/AppInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 60
    iget-object v3, p1, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconBgArray:[I

    array-length v4, v4

    rem-int v0, v3, v4

    .line 61
    .local v0, bgIndex:I
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconBgArray:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkIconBg:Landroid/graphics/drawable/Drawable;

    .line 63
    new-instance v2, Lcom/uprui/tv/launcher8/allapp/icon/AppIconLoadTask;

    invoke-direct {v2, p1}, Lcom/uprui/tv/launcher8/allapp/icon/AppIconLoadTask;-><init>(Lcom/uprui/tv/launcher8/allapp/AppInfo;)V

    .line 64
    .local v2, task:Lcom/uprui/tv/launcher8/allapp/icon/AppIconLoadTask;
    invoke-static {}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->getInstance()Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    move-result-object v3

    invoke-virtual {v3, v2, p0}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->loadBitmap(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCallback;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 66
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->apkBitmap:Landroid/graphics/Bitmap;

    .line 68
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->invalidate()V

    .line 69
    return-void
.end method
