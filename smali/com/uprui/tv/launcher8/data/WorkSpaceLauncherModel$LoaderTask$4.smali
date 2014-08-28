.class Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$4;
.super Ljava/lang/Object;
.source "WorkSpaceLauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->loadWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

.field private final synthetic val$oldCallbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$4;->this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$4;->val$oldCallbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 367
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$4;->this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->access$1(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    move-result-object v1

    iget-object v2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$4;->this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
    invoke-static {v2}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->access$1(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    move-result-object v2

    iget-object v2, v2, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->loadClassifyedApp(Ljava/util/ArrayList;)V

    .line 369
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$4;->this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$4;->val$oldCallbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->tryGetCallbacks(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;

    move-result-object v0

    .line 370
    .local v0, callbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 371
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$4;->this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->access$1(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    move-result-object v1

    iget-object v1, v1, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->mItems:Ljava/util/ArrayList;

    sget-object v2, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->APP_START_COUNT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 372
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$4;->this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->access$1(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    move-result-object v1

    iget-object v1, v1, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;->bindItems(Ljava/util/ArrayList;)V

    .line 374
    :cond_0
    return-void
.end method
