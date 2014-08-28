.class public final Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapUtilities;
.super Ljava/lang/Object;
.source "BitmapUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .parameter "options"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 22
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 23
    .local v0, height:I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 24
    .local v3, width:I
    const/4 v2, 0x1

    .line 25
    .local v2, inSampleSize:I
    if-gt v0, p2, :cond_0

    if-le v3, p1, :cond_1

    .line 26
    :cond_0
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 27
    .local v1, heightRatio:I
    int-to-float v5, v3

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 28
    .local v4, widthRatio:I
    if-ge v1, v4, :cond_2

    move v2, v1

    .line 31
    .end local v1           #heightRatio:I
    .end local v4           #widthRatio:I
    :cond_1
    :goto_0
    return v2

    .restart local v1       #heightRatio:I
    .restart local v4       #widthRatio:I
    :cond_2
    move v2, v4

    .line 28
    goto :goto_0
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "res"
    .parameter "resId"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const/4 v2, 0x1

    .line 12
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 13
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 14
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 15
    invoke-static {v0, p2, p3}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapUtilities;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 16
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 17
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 18
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
