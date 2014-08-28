.class public Lcom/uprui/tv/launcher8/recommend/CustomerHttpClient;
.super Ljava/lang/Object;
.source "CustomerHttpClient.java"


# static fields
.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static customerHttpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static declared-synchronized getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 8

    .prologue
    .line 27
    const-class v4, Lcom/uprui/tv/launcher8/recommend/CustomerHttpClient;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/uprui/tv/launcher8/recommend/CustomerHttpClient;->customerHttpClient:Lorg/apache/http/client/HttpClient;

    if-nez v3, :cond_0

    .line 28
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 30
    .local v1, params:Lorg/apache/http/params/HttpParams;
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 32
    const-string v3, "UTF-8"

    .line 31
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 33
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 36
    const-wide/16 v5, 0x1f40

    invoke-static {v1, v5, v6}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 38
    const/16 v3, 0x1f40

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 40
    const/16 v3, 0x3e80

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 43
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 44
    .local v2, schReg:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    .line 45
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 44
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 46
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    .line 47
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 46
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 50
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 52
    .local v0, conMgr:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v3, Lcom/uprui/tv/launcher8/recommend/CustomerHttpClient;->customerHttpClient:Lorg/apache/http/client/HttpClient;

    .line 54
    :cond_0
    sget-object v3, Lcom/uprui/tv/launcher8/recommend/CustomerHttpClient;->customerHttpClient:Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    .line 27
    .end local v0           #conMgr:Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2           #schReg:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
