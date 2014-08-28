.class Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "WorkSpaceLauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->waitForIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$1;->this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 217
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$1;->this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$1;->this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    const/4 v2, 0x1

    #setter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z
    invoke-static {v0, v2}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->access$0(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;Z)V

    .line 219
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$1;->this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 217
    monitor-exit v1

    .line 221
    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
