.class public Lcom/uprui/tv/launcher8/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 33
    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mWidth:I

    .line 35
    iget-object v0, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mHeight:I

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mHeight:I

    iput v0, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 44
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 53
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 81
    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mWidth:I

    .line 83
    iget-object v0, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mHeight:I

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mHeight:I

    iput v0, p0, Lcom/uprui/tv/launcher8/FastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 57
    return-void
.end method
