.class public Lcom/uprui/tv/launcher8/allapp/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# static fields
.field static final NO_ID:I = -0x1


# instance fields
.field public cellX:I

.field public cellY:I

.field public container:J

.field public id:J

.field isGesture:Z

.field itemType:I

.field public screen:I

.field spanX:I

.field spanY:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide v2, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->id:J

    .line 51
    iput-wide v2, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->container:J

    .line 56
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->screen:I

    .line 61
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->cellX:I

    .line 66
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->cellY:I

    .line 71
    iput v1, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->spanX:I

    .line 76
    iput v1, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->spanY:I

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->isGesture:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/uprui/tv/launcher8/allapp/ItemInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide v2, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->id:J

    .line 51
    iput-wide v2, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->container:J

    .line 56
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->screen:I

    .line 61
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->cellX:I

    .line 66
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->cellY:I

    .line 71
    iput v1, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->spanX:I

    .line 76
    iput v1, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->spanY:I

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->isGesture:Z

    .line 87
    iget-wide v0, p1, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->id:J

    .line 88
    iget v0, p1, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->cellX:I

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->cellX:I

    .line 89
    iget v0, p1, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->cellY:I

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->cellY:I

    .line 90
    iget v0, p1, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->spanX:I

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->spanX:I

    .line 91
    iget v0, p1, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->spanY:I

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->spanY:I

    .line 92
    iget v0, p1, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->screen:I

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->screen:I

    .line 93
    iget v0, p1, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->itemType:I

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->itemType:I

    .line 94
    iget-wide v0, p1, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->container:J

    .line 95
    return-void
.end method

.method static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 101
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 103
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 104
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 105
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 106
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 109
    :goto_0
    return-object v3

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Favorite"

    const-string v4, "Could not write icon"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Item(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/uprui/tv/launcher8/allapp/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
