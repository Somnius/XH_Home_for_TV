.class public Lcom/uprui/tv/launcher8/pageview/TvPageView$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "TvPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/pageview/TvPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 472
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 473
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 467
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 469
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 476
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 480
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 481
    return-void
.end method


# virtual methods
.method public setUp(II)V
    .locals 2
    .parameter "pageWidth"
    .parameter "pageHeight"

    .prologue
    .line 484
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView$LayoutParams;->leftMargin:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView$LayoutParams;->width:I

    .line 485
    iget v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView$LayoutParams;->topMargin:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView$LayoutParams;->bottomMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView$LayoutParams;->height:I

    .line 486
    return-void
.end method
