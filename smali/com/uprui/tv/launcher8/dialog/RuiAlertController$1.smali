.class Lcom/uprui/tv/launcher8/dialog/RuiAlertController$1;
.super Ljava/lang/Object;
.source "RuiAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/dialog/RuiAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$1;->this$0:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$1;->this$0:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    #getter for: Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->access$0(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$1;->this$0:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    #getter for: Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->access$1(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$1;->this$0:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    #getter for: Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->access$1(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 118
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$1;->this$0:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    #getter for: Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->access$6(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$1;->this$0:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    #getter for: Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v3}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->access$7(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 124
    return-void

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$1;->this$0:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    #getter for: Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->access$2(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$1;->this$0:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    #getter for: Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->access$3(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 114
    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$1;->this$0:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    #getter for: Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->access$3(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 115
    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$1;->this$0:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    #getter for: Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->access$4(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$1;->this$0:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    #getter for: Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->access$5(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$1;->this$0:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    #getter for: Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->access$5(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
