.class Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;
.super Ljava/lang/Object;
.source "AllAppLauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->bindAllAppsAfterClassify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;)Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;
    .locals 1
    .parameter

    .prologue
    .line 699
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 703
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->isClassified()Z

    move-result v1

    if-nez v1, :cond_0

    .line 704
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->addCategoryToAppInfo()V

    .line 705
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->setClassified(Z)V

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v1

    iget-object v1, v1, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 710
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$6(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    move-result-object v1

    new-instance v2, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4$1;

    invoke-direct {v2, p0, v0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4$1;-><init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$4;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 721
    return-void
.end method
