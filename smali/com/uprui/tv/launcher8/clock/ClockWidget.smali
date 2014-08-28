.class public Lcom/uprui/tv/launcher8/clock/ClockWidget;
.super Landroid/widget/RelativeLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/tv/launcher8/clock/ClockWidget$YuanDaoClockReceiver;
    }
.end annotation


# static fields
.field private static final ANIMA_DURATION:I = 0x1f4


# instance fields
.field private DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

.field private DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

.field private data:Landroid/widget/TextView;

.field private focusAnimation:Landroid/view/animation/Animation;

.field private focusDrawable:Landroid/graphics/drawable/Drawable;

.field private homeCellHSpace:I

.field private homeCellHeight:I

.field private homeCellVSpace:I

.field private homeCellWidth:I

.field private info:Lcom/uprui/tv/launcher8/home/HomeInfo;

.field private moliClock:Lcom/uprui/tv/launcher8/clock/MoliClock;

.field private moliClockHeightP:I

.field private moliClockParent:Landroid/widget/LinearLayout;

.field private moliClockWidthP:I

.field private tempRect:Landroid/graphics/Rect;

.field private time:Landroid/widget/TextView;

.field private timeWidget:Landroid/text/format/Time;

.field private unFocusAnimation:Landroid/view/animation/Animation;

.field private weekDay:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
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

    iput-object v0, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    .line 53
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

    iput-object v0, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    .line 58
    invoke-direct {p0, p1}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->init(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/uprui/tv/launcher8/clock/ClockWidget;)Lcom/uprui/tv/launcher8/clock/MoliClock;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->moliClock:Lcom/uprui/tv/launcher8/clock/MoliClock;

    return-object v0
.end method

