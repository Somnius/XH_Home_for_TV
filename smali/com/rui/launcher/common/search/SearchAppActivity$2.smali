.class Lcom/rui/launcher/common/search/SearchAppActivity$2;
.super Landroid/webkit/WebViewClient;
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
    iput-object p1, p0, Lcom/rui/launcher/common/search/SearchAppActivity$2;->this$0:Lcom/rui/launcher/common/search/SearchAppActivity;

    iput-object p2, p0, Lcom/rui/launcher/common/search/SearchAppActivity$2;->val$activity:Landroid/app/Activity;

    .line 63
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/rui/launcher/common/search/SearchAppActivity$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Oh no! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    const/4 v2, 0x0

    .line 76
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 78
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 65
    #calls: Lcom/rui/launcher/common/search/SearchAppActivity;->print(Ljava/lang/String;)V
    invoke-static {p2}, Lcom/rui/launcher/common/search/SearchAppActivity;->access$0(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/rui/launcher/common/search/SearchAppActivity$2;->this$0:Lcom/rui/launcher/common/search/SearchAppActivity;

    #calls: Lcom/rui/launcher/common/search/SearchAppActivity;->startDownload(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/rui/launcher/common/search/SearchAppActivity;->access$2(Lcom/rui/launcher/common/search/SearchAppActivity;Ljava/lang/String;)V

    .line 71
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 69
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
