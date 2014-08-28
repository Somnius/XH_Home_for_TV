.class Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;
.super Ljava/lang/Object;
.source "WorkSpaceLauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->bindWorkspaceAfterClassify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
    .locals 1
    .parameter

    .prologue
    .line 618
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 621
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    iget-object v2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    iget-object v2, v2, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->loadClassifyedApp(Ljava/util/ArrayList;)V

    .line 623
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$5(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;

    .line 624
    .local v0, callback:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$1(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    move-result-object v1

    new-instance v2, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5$1;

    invoke-direct {v2, p0, v0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5$1;-><init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;)V

    invoke-virtual {v1, v2}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 636
    return-void
.end method
