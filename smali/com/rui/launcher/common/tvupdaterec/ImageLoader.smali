.class Lcom/rui/launcher/common/tvupdaterec/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x7530

.field private static final SOCKET_TIMEOUT:I = 0xea60

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/rui/launcher/common/tvupdaterec/ImageLoader;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFaildCount:I

.field private mTaskCount:I

.field private mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mFaildCount:I

    .line 45
    iput-object p1, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mContext:Landroid/content/Context;

    .line 46
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mTaskList:Ljava/util/List;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/rui/launcher/common/tvupdaterec/ImageLoader;Ljava/lang/String;)[B
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->getImageData(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getImageData(Ljava/lang/String;)[B
    .locals 9
    .parameter "urlString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    .line 150
    .local v2, in:Ljava/io/InputStream;
    sget-object v5, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v6, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u63a8\u8350\u4e0b\u8f7d\u56fe\u6807\u5730\u5740:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v5, ".png"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ".jpg"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    :cond_0
    :try_start_0
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://bcs.duapp.com/recicons/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 157
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 158
    const/16 v5, 0x7530

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 159
    const v5, 0xea60

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 160
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 161
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 163
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 164
    if-nez v2, :cond_2

    .line 165
    new-instance v5, Ljava/io/IOException;

    const-string v6, "stream is null"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v4           #url:Ljava/net/URL;
    :catchall_0
    move-exception v5

    .line 175
    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 178
    :cond_1
    throw v5

    .line 169
    .restart local v4       #url:Ljava/net/URL;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 170
    .local v3, size:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    .line 171
    invoke-virtual {p0, v2}, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->convertStreamToBytes(Ljava/io/InputStream;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 175
    if-eqz v1, :cond_3

    .line 176
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 179
    :cond_3
    :goto_0
    return-object v5

    .line 175
    :cond_4
    if-eqz v1, :cond_5

    .line 176
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 179
    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/rui/launcher/common/tvupdaterec/ImageLoader;
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    sget-object v0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->sInstance:Lcom/rui/launcher/common/tvupdaterec/ImageLoader;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;

    invoke-direct {v0, p0}, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->sInstance:Lcom/rui/launcher/common/tvupdaterec/ImageLoader;

    .line 54
    :cond_0
    sget-object v0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->sInstance:Lcom/rui/launcher/common/tvupdaterec/ImageLoader;

    return-object v0
.end method


# virtual methods
.method public addTask(Lcom/rui/launcher/common/tvupdaterec/RJsonData;II)V
    .locals 4
    .parameter "data"
    .parameter "type"
    .parameter "index"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mTaskList:Ljava/util/List;

    iget-object v1, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;

    iget-object v3, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;-><init>(Lcom/rui/launcher/common/tvupdaterec/ImageLoader;Landroid/content/Context;Lcom/rui/launcher/common/tvupdaterec/RJsonData;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method convertStreamToBytes(Ljava/io/InputStream;)[B
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x0

    .line 183
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 184
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    if-eqz p1, :cond_0

    .line 185
    new-array v0, v5, [B

    .line 186
    .local v0, buffer:[B
    const/4 v1, -0x1

    .line 187
    .local v1, count:I
    :goto_0
    invoke-virtual {p1, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 191
    const/4 v0, 0x0

    .line 192
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 194
    .end local v0           #buffer:[B
    .end local v1           #count:I
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 188
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    :cond_1
    invoke-virtual {v2, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method declared-synchronized faildIncrease()V
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mFaildCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mFaildCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllTask()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mTaskList:Ljava/util/List;

    return-object v0
.end method

.method public isFailure()Z
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mFaildCount:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mTaskCount:I

    iget v1, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mFaildCount:I

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTaskNumber(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 62
    iput p1, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mTaskCount:I

    .line 63
    return-void
.end method

.method public showDown()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 76
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->sInstance:Lcom/rui/launcher/common/tvupdaterec/ImageLoader;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method
