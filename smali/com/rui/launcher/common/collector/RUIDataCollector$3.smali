.class Lcom/rui/launcher/common/collector/RUIDataCollector$3;
.super Ljava/lang/Object;
.source "RUIDataCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rui/launcher/common/collector/RUIDataCollector;->collectUserInfoAndApps(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$license:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rui/launcher/common/collector/RUIDataCollector$3;->val$license:Ljava/lang/String;

    iput-object p2, p0, Lcom/rui/launcher/common/collector/RUIDataCollector$3;->val$context:Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 114
    new-instance v0, Lcom/rui/launcher/common/collector/Poster;

    invoke-direct {v0}, Lcom/rui/launcher/common/collector/Poster;-><init>()V

    .line 115
    .local v0, poster:Lcom/rui/launcher/common/collector/Poster;
    const-string v2, "http://ruisystem.duapp.com/client/collectApps.html"

    invoke-virtual {v0, v2}, Lcom/rui/launcher/common/collector/Poster;->setURL(Ljava/lang/String;)V

    .line 116
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "license"

    iget-object v4, p0, Lcom/rui/launcher/common/collector/RUIDataCollector$3;->val$license:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/rui/launcher/common/collector/Poster;->addParam(Lorg/apache/http/NameValuePair;)V

    .line 117
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "collectapps"

    iget-object v4, p0, Lcom/rui/launcher/common/collector/RUIDataCollector$3;->val$context:Landroid/content/Context;

    #calls: Lcom/rui/launcher/common/collector/RUIDataCollector;->buildAppsJsonStr(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v4}, Lcom/rui/launcher/common/collector/RUIDataCollector;->access$2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/rui/launcher/common/collector/Poster;->addParam(Lorg/apache/http/NameValuePair;)V

    .line 118
    invoke-virtual {v0}, Lcom/rui/launcher/common/collector/Poster;->doPost()I

    move-result v1

    .line 119
    .local v1, result:I
    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 122
    iget-object v2, p0, Lcom/rui/launcher/common/collector/RUIDataCollector$3;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/rui/launcher/common/collector/CollectorUtil;->getInstance(Landroid/content/Context;)Lcom/rui/launcher/common/collector/CollectorUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rui/launcher/common/collector/CollectorUtil;->clean()V

    .line 124
    :cond_0
    return-void
.end method
