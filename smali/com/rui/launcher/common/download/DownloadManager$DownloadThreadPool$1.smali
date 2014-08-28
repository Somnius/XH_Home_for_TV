.class Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1
    .parameter "r"
    .parameter "executor"

    .prologue
    .line 327
    invoke-static {}, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->access$0()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 328
    return-void
.end method
