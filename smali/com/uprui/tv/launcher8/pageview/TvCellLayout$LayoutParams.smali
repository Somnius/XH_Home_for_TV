.class public Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "TvCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/pageview/TvCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellInfo:I

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public id:I

.field public isDragging:Z

.field private mTag:Ljava/lang/Object;

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 325
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 326
    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellHSpan:I

    .line 327
    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellVSpan:I

    .line 328
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"

    .prologue
    const/4 v0, -0x1

    .line 351
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 352
    iput p1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellX:I

    .line 353
    iput p2, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellY:I

    .line 354
    iput p3, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellHSpan:I

    .line 355
    iput p4, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellVSpan:I

    .line 356
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 331
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 332
    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellHSpan:I

    .line 333
    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellVSpan:I

    .line 334
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 337
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellHSpan:I

    .line 339
    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellVSpan:I

    .line 340
    return-void
.end method

.method public constructor <init>(Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 343
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 344
    iget v0, p1, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellX:I

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellX:I

    .line 345
    iget v0, p1, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellY:I

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellY:I

    .line 346
    iget v0, p1, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellHSpan:I

    .line 347
    iget v0, p1, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellVSpan:I

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellVSpan:I

    .line 348
    return-void
.end method


# virtual methods
.method public containsCell(III)Z
    .locals 3
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellCols"

    .prologue
    const/4 v0, 0x1

    .line 387
    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellInfo:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellInfo:I

    add-int v2, p3, p2

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createInfo(II)V
    .locals 4
    .parameter "cellRows"
    .parameter "cellCols"

    .prologue
    const/4 v3, 0x1

    .line 373
    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->id:I

    iget v2, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellY:I

    add-int/2addr v2, p2

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->id:I

    .line 374
    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->id:I

    iget v2, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellX:I

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->id:I

    .line 377
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellVSpan:I

    if-lt v0, v1, :cond_0

    .line 381
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellHSpan:I

    if-lt v0, v1, :cond_1

    .line 384
    return-void

    .line 378
    :cond_0
    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellInfo:I

    iget v2, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellY:I

    add-int/2addr v2, p2

    add-int/2addr v2, v0

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellInfo:I

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_1
    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellInfo:I

    iget v2, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellX:I

    add-int/2addr v2, v0

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellInfo:I

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->mTag:Ljava/lang/Object;

    .line 399
    return-void
.end method

.method public setup(IIII)V
    .locals 6
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "widthGap"
    .parameter "heightGap"

    .prologue
    .line 359
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellHSpan:I

    .line 360
    .local v0, myCellHSpan:I
    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellVSpan:I

    .line 361
    .local v1, myCellVSpan:I
    iget v2, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellX:I

    .line 362
    .local v2, myCellX:I
    iget v3, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellY:I

    .line 364
    .local v3, myCellY:I
    add-int v4, p1, p3

    mul-int/2addr v4, v0

    sub-int/2addr v4, p3

    iput v4, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->width:I

    .line 365
    add-int v4, p2, p4

    mul-int/2addr v4, v1

    sub-int/2addr v4, p4

    iput v4, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->height:I

    .line 367
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    iget v5, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->x:I

    .line 368
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    iget v5, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->y:I

    .line 370
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 403
    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
