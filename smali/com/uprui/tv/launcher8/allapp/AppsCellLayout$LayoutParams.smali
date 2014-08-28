.class public Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "AppsCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;
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

.field dropped:Z

.field public isDragging:Z

.field regenerateId:Z

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"

    .prologue
    const/4 v0, -0x1

    .line 703
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 704
    iput p1, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellX:I

    .line 705
    iput p2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellY:I

    .line 706
    iput p3, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellHSpan:I

    .line 707
    iput p4, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellVSpan:I

    .line 708
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 691
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 692
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellHSpan:I

    .line 693
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellVSpan:I

    .line 694
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 697
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellHSpan:I

    .line 699
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellVSpan:I

    .line 700
    return-void
.end method


# virtual methods
.method public setup(IIIIII)V
    .locals 6
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "widthGap"
    .parameter "heightGap"
    .parameter "hStartPadding"
    .parameter "vStartPadding"

    .prologue
    .line 712
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellHSpan:I

    .line 713
    .local v0, myCellHSpan:I
    iget v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellVSpan:I

    .line 714
    .local v1, myCellVSpan:I
    iget v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellX:I

    .line 715
    .local v2, myCellX:I
    iget v3, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->cellY:I

    .line 717
    .local v3, myCellY:I
    mul-int v4, v0, p1

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->width:I

    .line 718
    mul-int v4, v1, p2

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->height:I

    .line 720
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    add-int/2addr v4, p5

    iget v5, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->x:I

    .line 721
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    add-int/2addr v4, p6

    iget v5, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$LayoutParams;->y:I

    .line 722
    return-void
.end method
