.class public Lcom/uprui/tv/launcher8/pageview/TvCellChild;
.super Landroid/widget/RelativeLayout;
.source "TvCellChild.java"


# static fields
.field private static final ANIMA_DURATION:I = 0x1f4

.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

.field private DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

.field private drawRect:Landroid/graphics/Rect;

.field private focusAnimation:Landroid/view/animation/Animation;

.field private info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

.field private iv:Lcom/uprui/tv/launcher8/pageview/TvChildImageView;

.field private select:Landroid/graphics/drawable/Drawable;

.field private tv:Landroid/widget/TextView;

.field private unFocusAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->DEBUG:Z

    .line 31
    const-string v0, "TvCellChild"

    sput-object v0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f99999a

    const/high16 v3, 0x3f80

    const v4, 0x3f99999a

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    .line 35
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f99999a

    const/high16 v2, 0x3f80

    const v3, 0x3f99999a

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    .line 58
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f99999a

    const/high16 v3, 0x3f80

    const v4, 0x3f99999a

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    .line 35
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f99999a

    const/high16 v2, 0x3f80

    const v3, 0x3f99999a

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    .line 53
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->init()V

    .line 54
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x1f4

    const/4 v2, 0x1

    .line 62
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 63
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 64
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 65
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 67
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->focusAnimation:Landroid/view/animation/Animation;

    .line 68
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->unFocusAnimation:Landroid/view/animation/Animation;

    .line 70
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->select:Landroid/graphics/drawable/Drawable;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->drawRect:Landroid/graphics/Rect;

    .line 73
    invoke-virtual {p0, v2}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->setClickable(Z)V

    .line 74
    invoke-virtual {p0, v2}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->setFocusable(Z)V

    .line 75
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->setDescendantFocusability(I)V

    .line 76
    return-void
.end method

.method private startFocusAnimation()V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->clearAnimation()V

    .line 150
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->focusAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->focusAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    :cond_0
    return-void
.end method

.method private startUnFocusAnimation()V
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->clearAnimation()V

    .line 157
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->unFocusAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->unFocusAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->startAnimation(Landroid/view/animation/Animation;)V

    .line 160
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 110
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 112
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->select:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 113
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->select:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    :cond_0
    return-void
.end method

.method public getInfo()Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 133
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 82
    const v2, 0x7f09003e

    invoke-virtual {p0, v2}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    check-cast v2, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;

    iput-object v2, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->iv:Lcom/uprui/tv/launcher8/pageview/TvChildImageView;

    .line 83
    const v2, 0x7f09003f

    invoke-virtual {p0, v2}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->tv:Landroid/widget/TextView;

    .line 85
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v0

    .line 86
    .local v0, config:Lcom/uprui/tv/launcher8/config/TvCellConfig;
    iget-object v2, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->tv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    .local v1, tvParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellTextMarginLeft:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 88
    iget v2, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellTextMarginRight:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 89
    iget v2, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cellTextMarginBottm:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 90
    iget-object v2, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->tv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 139
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 140
    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uprui/tv/launcher8/audio/AudioUtil;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/audio/AudioUtil;

    move-result-object v0

    const-string v1, "keyWater"

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/audio/AudioUtil;->play(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->startFocusAnimation()V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->startUnFocusAnimation()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 171
    const/16 v7, 0x52

    if-ne p1, v7, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->getInfo()Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    move-result-object v4

    .line 174
    .local v4, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030005

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/uprui/tv/launcher8/DialogPopView;

    .line 175
    .local v5, popView:Lcom/uprui/tv/launcher8/DialogPopView;
    invoke-virtual {v5, v4}, Lcom/uprui/tv/launcher8/DialogPopView;->setInfo(Ljava/lang/Object;)V

    .line 176
    new-instance v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, builder:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    invoke-virtual {v0, v5}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    .line 178
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    check-cast v1, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;

    .line 179
    .local v1, dialog:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;
    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->show()V

    .line 180
    invoke-virtual {v5, v1}, Lcom/uprui/tv/launcher8/DialogPopView;->setDialog(Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;)V

    .line 182
    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 183
    .local v2, dialogWindow:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 184
    .local v6, width:I
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0018

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .line 185
    .local v3, height:I
    invoke-virtual {v2, v6, v3}, Landroid/view/Window;->setLayout(II)V

    .line 188
    .end local v0           #builder:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .end local v1           #dialog:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;
    .end local v2           #dialogWindow:Landroid/view/Window;
    .end local v3           #height:I
    .end local v4           #info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    .end local v5           #popView:Lcom/uprui/tv/launcher8/DialogPopView;
    .end local v6           #width:I
    :cond_0
    const/4 v7, 0x1

    .line 190
    :goto_0
    return v7

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 99
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 100
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 105
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 164
    sget-boolean v1, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->TAG:Ljava/lang/String;

    const-string v2, "requestFocus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 166
    .local v0, getFocus:Z
    return v0
.end method

.method public setItem(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 119
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->tv:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->getTitleByLocale(Ljava/util/Locale;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->iv:Lcom/uprui/tv/launcher8/pageview/TvChildImageView;

    invoke-virtual {v0, p1}, Lcom/uprui/tv/launcher8/pageview/TvChildImageView;->setItem(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V

    .line 121
    return-void
.end method
