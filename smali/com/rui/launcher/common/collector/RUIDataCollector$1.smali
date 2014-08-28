.class Lcom/rui/launcher/common/collector/RUIDataCollector$1;
.super Ljava/lang/Object;
.source "RUIDataCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rui/launcher/common/collector/RUIDataCollector;->onDownloadCompleted(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$data:Ljava/lang/String;

.field private final synthetic val$license:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rui/launcher/common/collector/RUIDataCollector$1;->val$license:Ljava/lang/String;

    iput-object p2, p0, Lcom/rui/launcher/common/collector/RUIDataCollector$1;->val$data:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lcom/rui/launcher/common/collector/Poster;

    invoke-direct {v0}, Lcom/rui/launcher/common/collector/Poster;-><init>()V

    .line 65
    .local v0, poster:Lcom/rui/launcher/common/collector/Poster;
    const-string v1, "http://ruisystem.duapp.com/client/recapp_usage.html"

    invoke-virtual {v0, v1}, Lcom/rui/launcher/common/collector/Poster;->setURL(Ljava/lang/String;)V

    .line 66
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "license"

    iget-object v3, p0, Lcom/rui/launcher/common/collector/RUIDataCollector$1;->val$license:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/rui/launcher/common/collector/Poster;->addParam(Lorg/apache/http/NameValuePair;)V

    .line 67
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "count"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/rui/launcher/common/collector/Poster;->addParam(Lorg/apache/http/NameValuePair;)V

    .line 68
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "0"

    iget-object v3, p0, Lcom/rui/launcher/common/collector/RUIDataCollector$1;->val$data:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/rui/launcher/common/collector/Poster;->addParam(Lorg/apache/http/NameValuePair;)V

    .line 69
    invoke-virtual {v0}, Lcom/rui/launcher/common/collector/Poster;->doPost()I

    .line 70
    return-void
.end method
