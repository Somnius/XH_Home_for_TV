.class Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$3;
.super Ljava/lang/Object;
.source "RuiAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->createListView(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

.field private final synthetic val$dialog:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$3;->this$1:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p2, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$3;->val$dialog:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 805
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$3;->this$1:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v0, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$3;->val$dialog:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    #getter for: Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->access$7(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 806
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$3;->this$1:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$3;->val$dialog:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    #getter for: Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->access$7(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 809
    :cond_0
    return-void
.end method
