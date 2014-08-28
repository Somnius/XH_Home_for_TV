.class public Lcom/rui/launcher/common/download/DownloadListener;
.super Ljava/lang/Object;
.source "DownloadListener.java"

# interfaces
.implements Lcom/rui/launcher/common/download/ITaskListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/rui/launcher/common/download/DownloadListener;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private sendBroadcast(ILcom/rui/launcher/common/download/DownloadInfo;)V
    .locals 3
    .parameter "state"
    .parameter "info"

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    .line 118
    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4DownloadStateChange()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "downloadState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v1, "downloadInfo"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadListener;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 3
    .parameter "type"
    .parameter "obj"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 112
    return-void
.end method


# virtual methods
.method public cancel(Lcom/rui/launcher/common/download/CallableTask;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rui/launcher/common/download/CallableTask",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, task:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<*>;"
    instance-of v0, p1, Lcom/rui/launcher/common/download/DownloadTask;

    if-eqz v0, :cond_0

    .line 101
    const/16 v1, 0xc7

    .line 102
    invoke-virtual {p1}, Lcom/rui/launcher/common/download/CallableTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rui/launcher/common/download/DownloadInfo;

    .line 101
    invoke-direct {p0, v1, v0}, Lcom/rui/launcher/common/download/DownloadListener;->sendBroadcast(ILcom/rui/launcher/common/download/DownloadInfo;)V

    .line 104
    invoke-static {}, Lcom/rui/launcher/common/download/DownLoadObserverable;->getInstance()Lcom/rui/launcher/common/download/DownLoadObserverable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/rui/launcher/common/download/CallableTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rui/launcher/common/download/DownloadInfo;

    iget-object v0, v0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/rui/launcher/common/download/DownLoadObserverable;->notifyDownLoadCancel(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public completed(Lcom/rui/launcher/common/download/CallableTask;Ljava/lang/Object;)V
    .locals 9
    .parameter
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rui/launcher/common/download/CallableTask",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, task:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<*>;"
    instance-of v4, p1, Lcom/rui/launcher/common/download/DownloadTask;

    if-eqz v4, :cond_1

    .line 61
    const/16 v5, 0xc9

    .line 62
    invoke-virtual {p1}, Lcom/rui/launcher/common/download/CallableTask;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rui/launcher/common/download/DownloadInfo;

    .line 61
    invoke-direct {p0, v5, v4}, Lcom/rui/launcher/common/download/DownloadListener;->sendBroadcast(ILcom/rui/launcher/common/download/DownloadInfo;)V

    .line 63
    invoke-virtual {p1}, Lcom/rui/launcher/common/download/CallableTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rui/launcher/common/download/DownloadInfo;

    .line 65
    .local v0, info:Lcom/rui/launcher/common/download/DownloadInfo;
    const-string v4, "yyyy-MM-dd"

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 65
    invoke-static {v4, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    .local v2, time:Ljava/lang/String;
    iget-object v4, p0, Lcom/rui/launcher/common/download/DownloadListener;->mContext:Landroid/content/Context;

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/rui/launcher/common/download/DownloadInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/1/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 69
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/0/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-static {v4, v5}, Lcom/rui/launcher/common/collector/RUIDataCollector;->onDownloadCompleted(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    sget-object v4, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    const-string v5, "completed"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u7edf\u8ba1\u4e0b\u8f7d\u91cf\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/rui/launcher/common/download/DownloadInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 71
    iget-object v7, v0, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 70
    invoke-static {v4, v5, v6}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget v3, v0, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    .line 74
    .local v3, type:I
    packed-switch v3, :pswitch_data_0

    .line 83
    :cond_0
    :goto_0
    invoke-static {}, Lcom/rui/launcher/common/download/DownLoadObserverable;->getInstance()Lcom/rui/launcher/common/download/DownLoadObserverable;

    move-result-object v5

    invoke-virtual {p1}, Lcom/rui/launcher/common/download/CallableTask;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rui/launcher/common/download/DownloadInfo;

    iget-object v4, v4, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/rui/launcher/common/download/DownLoadObserverable;->notifyDownLoadEnd(Ljava/lang/String;)V

    .line 85
    .end local v0           #info:Lcom/rui/launcher/common/download/DownloadInfo;
    .end local v2           #time:Ljava/lang/String;
    .end local v3           #type:I
    :cond_1
    return-void

    .line 77
    .restart local v0       #info:Lcom/rui/launcher/common/download/DownloadInfo;
    .restart local v2       #time:Ljava/lang/String;
    .restart local v3       #type:I
    :pswitch_0
    invoke-virtual {v0}, Lcom/rui/launcher/common/download/DownloadInfo;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 78
    .local v1, savedFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    iget-object v4, p0, Lcom/rui/launcher/common/download/DownloadListener;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/rui/launcher/common/utils/FileUtil;->installApkFromFile(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public failed(Lcom/rui/launcher/common/download/CallableTask;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rui/launcher/common/download/CallableTask",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, task:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<*>;"
    instance-of v0, p1, Lcom/rui/launcher/common/download/DownloadTask;

    if-eqz v0, :cond_0

    .line 91
    const/16 v1, 0xc8

    .line 92
    invoke-virtual {p1}, Lcom/rui/launcher/common/download/CallableTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rui/launcher/common/download/DownloadInfo;

    .line 91
    invoke-direct {p0, v1, v0}, Lcom/rui/launcher/common/download/DownloadListener;->sendBroadcast(ILcom/rui/launcher/common/download/DownloadInfo;)V

    .line 93
    invoke-static {}, Lcom/rui/launcher/common/download/DownLoadObserverable;->getInstance()Lcom/rui/launcher/common/download/DownLoadObserverable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/rui/launcher/common/download/CallableTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rui/launcher/common/download/DownloadInfo;

    iget-object v0, v0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/rui/launcher/common/download/DownLoadObserverable;->notifyDownLoadError(Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method public progress(Lcom/rui/launcher/common/download/CallableTask;J)V
    .locals 2
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rui/launcher/common/download/CallableTask",
            "<*>;J)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, task:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<*>;"
    instance-of v0, p1, Lcom/rui/launcher/common/download/DownloadTask;

    if-eqz v0, :cond_0

    .line 50
    const/16 v1, 0xca

    .line 51
    invoke-virtual {p1}, Lcom/rui/launcher/common/download/CallableTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rui/launcher/common/download/DownloadInfo;

    .line 50
    invoke-direct {p0, v1, v0}, Lcom/rui/launcher/common/download/DownloadListener;->sendBroadcast(ILcom/rui/launcher/common/download/DownloadInfo;)V

    .line 54
    :cond_0
    invoke-static {}, Lcom/rui/launcher/common/download/DownLoadObserverable;->getInstance()Lcom/rui/launcher/common/download/DownLoadObserverable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/rui/launcher/common/download/CallableTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rui/launcher/common/download/DownloadInfo;

    iget-object v0, v0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, p2, p3}, Lcom/rui/launcher/common/download/DownLoadObserverable;->notifyDownLoadPosition(Ljava/lang/String;J)V

    .line 55
    return-void
.end method

.method public started(Lcom/rui/launcher/common/download/CallableTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rui/launcher/common/download/CallableTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, task:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<*>;"
    instance-of v0, p1, Lcom/rui/launcher/common/download/DownloadTask;

    if-eqz v0, :cond_0

    .line 39
    const/16 v1, 0xcb

    .line 40
    invoke-virtual {p1}, Lcom/rui/launcher/common/download/CallableTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rui/launcher/common/download/DownloadInfo;

    .line 39
    invoke-direct {p0, v1, v0}, Lcom/rui/launcher/common/download/DownloadListener;->sendBroadcast(ILcom/rui/launcher/common/download/DownloadInfo;)V

    .line 43
    :cond_0
    invoke-static {}, Lcom/rui/launcher/common/download/DownLoadObserverable;->getInstance()Lcom/rui/launcher/common/download/DownLoadObserverable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/rui/launcher/common/download/CallableTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rui/launcher/common/download/DownloadInfo;

    iget-object v0, v0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/rui/launcher/common/download/DownLoadObserverable;->notifyDownLoadStart(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public waiting(Lcom/rui/launcher/common/download/CallableTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rui/launcher/common/download/CallableTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, task:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<*>;"
    instance-of v0, p1, Lcom/rui/launcher/common/download/DownloadTask;

    if-eqz v0, :cond_0

    .line 30
    const/16 v1, 0xcc

    .line 31
    invoke-virtual {p1}, Lcom/rui/launcher/common/download/CallableTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rui/launcher/common/download/DownloadInfo;

    .line 30
    invoke-direct {p0, v1, v0}, Lcom/rui/launcher/common/download/DownloadListener;->sendBroadcast(ILcom/rui/launcher/common/download/DownloadInfo;)V

    .line 33
    :cond_0
    return-void
.end method
