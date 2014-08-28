.class Lcom/uprui/executor/RetryHandler;
.super Ljava/lang/Object;
.source "RetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# static fields
.field private static exceptionBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static exceptionWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final maxRetries:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/uprui/executor/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/uprui/executor/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    .line 49
    sget-object v0, Lcom/uprui/executor/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Lorg/apache/http/NoHttpResponseException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/uprui/executor/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/uprui/executor/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/uprui/executor/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Lcom/uprui/executor/RuiWifiException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/uprui/executor/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Lcom/uprui/executor/RuiNetWorkException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/uprui/executor/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    const-class v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/uprui/executor/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "maxRetries"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/uprui/executor/RetryHandler;->maxRetries:I

    .line 69
    return-void
.end method


# virtual methods
.method protected isInList(Ljava/util/HashSet;Ljava/lang/Throwable;)Z
    .locals 2
    .parameter
    .parameter "error"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, list:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Class<*>;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 107
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Class<*>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 108
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 4
    .parameter "exception"
    .parameter "executionCount"
    .parameter "context"

    .prologue
    .line 72
    const/4 v1, 0x1

    .line 74
    .local v1, retry:Z
    const-string v3, "http.request_sent"

    invoke-interface {p3, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 75
    .local v0, b:Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 77
    .local v2, sent:Z
    :goto_0
    iget v3, p0, Lcom/uprui/executor/RetryHandler;->maxRetries:I

    if-le p2, v3, :cond_2

    .line 79
    const/4 v1, 0x0

    .line 102
    :cond_0
    :goto_1
    return v1

    .line 75
    .end local v2           #sent:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 80
    .restart local v2       #sent:Z
    :cond_2
    sget-object v3, Lcom/uprui/executor/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    invoke-virtual {p0, v3, p1}, Lcom/uprui/executor/RetryHandler;->isInList(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    const/4 v1, 0x0

    .line 83
    goto :goto_1

    :cond_3
    sget-object v3, Lcom/uprui/executor/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    invoke-virtual {p0, v3, p1}, Lcom/uprui/executor/RetryHandler;->isInList(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 85
    const/4 v1, 0x1

    .line 86
    goto :goto_1

    :cond_4
    if-nez v2, :cond_0

    .line 88
    const/4 v1, 0x1

    goto :goto_1
.end method
