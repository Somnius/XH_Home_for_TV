.class public Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;
.super Landroid/widget/RelativeLayout;
.source "AppIcon.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final ANIMA_DURATION:I = 0x1f4

.field public static final NEW_INSTALLED_APP:I = 0x1


# instance fields
.field private DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

.field private DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

.field private appTitle:Landroid/widget/TextView;

.field private appView:Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;

.field private bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

.field private drawRect:Landroid/graphics/Rect;

.field private focusAnimation:Landroid/view/animation/Animation;

.field private info:Lcom/uprui/tv/launcher8/allapp/ItemInfo;

.field private mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

.field private select:Landroid/graphics/drawable/Drawable;

.field private topRightView:Landroid/widget/ImageView;

.field private unFocusAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 48
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

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    .line 49
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

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->select:Landroid/graphics/drawable/Drawable;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->drawRect:Landroid/graphics/Rect;

    .line 62
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
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

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    .line 49
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

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->select:Landroid/graphics/drawable/Drawable;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->drawRect:Landroid/graphics/Rect;

    .line 67
    invoke-static {}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->getInstance()Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    .line 70
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->init()V

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;)Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->appView:Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1f4

    const/4 v1, 0x1

    .line 74
    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->setClickable(Z)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->setFocusable(Z)V

    .line 76
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->setDescendantFocusability(I)V

    .line 78
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 79
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 80
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 81
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 83
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->DEFAULT_FOCUSANIMA:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->focusAnimation:Landroid/view/animation/Animation;

    .line 84
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->DEFAULT_UNFOCUSANIMA:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->unFocusAnimation:Landroid/view/animation/Animation;

    .line 86
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->select:Landroid/graphics/drawable/Drawable;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->drawRect:Landroid/graphics/Rect;

    .line 88
    return-void
.end method

