.class public Lcom/uprui/tv/launcher8/home/HomeCellChild;
.super Landroid/widget/RelativeLayout;
.source "HomeCellChild.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ANIMA_DURATION:I = 0x1f4

.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "HomeCellChild"


# instance fields
.field private DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

.field private DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

.field private focusAnimation:Landroid/view/animation/Animation;

.field private focusDrawable:Landroid/graphics/drawable/Drawable;

.field private home:Lcom/uprui/tv/launcher8/home/HomeCellChild;

.field public info:Lcom/uprui/tv/launcher8/home/HomeInfo;

.field private iv:Landroid/widget/ImageView;

.field private sPaint:Landroid/graphics/Paint;

.field private tempRect:Landroid/graphics/Rect;

.field private tv:Landroid/widget/TextView;

.field private unFocusAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f99999a

    const/high16 v3, 0x3f80

    .line 44
    const v4, 0x3f99999a

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    .line 45
    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    .line 46
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f99999a

    const/high16 v2, 0x3f80

    .line 47
    const v3, 0x3f99999a

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    .line 48
    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    .line 65
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f99999a

    const/high16 v3, 0x3f80

    .line 44
    const v4, 0x3f99999a

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    .line 45
    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    .line 46
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f99999a

    const/high16 v2, 0x3f80

    .line 47
    const v3, 0x3f99999a

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    .line 48
    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    .line 60
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f99999a

    const/high16 v3, 0x3f80

    .line 44
    const v4, 0x3f99999a

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    .line 45
    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    .line 46
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f99999a

    const/high16 v2, 0x3f80

    .line 47
    const v3, 0x3f99999a

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    .line 48
    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    .line 55
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->init()V

    .line 56
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1f4

    const/4 v1, 0x1

    .line 69
    invoke-virtual {p0, p0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->setFocusable(Z)V

    .line 71
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->setDescendantFocusability(I)V

    .line 73
    iget-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 74
    iget-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 75
    iget-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 76
    iget-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 78
    iget-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->focusAnimation:Landroid/view/animation/Animation;

    .line 79
    iget-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->unFocusAnimation:Landroid/view/animation/Animation;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->tempRect:Landroid/graphics/Rect;

    .line 81
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->focusDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    return-void
.end method

.method private startFocusAnimation()V
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->clearAnimation()V

    .line 243
    iget-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->focusAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->focusAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->startAnimation(Landroid/view/animation/Animation;)V

    .line 246
    :cond_0
    return-void
.end method

.method private startUnFocusAnimation()V
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->clearAnimation()V

    .line 250
    iget-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->unFocusAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->unFocusAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->startAnimation(Landroid/view/animation/Animation;)V

    .line 253
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/high16 v10, 0x43a0

    .line 96
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 97
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->getWidth()I

    move-result v7

    .line 99
    .local v7, width:I
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->getHeight()I

    move-result v6

    .line 101
    .local v6, height:I
    int-to-float v8, v7

    const/high16 v9, 0x4365

    div-float v2, v8, v9

    .line 102
    .local v2, focusScaleX:F
    int-to-float v8, v6

    const/high16 v9, 0x4357

    div-float v3, v8, v9

    .line 104
    .local v3, focusScaleY:F
    const/high16 v8, 0x4234

    mul-float/2addr v8, v2

    float-to-int v8, v8

    neg-int v1, v8

    .line 105
    .local v1, focusLeft:I
    const/high16 v8, 0x4258

    mul-float/2addr v8, v3

    float-to-int v8, v8

    neg-int v4, v8

    .line 107
    .local v4, focusTop:I
    mul-float v8, v10, v2

    float-to-int v5, v8

    .line 108
    .local v5, focusWidth:I
    mul-float v8, v10, v3

    float-to-int v0, v8

    .line 110
    .local v0, focusHeight:I
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->tempRect:Landroid/graphics/Rect;

    add-int v9, v1, v5

    add-int v10, v4, v0

    invoke-virtual {v8, v1, v4, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 111
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->focusDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 112
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->focusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    .end local v0           #focusHeight:I
    .end local v1           #focusLeft:I
    .end local v2           #focusScaleX:F
    .end local v3           #focusScaleY:F
    .end local v4           #focusTop:I
    .end local v5           #focusWidth:I
    .end local v6           #height:I
    .end local v7           #width:I
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 198
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/ActLauncher;

    .line 202
    .local v0, launcher:Lcom/uprui/tv/launcher8/ActLauncher;
    iget-object v1, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->info:Lcom/uprui/tv/launcher8/home/HomeInfo;

    iget v1, v1, Lcom/uprui/tv/launcher8/home/HomeInfo;->category:I

    packed-switch v1, :pswitch_data_0

    .line 228
    :goto_0
    :pswitch_0
    return-void

    .line 206
    :pswitch_1
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/ActLauncher;->showSetting()V

    goto :goto_0

    .line 209
    :pswitch_2
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/ActLauncher;->showDemandVideo()V

    goto :goto_0

    .line 212
    :pswitch_3
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/ActLauncher;->showGame()V

    goto :goto_0

    .line 215
    :pswitch_4
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/ActLauncher;->showMusic()V

    goto :goto_0

    .line 218
    :pswitch_5
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/ActLauncher;->showNetWork()V

    goto :goto_0

    .line 221
    :pswitch_6
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/ActLauncher;->showLiveVideo()V

    goto :goto_0

    .line 224
    :pswitch_7
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/ActLauncher;->showApps()V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x2776
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 120
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 87
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/home/HomeCellChild;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->home:Lcom/uprui/tv/launcher8/home/HomeCellChild;

    .line 88
    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->iv:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->tv:Landroid/widget/TextView;

    .line 92
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 233
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 234
    if-eqz p1, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->startFocusAnimation()V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->startUnFocusAnimation()V

    goto :goto_0
.end method

.method public setInfo(Lcom/uprui/tv/launcher8/home/HomeInfo;)V
    .locals 10
    .parameter "info"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->info:Lcom/uprui/tv/launcher8/home/HomeInfo;

    .line 128
    iget v8, p1, Lcom/uprui/tv/launcher8/home/HomeInfo;->category:I

    packed-switch v8, :pswitch_data_0

    .line 167
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 169
    .local v5, res:Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->sPaint:Landroid/graphics/Paint;

    if-nez v8, :cond_0

    .line 170
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->sPaint:Landroid/graphics/Paint;

    .line 171
    const v8, 0x7f0c0010

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 172
    .local v7, textSize:I
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->sPaint:Landroid/graphics/Paint;

    int-to-float v9, v7

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 175
    .end local v7           #textSize:I
    :cond_0
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 176
    .local v3, metircs:Landroid/graphics/Paint$FontMetrics;
    iget v8, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v9, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v8, v9

    float-to-int v6, v8

    .line 177
    .local v6, textHeight:I
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v8

    iget v1, v8, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeIconSize:I

    .line 178
    .local v1, imageHeight:I
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v8

    iget v0, v8, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellHeight:I

    .line 180
    .local v0, cellHeight:I
    const/16 v8, 0x277b

    iget v9, p1, Lcom/uprui/tv/launcher8/home/HomeInfo;->category:I

    if-ne v8, v9, :cond_1

    .line 181
    mul-int/lit8 v8, v0, 0x2

    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v9

    iget v9, v9, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeWidthSpace:I

    add-int v0, v8, v9

    .line 184
    :cond_1
    sub-int v8, v0, v6

    sub-int/2addr v8, v1

    div-int/lit8 v2, v8, 0x2

    .line 185
    .local v2, imageMarginTop:I
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->iv:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 186
    .local v4, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v8

    iget v8, v8, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeIconSize:I

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 187
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v8

    iget v8, v8, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeIconSize:I

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 188
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 189
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->iv:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    return-void

    .line 132
    .end local v0           #cellHeight:I
    .end local v1           #imageHeight:I
    .end local v2           #imageMarginTop:I
    .end local v3           #metircs:Landroid/graphics/Paint$FontMetrics;
    .end local v4           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #textHeight:I
    :pswitch_1
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->home:Lcom/uprui/tv/launcher8/home/HomeCellChild;

    const v9, -0x8ab1fc

    invoke-virtual {v8, v9}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->setBackgroundColor(I)V

    .line 133
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->iv:Landroid/widget/ImageView;

    const v9, 0x7f02004f

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->tv:Landroid/widget/TextView;

    const v9, 0x7f07004f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 137
    :pswitch_2
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->home:Lcom/uprui/tv/launcher8/home/HomeCellChild;

    const v9, -0xa5de5

    invoke-virtual {v8, v9}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->setBackgroundColor(I)V

    .line 138
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->iv:Landroid/widget/ImageView;

    const v9, 0x7f020049

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->tv:Landroid/widget/TextView;

    const v9, 0x7f070070

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 142
    :pswitch_3
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->home:Lcom/uprui/tv/launcher8/home/HomeCellChild;

    const v9, -0x8b7e9b

    invoke-virtual {v8, v9}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->setBackgroundColor(I)V

    .line 143
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->iv:Landroid/widget/ImageView;

    const v9, 0x7f02004b

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->tv:Landroid/widget/TextView;

    const v9, 0x7f070071

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 147
    :pswitch_4
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->home:Lcom/uprui/tv/launcher8/home/HomeCellChild;

    const v9, -0xb653cb

    invoke-virtual {v8, v9}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->setBackgroundColor(I)V

    .line 148
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->iv:Landroid/widget/ImageView;

    const v9, 0x7f02004d

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->tv:Landroid/widget/TextView;

    const v9, 0x7f070072

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 152
    :pswitch_5
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->home:Lcom/uprui/tv/launcher8/home/HomeCellChild;

    const v9, -0xff5f17

    invoke-virtual {v8, v9}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->setBackgroundColor(I)V

    .line 153
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->iv:Landroid/widget/ImageView;

    const v9, 0x7f02004e

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->tv:Landroid/widget/TextView;

    const v9, 0x7f07004e

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 157
    :pswitch_6
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->home:Lcom/uprui/tv/launcher8/home/HomeCellChild;

    const v9, -0xa0a1

    invoke-virtual {v8, v9}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->setBackgroundColor(I)V

    .line 158
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->iv:Landroid/widget/ImageView;

    const v9, 0x7f02004c

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->tv:Landroid/widget/TextView;

    const v9, 0x7f07006f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 162
    :pswitch_7
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->home:Lcom/uprui/tv/launcher8/home/HomeCellChild;

    const v9, -0x8ec024

    invoke-virtual {v8, v9}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->setBackgroundColor(I)V

    .line 163
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->iv:Landroid/widget/ImageView;

    const v9, 0x7f020048

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object v8, p0, Lcom/uprui/tv/launcher8/home/HomeCellChild;->tv:Landroid/widget/TextView;

    const v9, 0x7f07004b

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x2776
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
