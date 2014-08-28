.class public Lcom/uprui/tv/launcher8/home/HomeInfo;
.super Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;
.source "HomeInfo.java"


# instance fields
.field public category:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "category"

    .prologue
    .line 9
    invoke-direct/range {p0 .. p5}, Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;-><init>(IIIII)V

    .line 10
    iput p6, p0, Lcom/uprui/tv/launcher8/home/HomeInfo;->category:I

    .line 11
    return-void
.end method
