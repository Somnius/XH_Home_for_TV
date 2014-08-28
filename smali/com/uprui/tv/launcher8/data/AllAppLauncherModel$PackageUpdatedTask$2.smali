.class Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask$2;
.super Ljava/lang/Object;
.source "AllAppLauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;

.field private final synthetic val$callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;

.field private final synthetic val$modifiedFinal:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask$2;->this$1:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask$2;->val$callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;

    iput-object p3, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask$2;->val$modifiedFinal:Ljava/util/ArrayList;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask$2;->val$callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask$2;->this$1:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->access$0(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;)Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-result-object v1

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$7(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask$2;->val$callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask$2;->val$modifiedFinal:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;->bindAppsUpdated(Ljava/util/ArrayList;)V

    .line 514
    :cond_0
    return-void
.end method
