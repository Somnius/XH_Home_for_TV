.class Lcom/uprui/tv/launcher8/allapp/DeferredHandler$Impl;
.super Landroid/os/Handler;
.source "DeferredHandler.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Impl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;


# direct methods
.method private constructor <init>(Lcom/uprui/tv/launcher8/allapp/DeferredHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/DeferredHandler$Impl;->this$0:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uprui/tv/launcher8/allapp/DeferredHandler;Lcom/uprui/tv/launcher8/allapp/DeferredHandler$Impl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler$Impl;-><init>(Lcom/uprui/tv/launcher8/allapp/DeferredHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 42
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/DeferredHandler$Impl;->this$0:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    #getter for: Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->queue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->access$0(Lcom/uprui/tv/launcher8/allapp/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/DeferredHandler$Impl;->this$0:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    #getter for: Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->queue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->access$0(Lcom/uprui/tv/launcher8/allapp/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 44
    monitor-exit v2

    .line 52
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/DeferredHandler$Impl;->this$0:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    #getter for: Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->queue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->access$0(Lcom/uprui/tv/launcher8/allapp/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 42
    .local v0, r:Ljava/lang/Runnable;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 49
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/DeferredHandler$Impl;->this$0:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    #getter for: Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->queue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->access$0(Lcom/uprui/tv/launcher8/allapp/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 50
    :try_start_1
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/DeferredHandler$Impl;->this$0:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->scheduleNextLocked()V

    .line 49
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 42
    .end local v0           #r:Ljava/lang/Runnable;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public queueIdle()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler$Impl;->handleMessage(Landroid/os/Message;)V

    .line 57
    const/4 v0, 0x0

    return v0
.end method
