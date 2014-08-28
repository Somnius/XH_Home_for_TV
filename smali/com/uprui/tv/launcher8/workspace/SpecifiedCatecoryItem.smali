.class public Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;
.super Landroid/support/v4/app/Fragment;
.source "SpecifiedCatecoryItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem$CategoryAcceptAble;
    }
.end annotation


# instance fields
.field private accept:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem$CategoryAcceptAble;

.field private cellLayoutIndex:I

.field private inflater:Landroid/view/LayoutInflater;

.field private isSwitchFlag:Z

.field private iv:Landroid/widget/ImageView;

.field protected specifiedWorkspace:Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;

.field private tv:Landroid/widget/TextView;

.field private tvCellChildIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private requestFource()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 195
    iget-boolean v3, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->isSwitchFlag:Z

    if-eqz v3, :cond_1

    .line 196
    iput-boolean v5, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->isSwitchFlag:Z

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget v3, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->cellLayoutIndex:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->tvCellChildIndex:I

    if-ltz v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->specifiedWorkspace:Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;

    iget v4, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->cellLayoutIndex:I

    invoke-virtual {v3, v4}, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;

    .line 205
    .local v2, layout:Lcom/uprui/tv/launcher8/pageview/TvCellLayout;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildCount()I

    move-result v1

    .line 210
    .local v1, count:I
    iget v3, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->tvCellChildIndex:I

    if-lt v3, v1, :cond_2

    .line 211
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->tvCellChildIndex:I

    .line 214
    :cond_2
    iget v3, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->tvCellChildIndex:I

    invoke-virtual {v2, v3}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;

    .line 215
    .local v0, child:Lcom/uprui/tv/launcher8/pageview/TvCellChild;
    if-eqz v0, :cond_0

    .line 216
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->setFocusableInTouchMode(Z)V

    .line 217
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->requestFocus()Z

    .line 218
    invoke-virtual {v0, v5}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->setFocusableInTouchMode(Z)V

    .line 220
    iput v5, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->cellLayoutIndex:I

    .line 221
    iput v5, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->tvCellChildIndex:I

    goto :goto_0
.end method

