.class public Lcom/uprui/tv/launcher8/dialog/RuiAlertController;
.super Ljava/lang/Object;
.source "RuiAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;,
        Lcom/uprui/tv/launcher8/dialog/RuiAlertController$ButtonHandler;,
        Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;
    }
.end annotation


# static fields
.field private static final MATCH_PARENT:I = -0x1

.field public static m_MyAlertContentViewId:I


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field protected final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field protected mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f030008

    sput v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->m_MyAlertContentViewId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 1
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mViewSpacingSpecified:Z

    .line 86
    iput v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconId:I

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mCheckedItem:I

    .line 108
    new-instance v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$1;

    invoke-direct {v0, p0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$1;-><init>(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 154
    iput-object p1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mContext:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 156
    iput-object p3, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    .line 157
    new-instance v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mHandler:Landroid/os/Handler;

    .line 158
    return-void
.end method

.method static synthetic access$0(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$10(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic access$2(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$4(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$6(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$8(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method static synthetic access$9(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput p1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mCheckedItem:I

    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    :goto_0
    return v2

    .line 165
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 166
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 169
    check-cast v1, Landroid/view/ViewGroup;

    .line 170
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 171
    .local v0, i:I
    :cond_2
    if-gtz v0, :cond_3

    move v2, v3

    .line 179
    goto :goto_0

    .line 172
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 173
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 174
    invoke-static {p0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    .line 498
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 499
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 500
    const/high16 v3, 0x3f00

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 501
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    iget-object v3, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x7f090031

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 503
    .local v0, leftSpacer:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object v3, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x7f090035

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 505
    .local v2, rightSpacer:Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 506
    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZZLandroid/view/View;)V
    .locals 21
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 511
    const v8, 0x7f020061

    .line 512
    .local v8, fullDark:I
    const v15, 0x7f020077

    .line 513
    .local v15, topDark:I
    const v6, 0x7f020064

    .line 514
    .local v6, centerDark:I
    const v3, 0x7f020065

    .line 515
    .local v3, bottomDark:I
    const v7, 0x7f020061

    .line 516
    .local v7, fullBright:I
    const v14, 0x7f020077

    .line 517
    .local v14, topBright:I
    const v5, 0x7f020064

    .line 518
    .local v5, centerBright:I
    const v2, 0x7f020065

    .line 519
    .local v2, bottomBright:I
    const v4, 0x7f020065

    .line 527
    .local v4, bottomMedium:I
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v17, v0

    .line 528
    .local v17, views:[Landroid/view/View;
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v11, v0, [Z

    .line 529
    .local v11, light:[Z
    const/4 v10, 0x0

    .line 530
    .local v10, lastView:Landroid/view/View;
    const/4 v9, 0x0

    .line 532
    .local v9, lastLight:Z
    const/4 v12, 0x0

    .line 533
    .local v12, pos:I
    if-eqz p5, :cond_0

    .line 534
    aput-object p1, v17, v12

    .line 535
    const/16 v18, 0x1

    aput-boolean v18, v11, v12

    .line 536
    add-int/lit8 v12, v12, 0x1

    .line 543
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 p2, 0x0

    .end local p2
    :cond_1
    aput-object p2, v17, v12

    .line 544
    const/16 v18, 0x1

    aput-boolean v18, v11, v12

    .line 545
    add-int/lit8 v12, v12, 0x1

    .line 546
    if-eqz p3, :cond_2

    .line 547
    aput-object p3, v17, v12

    .line 548
    const/16 v18, 0x1

    aput-boolean v18, v11, v12

    .line 549
    add-int/lit8 v12, v12, 0x1

    .line 551
    :cond_2
    if-eqz p4, :cond_3

    .line 552
    aput-object p6, v17, v12

    .line 553
    const/16 v18, 0x1

    aput-boolean v18, v11, v12

    .line 556
    :cond_3
    const/4 v13, 0x0

    .line 557
    .local v13, setView:Z
    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v12, v0, :cond_6

    .line 574
    if-eqz v10, :cond_4

    .line 575
    if-eqz v13, :cond_e

    .line 579
    if-eqz v9, :cond_d

    if-eqz p4, :cond_c

    .end local v4           #bottomMedium:I
    :goto_1
    invoke-virtual {v10, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 602
    .end local v7           #fullBright:I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 604
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mCheckedItem:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mCheckedItem:I

    move/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mCheckedItem:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setSelection(I)V

    .line 609
    :cond_5
    return-void

    .line 558
    .restart local v4       #bottomMedium:I
    .restart local v7       #fullBright:I
    :cond_6
    aget-object v16, v17, v12

    .line 559
    .local v16, v:Landroid/view/View;
    if-nez v16, :cond_7

    .line 557
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 562
    :cond_7
    if-eqz v10, :cond_8

    .line 563
    if-nez v13, :cond_a

    .line 564
    if-eqz v9, :cond_9

    move/from16 v18, v14

    :goto_4
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 568
    :goto_5
    const/4 v13, 0x1

    .line 570
    :cond_8
    move-object/from16 v10, v16

    .line 571
    aget-boolean v9, v11, v12

    goto :goto_3

    :cond_9
    move/from16 v18, v15

    .line 564
    goto :goto_4

    .line 566
    :cond_a
    if-eqz v9, :cond_b

    move/from16 v18, v5

    :goto_6
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_b
    move/from16 v18, v6

    goto :goto_6

    .end local v16           #v:Landroid/view/View;
    :cond_c
    move v4, v2

    .line 579
    goto :goto_1

    :cond_d
    move v4, v3

    goto :goto_1

    .line 581
    :cond_e
    if-eqz v9, :cond_f

    .end local v7           #fullBright:I
    :goto_7
    invoke-virtual {v10, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .restart local v7       #fullBright:I
    :cond_f
    move v7, v8

    goto :goto_7
.end method

.method private setupButtons()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 444
    const/4 v2, 0x1

    .line 445
    .local v2, BIT_BUTTON_POSITIVE:I
    const/4 v0, 0x2

    .line 446
    .local v0, BIT_BUTTON_NEGATIVE:I
    const/4 v1, 0x4

    .line 447
    .local v1, BIT_BUTTON_NEUTRAL:I
    const/4 v3, 0x0

    .line 448
    .local v3, whichButtons:I
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x7f090032

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 449
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 452
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 459
    :goto_0
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x7f090034

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 460
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 463
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 471
    :goto_1
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x7f090033

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 472
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 475
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 486
    :goto_2
    if-ne v3, v2, :cond_4

    .line 487
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->centerButton(Landroid/widget/Button;)V

    .line 494
    :cond_0
    :goto_3
    if-eqz v3, :cond_6

    const/4 v4, 0x1

    :goto_4
    return v4

    .line 454
    :cond_1
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 456
    or-int/2addr v3, v2

    goto :goto_0

    .line 465
    :cond_2
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 468
    or-int/2addr v3, v0

    goto :goto_1

    .line 477
    :cond_3
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 480
    or-int/2addr v3, v1

    goto :goto_2

    .line 488
    :cond_4
    if-ne v3, v0, :cond_5

    .line 489
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 490
    :cond_5
    if-ne v3, v1, :cond_0

    .line 491
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    move v4, v5

    .line 494
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "contentPanel"

    .prologue
    const v5, 0x7f09002c

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 418
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 419
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 422
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mMessageView:Landroid/widget/TextView;

    .line 423
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 441
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 433
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 435
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .parameter "topPanel"

    .prologue
    const v6, 0x7f090027

    const/16 v9, 0x8

    .line 367
    const/4 v1, 0x1

    .line 369
    .local v1, hasTitle:Z
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 371
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 373
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 377
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 414
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #titleTemplate:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 379
    :cond_1
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    .line 381
    .local v0, hasTextTitle:Z
    :goto_1
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f090028

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconView:Landroid/widget/ImageView;

    .line 382
    if-eqz v0, :cond_5

    .line 385
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f090029

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mTitleView:Landroid/widget/TextView;

    .line 387
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconId:I

    if-lez v4, :cond_3

    .line 394
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 379
    .end local v0           #hasTextTitle:Z
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 395
    .restart local v0       #hasTextTitle:Z
    :cond_3
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 396
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 397
    :cond_4
    iget v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconId:I

    if-nez v4, :cond_0

    .line 402
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 403
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 408
    :cond_5
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 409
    .restart local v3       #titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupView()V
    .locals 13

    .prologue
    const v12, 0x7f09002e

    const/16 v11, 0x8

    const/4 v10, -0x1

    .line 328
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x7f09002b

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 329
    .local v2, contentPanel:Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 330
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->setupButtons()Z

    move-result v4

    .line 332
    .local v4, hasButtons:Z
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x7f090026

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 333
    .local v1, topPanel:Landroid/widget/LinearLayout;
    invoke-direct {p0, v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v5

    .line 335
    .local v5, hasTitle:Z
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x7f090030

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 336
    .local v6, buttonPanel:Landroid/view/View;
    if-nez v4, :cond_0

    .line 337
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 340
    :cond_0
    const/4 v3, 0x0

    .line 341
    .local v3, customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 342
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #customPanel:Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 343
    .restart local v3       #customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x7f09002f

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 344
    .local v7, custom:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mView:Landroid/view/View;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_1

    .line 346
    iget v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mViewSpacingLeft:I

    iget v9, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mViewSpacingTop:I

    iget v10, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mViewSpacingRight:I

    iget v11, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mViewSpacingBottom:I

    invoke-virtual {v7, v0, v9, v10, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 358
    .end local v7           #custom:Landroid/widget/FrameLayout;
    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    .line 359
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x7f09002a

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 360
    .local v8, divider:Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .end local v8           #divider:Landroid/view/View;
    :cond_3
    move-object v0, p0

    .line 363
    invoke-direct/range {v0 .. v6}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZZLandroid/view/View;)V

    .line 364
    return-void

    .line 352
    :cond_4
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 307
    packed-switch p1, :pswitch_data_0

    .line 315
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 309
    :pswitch_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 313
    :pswitch_2
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x2

    .line 184
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 186
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->m_MyAlertContentViewId:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 190
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->setupView()V

    .line 191
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"
    .parameter "msg"

    .prologue
    .line 248
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 249
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 252
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :pswitch_0
    iput-object p2, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 256
    iput-object p4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 272
    :goto_0
    return-void

    .line 260
    :pswitch_1
    iput-object p2, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 261
    iput-object p4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 265
    :pswitch_2
    iput-object p2, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 266
    iput-object p4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .parameter "customTitleView"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mCustomTitleView:Landroid/view/View;

    .line 205
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 281
    iput p1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconId:I

    .line 282
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 283
    if-lez p1, :cond_1

    .line 284
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    if-nez p1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 293
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mForceInverseBackground:Z

    .line 300
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 209
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 195
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mView:Landroid/view/View;

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mViewSpacingSpecified:Z

    .line 220
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mView:Landroid/view/View;

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mViewSpacingSpecified:Z

    .line 228
    iput p2, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mViewSpacingLeft:I

    .line 229
    iput p3, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mViewSpacingTop:I

    .line 230
    iput p4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mViewSpacingRight:I

    .line 231
    iput p5, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mViewSpacingBottom:I

    .line 232
    return-void
.end method
