.class Lcom/rui/launcher/common/search/SearchAppActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "SearchAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rui/launcher/common/search/SearchAppActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rui/launcher/common/search/SearchAppActivity;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/rui/launcher/common/search/SearchAppActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rui/launcher/common/search/SearchAppActivity$1;->this$0:Lcom/rui/launcher/common/search/SearchAppActivity;

    iput-object p2, p0, Lcom/rui/launcher/common/search/SearchAppActivity$1;->val$activity:Landroid/app/Activity;

    .line 54
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "view"
    .parameter "progress"

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/rui/launcher/common/search/SearchAppActivity;->print(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/rui/launcher/common/search/SearchAppActivity;->access$0(Ljava/lang/String;)V

    .line 57
    const/16 v0, 0x50

    if-le p2, v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/rui/launcher/common/search/SearchAppActivity$1;->this$0:Lcom/rui/launcher/common/search/SearchAppActivity;

    #getter for: Lcom/rui/launcher/common/search/SearchAppActivity;->url_loading:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/rui/launcher/common/search/SearchAppActivity;->access$1(Lcom/rui/launcher/common/search/SearchAppActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/rui/launcher/common/search/SearchAppActivity$1;->val$activity:Landroid/app/Activity;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 61
    return-void
.end method