.method private resetIndiacate()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->iv:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->accept:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem$CategoryAcceptAble;

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->accept:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem$CategoryAcceptAble;

    instance-of v0, v0, Lcom/uprui/tv/launcher8/workspace/LiveVideoCategoryAcceptAble;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->iv:Landroid/widget/ImageView;

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->accept:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem$CategoryAcceptAble;

    instance-of v0, v0, Lcom/uprui/tv/launcher8/workspace/DemandCategoryAcceptAble;

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->iv:Landroid/widget/ImageView;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->accept:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem$CategoryAcceptAble;

    instance-of v0, v0, Lcom/uprui/tv/launcher8/workspace/GameCategoryAcceptAble;

    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->iv:Landroid/widget/ImageView;

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->accept:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem$CategoryAcceptAble;

    instance-of v0, v0, Lcom/uprui/tv/launcher8/workspace/MusicCategoryAcceptAble;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->iv:Landroid/widget/ImageView;

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private saveStartCount(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    .line 116
    iget v2, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->startCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->startCount:I

    .line 117
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 118
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "startCount"

    iget v3, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->startCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    sget-object v2, Lcom/uprui/tv/launcher8/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "packageName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 121
    return-void
.end method


# virtual methods
.method public bindItems(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, acceptedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 182
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 189
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->onItemObtain(Ljava/util/ArrayList;)V

    .line 191
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->requestFource()V

    .line 192
    return-void

    .line 183
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 184
    .local v2, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    iget-object v4, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->accept:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem$CategoryAcceptAble;

    iget v5, v2, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->categoryCode:I

    invoke-interface {v4, v5}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem$CategoryAcceptAble;->accept(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public computeFourceIndex()V
    .locals 6

    .prologue
    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, isBreak:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->specifiedWorkspace:Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;

    invoke-virtual {v5}, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->getChildCount()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 246
    :cond_0
    return-void

    .line 229
    :cond_1
    iget-object v5, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->specifiedWorkspace:Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;

    invoke-virtual {v5, v0}, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;

    .line 231
    .local v3, layout:Lcom/uprui/tv/launcher8/pageview/TvCellLayout;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-virtual {v3}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildCount()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 241
    :goto_2
    if-nez v1, :cond_0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {v3, v2}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/uprui/tv/launcher8/pageview/TvCellChild;

    .line 233
    .local v4, view:Lcom/uprui/tv/launcher8/pageview/TvCellChild;
    invoke-virtual {v4}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 234
    iput v0, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->cellLayoutIndex:I

    .line 235
    iput v2, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->tvCellChildIndex:I

    .line 236
    const/4 v1, 0x1

    .line 237
    goto :goto_2

    .line 231
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->inflater:Landroid/view/LayoutInflater;

    .line 57
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f09003d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;

    iput-object v5, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->specifiedWorkspace:Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;

    .line 58
    iget-object v5, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->specifiedWorkspace:Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;

    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v6

    iget v6, v6, Lcom/uprui/tv/launcher8/config/TvCellConfig;->pagePaddingLeft:I

    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v7

    iget v7, v7, Lcom/uprui/tv/launcher8/config/TvCellConfig;->pagePaddingTop:I

    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v8

    iget v8, v8, Lcom/uprui/tv/launcher8/config/TvCellConfig;->pagePaddingRight:I

    .line 59
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v9

    iget v9, v9, Lcom/uprui/tv/launcher8/config/TvCellConfig;->pagePaddingBottom:I

    .line 58
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->resetPadding(IIII)V

    .line 61
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f09003a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 62
    .local v2, top:Landroid/widget/RelativeLayout;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    .local v3, topLp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v5

    iget v5, v5, Lcom/uprui/tv/launcher8/config/TvCellConfig;->topCategoryHeight:I

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 64
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f09003c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->tv:Landroid/widget/TextView;

    .line 67
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 68
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v5, v6

    float-to-int v4, v5

    .line 71
    .local v4, tvHeight:I
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f09003b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->iv:Landroid/widget/ImageView;

    .line 72
    iget-object v5, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->iv:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v5

    iget v5, v5, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cateImageWidth:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 74
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v5

    iget v5, v5, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cateImageHeight:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 75
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v5

    iget v5, v5, Lcom/uprui/tv/launcher8/config/TvCellConfig;->topCategoryHeight:I

    sub-int/2addr v5, v4

    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v6

    iget v6, v6, Lcom/uprui/tv/launcher8/config/TvCellConfig;->cateImageHeight:I

    sub-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 76
    iget-object v5, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->iv:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 104
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 106
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 107
    instance-of v1, p1, Lcom/uprui/tv/launcher8/pageview/TvCellChild;

    if-eqz v1, :cond_0

    .line 108
    check-cast p1, Lcom/uprui/tv/launcher8/pageview/TvCellChild;

    .end local p1
    invoke-virtual {p1}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->getInfo()Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    move-result-object v0

    .line 109
    .local v0, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    invoke-static {}, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->getInstance()Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->setActivity(Landroid/app/Activity;)V

    .line 110
    invoke-static {}, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->getInstance()Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->dealAppsClick(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V

    .line 111
    invoke-direct {p0, v0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->saveStartCount(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V

    .line 113
    .end local v0           #info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 50
    const v0, 0x7f03000f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 84
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/ActLauncher;

    .line 85
    .local v0, launcher:Lcom/uprui/tv/launcher8/ActLauncher;
    invoke-virtual {v0, p0}, Lcom/uprui/tv/launcher8/ActLauncher;->unBindItemCallback(Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;)V

    .line 86
    return-void
.end method

.method public onItemObtain(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    iget-object v4, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->specifiedWorkspace:Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;

    invoke-virtual {v4}, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->removeAllViews()V

    .line 91
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 92
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 100
    return-void

    .line 93
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 94
    .local v2, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    iget-object v4, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030010

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/pageview/TvCellChild;

    .line 95
    .local v0, child:Lcom/uprui/tv/launcher8/pageview/TvCellChild;
    invoke-virtual {v0, v2}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->setItem(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V

    .line 96
    invoke-virtual {v0, p0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {v0, p0}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 98
    iget-object v4, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->specifiedWorkspace:Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;

    invoke-virtual {v4, v0}, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->addInPage(Landroid/view/View;)V

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 11
    .parameter "view"

    .prologue
    const/4 v10, 0x1

    .line 125
    invoke-virtual {p1, v10}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 127
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 129
    check-cast p1, Lcom/uprui/tv/launcher8/pageview/TvCellChild;

    .end local p1
    invoke-virtual {p1}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->getInfo()Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    move-result-object v4

    .line 131
    .local v4, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030005

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/uprui/tv/launcher8/DialogPopView;

    .line 132
    .local v5, popView:Lcom/uprui/tv/launcher8/DialogPopView;
    invoke-virtual {v5, v4}, Lcom/uprui/tv/launcher8/DialogPopView;->setInfo(Ljava/lang/Object;)V

    .line 134
    new-instance v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, builder:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    invoke-virtual {v0, v5}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    .line 136
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    check-cast v1, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;

    .line 137
    .local v1, dialog:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;
    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->show()V

    .line 138
    invoke-virtual {v5, v1}, Lcom/uprui/tv/launcher8/DialogPopView;->setDialog(Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;)V

    .line 140
    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 141
    .local v2, dialogWindow:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 142
    .local v6, width:I
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0018

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .line 143
    .local v3, height:I
    invoke-virtual {v2, v6, v3}, Landroid/view/Window;->setLayout(II)V

    .line 146
    .end local v0           #builder:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .end local v1           #dialog:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;
    .end local v2           #dialogWindow:Landroid/view/Window;
    .end local v3           #height:I
    .end local v4           #info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    .end local v5           #popView:Lcom/uprui/tv/launcher8/DialogPopView;
    .end local v6           #width:I
    :cond_0
    return v10
.end method

.method public setCategoryAcceptAble(Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem$CategoryAcceptAble;)V
    .locals 0
    .parameter "accept"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->accept:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem$CategoryAcceptAble;

    .line 151
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->resetIndiacate()V

    .line 152
    return-void
.end method

.method public setSwitchTag(Z)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->isSwitchFlag:Z

    .line 251
    return-void
.end method
