.class public Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;
.super Landroid/support/v4/app/Fragment;
.source "Win8HomeFragment.java"

# interfaces
.implements Lcom/uprui/tv/launcher8/home/HomeLoadTask$HomeCallback;
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "Win8HomeFragment"

.field public static final datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/home/HomeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cellLayout:Lcom/uprui/tv/launcher8/pageview/TvCellLayout;

.field private focusChild:Landroid/view/View;

.field private pageView:Lcom/uprui/tv/launcher8/pageview/TvPageView;

.field private task:Lcom/uprui/tv/launcher8/home/HomeLoadTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->datas:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->bindItem()V

    return-void
.end method

.method static synthetic access$1(Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;)Lcom/uprui/tv/launcher8/pageview/TvPageView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->pageView:Lcom/uprui/tv/launcher8/pageview/TvPageView;

    return-object v0
.end method

.method private bindItem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-nez v6, :cond_1

    .line 189
    :cond_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 173
    .local v3, inflater:Landroid/view/LayoutInflater;
    sget-object v6, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->datas:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 174
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 175
    sget-object v6, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->datas:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uprui/tv/launcher8/home/HomeInfo;

    .line 176
    .local v4, info:Lcom/uprui/tv/launcher8/home/HomeInfo;
    iget v6, v4, Lcom/uprui/tv/launcher8/home/HomeInfo;->category:I

    const/16 v7, 0x277d

    if-ne v6, v7, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030004

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/uprui/tv/launcher8/clock/ClockWidget;

    .line 178
    .local v1, clock:Lcom/uprui/tv/launcher8/clock/ClockWidget;
    invoke-virtual {v1, v4}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->setInfo(Lcom/uprui/tv/launcher8/home/HomeInfo;)V

    .line 179
    iget-object v6, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->pageView:Lcom/uprui/tv/launcher8/pageview/TvPageView;

    invoke-virtual {v6, v1, v4}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->addInPage(Landroid/view/View;Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;)V

    .line 174
    .end local v1           #clock:Lcom/uprui/tv/launcher8/clock/ClockWidget;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_2
    const v6, 0x7f030013

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/home/HomeCellChild;

    .line 182
    .local v0, child:Lcom/uprui/tv/launcher8/home/HomeCellChild;
    const v6, 0x7f020043

    invoke-virtual {v0, v6}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->setBackgroundResource(I)V

    .line 183
    invoke-virtual {v0, v4}, Lcom/uprui/tv/launcher8/home/HomeCellChild;->setInfo(Lcom/uprui/tv/launcher8/home/HomeInfo;)V

    .line 184
    iget-object v6, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->pageView:Lcom/uprui/tv/launcher8/pageview/TvPageView;

    invoke-virtual {v6, v0, v4}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->addInPage(Landroid/view/View;Lcom/uprui/tv/launcher8/pageview/TvPageView$CellInfo;)V

    goto :goto_1
.end method


# virtual methods
.method public callback(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/home/HomeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/home/HomeInfo;>;"
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment$1;-><init>(Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v8, 0x7f090041

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/pageview/TvPageView;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->pageView:Lcom/uprui/tv/launcher8/pageview/TvPageView;

    .line 62
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->pageView:Lcom/uprui/tv/launcher8/pageview/TvPageView;

    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v8

    iget v8, v8, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homePagePaddingLeft:I

    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v9

    iget v9, v9, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homePagePaddingTop:I

    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v10

    iget v10, v10, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homePagePaddingRight:I

    .line 63
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v11

    iget v11, v11, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homePagePaddingBottom:I

    .line 62
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->resetPadding(IIII)V

    .line 64
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 66
    .local v7, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f030011

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->cellLayout:Lcom/uprui/tv/launcher8/pageview/TvCellLayout;

    .line 67
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v0

    iget v1, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellWidth:I

    .line 68
    .local v1, homeCellWidth:I
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v0

    iget v2, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellHeight:I

    .line 69
    .local v2, homeCellHeight:I
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v0

    iget v3, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeWidthSpace:I

    .line 70
    .local v3, homeWidthSpace:I
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v0

    iget v4, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeHeightSpace:I

    .line 71
    .local v4, homeHeightSpace:I
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v0

    iget v5, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellRows:I

    .line 72
    .local v5, homeCellRows:I
    invoke-static {}, Lcom/uprui/tv/launcher8/config/TvCellConfig;->getInstance()Lcom/uprui/tv/launcher8/config/TvCellConfig;

    move-result-object v0

    iget v6, v0, Lcom/uprui/tv/launcher8/config/TvCellConfig;->homeCellCols:I

    .line 73
    .local v6, homeCellCols:I
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->cellLayout:Lcom/uprui/tv/launcher8/pageview/TvCellLayout;

    invoke-virtual/range {v0 .. v6}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->resetCellSize(IIIIII)V

    .line 74
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->cellLayout:Lcom/uprui/tv/launcher8/pageview/TvCellLayout;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->setClipChildren(Z)V

    .line 75
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->pageView:Lcom/uprui/tv/launcher8/pageview/TvPageView;

    iget-object v8, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->cellLayout:Lcom/uprui/tv/launcher8/pageview/TvCellLayout;

    invoke-virtual {v0, v8}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->addPage(Landroid/view/View;)V

    .line 81
    sget-object v0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->startLoadHome()V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->bindItem()V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 240
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 247
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 234
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 40
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1
    .parameter "transit"
    .parameter "enter"
    .parameter "nextAnim"

    .prologue
    .line 224
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 225
    .local v0, anim:Landroid/view/animation/Animation;
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 53
    const v0, 0x7f030012

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 129
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 120
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->task:Lcom/uprui/tv/launcher8/home/HomeLoadTask;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->task:Lcom/uprui/tv/launcher8/home/HomeLoadTask;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/home/HomeLoadTask;->cancel()V

    .line 123
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 135
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .parameter "hidden"

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 197
    if-eqz p1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->restoreFocusChild()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 107
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 100
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 94
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 113
    return-void
.end method

.method public restoreFocusChild()V
    .locals 3

    .prologue
    .line 210
    iget-object v1, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->focusChild:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->focusChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v0

    .line 212
    .local v0, focusInTouch:Z
    iget-object v1, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->focusChild:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 213
    iget-object v1, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->focusChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 214
    iget-object v1, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->focusChild:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 217
    .end local v0           #focusInTouch:Z
    :cond_0
    return-void
.end method

.method public saveFocusChild()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->cellLayout:Lcom/uprui/tv/launcher8/pageview/TvCellLayout;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->focusChild:Landroid/view/View;

    .line 207
    return-void
.end method

.method public startLoadHome()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->task:Lcom/uprui/tv/launcher8/home/HomeLoadTask;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->task:Lcom/uprui/tv/launcher8/home/HomeLoadTask;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/home/HomeLoadTask;->cancel()V

    .line 143
    :cond_0
    new-instance v0, Lcom/uprui/tv/launcher8/home/HomeLoadTask;

    invoke-direct {v0, p0}, Lcom/uprui/tv/launcher8/home/HomeLoadTask;-><init>(Lcom/uprui/tv/launcher8/home/HomeLoadTask$HomeCallback;)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->task:Lcom/uprui/tv/launcher8/home/HomeLoadTask;

    .line 144
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->task:Lcom/uprui/tv/launcher8/home/HomeLoadTask;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/home/HomeLoadTask;->obtainHome(Landroid/content/Context;)V

    .line 145
    return-void
.end method
