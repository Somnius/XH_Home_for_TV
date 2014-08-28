.class public Lcom/rui/launcher/common/download/DownloadTask;
.super Lcom/rui/launcher/common/download/CallableTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rui/launcher/common/download/CallableTask",
        "<",
        "Lcom/rui/launcher/common/download/DownloadInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x7530

.field static final DEBUG:Z = true

.field private static final SOCKET_TIMEOUT:I = 0xea60

.field static final TAG:Ljava/lang/String;


# instance fields
.field accessExt:Z

.field private mDInfo:Lcom/rui/launcher/common/download/DownloadInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/rui/launcher/common/download/DownloadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rui/launcher/common/download/DownloadTask;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/rui/launcher/common/download/DownloadInfo;Lcom/rui/launcher/common/download/ITaskListener;)V
    .locals 1
    .parameter "info"
    .parameter "l"

    .prologue
    .line 29
    iget v0, p1, Lcom/rui/launcher/common/download/DownloadInfo;->priority:I

    invoke-direct {p0, v0, p2}, Lcom/rui/launcher/common/download/CallableTask;-><init>(ILcom/rui/launcher/common/download/ITaskListener;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rui/launcher/common/download/DownloadTask;->accessExt:Z

    .line 30
    iput-object p1, p0, Lcom/rui/launcher/common/download/DownloadTask;->mDInfo:Lcom/rui/launcher/common/download/DownloadInfo;

    .line 32
    return-void
.end method

.method private convertStreamToFile(Ljava/io/InputStream;Ljava/io/File;F)V
    .locals 9
    .parameter "in"
    .parameter "file"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v4, 0x0

    .line 184
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 185
    .end local v4           #out:Ljava/io/FileOutputStream;
    .local v5, out:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 186
    .local v2, down:F
    const/4 v3, 0x0

    .line 187
    .local v3, noti:I
    const/16 v7, 0x1000

    :try_start_1
    new-array v0, v7, [B

    .line 188
    .local v0, buffer:[B
    const/4 v1, -0x1

    .line 189
    .local v1, count:I
    :cond_0
    iget-boolean v7, p0, Lcom/rui/launcher/common/download/DownloadTask;->canceled:Z

    if-nez v7, :cond_1

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_3

    .line 201
    :cond_1
    if-nez v5, :cond_4

    move-object v4, v5

    .line 206
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v2           #down:F
    .end local v3           #noti:I
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    return-void

    .line 190
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v2       #down:F
    .restart local v3       #noti:I
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :cond_3
    const/4 v7, 0x0

    cmpl-float v7, p3, v7

    if-lez v7, :cond_0

    .line 191
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 192
    int-to-float v7, v1

    add-float/2addr v2, v7

    .line 193
    const/high16 v7, 0x42c8

    mul-float/2addr v7, v2

    div-float/2addr v7, p3

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v6, v7

    .line 194
    .local v6, rate:I
    :goto_1
    iget-boolean v7, p0, Lcom/rui/launcher/common/download/DownloadTask;->canceled:Z

    if-nez v7, :cond_0

    if-ge v3, v6, :cond_0

    .line 195
    iget-object v7, p0, Lcom/rui/launcher/common/download/DownloadTask;->mDInfo:Lcom/rui/launcher/common/download/DownloadInfo;

    iput v2, v7, Lcom/rui/launcher/common/download/DownloadInfo;->downloadSize:F

    .line 196
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/rui/launcher/common/download/DownloadTask;->setProgress(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 200
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v6           #rate:I
    :catchall_0
    move-exception v7

    move-object v4, v5

    .line 201
    .end local v2           #down:F
    .end local v3           #noti:I
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v4, :cond_2

    .line 203
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 204
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 205
    throw v7

    .line 203
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v2       #down:F
    .restart local v3       #noti:I
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :cond_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 204
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    move-object v4, v5

    .line 206
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 200
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v2           #down:F
    .end local v3           #noti:I
    :catchall_1
    move-exception v7

    goto :goto_2
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 171
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v1, -0x1

    .line 172
    .local v1, count:I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 175
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 177
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 175
    return-object v2

    .line 173
    :cond_0
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v2

    .line 177
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 178
    throw v2
.end method


# virtual methods
.method public call()Lcom/rui/launcher/common/download/DownloadInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, v:Lcom/rui/launcher/common/download/DownloadInfo;
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    invoke-interface {v1, p0}, Lcom/rui/launcher/common/download/ITaskListener;->started(Lcom/rui/launcher/common/download/CallableTask;)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/rui/launcher/common/download/DownloadTask;->get()Lcom/rui/launcher/common/download/DownloadInfo;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lcom/rui/launcher/common/download/DownloadTask;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/rui/launcher/common/download/ITaskListener;->cancel(Lcom/rui/launcher/common/download/CallableTask;Ljava/lang/Throwable;)V

    .line 106
    :cond_1
    :goto_0
    return-object v0

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/rui/launcher/common/download/DownloadTask;->onPreDone()V

    .line 102
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    invoke-interface {v1, p0, v0}, Lcom/rui/launcher/common/download/ITaskListener;->completed(Lcom/rui/launcher/common/download/CallableTask;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/rui/launcher/common/download/DownloadTask;->call()Lcom/rui/launcher/common/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method protected get()Lcom/rui/launcher/common/download/DownloadInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 111
    iget-object v8, p0, Lcom/rui/launcher/common/download/DownloadTask;->mDInfo:Lcom/rui/launcher/common/download/DownloadInfo;

    invoke-virtual {v8}, Lcom/rui/launcher/common/download/DownloadInfo;->initContent()V

    .line 113
    iget-object v8, p0, Lcom/rui/launcher/common/download/DownloadTask;->mDInfo:Lcom/rui/launcher/common/download/DownloadInfo;

    invoke-virtual {v8}, Lcom/rui/launcher/common/download/DownloadInfo;->getContent()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-static {v8}, Lcom/rui/launcher/common/utils/FileUtil;->isInternalFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    iput-boolean v8, p0, Lcom/rui/launcher/common/download/DownloadTask;->accessExt:Z

    .line 115
    new-instance v7, Ljava/net/URL;

    iget-object v8, p0, Lcom/rui/launcher/common/download/DownloadTask;->mDInfo:Lcom/rui/launcher/common/download/DownloadInfo;

    iget-object v8, v8, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 117
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 118
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/16 v8, 0x7530

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 119
    const v8, 0xea60

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 120
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 123
    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 124
    .local v0, code:I
    const/16 v8, 0xc8

    if-eq v0, v8, :cond_1

    .line 125
    new-instance v8, Ljava/io/IOException;

    const-string v9, " server response error"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0           #code:I
    :catch_0
    move-exception v2

    .line 128
    .local v2, e:Ljava/lang/Exception;
    new-instance v8, Ljava/io/IOException;

    const-string v9, "server fail"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v7           #url:Ljava/net/URL;
    :cond_0
    move v8, v9

    .line 113
    goto :goto_0

    .line 131
    .restart local v0       #code:I
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .restart local v7       #url:Ljava/net/URL;
    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 133
    invoke-virtual {p0}, Lcom/rui/launcher/common/download/DownloadTask;->isCanceled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 134
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 136
    iget-object v8, p0, Lcom/rui/launcher/common/download/DownloadTask;->mDInfo:Lcom/rui/launcher/common/download/DownloadInfo;

    .line 165
    :goto_1
    return-object v8

    .line 139
    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    int-to-float v5, v8

    .line 141
    .local v5, size:F
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 142
    .local v3, in:Ljava/io/InputStream;
    if-eqz v3, :cond_3

    const/4 v8, 0x0

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_4

    .line 143
    :cond_3
    new-instance v8, Ljava/io/IOException;

    const-string v9, "stream is null"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 148
    :cond_4
    iget-object v8, p0, Lcom/rui/launcher/common/download/DownloadTask;->mDInfo:Lcom/rui/launcher/common/download/DownloadInfo;

    iput v5, v8, Lcom/rui/launcher/common/download/DownloadInfo;->totalSize:F

    .line 150
    iget-object v8, p0, Lcom/rui/launcher/common/download/DownloadTask;->mDInfo:Lcom/rui/launcher/common/download/DownloadInfo;

    iget v6, v8, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    .line 151
    .local v6, type:I
    packed-switch v6, :pswitch_data_0

    .line 163
    :goto_2
    :pswitch_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 165
    iget-object v8, p0, Lcom/rui/launcher/common/download/DownloadTask;->mDInfo:Lcom/rui/launcher/common/download/DownloadInfo;

    goto :goto_1

    .line 154
    :pswitch_1
    iget-object v8, p0, Lcom/rui/launcher/common/download/DownloadTask;->mDInfo:Lcom/rui/launcher/common/download/DownloadInfo;

    invoke-virtual {v8}, Lcom/rui/launcher/common/download/DownloadInfo;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 155
    .local v4, savedFile:Ljava/io/File;
    invoke-direct {p0, v3, v4, v5}, Lcom/rui/launcher/common/download/DownloadTask;->convertStreamToFile(Ljava/io/InputStream;Ljava/io/File;F)V

    goto :goto_2

    .line 161
    .end local v4           #savedFile:Ljava/io/File;
    :pswitch_2
    iget-object v8, p0, Lcom/rui/launcher/common/download/DownloadTask;->mDInfo:Lcom/rui/launcher/common/download/DownloadInfo;

    invoke-direct {p0, v3}, Lcom/rui/launcher/common/download/DownloadTask;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/rui/launcher/common/download/DownloadInfo;->content:Ljava/lang/String;

    goto :goto_2

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/rui/launcher/common/download/DownloadTask;->get()Lcom/rui/launcher/common/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getTag()Lcom/rui/launcher/common/download/DownloadInfo;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadTask;->mDInfo:Lcom/rui/launcher/common/download/DownloadInfo;

    return-object v0
.end method

.method protected bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/rui/launcher/common/download/DownloadTask;->getTag()Lcom/rui/launcher/common/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPreDone()V
    .locals 3

    .prologue
    .line 49
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadTask;->mDInfo:Lcom/rui/launcher/common/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/rui/launcher/common/download/DownloadInfo;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Ljava/io/File;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadTask;->mDInfo:Lcom/rui/launcher/common/download/DownloadInfo;

    check-cast v0, Ljava/io/File;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-static {v0}, Lcom/rui/launcher/common/utils/FileUtil;->reNameExternalApk(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rui/launcher/common/download/DownloadInfo;->content:Ljava/lang/String;

    .line 53
    :cond_0
    return-void
.end method

.method protected onPreFailed()V
    .locals 2

    .prologue
    .line 41
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadTask;->mDInfo:Lcom/rui/launcher/common/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/rui/launcher/common/download/DownloadInfo;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Ljava/io/File;

    if-eqz v1, :cond_0

    .line 43
    check-cast v0, Ljava/io/File;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-static {v0}, Lcom/rui/launcher/common/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 45
    :cond_0
    return-void
.end method

.method protected onPreStart()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    invoke-interface {v0, p0}, Lcom/rui/launcher/common/download/ITaskListener;->waiting(Lcom/rui/launcher/common/download/CallableTask;)V

    .line 60
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 64
    const/4 v1, 0x0

    iput v1, p0, Lcom/rui/launcher/common/download/DownloadTask;->progress:I

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/rui/launcher/common/download/DownloadTask;->call()Lcom/rui/launcher/common/download/DownloadInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/rui/launcher/common/download/DownloadTask;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/rui/launcher/common/download/ITaskListener;->cancel(Lcom/rui/launcher/common/download/CallableTask;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 74
    :cond_1
    sget-object v1, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v2, Lcom/rui/launcher/common/download/DownloadTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    invoke-virtual {p0}, Lcom/rui/launcher/common/download/DownloadTask;->onPreFailed()V

    .line 77
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadTask;->listener:Lcom/rui/launcher/common/download/ITaskListener;

    invoke-interface {v1, p0, v0}, Lcom/rui/launcher/common/download/ITaskListener;->failed(Lcom/rui/launcher/common/download/CallableTask;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadTask;->mDInfo:Lcom/rui/launcher/common/download/DownloadInfo;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadTask;->mDInfo:Lcom/rui/launcher/common/download/DownloadInfo;

    iput p1, v0, Lcom/rui/launcher/common/download/DownloadInfo;->progress:I

    .line 213
    :cond_0
    invoke-super {p0, p1}, Lcom/rui/launcher/common/download/CallableTask;->setProgress(I)V

    .line 215
    return-void
.end method
