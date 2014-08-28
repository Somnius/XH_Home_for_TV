.class public Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;
.super Landroid/app/AlertDialog;
.source "RuiAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    }
.end annotation


# instance fields
.field private mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const v0, 0x7f080003

    invoke-direct {p0, p1, v0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 57
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 61
    new-instance v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    .line 62
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 65
    const v0, 0x7f080003

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 66
    invoke-virtual {p0, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->setCancelable(Z)V

    .line 67
    invoke-virtual {p0, p3}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 68
    new-instance v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;)Lcom/uprui/tv/launcher8/dialog/RuiAlertController;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    return-object v0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    invoke-virtual {v0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->installContent()V

    .line 251
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x1

    .line 257
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x1

    .line 264
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 161
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "msg"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 147
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 198
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 199
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 169
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 213
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 177
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 226
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 227
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 185
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    invoke-virtual {v0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 104
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    invoke-virtual {v0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->setIcon(I)V

    .line 237
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    invoke-virtual {v0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 241
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .parameter "forceInverseBackground"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    invoke-virtual {v0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->setInverseBackgroundForced(Z)V

    .line 245
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    invoke-virtual {v0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    invoke-virtual {v0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    invoke-virtual {v0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->setView(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->mAlert:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->setView(Landroid/view/View;IIII)V

    .line 133
    return-void
.end method
