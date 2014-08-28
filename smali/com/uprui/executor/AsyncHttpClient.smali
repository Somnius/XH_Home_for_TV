.class public Lcom/uprui/executor/AsyncHttpClient;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/executor/AsyncHttpClient$InflatingEntity;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field private static final DEFAULT_MAX_RETRIES:I = 0x2

.field private static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final VERSION:Ljava/lang/String; = "1.4.3"

.field private static maxConnections:I

.field private static socketTimeout:I


# instance fields
.field private final clientHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final httpContext:Lorg/apache/http/protocol/HttpContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0xa

    sput v0, Lcom/uprui/executor/AsyncHttpClient;->maxConnections:I

    .line 90
    const/16 v0, 0x2710

    sput v0, Lcom/uprui/executor/AsyncHttpClient;->socketTimeout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 103
    .local v1, httpParams:Lorg/apache/http/params/BasicHttpParams;
    sget v3, Lcom/uprui/executor/AsyncHttpClient;->socketTimeout:I

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 104
    new-instance v3, Lorg/apache/http/conn/params/ConnPerRouteBean;

    sget v4, Lcom/uprui/executor/AsyncHttpClient;->maxConnections:I

    invoke-direct {v3, v4}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 105
    const/16 v3, 0xa

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 107
    sget v3, Lcom/uprui/executor/AsyncHttpClient;->socketTimeout:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 108
    sget v3, Lcom/uprui/executor/AsyncHttpClient;->socketTimeout:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 109
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 110
    const/16 v3, 0x2000

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 112
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 113
    const-string v3, "android-async-http/%s (http://loopj.com/android-async-http)"

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "1.4.3"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 115
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 116
    .local v2, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 117
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 118
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 120
    .local v0, cm:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v3, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v4, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v3, v4}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v3, p0, Lcom/uprui/executor/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 121
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Lcom/uprui/executor/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 151
    iget-object v3, p0, Lcom/uprui/executor/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/uprui/executor/RetryHandler;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/uprui/executor/RetryHandler;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 152
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/uprui/executor/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    .line 153
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "header"
    .parameter "value"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/uprui/executor/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/uprui/executor/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/uprui/executor/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "user"
    .parameter "pass"

    .prologue
    .line 226
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    .line 227
    .local v0, scope:Lorg/apache/http/auth/AuthScope;
    invoke-virtual {p0, p1, p2, v0}, Lcom/uprui/executor/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V

    .line 228
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V
    .locals 2
    .parameter "user"
    .parameter "pass"
    .parameter "scope"

    .prologue
    .line 239
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .local v0, credentials:Lorg/apache/http/auth/UsernamePasswordCredentials;
    iget-object v1, p0, Lcom/uprui/executor/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 241
    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 2
    .parameter "cookieStore"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/uprui/executor/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method public setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 4
    .parameter "sslSocketFactory"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/uprui/executor/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 208
    return-void
.end method

.method public setTimeout(I)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/uprui/executor/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 196
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 197
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 198
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 199
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "userAgent"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/uprui/executor/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 188
    return-void
.end method
