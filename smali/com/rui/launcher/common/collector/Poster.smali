.class public Lcom/rui/launcher/common/collector/Poster;
.super Ljava/lang/Object;
.source "Poster.java"


# static fields
.field public static final STATUS_INVALID_URL:I = 0x2

.field public static final STATUS_PARAMS_INVALID:I = -0x1

.field public static final STATUS_PROTOCOL_ERROR:I = 0x5

.field public static final STATUS_RESPONSE_FAILED:I = 0x0

.field public static final STATUS_RESPONSE_OK:I = 0x1

.field public static final STATUS_TIME_OUT:I = 0x4

.field public static final STATUS_UNSUPPORTED_ENCODING:I = 0x3

.field private static final connTimeOut:I = 0x7530

.field private static final soTimeOut:I = 0x7530


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rui/launcher/common/collector/Poster;->list:Ljava/util/List;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/rui/launcher/common/collector/Poster;->url:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public addParam(Lorg/apache/http/NameValuePair;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/rui/launcher/common/collector/Poster;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public addParams(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v0, p0, Lcom/rui/launcher/common/collector/Poster;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    return-void
.end method

.method public doPost()I
    .locals 11

    .prologue
    const/16 v8, 0x7530

    const/4 v7, 0x5

    .line 55
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 56
    .local v3, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v3, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 57
    invoke-static {v3, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 59
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 60
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    iget-object v8, p0, Lcom/rui/launcher/common/collector/Poster;->url:Ljava/lang/String;

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 62
    .local v4, post:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v9, p0, Lcom/rui/launcher/common/collector/Poster;->list:Ljava/util/List;

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 63
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 65
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-result v6

    .line 66
    .local v6, statusCode:I
    const/16 v8, 0xc8

    if-eq v6, v8, :cond_0

    .line 88
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 67
    const/4 v7, 0x0

    .line 91
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #statusCode:I
    :goto_0
    return v7

    .line 69
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #statusCode:I
    :cond_0
    :try_start_1
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, content:Ljava/lang/String;
    const-string v8, "Poster"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "post \u6210\u529f!"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 88
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 91
    .end local v1           #content:Ljava/lang/String;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #statusCode:I
    :goto_1
    const/4 v7, 0x1

    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    .line 88
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 73
    const/4 v7, 0x3

    goto :goto_0

    .line 74
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v7

    .line 88
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .line 75
    :catch_2
    move-exception v2

    .line 88
    .local v2, e:Ljava/net/SocketTimeoutException;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 76
    const/4 v7, 0x4

    goto :goto_0

    .line 77
    .end local v2           #e:Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v2

    .line 88
    .local v2, e:Lorg/apache/http/ParseException;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 79
    .end local v2           #e:Lorg/apache/http/ParseException;
    :catch_4
    move-exception v2

    .line 88
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 81
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_5
    move-exception v2

    .line 88
    .local v2, e:Ljava/io/IOException;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 83
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 88
    .local v2, e:Ljava/lang/Exception;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 87
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 88
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 89
    throw v7
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/rui/launcher/common/collector/Poster;->url:Ljava/lang/String;

    .line 44
    return-void
.end method
