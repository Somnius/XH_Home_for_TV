.class Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "RuiAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->createListView(Lcom/uprui/tv/launcher8/dialog/RuiAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$1:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

.field private final synthetic val$listView:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;)V
    .locals 2
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$2;->this$1:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iput-object p5, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$2;->val$listView:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;

    .line 758
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 763
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 764
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p1, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$2;->mLabelIndex:I

    .line 765
    iget-object v1, p1, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$2;->mIsCheckedIndex:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    .line 770
    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 771
    .local v0, text:Landroid/widget/CheckedTextView;
    iget v2, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    iget-object v2, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$2;->val$listView:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget v4, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$2;->mIsCheckedIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;->setItemChecked(IZ)V

    .line 773
    return-void

    .line 772
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 777
    iget-object v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams$2;->this$1:Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;

    iget-object v0, v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
