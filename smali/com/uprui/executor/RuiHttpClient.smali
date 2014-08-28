.class public Lcom/uprui/executor/RuiHttpClient;
.super Ljava/lang/Object;
.source "RuiHttpClient.java"


# static fields
.field protected static EXECUTOR:Lcom/uprui/executor/RuiHttpThreadPoolExecutor;

.field protected static app:Landroid/app/Application;

.field protected static handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelGroupTask(Ljava/lang/Object;)V
    .locals 1
    .parameter "cancelGroupKey"

    .prologue
    .line 119
    sget-object v0, Lcom/uprui/executor/RuiHttpClient;->EXECUTOR:Lcom/uprui/executor/RuiHttpThreadPoolExecutor;

    invoke-virtual {v0, p0}, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->cancelHttpGroup(Ljava/lang/Object;)I

    .line 120
    return-void
.end method

.method public static cancelTask(I)V
    .locals 1
    .parameter "createID"

    .prologue
    .line 123
    sget-object v0, Lcom/uprui/executor/RuiHttpClient;->EXECUTOR:Lcom/uprui/executor/RuiHttpThreadPoolExecutor;

    invoke-virtual {v0, p0}, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->cancelHttp(I)I

    .line 124
    return-void
.end method

.method private executorHttp(Ljava/lang/Object;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/uprui/executor/RuiHttpListener;)Lcom/uprui/executor/RuiHttpTask;
    .locals 9
    .parameter "cancelGroupKey"
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/io/OutputStream;",
            ">(",
            "Ljava/lang/Object;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lcom/uprui/executor/RuiHttpListener",
            "<TT;>;)",
            "Lcom/uprui/executor/RuiHttpTask",
            "<TT;TO;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p3, listener:Lcom/uprui/executor/RuiHttpListener;,"Lcom/uprui/executor/RuiHttpListener<TT;>;"
    new-instance v7, Lcom/uprui/executor/AsyncHttpClient;

    invoke-direct {v7}, Lcom/uprui/executor/AsyncHttpClient;-><init>()V

    .line 90
    .local v7, client:Lcom/uprui/executor/AsyncHttpClient;
    const/4 v5, 0x0

    .line 91
    .local v5, stream:Lcom/uprui/executor/RuiHttpStreamType;,"Lcom/uprui/executor/RuiHttpStreamType<TT;TO;>;"
    instance-of v1, p3, Lcom/uprui/executor/RuiHttpBinaryCallback;

    if-eqz v1, :cond_0

    .line 92
    new-instance v5, Lcom/uprui/executor/RuiHttpBinaryStream;

    .end local v5           #stream:Lcom/uprui/executor/RuiHttpStreamType;,"Lcom/uprui/executor/RuiHttpStreamType<TT;TO;>;"
    invoke-direct {v5}, Lcom/uprui/executor/RuiHttpBinaryStream;-><init>()V

    .line 110
    .restart local v5       #stream:Lcom/uprui/executor/RuiHttpStreamType;,"Lcom/uprui/executor/RuiHttpStreamType<TT;TO;>;"
    :goto_0
    new-instance v0, Lcom/uprui/executor/RuiHttpTask;

    sget-object v1, Lcom/uprui/executor/RuiHttpClient;->EXECUTOR:Lcom/uprui/executor/RuiHttpThreadPoolExecutor;

    invoke-virtual {v7}, Lcom/uprui/executor/AsyncHttpClient;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    invoke-virtual {v7}, Lcom/uprui/executor/AsyncHttpClient;->getHttpContext()Lorg/apache/http/protocol/HttpContext;

    move-result-object v3

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/uprui/executor/RuiHttpTask;-><init>(Lcom/uprui/executor/RuiHttpThreadPoolExecutor;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/uprui/executor/RuiHttpStreamType;Lcom/uprui/executor/RuiHttpListener;)V

    .line 111
    .local v0, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    invoke-virtual {v0, p1}, Lcom/uprui/executor/RuiHttpTask;->setCancelGroup(Ljava/lang/Object;)V

    .line 112
    sget-object v1, Lcom/uprui/executor/RuiHttpClient;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/uprui/executor/RuiHttpTask;->setCallbackHandler(Landroid/os/Handler;)V

    .line 114
    sget-object v1, Lcom/uprui/executor/RuiHttpClient;->EXECUTOR:Lcom/uprui/executor/RuiHttpThreadPoolExecutor;

    invoke-virtual {v1, v0}, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->executeHttp(Lcom/uprui/executor/RuiHttpTask;)V

    .line 115
    return-object v0

    .line 93
    .end local v0           #task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<TT;TO;>;"
    :cond_0
    instance-of v1, p3, Lcom/uprui/executor/RuiHttpBitmapCallback;

    if-eqz v1, :cond_1

    .line 94
    new-instance v5, Lcom/uprui/executor/RuiHttpBinaryStream;

    .end local v5           #stream:Lcom/uprui/executor/RuiHttpStreamType;,"Lcom/uprui/executor/RuiHttpStreamType<TT;TO;>;"
    invoke-direct {v5}, Lcom/uprui/executor/RuiHttpBinaryStream;-><init>()V

    .line 95
    .restart local v5       #stream:Lcom/uprui/executor/RuiHttpStreamType;,"Lcom/uprui/executor/RuiHttpStreamType<TT;TO;>;"
    goto :goto_0

    :cond_1
    instance-of v1, p3, Lcom/uprui/executor/RuiHttpFileCallback;

    if-eqz v1, :cond_2

    move-object v8, p3

    .line 103
    check-cast v8, Lcom/uprui/executor/RuiHttpFileCallback;

    .line 104
    .local v8, fileCallback:Lcom/uprui/executor/RuiHttpFileCallback;
    new-instance v5, Lcom/uprui/executor/RuiHttpFileStream;

    .end local v5           #stream:Lcom/uprui/executor/RuiHttpStreamType;,"Lcom/uprui/executor/RuiHttpStreamType<TT;TO;>;"
    invoke-virtual {v8}, Lcom/uprui/executor/RuiHttpFileCallback;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v8}, Lcom/uprui/executor/RuiHttpFileCallback;->getTmpFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v5, v1, v2}, Lcom/uprui/executor/RuiHttpFileStream;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 105
    .restart local v5       #stream:Lcom/uprui/executor/RuiHttpStreamType;,"Lcom/uprui/executor/RuiHttpStreamType<TT;TO;>;"
    goto :goto_0

    .end local v8           #fileCallback:Lcom/uprui/executor/RuiHttpFileCallback;
    :cond_2
    instance-of v1, p3, Lcom/uprui/executor/RuiHttpStringCallback;

    if-eqz v1, :cond_3

    .line 106
    new-instance v5, Lcom/uprui/executor/RuiHttpStringStream;

    .end local v5           #stream:Lcom/uprui/executor/RuiHttpStreamType;,"Lcom/uprui/executor/RuiHttpStreamType<TT;TO;>;"
    invoke-direct {v5}, Lcom/uprui/executor/RuiHttpStringStream;-><init>()V

    .line 107
    .restart local v5       #stream:Lcom/uprui/executor/RuiHttpStreamType;,"Lcom/uprui/executor/RuiHttpStreamType<TT;TO;>;"
    goto :goto_0

    .line 108
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not support this type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFailDescriptionString(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 5
    .parameter "e"

    .prologue
    .line 192
    const-string v0, ""

    .line 193
    .local v0, description:Ljava/lang/String;
    instance-of v3, p0, Lcom/uprui/executor/RuiWifiException;

    if-eqz v3, :cond_0

    .line 195
    sget v3, Lcom/example/ruithreadpoolexecutor/R$string;->no_wifi:I

    invoke-static {v3}, Lcom/uprui/executor/RuiHttpClient;->getRescourseString(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    .line 196
    :cond_0
    instance-of v3, p0, Lcom/uprui/executor/RuiNetWorkException;

    if-eqz v3, :cond_1

    .line 198
    sget v3, Lcom/example/ruithreadpoolexecutor/R$string;->no_network:I

    invoke-static {v3}, Lcom/uprui/executor/RuiHttpClient;->getRescourseString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    goto :goto_0

    :cond_1
    instance-of v3, p0, Lcom/uprui/executor/RuiResponseErrorStatusCodeException;

    if-eqz v3, :cond_2

    move-object v1, p0

    .line 201
    check-cast v1, Lcom/uprui/executor/RuiResponseErrorStatusCodeException;

    .line 202
    .local v1, ex:Lcom/uprui/executor/RuiResponseErrorStatusCodeException;
    invoke-virtual {v1}, Lcom/uprui/executor/RuiResponseErrorStatusCodeException;->getStatusCode()I

    move-result v2

    .line 203
    .local v2, statuscode:I
    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/example/ruithreadpoolexecutor/R$string;->response_statuscode_error:I

    invoke-static {v4}, Lcom/uprui/executor/RuiHttpClient;->getRescourseString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    goto :goto_0

    .end local v1           #ex:Lcom/uprui/executor/RuiResponseErrorStatusCodeException;
    .end local v2           #statuscode:I
    :cond_2
    instance-of v3, p0, Lorg/apache/http/NoHttpResponseException;

    if-eqz v3, :cond_3

    .line 206
    sget v3, Lcom/example/ruithreadpoolexecutor/R$string;->no_http_response:I

    invoke-static {v3}, Lcom/uprui/executor/RuiHttpClient;->getRescourseString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    goto :goto_0

    :cond_3
    instance-of v3, p0, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_4

    .line 209
    sget v3, Lcom/example/ruithreadpoolexecutor/R$string;->unknow_host:I

    invoke-static {v3}, Lcom/uprui/executor/RuiHttpClient;->getRescourseString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    goto :goto_0

    :cond_4
    instance-of v3, p0, Ljava/net/SocketException;

    if-eqz v3, :cond_5

    .line 212
    sget v3, Lcom/example/ruithreadpoolexecutor/R$string;->socket_error:I

    invoke-static {v3}, Lcom/uprui/executor/RuiHttpClient;->getRescourseString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    goto :goto_0

    :cond_5
    instance-of v3, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v3, :cond_6

    .line 215
    sget v3, Lcom/example/ruithreadpoolexecutor/R$string;->connect_timeout:I

    invoke-static {v3}, Lcom/uprui/executor/RuiHttpClient;->getRescourseString(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    goto :goto_0

    :cond_6
    instance-of v3, p0, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_7

    .line 218
    sget v3, Lcom/example/ruithreadpoolexecutor/R$string;->socket_timeout:I

    invoke-static {v3}, Lcom/uprui/executor/RuiHttpClient;->getRescourseString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    goto :goto_0

    :cond_7
    instance-of v3, p0, Ljava/io/InterruptedIOException;

    if-eqz v3, :cond_8

    .line 221
    sget v3, Lcom/example/ruithreadpoolexecutor/R$string;->interrupted_ioexception:I

    invoke-static {v3}, Lcom/uprui/executor/RuiHttpClient;->getRescourseString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    goto :goto_0

    :cond_8
    instance-of v3, p0, Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_9

    .line 224
    sget v3, Lcom/example/ruithreadpoolexecutor/R$string;->ssl_exception:I

    invoke-static {v3}, Lcom/uprui/executor/RuiHttpClient;->getRescourseString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    goto/16 :goto_0

    :cond_9
    instance-of v3, p0, Ljava/io/IOException;

    if-eqz v3, :cond_a

    .line 227
    sget v3, Lcom/example/ruithreadpoolexecutor/R$string;->socket_error:I

    invoke-static {v3}, Lcom/uprui/executor/RuiHttpClient;->getRescourseString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    goto/16 :goto_0

    .line 230
    :cond_a
    sget v3, Lcom/example/ruithreadpoolexecutor/R$string;->unknow_error:I

    invoke-static {v3}, Lcom/uprui/executor/RuiHttpClient;->getRescourseString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getMobileState()Landroid/net/NetworkInfo$State;
    .locals 3

    .prologue
    .line 155
    sget-object v1, Lcom/uprui/executor/RuiHttpClient;->app:Landroid/app/Application;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 156
    .local v0, conMan:Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    return-object v1
.end method

.method public static getNetWorkState()Landroid/net/NetworkInfo$State;
    .locals 5

    .prologue
    .line 161
    sget-object v3, Lcom/uprui/executor/RuiHttpClient;->app:Landroid/app/Application;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 162
    .local v0, conMan:Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 163
    .local v2, wifiState:Landroid/net/NetworkInfo$State;
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 175
    .end local v2           #wifiState:Landroid/net/NetworkInfo$State;
    :goto_0
    return-object v2

    .line 166
    .restart local v2       #wifiState:Landroid/net/NetworkInfo$State;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 167
    .local v1, mobileState:Landroid/net/NetworkInfo$State;
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_1

    move-object v2, v1

    .line 168
    goto :goto_0

    .line 171
    :cond_1
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_3

    .line 172
    :cond_2
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    goto :goto_0

    .line 175
    :cond_3
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    goto :goto_0
.end method

.method public static getRescourseString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 237
    sget-object v0, Lcom/uprui/executor/RuiHttpClient;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/uprui/executor/RuiHttpClient;->EXECUTOR:Lcom/uprui/executor/RuiHttpThreadPoolExecutor;

    return-object v0
.end method

.method public static getUrlWithQueryString(Ljava/lang/String;Lcom/uprui/executor/RequestParams;)Ljava/lang/String;
    .locals 3
    .parameter "url"
    .parameter "params"

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/uprui/executor/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, paramString:Ljava/lang/String;
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 146
    .end local v0           #paramString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 142
    .restart local v0       #paramString:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getWifiState()Landroid/net/NetworkInfo$State;
    .locals 3

    .prologue
    .line 150
    sget-object v1, Lcom/uprui/executor/RuiHttpClient;->app:Landroid/app/Application;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 151
    .local v0, conMan:Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    return-object v1
.end method

.method public static init(Landroid/app/Application;)V
    .locals 8
    .parameter "app"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/uprui/utils/RuiFileUtil;->init(Landroid/app/Application;)V

    .line 42
    sput-object p0, Lcom/uprui/executor/RuiHttpClient;->app:Landroid/app/Application;

    .line 43
    new-instance v0, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;

    const/4 v1, 0x3

    const/4 v2, 0x5

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/uprui/executor/RuiThreadFactory;

    invoke-direct {v7}, Lcom/uprui/executor/RuiThreadFactory;-><init>()V

    invoke-direct/range {v0 .. v7}, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/uprui/executor/RuiHttpClient;->EXECUTOR:Lcom/uprui/executor/RuiHttpThreadPoolExecutor;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/uprui/executor/RuiHttpClient;->handler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method public static isNetWorkConnection()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 179
    sget-object v5, Lcom/uprui/executor/RuiHttpClient;->app:Landroid/app/Application;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 180
    .local v0, conMan:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 181
    .local v2, wifi:Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v5, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v3

    .line 184
    :cond_1
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 185
    .local v1, mobile:Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v5, :cond_0

    move v3, v4

    .line 188
    goto :goto_0
.end method

.method public static paramsToEntity(Lcom/uprui/executor/RequestParams;)Lorg/apache/http/HttpEntity;
    .locals 1
    .parameter "params"

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/uprui/executor/RequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 133
    :cond_0
    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 52
    sget-object v0, Lcom/uprui/executor/RuiHttpClient;->EXECUTOR:Lcom/uprui/executor/RuiHttpThreadPoolExecutor;

    invoke-virtual {v0, p1}, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public executeDelay(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "runnable"
    .parameter "delay"

    .prologue
    .line 56
    sget-object v0, Lcom/uprui/executor/RuiHttpClient;->EXECUTOR:Lcom/uprui/executor/RuiHttpThreadPoolExecutor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uprui/executor/RuiHttpThreadPoolExecutor;->executeDelay(Ljava/lang/Runnable;J)V

    .line 57
    return-void
.end method

.method public getHttp(Ljava/lang/Object;Ljava/lang/String;Lcom/uprui/executor/RequestParams;Lcom/uprui/executor/RuiHttpListener;)Lcom/uprui/executor/RuiHttpTask;
    .locals 2
    .parameter "cancelGroupKey"
    .parameter "url"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/io/OutputStream;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/uprui/executor/RequestParams;",
            "Lcom/uprui/executor/RuiHttpListener",
            "<TT;>;)",
            "Lcom/uprui/executor/RuiHttpTask",
            "<TT;TO;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p4, listener:Lcom/uprui/executor/RuiHttpListener;,"Lcom/uprui/executor/RuiHttpListener<TT;>;"
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p2, p3}, Lcom/uprui/executor/RuiHttpClient;->getUrlWithQueryString(Ljava/lang/String;Lcom/uprui/executor/RequestParams;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {p0, p1, v0, p4}, Lcom/uprui/executor/RuiHttpClient;->executorHttp(Ljava/lang/Object;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/uprui/executor/RuiHttpListener;)Lcom/uprui/executor/RuiHttpTask;

    move-result-object v1

    return-object v1
.end method

.method public getHttp(Ljava/lang/String;Lcom/uprui/executor/RequestParams;Lcom/uprui/executor/RuiHttpListener;)Lcom/uprui/executor/RuiHttpTask;
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/io/OutputStream;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/uprui/executor/RequestParams;",
            "Lcom/uprui/executor/RuiHttpListener",
            "<TT;>;)",
            "Lcom/uprui/executor/RuiHttpTask",
            "<TT;TO;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p3, listener:Lcom/uprui/executor/RuiHttpListener;,"Lcom/uprui/executor/RuiHttpListener<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/uprui/executor/RuiHttpClient;->getHttp(Ljava/lang/Object;Ljava/lang/String;Lcom/uprui/executor/RequestParams;Lcom/uprui/executor/RuiHttpListener;)Lcom/uprui/executor/RuiHttpTask;

    move-result-object v0

    return-object v0
.end method

.method public getHttp(Ljava/lang/String;Lcom/uprui/executor/RuiHttpListener;)Lcom/uprui/executor/RuiHttpTask;
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/io/OutputStream;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/uprui/executor/RuiHttpListener",
            "<TT;>;)",
            "Lcom/uprui/executor/RuiHttpTask",
            "<TT;TO;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, listener:Lcom/uprui/executor/RuiHttpListener;,"Lcom/uprui/executor/RuiHttpListener<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/uprui/executor/RuiHttpClient;->getHttp(Ljava/lang/String;Lcom/uprui/executor/RequestParams;Lcom/uprui/executor/RuiHttpListener;)Lcom/uprui/executor/RuiHttpTask;

    move-result-object v0

    return-object v0
.end method

.method public postHttp(Ljava/lang/Object;Ljava/lang/String;Lcom/uprui/executor/RequestParams;Lcom/uprui/executor/RuiHttpListener;)Lcom/uprui/executor/RuiHttpTask;
    .locals 2
    .parameter "cancelKey"
    .parameter "url"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/io/OutputStream;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/uprui/executor/RequestParams;",
            "Lcom/uprui/executor/RuiHttpListener",
            "<TT;>;)",
            "Lcom/uprui/executor/RuiHttpTask",
            "<TT;TO;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p4, listener:Lcom/uprui/executor/RuiHttpListener;,"Lcom/uprui/executor/RuiHttpListener<TT;>;"
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-static {p3}, Lcom/uprui/executor/RuiHttpClient;->paramsToEntity(Lcom/uprui/executor/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 70
    invoke-direct {p0, p1, v0, p4}, Lcom/uprui/executor/RuiHttpClient;->executorHttp(Ljava/lang/Object;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/uprui/executor/RuiHttpListener;)Lcom/uprui/executor/RuiHttpTask;

    move-result-object v1

    return-object v1
.end method

.method public postHttp(Ljava/lang/String;Lcom/uprui/executor/RequestParams;Lcom/uprui/executor/RuiHttpListener;)Lcom/uprui/executor/RuiHttpTask;
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/io/OutputStream;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/uprui/executor/RequestParams;",
            "Lcom/uprui/executor/RuiHttpListener",
            "<TT;>;)",
            "Lcom/uprui/executor/RuiHttpTask",
            "<TT;TO;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p3, listener:Lcom/uprui/executor/RuiHttpListener;,"Lcom/uprui/executor/RuiHttpListener<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/uprui/executor/RuiHttpClient;->postHttp(Ljava/lang/Object;Ljava/lang/String;Lcom/uprui/executor/RequestParams;Lcom/uprui/executor/RuiHttpListener;)Lcom/uprui/executor/RuiHttpTask;

    move-result-object v0

    return-object v0
.end method

.method public postHttp(Ljava/lang/String;Lcom/uprui/executor/RuiHttpListener;)Lcom/uprui/executor/RuiHttpTask;
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/io/OutputStream;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/uprui/executor/RuiHttpListener",
            "<TT;>;)",
            "Lcom/uprui/executor/RuiHttpTask",
            "<TT;TO;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, listener:Lcom/uprui/executor/RuiHttpListener;,"Lcom/uprui/executor/RuiHttpListener<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/uprui/executor/RuiHttpClient;->postHttp(Ljava/lang/String;Lcom/uprui/executor/RequestParams;Lcom/uprui/executor/RuiHttpListener;)Lcom/uprui/executor/RuiHttpTask;

    move-result-object v0

    return-object v0
.end method
