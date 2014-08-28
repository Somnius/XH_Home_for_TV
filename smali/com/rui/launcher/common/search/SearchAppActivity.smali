.class public Lcom/rui/launcher/common/search/SearchAppActivity;
.super Landroid/app/Activity;
.source "SearchAppActivity.java"


# static fields
.field private static final BAIDU_URL:Ljava/lang/String; = "http://m.baidu.com/app?action=search&uid=21716255A24A6C96B9EAF51016ED4B3E&from=0&ssid=0&bd_page_type=1&f=app@search@input&pu=at@1,gt@111111_0_0#word="

.field private static final DEBUG_TAG:Ljava/lang/String; = null

.field private static final M91_URL:Ljava/lang/String; = "http://m.91.com/Index/search?ref=uprui&searchName="

.field private static SEARCH_URL_BASE:Ljava/lang/String; = null

.field private static final WANDOU_URL:Ljava/lang/String; = "http://m.wandoujia.com/search?key="


# instance fields
.field private title:Ljava/lang/CharSequence;

.field private url_loading:Landroid/widget/ProgressBar;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/rui/launcher/common/search/SearchAppActivity;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 24
    sput-object v0, Lcom/rui/launcher/common/search/SearchAppActivity;->DEBUG_TAG:Ljava/lang/String;

    .line 29
    const-string v0, "http://m.baidu.com/app?action=search&uid=21716255A24A6C96B9EAF51016ED4B3E&from=0&ssid=0&bd_page_type=1&f=app@search@input&pu=at@1,gt@111111_0_0#word="

    sput-object v0, Lcom/rui/launcher/common/search/SearchAppActivity;->SEARCH_URL_BASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    invoke-static {p0}, Lcom/rui/launcher/common/search/SearchAppActivity;->print(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/rui/launcher/common/search/SearchAppActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/rui/launcher/common/search/SearchAppActivity;->url_loading:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/rui/launcher/common/search/SearchAppActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/search/SearchAppActivity;->startDownload(Ljava/lang/String;)V

    return-void
.end method

.method private static print(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 134
    const/4 v0, 0x1

    .line 135
    .local v0, debug:Z
    if-eqz v0, :cond_0

    .line 136
    sget-object v1, Lcom/rui/launcher/common/search/SearchAppActivity;->DEBUG_TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    return-void
.end method

.method private search(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/rui/launcher/common/search/SearchAppActivity;->url_loading:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/rui/launcher/common/search/SearchAppActivity;->SEARCH_URL_BASE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, search_URL:Ljava/lang/String;
    iget-object v1, p0, Lcom/rui/launcher/common/search/SearchAppActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private startDownload(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 125
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 127
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 128
    .local v0, intent:Landroid/content/Intent;
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v0}, Lcom/rui/launcher/common/search/SearchAppActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/rui/launcher/common/search/SearchAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 40
    sget v2, Lcom/rui/launcher/common/R$layout;->search_act:I

    invoke-virtual {p0, v2}, Lcom/rui/launcher/common/search/SearchAppActivity;->setContentView(I)V

    .line 41
    sget v2, Lcom/rui/launcher/common/R$id;->url_loading:I

    invoke-virtual {p0, v2}, Lcom/rui/launcher/common/search/SearchAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/rui/launcher/common/search/SearchAppActivity;->url_loading:Landroid/widget/ProgressBar;

    .line 43
    invoke-virtual {p0}, Lcom/rui/launcher/common/search/SearchAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 44
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/rui/launcher/common/search/SearchAppActivity;->title:Ljava/lang/CharSequence;

    .line 45
    iget-object v2, p0, Lcom/rui/launcher/common/search/SearchAppActivity;->title:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 46
    const-string v2, "rui"

    iput-object v2, p0, Lcom/rui/launcher/common/search/SearchAppActivity;->title:Ljava/lang/CharSequence;

    .line 50
    :cond_0
    sget v2, Lcom/rui/launcher/common/R$id;->webView:I

    invoke-virtual {p0, v2}, Lcom/rui/launcher/common/search/SearchAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/rui/launcher/common/search/SearchAppActivity;->webview:Landroid/webkit/WebView;

    .line 52
    iget-object v2, p0, Lcom/rui/launcher/common/search/SearchAppActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    move-object v0, p0

    .line 54
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/rui/launcher/common/search/SearchAppActivity;->webview:Landroid/webkit/WebView;

    new-instance v3, Lcom/rui/launcher/common/search/SearchAppActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/rui/launcher/common/search/SearchAppActivity$1;-><init>(Lcom/rui/launcher/common/search/SearchAppActivity;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 63
    iget-object v2, p0, Lcom/rui/launcher/common/search/SearchAppActivity;->webview:Landroid/webkit/WebView;

    new-instance v3, Lcom/rui/launcher/common/search/SearchAppActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/rui/launcher/common/search/SearchAppActivity$2;-><init>(Lcom/rui/launcher/common/search/SearchAppActivity;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 80
    iget-object v2, p0, Lcom/rui/launcher/common/search/SearchAppActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    .line 81
    iget-object v2, p0, Lcom/rui/launcher/common/search/SearchAppActivity;->webview:Landroid/webkit/WebView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    .line 83
    iget-object v2, p0, Lcom/rui/launcher/common/search/SearchAppActivity;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v2}, Lcom/rui/launcher/common/search/SearchAppActivity;->search(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/rui/launcher/common/search/SearchAppActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/rui/launcher/common/R$menu;->search_menus:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 116
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/rui/launcher/common/search/SearchAppActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/rui/launcher/common/search/SearchAppActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 118
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 102
    .local v0, itemId:I
    sget v1, Lcom/rui/launcher/common/R$id;->menu_wandoujia:I

    if-ne v0, v1, :cond_0

    .line 103
    const-string v1, "http://m.wandoujia.com/search?key="

    sput-object v1, Lcom/rui/launcher/common/search/SearchAppActivity;->SEARCH_URL_BASE:Ljava/lang/String;

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/rui/launcher/common/search/SearchAppActivity;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/rui/launcher/common/search/SearchAppActivity;->search(Ljava/lang/CharSequence;)V

    .line 112
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 104
    :cond_0
    sget v1, Lcom/rui/launcher/common/R$id;->menu_91:I

    if-ne v0, v1, :cond_1

    .line 105
    const-string v1, "http://m.91.com/Index/search?ref=uprui&searchName="

    sput-object v1, Lcom/rui/launcher/common/search/SearchAppActivity;->SEARCH_URL_BASE:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_1
    sget v1, Lcom/rui/launcher/common/R$id;->menu_baidu:I

    if-ne v0, v1, :cond_2

    .line 107
    const-string v1, "http://m.baidu.com/app?action=search&uid=21716255A24A6C96B9EAF51016ED4B3E&from=0&ssid=0&bd_page_type=1&f=app@search@input&pu=at@1,gt@111111_0_0#word="

    sput-object v1, Lcom/rui/launcher/common/search/SearchAppActivity;->SEARCH_URL_BASE:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1
.end method