.method private getDayofWeek(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "c"
    .parameter "day"

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, week:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 255
    :goto_0
    return-object v0

    .line 231
    :pswitch_0
    const v1, 0x7f07005e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    goto :goto_0

    .line 234
    :pswitch_1
    const v1, 0x7f070058

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    goto :goto_0

    .line 237
    :pswitch_2
    const v1, 0x7f070059

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    goto :goto_0

    .line 240
    :pswitch_3
    const v1, 0x7f07005a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    goto :goto_0

    .line 243
    :pswitch_4
    const v1, 0x7f07005b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    goto :goto_0

    .line 246
    :pswitch_5
    const v1, 0x7f07005c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    goto :goto_0

    .line 249
    :pswitch_6
    const v1, 0x7f07005d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v3, 0x1

    .line 62
    new-instance v1, Lcom/uprui/tv/launcher8/clock/ClockWidget$YuanDaoClockReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/uprui/tv/launcher8/clock/ClockWidget$YuanDaoClockReceiver;-><init>(Lcom/uprui/tv/launcher8/clock/ClockWidget;Lcom/uprui/tv/launcher8/clock/ClockWidget$YuanDaoClockReceiver;)V

    .line 63
    .local v1, yu:Lcom/uprui/tv/launcher8/clock/ClockWidget$YuanDaoClockReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v2

    iget v2, v2, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellWidth:I

    iput v2, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->homeCellWidth:I

    .line 71
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v2

    iget v2, v2, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellHeight:I

    iput v2, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->homeCellHeight:I

    .line 72
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v2

    iget v2, v2, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeWidthSpace:I

    iput v2, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->homeCellHSpace:I

    .line 73
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v2

    iget v2, v2, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeHeightSpace:I

    iput v2, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->homeCellVSpace:I

    .line 75
    invoke-virtual {p0, v3}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->setFocusable(Z)V

    .line 76
    const/high16 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->setDescendantFocusability(I)V

    .line 78
    iget-object v2, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 79
    iget-object v2, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 80
    iget-object v2, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 81
    iget-object v2, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 83
    iget-object v2, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->focusAnimation:Landroid/view/animation/Animation;

    .line 84
    iget-object v2, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->unFocusAnimation:Landroid/view/animation/Animation;

    .line 86
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->tempRect:Landroid/graphics/Rect;

    .line 87
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->focusDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    return-void
.end method

.method private startFocusAnimation()V
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->clearAnimation()V

    .line 271
    iget-object v0, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->focusAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->focusAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 274
    :cond_0
    return-void
.end method

.method private startUnFocusAnimation()V
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->clearAnimation()V

    .line 278
    iget-object v0, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->unFocusAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->unFocusAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 281
    :cond_0
    return-void
.end method


# virtual methods
.method public changeParams()V
    .locals 6

    .prologue
    .line 176
    iget v4, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->moliClockWidthP:I

    div-int/lit8 v1, v4, 0x3

    .line 177
    .local v1, clockWidth:I
    iget v4, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->moliClockHeightP:I

    int-to-float v4, v4

    const v5, 0x3f4ccccd

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 178
    .local v0, clockHeight:I
    div-int/lit8 v3, v1, 0x3

    .line 179
    .local v3, padding:I
    iget-object v4, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->moliClockParent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 181
    .local v2, moliClockLp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 182
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 183
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 184
    iget-object v4, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->moliClockParent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->invalidate()V

    .line 186
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/high16 v10, 0x43a0

    .line 206
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 207
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->getWidth()I

    move-result v7

    .line 209
    .local v7, width:I
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->getHeight()I

    move-result v6

    .line 211
    .local v6, height:I
    int-to-float v8, v7

    const/high16 v9, 0x4365

    div-float v2, v8, v9

    .line 212
    .local v2, focusScaleX:F
    int-to-float v8, v6

    const/high16 v9, 0x4357

    div-float v3, v8, v9

    .line 214
    .local v3, focusScaleY:F
    const/high16 v8, 0x4234

    mul-float/2addr v8, v2

    float-to-int v8, v8

    neg-int v1, v8

    .line 215
    .local v1, focusLeft:I
    const/high16 v8, 0x4258

    mul-float/2addr v8, v3

    float-to-int v8, v8

    neg-int v4, v8

    .line 217
    .local v4, focusTop:I
    mul-float v8, v10, v2

    float-to-int v5, v8

    .line 218
    .local v5, focusWidth:I
    mul-float v8, v10, v3

    float-to-int v0, v8

    .line 220
    .local v0, focusHeight:I
    iget-object v8, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->tempRect:Landroid/graphics/Rect;

    add-int v9, v1, v5

    add-int v10, v4, v0

    invoke-virtual {v8, v1, v4, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 221
    iget-object v8, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->focusDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 222
    iget-object v8, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->focusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 225
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

.method public is24(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 172
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 106
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->moliClockParent:Landroid/widget/LinearLayout;

    .line 107
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/clock/MoliClock;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->moliClock:Lcom/uprui/tv/launcher8/clock/MoliClock;

    .line 109
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->time:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->time:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->weekDay:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->data:Landroid/widget/TextView;

    .line 113
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->updateTime()V

    .line 115
    new-instance v0, Lcom/uprui/tv/launcher8/clock/ClockWidget$1;

    invoke-direct {v0, p0}, Lcom/uprui/tv/launcher8/clock/ClockWidget$1;-><init>(Lcom/uprui/tv/launcher8/clock/ClockWidget;)V

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 122
    new-instance v0, Lcom/uprui/tv/launcher8/clock/ClockWidget$2;

    invoke-direct {v0, p0}, Lcom/uprui/tv/launcher8/clock/ClockWidget$2;-><init>(Lcom/uprui/tv/launcher8/clock/ClockWidget;)V

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 261
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 262
    if-eqz p1, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->startFocusAnimation()V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->startUnFocusAnimation()V

    goto :goto_0
.end method

.method public setInfo(Lcom/uprui/tv/launcher8/home/HomeInfo;)V
    .locals 3
    .parameter "home"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->info:Lcom/uprui/tv/launcher8/home/HomeInfo;

    .line 94
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " spanX="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->info:Lcom/uprui/tv/launcher8/home/HomeInfo;

    iget v2, v2, Lcom/uprui/tv/launcher8/home/HomeInfo;->spanX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spanY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->info:Lcom/uprui/tv/launcher8/home/HomeInfo;

    iget v2, v2, Lcom/uprui/tv/launcher8/home/HomeInfo;->spanY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->info:Lcom/uprui/tv/launcher8/home/HomeInfo;

    iget v0, v0, Lcom/uprui/tv/launcher8/home/HomeInfo;->spanX:I

    iget v1, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->homeCellWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->homeCellHSpace:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->moliClockWidthP:I

    .line 96
    iget-object v0, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->info:Lcom/uprui/tv/launcher8/home/HomeInfo;

    iget v0, v0, Lcom/uprui/tv/launcher8/home/HomeInfo;->spanY:I

    iget v1, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->homeCellHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->homeCellVSpace:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->moliClockHeightP:I

    .line 97
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " moliClockWidthP="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->moliClockWidthP:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " moliClockHeightP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->moliClockHeightP:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->changeParams()V

    .line 99
    return-void
.end method

.method public updateTime()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 149
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 151
    .local v0, cal:Ljava/util/Calendar;
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_0

    const-string v3, "AM"

    .line 152
    .local v3, str:Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    iput-object v5, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->timeWidget:Landroid/text/format/Time;

    .line 153
    iget-object v5, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->timeWidget:Landroid/text/format/Time;

    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 155
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->is24(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    iget-object v5, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->time:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->timeWidget:Landroid/text/format/Time;

    const-string v8, "%H:%M"

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_1
    iget-object v5, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->timeWidget:Landroid/text/format/Time;

    iget v2, v5, Landroid/text/format/Time;->weekDay:I

    .line 163
    .local v2, dayOfWeek:I
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->getDayofWeek(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, weekString:Ljava/lang/String;
    iget-object v5, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->weekDay:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const-string v5, "yyyy-MM-dd"

    iget-object v6, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->timeWidget:Landroid/text/format/Time;

    invoke-virtual {v6, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 168
    .local v1, dateStr:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->data:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-void

    .line 151
    .end local v1           #dateStr:Ljava/lang/CharSequence;
    .end local v2           #dayOfWeek:I
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #weekString:Ljava/lang/String;
    :cond_0
    const-string v3, "PM"

    goto :goto_0

    .line 158
    .restart local v3       #str:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->time:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hh:mm"

    iget-object v8, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget;->timeWidget:Landroid/text/format/Time;

    invoke-virtual {v8, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
