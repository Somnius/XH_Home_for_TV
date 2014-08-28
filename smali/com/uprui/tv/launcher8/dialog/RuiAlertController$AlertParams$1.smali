.class Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "RuiAlertController.java"


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
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

.field private final synthetic val$listView:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$1;->this$1:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p6, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$1;->val$listView:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;

    .line 744
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 747
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 748
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$1;->this$1:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v2, v2, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v2, :cond_0

    .line 749
    iget-object v2, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$1;->this$1:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v2, v2, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v0, v2, p1

    .line 750
    .local v0, isItemChecked:Z
    if-eqz v0, :cond_0

    .line 751
    iget-object v2, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$1;->val$listView:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;->setItemChecked(IZ)V

    .line 754
    .end local v0           #isItemChecked:Z
    :cond_0
    return-object v1
.end method
