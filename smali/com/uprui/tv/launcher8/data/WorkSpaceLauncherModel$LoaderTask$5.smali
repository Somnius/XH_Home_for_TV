.class Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$5;
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
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$5;->this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$5;->val$oldCallbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 380
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$5;->this$1:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$5;->val$oldCallbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->tryGetCallbacks(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;

    move-result-object v0

    .line 381
    .local v0, callbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 382
    invoke-interface {v0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;->finishBindingItems()V

    .line 384
    :cond_0
    return-void
.end method
