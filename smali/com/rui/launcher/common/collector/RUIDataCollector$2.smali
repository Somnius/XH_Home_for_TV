.class Lcom/rui/launcher/common/collector/RUIDataCollector$2;
.super Ljava/lang/Object;
.source "RUIDataCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rui/launcher/common/collector/RUIDataCollector;->uploadAppsClassifyByLocal(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$deviceID:Ljava/lang/String;

.field private final synthetic val$license:Ljava/lang/String;

.field private final synthetic val$simID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rui/launcher/common/collector/RUIDataCollector$2;->val$license:Ljava/lang/String;

    iput-object p2, p0, Lcom/rui/launcher/common/collector/RUIDataCollector$2;->val$deviceID:Ljava/lang/String;

    iput-object p3, p0, Lcom/rui/launcher/common/collector/RUIDataCollector$2;->val$simID:Ljava/lang/String;

    iput-object p4, p0, Lcom/rui/launcher/common/collector/RUIDataCollector$2;->val$context:Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 84
    new-instance v0, Lcom/rui/launcher/common/collector/Poster;

    invoke-direct {v0}, Lcom/rui/launcher/common/collector/Poster;-><init>()V

    .line 85
    .local v0, poster:Lcom/rui/launcher/common/collector/Poster;
    const-string v2, "http://ruisystem.duapp.com/classify/classify.html"

    invoke-virtual {v0, v2}, Lcom/rui/launcher/common/collector/Poster;->setURL(Ljava/lang/String;)V

    .line 86
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "license"

    iget-object v4, p0, Lcom/rui/launcher/common/collector/RUIDataCollector$2;->val$license:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/rui/launcher/common/collector/Poster;->addParam(Lorg/apache/http/NameValuePair;)V

    .line 87
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "deviceID"

    iget-object v4, p0, Lcom/rui/launcher/common/collector/RUIDataCollector$2;->val$deviceID:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/rui/launcher/common/collector/Poster;->addParam(Lorg/apache/http/NameValuePair;)V

    .line 88
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "simID"

    iget-object v4, p0, Lcom/rui/launcher/common/collector/RUIDataCollector$2;->val$simID:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/rui/launcher/common/collector/Poster;->addParam(Lorg/apache/http/NameValuePair;)V

    .line 89
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "iscollection"

    const-string v4, "true"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/rui/launcher/common/collector/Poster;->addParam(Lorg/apache/http/NameValuePair;)V

    .line 90
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "devModel"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/rui/launcher/common/collector/Poster;->addParam(Lorg/apache/http/NameValuePair;)V

    .line 91
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "apps"

    .line 92
    iget-object v4, p0, Lcom/rui/launcher/common/collector/RUIDataCollector$2;->val$context:Landroid/content/Context;

    #calls: Lcom/rui/launcher/common/collector/RUIDataCollector;->buildClassifyJsonStr(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v4}, Lcom/rui/launcher/common/collector/RUIDataCollector;->access$0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, v2}, Lcom/rui/launcher/common/collector/Poster;->addParam(Lorg/apache/http/NameValuePair;)V

    .line 93
    invoke-virtual {v0}, Lcom/rui/launcher/common/collector/Poster;->doPost()I

    move-result v1

    .line 94
    .local v1, result:I
    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 96
    iget-object v2, p0, Lcom/rui/launcher/common/collector/RUIDataCollector$2;->val$context:Landroid/content/Context;

    #calls: Lcom/rui/launcher/common/collector/RUIDataCollector;->uploadComplete(Landroid/content/Context;)V
    invoke-static {v2}, Lcom/rui/launcher/common/collector/RUIDataCollector;->access$1(Landroid/content/Context;)V

    .line 98
    :cond_0
    return-void
.end method
