.class Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem$1;
.super Ljava/lang/Object;
.source "AllappIndicatorItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem$1;->this$0:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItem;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 89
    return-void
.end method
