.class public Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;
.super Ljava/lang/Object;
.source "TvPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/pageview/TvPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellInfo"
.end annotation


# instance fields
.field public cellX:I

.field public cellY:I

.field public screen:I

.field public spanX:I

.field public spanY:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput p1, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;->screen:I

    .line 457
    iput p2, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;->cellX:I

    .line 458
    iput p3, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;->cellY:I

    .line 459
    iput p4, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;->spanX:I

    .line 460
    iput p5, p0, Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;->spanY:I

    .line 461
    return-void
.end method