.method private setPressedIcon()V
    .locals 5

    .prologue
    .line 136
    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->info:Lcom/uprui/tv/launcher8/allapp/ItemInfo;

    instance-of v3, v3, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    if-eqz v3, :cond_0

    .line 137
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->info:Lcom/uprui/tv/launcher8/allapp/ItemInfo;

    check-cast v0, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    .line 138
    .local v0, appInfo:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    new-instance v2, Lcom/uprui/tv/launcher8/allapp/icon/AppIconLoadTask;

    invoke-direct {v2, v0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIconLoadTask;-><init>(Lcom/uprui/tv/launcher8/allapp/AppInfo;)V

    .line 140
    .local v2, task:Lcom/uprui/tv/launcher8/allapp/icon/AppIconLoadTask;
    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    new-instance v4, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon$1;

    invoke-direct {v4, p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon$1;-><init>(Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;)V

    invoke-virtual {v3, v2, v4}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->loadBitmap(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCallback;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 147
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    invoke-virtual {v3}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->getDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eq v1, v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->appView:Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;

    invoke-static {v1}, Lcom/uprui/tv/launcher8/allapp/icon/IconView;->toDownLightBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    .end local v0           #appInfo:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #task:Lcom/uprui/tv/launcher8/allapp/icon/AppIconLoadTask;
    :cond_0
    return-void
.end method

.method private startFocusAnimation()V
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->clearAnimation()V

    .line 212
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->focusAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->focusAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->startAnimation(Landroid/view/animation/Animation;)V

    .line 215
    :cond_0
    return-void
.end method

.method private startUnFocusAnimation()V
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->clearAnimation()V

    .line 219
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->unFocusAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->unFocusAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->startAnimation(Landroid/view/animation/Animation;)V

    .line 222
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 227
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 229
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->select:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 230
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->select:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 232
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 198
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    .line 202
    .local v0, app:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    invoke-virtual {p0, v2, v3}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->setTopRightIconVisibility(ZI)V

    .line 203
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rui/launcher/common/utils/RUtilities;->removeNewInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 204
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/allapp/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 208
    .end local v0           #app:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    :goto_0
    return-void

    .line 206
    :cond_0
    const v1, 0x7f020078

    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 10

    .prologue
    .line 92
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 94
    const v9, 0x7f09000d

    invoke-virtual {p0, v9}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;

    iput-object v9, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->appView:Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;

    .line 95
    const v9, 0x7f09000e

    invoke-virtual {p0, v9}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->topRightView:Landroid/widget/ImageView;

    .line 96
    const v9, 0x7f09000f

    invoke-virtual {p0, v9}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->appTitle:Landroid/widget/TextView;

    .line 98
    iget-object v9, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    invoke-virtual {v9}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getAppCellWidth()I

    move-result v2

    .line 99
    .local v2, cellWidth:I
    iget-object v9, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    invoke-virtual {v9}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getAppCellHeight()I

    move-result v1

    .line 100
    .local v1, cellHeight:I
    iget-object v9, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    invoke-virtual {v9}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getAppItemWidth()I

    move-result v7

    .line 101
    .local v7, itemWidth:I
    iget-object v9, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    invoke-virtual {v9}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getAppItemHeight()I

    move-result v6

    .line 102
    .local v6, itemHeight:I
    iget-object v9, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    invoke-virtual {v9}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getAppdownLoadIconWidth()I

    move-result v4

    .line 103
    .local v4, downLoadIconWidth:I
    iget-object v9, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->mld:Lcom/uprui/tv/launcher8/data/MainLauncherData;

    invoke-virtual {v9}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getAppdownLoadIconHeight()I

    move-result v3

    .line 105
    .local v3, downLoadIconHeight:I
    iget-object v9, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->appView:Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;

    invoke-virtual {v9}, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 106
    .local v0, appViewLp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 107
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 108
    iget-object v9, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->appView:Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;

    invoke-virtual {v9, v0}, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 112
    .local v8, vlp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v8}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v9, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->topRightView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 115
    .local v5, downLoadLp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 116
    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 117
    iget-object v9, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->topRightView:Landroid/widget/ImageView;

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 185
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 186
    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uprui/tv/launcher8/audio/AudioUtil;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/audio/AudioUtil;

    move-result-object v0

    const-string v1, "keyWater"

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/audio/AudioUtil;->play(Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->startFocusAnimation()V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->startUnFocusAnimation()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 266
    const/16 v7, 0x52

    if-ne p1, v7, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    .line 270
    .local v0, app:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030005

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/uprui/tv/launcher8/DialogPopView;

    .line 271
    .local v5, popView:Lcom/uprui/tv/launcher8/DialogPopView;
    invoke-virtual {v5, v0}, Lcom/uprui/tv/launcher8/DialogPopView;->setInfo(Ljava/lang/Object;)V

    .line 273
    new-instance v1, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    .local v1, builder:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    invoke-virtual {v1, v5}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    .line 275
    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;

    .line 276
    .local v2, dialog:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;
    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->show()V

    .line 277
    invoke-virtual {v5, v2}, Lcom/uprui/tv/launcher8/DialogPopView;->setDialog(Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;)V

    .line 279
    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 280
    .local v3, dialogWindow:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 281
    .local v6, width:I
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0018

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 282
    .local v4, height:I
    invoke-virtual {v3, v6, v4}, Landroid/view/Window;->setLayout(II)V

    .line 285
    .end local v0           #app:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    .end local v1           #builder:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .end local v2           #dialog:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;
    .end local v3           #dialogWindow:Landroid/view/Window;
    .end local v4           #height:I
    .end local v5           #popView:Lcom/uprui/tv/launcher8/DialogPopView;
    .end local v6           #width:I
    :cond_0
    const/4 v7, 0x1

    .line 288
    :goto_0
    return v7

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 11
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 236
    invoke-virtual {p1, v10}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 238
    invoke-virtual {p1, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 240
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    .line 243
    .local v0, app:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    invoke-virtual {p0, v8, v10}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->setTopRightIconVisibility(ZI)V

    .line 244
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/rui/launcher/common/utils/RUtilities;->removeNewInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 246
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030005

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/uprui/tv/launcher8/DialogPopView;

    .line 247
    .local v5, popView:Lcom/uprui/tv/launcher8/DialogPopView;
    invoke-virtual {v5, v0}, Lcom/uprui/tv/launcher8/DialogPopView;->setInfo(Ljava/lang/Object;)V

    .line 249
    new-instance v1, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    .local v1, builder:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    invoke-virtual {v1, v5}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    .line 251
    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;

    .line 252
    .local v2, dialog:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;
    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->show()V

    .line 253
    invoke-virtual {v5, v2}, Lcom/uprui/tv/launcher8/DialogPopView;->setDialog(Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;)V

    .line 255
    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 256
    .local v3, dialogWindow:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 257
    .local v6, width:I
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0018

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 258
    .local v4, height:I
    invoke-virtual {v3, v6, v4}, Landroid/view/Window;->setLayout(II)V

    .line 261
    .end local v0           #app:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    .end local v1           #builder:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .end local v2           #dialog:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;
    .end local v3           #dialogWindow:Landroid/view/Window;
    .end local v4           #height:I
    .end local v5           #popView:Lcom/uprui/tv/launcher8/DialogPopView;
    .end local v6           #width:I
    :cond_0
    return v10
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 162
    .local v0, action:I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    .line 170
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 167
    :pswitch_1
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->info:Lcom/uprui/tv/launcher8/allapp/ItemInfo;

    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->setIcon(Lcom/uprui/tv/launcher8/allapp/ItemInfo;)V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIcon(Lcom/uprui/tv/launcher8/allapp/ItemInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->info:Lcom/uprui/tv/launcher8/allapp/ItemInfo;

    .line 126
    instance-of v1, p1, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 127
    check-cast v0, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    .line 128
    .local v0, appInfo:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->appView:Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;

    invoke-virtual {v1, v0}, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->setItem(Lcom/uprui/tv/launcher8/allapp/AppInfo;)V

    .line 131
    .end local v0           #appInfo:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    :cond_0
    invoke-virtual {p0, p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p0, p0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 133
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->appTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public setTopRightIconVisibility(ZI)V
    .locals 2
    .parameter "visible"
    .parameter "type"

    .prologue
    .line 153
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->topRightView:Landroid/widget/ImageView;

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->topRightView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    return-void

    .line 156
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
