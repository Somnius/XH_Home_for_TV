.class public Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;
.super Landroid/widget/LinearLayout;
.source "AllappIndicator.java"


# static fields
.field private static final LAST_ID:I = 0x9fbf1

.field private static titles:[Ljava/lang/String;

.field private static topbar_image_array:[I


# instance fields
.field private final CELL_COUNT:I

.field private appItemHeight:I

.field private appItemWidth:I

.field private appList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private categoryScreenNumsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private mSpace:I

.field private paddingLeft:I

.field private paddingRight:I

.field private screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->topbar_image_array:[I

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->titles:[Ljava/lang/String;

    .line 42
    return-void

    .line 24
    :array_0
    .array-data 0x4
        0xbt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->appList:Ljava/util/ArrayList;

    .line 33
    sget-object v0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->topbar_image_array:[I

    array-length v0, v0

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->CELL_COUNT:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->categoryScreenNumsMap:Ljava/util/HashMap;

    .line 56
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->setDescendantFocusability(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->appList:Ljava/util/ArrayList;

    .line 33
    sget-object v0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->topbar_image_array:[I

    array-length v0, v0

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->CELL_COUNT:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->categoryScreenNumsMap:Ljava/util/HashMap;

    .line 51
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->setDescendantFocusability(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->appList:Ljava/util/ArrayList;

    .line 33
    sget-object v0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->topbar_image_array:[I

    array-length v0, v0

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->CELL_COUNT:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->categoryScreenNumsMap:Ljava/util/HashMap;

    .line 46
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->setDescendantFocusability(I)V

    .line 47
    return-void
.end method

.method private getIndicatorIndex(I)I
    .locals 3
    .parameter "childIndex"

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;

    .line 195
    .local v0, indicatorItem:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;

    .line 196
    .local v1, indicatorItemInfo:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;
    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->getTopCategoryScreenIndex()I

    move-result v2

    return v2
.end method

.method private getScreenCount(Ljava/util/HashMap;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 170
    .local v0, count:I
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 173
    return v0

    .line 170
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 171
    .local v1, value:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method


# virtual methods
.method public addIndicatorView(ILcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;)V
    .locals 2
    .parameter "i"
    .parameter "info"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->createLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 109
    .local v1, ll:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, p2}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->createIndicatorItem(Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;)Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;

    move-result-object v0

    .line 110
    .local v0, indicatorItem:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;
    invoke-virtual {p0, v0, v1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    return-void
.end method

.method public addItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->removeAllViews()V

    .line 115
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->appList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 118
    invoke-virtual {p0, v3}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, child:Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 121
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 122
    return-void

    .line 116
    .end local v0           #child:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->appList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;

    invoke-virtual {p0, v1, v2}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->addIndicatorView(ILcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public createIndicatorItem(Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;)Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;
    .locals 4
    .parameter "info"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->context:Landroid/content/Context;

    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;

    .line 101
    .local v0, indicatorItem:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;
    invoke-virtual {p1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->setTitle(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->getImageResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->setImage(I)V

    .line 103
    invoke-virtual {v0, p1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->setTag(Ljava/lang/Object;)V

    .line 104
    return-object v0
.end method

.method public createLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 5
    .parameter "position"

    .prologue
    .line 82
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->appItemWidth:I

    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->appItemHeight:I

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->mSpace:I

    div-int/lit8 v0, v3, 0x2

    .line 85
    .local v0, left:I
    iget v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->mSpace:I

    div-int/lit8 v2, v3, 0x2

    .line 87
    .local v2, right:I
    if-nez p1, :cond_1

    .line 88
    iget v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->mSpace:I

    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->paddingLeft:I

    add-int v0, v3, v4

    .line 93
    :cond_0
    :goto_0
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 94
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 95
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 96
    return-object v1

    .line 89
    :cond_1
    iget v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->CELL_COUNT:I

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_0

    .line 90
    iget v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->mSpace:I

    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->paddingRight:I

    add-int v2, v3, v4

    goto :goto_0
.end method

.method public indicate(F)V
    .locals 0
    .parameter "percent"

    .prologue
    .line 166
    return-void
.end method

.method public indicate(I)V
    .locals 0
    .parameter "currentIndicator"

    .prologue
    .line 191
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->titles:[Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->context:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 63
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->screenWidth:I

    .line 65
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getIndicatorItemWidth()I

    move-result v3

    iput v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->appItemWidth:I

    .line 66
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getIndicatorItemHeight()I

    move-result v3

    iput v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->appItemHeight:I

    .line 68
    iget v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->screenWidth:I

    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->appItemWidth:I

    iget v5, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->CELL_COUNT:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->paddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->paddingRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->CELL_COUNT:I

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v3, v4

    iput v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->mSpace:I

    .line 69
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " mspace="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->mSpace:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    iget v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->mSpace:I

    if-gtz v3, :cond_0

    .line 71
    const/4 v3, 0x0

    iput v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->mSpace:I

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->appList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 75
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->topbar_image_array:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->titles:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 79
    :cond_1
    return-void

    .line 76
    :cond_2
    new-instance v2, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;

    sget-object v3, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->titles:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->topbar_image_array:[I

    aget v4, v4, v1

    invoke-direct {v2, v3, v4, v1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;-><init>(Ljava/lang/String;II)V

    .line 77
    .local v2, itemInfo:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;
    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->appList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 133
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 134
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 135
    return-void
.end method

.method public setAppsWorkspace(Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;)V
    .locals 3
    .parameter "appsWorkspace"

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->getChildCount()I

    move-result v0

    .line 139
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 143
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;->setCurrentScreen(I)V

    .line 146
    :cond_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;

    invoke-virtual {v2, p1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->setAppsWorkspace(Lcom/uprui/tv/launcher8/allapp/AppsWorkspace;)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setCategoryScreenNumsMap(Ljava/util/HashMap;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->categoryScreenNumsMap:Ljava/util/HashMap;

    .line 150
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->getChildCount()I

    move-result v0

    .line 151
    .local v0, count:I
    const/4 v4, 0x0

    .line 152
    .local v4, sum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 158
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;

    .line 154
    .local v2, indicatorItem:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;
    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;

    .line 155
    .local v3, info:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;
    invoke-virtual {v3, v4}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->setTopCategoryScreenIndex(I)V

    .line 156
    sget-object v5, Lcom/uprui/tv/launcher8/data/TVCategoryManager;->TOP_CATOGORYS:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLastIndicatorNextFocus()V
    .locals 4

    .prologue
    const v3, 0x9fbf1

    .line 125
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 126
    .local v0, lastIndex:I
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;

    .line 127
    .local v1, lastItem:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;
    invoke-virtual {v1, v3}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->setId(I)V

    .line 128
    invoke-virtual {v1, v3}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->setNextFocusRightId(I)V

    .line 129
    return-void
.end method
