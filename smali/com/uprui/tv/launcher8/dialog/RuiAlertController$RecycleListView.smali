.class public Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "RuiAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/dialog/RuiAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 615
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 616
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 619
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 620
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 623
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 624
    return-void
.end method


# virtual methods
.method protected recycleOnMeasure()Z
    .locals 1

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/dialog/RuiAlertController$RecycleListView;->mRecycleOnMeasure:Z

    return v0
.end method
