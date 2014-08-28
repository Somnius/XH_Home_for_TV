.class Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool$PriorityThreadFactory;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PriorityThreadFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .parameter "r"

    .prologue
    .line 428
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 429
    .local v0, t:Ljava/lang/Thread;
    instance-of v1, p1, Lcom/rui/launcher/common/download/CallableTask;

    if-eqz v1, :cond_0

    .line 430
    check-cast p1, Lcom/rui/launcher/common/download/CallableTask;

    .end local p1
    iget v1, p1, Lcom/rui/launcher/common/download/CallableTask;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 432
    :cond_0
    return-object v0
.end method
