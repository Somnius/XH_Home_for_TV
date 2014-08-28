.class Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool$2;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;


# direct methods
.method constructor <init>(Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool$2;->this$1:Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool$2;->this$1:Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;

    #calls: Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->hasMoreAcquire()Z
    invoke-static {v0}, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->access$1(Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool$2;->this$1:Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;

    invoke-static {}, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->access$0()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 340
    :cond_0
    return-void
.end method
