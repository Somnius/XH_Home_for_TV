.class Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$3;
.super Ljava/lang/Object;
.source "AllAppLauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->loadAllAppsByBatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;

.field private final synthetic val$added:Ljava/util/ArrayList;

.field private final synthetic val$callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;

.field private final synthetic val$first:Z


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;ZLjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$3;->this$1:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$3;->val$callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;

    iput-boolean p3, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$3;->val$first:Z

    iput-object p4, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$3;->val$added:Ljava/util/ArrayList;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$3;->val$callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;

    if-eqz v0, :cond_0

    .line 356
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$3;->val$first:Z

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$3;->val$callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$3;->val$added:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$3;->this$1:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;
    invoke-static {v2}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->access$0(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;)Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-result-object v2

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static {v2}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->isClassified()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;Z)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$3;->val$callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$3;->val$added:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
