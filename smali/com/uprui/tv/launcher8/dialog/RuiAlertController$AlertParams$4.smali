.class Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$4;
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

.field private final synthetic val$listView:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$4;->this$1:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p2, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$4;->val$listView:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;

    iput-object p3, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$4;->val$dialog:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$4;->this$1:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v0, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$4;->this$1:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v0, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$4;->val$listView:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$4;->this$1:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v0, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$4;->val$dialog:Lcom/uprui/tv/launcher8/dialog/RuiAlertController;

    #getter for: Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController;->access$7(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$4;->val$listView:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;

    invoke-virtual {v2, p3}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 819
    return-void
.end method
