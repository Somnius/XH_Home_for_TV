.class Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask$1;
.super Ljava/lang/Object;
.source "WorkSpaceLauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;

.field private final synthetic val$callbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;

.field private final synthetic val$removeItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask$1;->this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask$1;->val$callbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;

    iput-object p3, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask$1;->val$removeItems:Ljava/util/ArrayList;

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask$1;->val$callbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask$1;->this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;->access$0(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    move-result-object v1

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$5(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask$1;->val$removeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask$1;->val$callbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask$1;->val$removeItems:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;->bindShortcutRemoved(Ljava/util/ArrayList;)V

    .line 460
    :cond_0
    return-void
.end method
