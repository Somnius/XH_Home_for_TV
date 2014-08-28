.class Lcom/rui/launcher/common/download/DownloadManager$MyHandler;
.super Landroid/os/Handler;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rui/launcher/common/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private nm:Lcom/rui/launcher/common/NotiManager;

.field final synthetic this$0:Lcom/rui/launcher/common/download/DownloadManager;


# direct methods
.method public constructor <init>(Lcom/rui/launcher/common/download/DownloadManager;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/rui/launcher/common/download/DownloadManager$MyHandler;->this$0:Lcom/rui/launcher/common/download/DownloadManager;

    .line 260
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 261
    iput-object p2, p0, Lcom/rui/launcher/common/download/DownloadManager$MyHandler;->mContext:Landroid/content/Context;

    .line 262
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager$MyHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/rui/launcher/common/NotiManager;->getInstance(Landroid/content/Context;)Lcom/rui/launcher/common/NotiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager$MyHandler;->nm:Lcom/rui/launcher/common/NotiManager;

    .line 263
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v4, 0xc7

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 267
    iget v2, p1, Landroid/os/Message;->what:I

    .line 268
    .local v2, what:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/rui/launcher/common/download/DownloadInfo;

    .line 269
    .local v0, info:Lcom/rui/launcher/common/download/DownloadInfo;
    packed-switch v2, :pswitch_data_0

    .line 297
    :goto_0
    :pswitch_0
    return-void

    .line 271
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 272
    .local v1, stat:I
    const/16 v3, 0xc9

    if-eq v3, v1, :cond_0

    const/16 v3, 0xc8

    if-eq v3, v1, :cond_0

    if-ne v4, v1, :cond_1

    .line 273
    :cond_0
    iget-object v3, p0, Lcom/rui/launcher/common/download/DownloadManager$MyHandler;->this$0:Lcom/rui/launcher/common/download/DownloadManager;

    #calls: Lcom/rui/launcher/common/download/DownloadManager;->removeTask(Lcom/rui/launcher/common/download/DownloadInfo;)V
    invoke-static {v3, v0}, Lcom/rui/launcher/common/download/DownloadManager;->access$0(Lcom/rui/launcher/common/download/DownloadManager;Lcom/rui/launcher/common/download/DownloadInfo;)V

    .line 274
    if-ne v4, v1, :cond_1

    .line 275
    invoke-virtual {v0}, Lcom/rui/launcher/common/download/DownloadInfo;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-static {v3}, Lcom/rui/launcher/common/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 276
    iget-object v3, p0, Lcom/rui/launcher/common/download/DownloadManager$MyHandler;->nm:Lcom/rui/launcher/common/NotiManager;

    iget v4, v0, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/rui/launcher/common/NotiManager;->cancel(I)V

    .line 279
    :cond_1
    iget-object v3, p0, Lcom/rui/launcher/common/download/DownloadManager$MyHandler;->nm:Lcom/rui/launcher/common/NotiManager;

    invoke-virtual {v3, v1, v0}, Lcom/rui/launcher/common/NotiManager;->showDownloadNotification(ILcom/rui/launcher/common/download/DownloadInfo;)V

    goto :goto_0

    .line 283
    .end local v1           #stat:I
    :pswitch_2
    iget-object v3, p0, Lcom/rui/launcher/common/download/DownloadManager$MyHandler;->this$0:Lcom/rui/launcher/common/download/DownloadManager;

    invoke-virtual {v3, v0}, Lcom/rui/launcher/common/download/DownloadManager;->cancelTask(Lcom/rui/launcher/common/download/DownloadInfo;)V

    .line 284
    invoke-virtual {v0}, Lcom/rui/launcher/common/download/DownloadInfo;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-static {v3}, Lcom/rui/launcher/common/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 285
    iget-object v3, p0, Lcom/rui/launcher/common/download/DownloadManager$MyHandler;->nm:Lcom/rui/launcher/common/NotiManager;

    iget v4, v0, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/rui/launcher/common/NotiManager;->cancel(I)V

    goto :goto_0

    .line 288
    :pswitch_3
    iget-object v3, p0, Lcom/rui/launcher/common/download/DownloadManager$MyHandler;->nm:Lcom/rui/launcher/common/NotiManager;

    new-array v4, v7, [Ljava/lang/Object;

    sget v5, Lcom/rui/launcher/common/R$string;->rui_download_busy:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/rui/launcher/common/NotiManager;->showToast([Ljava/lang/Object;)V

    goto :goto_0

    .line 291
    :pswitch_4
    iget-object v3, p0, Lcom/rui/launcher/common/download/DownloadManager$MyHandler;->nm:Lcom/rui/launcher/common/NotiManager;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Lcom/rui/launcher/common/R$string;->rui_download_repeat:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, v0, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/rui/launcher/common/NotiManager;->showToast([Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    :pswitch_5
    iget-object v3, p0, Lcom/rui/launcher/common/download/DownloadManager$MyHandler;->this$0:Lcom/rui/launcher/common/download/DownloadManager;

    invoke-virtual {v3}, Lcom/rui/launcher/common/download/DownloadManager;->removeAllTasks()V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0xcd
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    invoke-super {p0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
