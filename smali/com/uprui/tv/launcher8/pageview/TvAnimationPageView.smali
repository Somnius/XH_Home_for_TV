.class public Lcom/uprui/tv/launcher8/pageview/TvAnimationPageView;
.super Lcom/uprui/tv/launcher8/pageview/TvPageView;
.source "TvAnimationPageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/uprui/tv/launcher8/pageview/TvPageView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/uprui/tv/launcher8/pageview/TvPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/uprui/tv/launcher8/pageview/TvPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    return-void
.end method


# virtual methods
.method protected scrollTo(IIIF)V
    .locals 6
    .parameter "leftScreen"
    .parameter "rightScreen"
    .parameter "scrollDirection"
    .parameter "percent"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    const/high16 v2, 0x45fa

    const/high16 v5, 0x42b4

    const/high16 v4, 0x3f00

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->scrollTo(IIIF)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/pageview/TvAnimationPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, leftChild:Landroid/view/View;
    invoke-virtual {p0, p2}, Lcom/uprui/tv/launcher8/pageview/TvAnimationPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 32
    .local v1, rightChild:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setCameraDistance(F)V

    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->setCameraDistance(F)V

    .line 34
    if-ne p1, p2, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 54
    :goto_0
    :pswitch_0
    return-void

    .line 39
    :cond_0
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 43
    :pswitch_1
    const/high16 v2, -0x3d4c

    mul-float/2addr v2, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotationY(F)V

    .line 44
    const/high16 v2, 0x3f40

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 47
    mul-float v2, v5, p4

    sub-float v2, v5, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotationY(F)V

    .line 48
    const/high16 v2, 0x3e80

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
