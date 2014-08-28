.class Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4$1;
.super Ljava/lang/Object;
.source "AllAppLauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;

.field private final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4$1;->this$1:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;

    iput-object p2, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4$1;->val$list:Ljava/util/ArrayList;

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 713
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4$1;->this$1:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;->access$0(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;)Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-result-object v1

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$7(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4$1;->this$1:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;->access$0(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;)Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-result-object v1

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$7(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;

    .line 715
    .local v0, callback:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 716
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4$1;->val$list:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4$1;->this$1:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;
    invoke-static {v2}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;->access$0(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;)Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-result-object v2

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static {v2}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->isClassified()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;Z)V

    .line 719
    .end local v0           #callback:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;
    :cond_0
    return-void
.end method
