.class public Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
.super Landroid/app/AlertDialog$Builder;
.source "RuiAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 275
    new-instance v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    .line 276
    return-void
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 782
    new-instance v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, v1, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;-><init>(Landroid/content/Context;)V

    .line 783
    .local v0, dialog:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;
    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    #getter for: Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->access$0(Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;)Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->apply(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)V

    .line 784
    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->setCancelable(Z)V

    .line 785
    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, v1, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 786
    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, v1, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    .line 787
    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, v1, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 789
    :cond_0
    return-object v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 1
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 514
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p2, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 515
    return-object p0
.end method

.method public bridge synthetic setCancelable(Z)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setCancelable(Z)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCancelable(Z)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mCancelable:Z

    .line 455
    return-object p0
.end method

.method public bridge synthetic setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 1
    .parameter "cursor"
    .parameter "listener"
    .parameter "labelColumn"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 532
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p3, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p2, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 534
    return-object p0
.end method

.method public bridge synthetic setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 309
    return-object p0
.end method

.method public bridge synthetic setIcon(I)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setIcon(I)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(I)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 1
    .parameter "iconId"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mIconId:I

    .line 339
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 1
    .parameter "icon"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 349
    return-object p0
.end method

.method public bridge synthetic setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setInverseBackgroundForced(Z)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 1
    .parameter "useInverseBackground"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mForceInverseBackground:Z

    .line 766
    return-object p0
.end method

.method public bridge synthetic setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "listener"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, v1, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 487
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p2, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 488
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 1
    .parameter "items"
    .parameter "listener"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 498
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p2, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 499
    return-object p0
.end method

.method public bridge synthetic setMessage(I)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setMessage(I)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(I)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, v1, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 319
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 1
    .parameter "message"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 329
    return-object p0
.end method

.method public bridge synthetic setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, v1, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 554
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p3, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 555
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p2, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mCheckedItems:[Z

    .line 556
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mIsMultiChoice:Z

    .line 557
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "isCheckedColumn"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 600
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p4, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 601
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p2, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 602
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p3, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 603
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mIsMultiChoice:Z

    .line 604
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 576
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p3, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 577
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p2, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mCheckedItems:[Z

    .line 578
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mIsMultiChoice:Z

    .line 579
    return-object p0
.end method

.method public bridge synthetic setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, v1, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 396
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p2, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 397
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 412
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p2, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 413
    return-object p0
.end method

.method public bridge synthetic setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, v1, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 428
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p2, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 429
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 444
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p2, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 445
    return-object p0
.end method

.method public bridge synthetic setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 1
    .parameter "onCancelListener"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 467
    return-object p0
.end method

.method public bridge synthetic setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 708
    .local p1, listener:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 709
    return-object p0
.end method

.method public bridge synthetic setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 1
    .parameter "onKeyListener"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 477
    return-object p0
.end method

.method public bridge synthetic setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, v1, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 364
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p2, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 365
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 380
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p2, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 381
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 1
    .parameter "enabled"

    .prologue
    .line 773
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 774
    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, v1, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 623
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p3, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 624
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput p2, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mCheckedItem:I

    .line 625
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mIsSingleChoice:Z

    .line 626
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "checkedItem"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 647
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p4, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 648
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput p2, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mCheckedItem:I

    .line 649
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p3, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 650
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mIsSingleChoice:Z

    .line 651
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 2
    .parameter "adapter"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 692
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p3, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 693
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput p2, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mCheckedItem:I

    .line 694
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mIsSingleChoice:Z

    .line 695
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 670
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p3, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 671
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput p2, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mCheckedItem:I

    .line 672
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mIsSingleChoice:Z

    .line 673
    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setTitle(I)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 2
    .parameter "titleId"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v1, v1, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 285
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 1
    .parameter "title"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 295
    return-object p0
.end method

.method public bridge synthetic setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setView(Landroid/view/View;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 2
    .parameter "view"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mView:Landroid/view/View;

    .line 722
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 723
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    .locals 2
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mView:Landroid/view/View;

    .line 748
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 749
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput p2, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mViewSpacingLeft:I

    .line 750
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput p3, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mViewSpacingTop:I

    .line 751
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput p4, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mViewSpacingRight:I

    .line 752
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->P:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput p5, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mViewSpacingBottom:I

    .line 753
    return-object p0
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 797
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 798
    return-object v0
.end method
