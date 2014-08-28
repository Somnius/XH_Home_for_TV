.class public Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;
.super Landroid/widget/RelativeLayout;
.source "AllappIndicatorItem.java"


# static fields
.field private static final ANIMA_DURATION:I = 0xfa

.field private static final indicator_color:I = -0xdba17d

.field private static final indicator_color_focused:I = -0xff5f16


# instance fields
.field private DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

.field private DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

.field private appsWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

.field private focusAnimation:Landroid/view/animation/Animation;

.field private indicatorIcon:Landroid/widget/ImageView;

.field private indicatorTitle:Landroid/widget/TextView;

.field private unFocusAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->indicatorIcon:Landroid/widget/ImageView;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->indicatorTitle:Landroid/widget/TextView;

    .line 24
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f8ccccd

    const/high16 v3, 0x3f80

    const v4, 0x3f8ccccd

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    .line 25
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd

    const/high16 v2, 0x3f80

    const v3, 0x3f8ccccd

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->appsWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    .line 48
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->indicatorIcon:Landroid/widget/ImageView;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->indicatorTitle:Landroid/widget/TextView;

    .line 24
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f8ccccd

    const/high16 v3, 0x3f80

    const v4, 0x3f8ccccd

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    .line 25
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd

    const/high16 v2, 0x3f80

    const v3, 0x3f8ccccd

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->appsWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    .line 43
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->indicatorIcon:Landroid/widget/ImageView;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->indicatorTitle:Landroid/widget/TextView;

    .line 24
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f8ccccd

    const/high16 v3, 0x3f80

    const v4, 0x3f8ccccd

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    .line 25
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd

    const/high16 v2, 0x3f80

    const v3, 0x3f8ccccd

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->appsWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    .line 38
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->init()V

    .line 39
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    const/4 v1, 0x1

    .line 52
    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->setClickable(Z)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->setFocusable(Z)V

    .line 54
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->setDescendantFocusability(I)V

    .line 56
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 57
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 58
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 59
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 61
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->focusAnimation:Landroid/view/animation/Animation;

    .line 62
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->unFocusAnimation:Landroid/view/animation/Animation;

    .line 63
    return-void
.end method

.method private startFocusAnimation()V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->clearAnimation()V

    .line 124
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->focusAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->indicatorIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->focusAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->indicatorIcon:Landroid/widget/ImageView;

    const v1, -0xff5f16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 128
    :cond_0
    return-void
.end method

.method private startUnFocusAnimation()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->clearAnimation()V

    .line 132
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->unFocusAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->indicatorIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->unFocusAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 134
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->indicatorIcon:Landroid/widget/ImageView;

    const v1, -0xdba17d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 70
    const v3, 0x7f090004

    invoke-virtual {p0, v3}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 71
    .local v1, indicatorItem:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 72
    .local v2, itemLp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getIndicatorItemWidth()I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 73
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getIndicatorItemHeight()I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 74
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    const v3, 0x7f090005

    invoke-virtual {p0, v3}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->indicatorIcon:Landroid/widget/ImageView;

    .line 77
    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->indicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 78
    .local v0, iconLp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getIndicatorIconSize()I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 79
    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->indicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    const v3, 0x7f090006

    invoke-virtual {p0, v3}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->indicatorTitle:Landroid/widget/TextView;

    .line 83
    new-instance v3, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem$1;

    invoke-direct {v3, p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem$1;-><init>(Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;)V

    invoke-virtual {p0, v3}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 109
    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/uprui/tv/launcher8/audio/AudioUtil;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/audio/AudioUtil;

    move-result-object v1

    const-string v2, "keyWater"

    invoke-virtual {v1, v2}, Lcom/uprui/tv/launcher8/audio/AudioUtil;->play(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->startFocusAnimation()V

    .line 113
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;

    .line 114
    .local v0, info:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->appsWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->appsWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->getTopCategoryScreenIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->setCurrentScreen(I)V

    .line 120
    .end local v0           #info:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->startUnFocusAnimation()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAppsWorkspace(Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;)V
    .locals 0
    .parameter "appsWorkspace"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->appsWorkspace:Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;

    .line 145
    return-void
.end method

.method public setImage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->indicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    return-void
.end method

.method public setTilteVisible(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->indicatorTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    return-void

    .line 103
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->indicatorTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method
