.class Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5$1;
.super Ljava/lang/Object;
.source "WorkSpaceLauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;

.field private final synthetic val$callback:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5$1;->this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;

    iput-object p2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5$1;->val$callback:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5$1;->val$callback:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5$1;->this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;->access$0(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->mItems:Ljava/util/ArrayList;

    sget-object v1, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->APP_START_COUNT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 630
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5$1;->val$callback:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5$1;->this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;->access$0(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$5;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    move-result-object v1

    iget-object v1, v1, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;->bindItems(Ljava/util/ArrayList;)V

    .line 633
    :cond_0
    return-void
.end method
