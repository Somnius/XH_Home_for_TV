.class Lcom/uprui/tv/launcher8/home/HomeLoadTask$1;
.super Ljava/lang/Object;
.source "HomeLoadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/home/HomeLoadTask;->obtainHome(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/home/HomeLoadTask;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/home/HomeLoadTask;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/home/HomeLoadTask$1;->this$0:Lcom/uprui/tv/launcher8/home/HomeLoadTask;

    iput-object p2, p0, Lcom/uprui/tv/launcher8/home/HomeLoadTask$1;->val$context:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 36
    iget-object v1, p0, Lcom/uprui/tv/launcher8/home/HomeLoadTask$1;->this$0:Lcom/uprui/tv/launcher8/home/HomeLoadTask;

    iget-object v2, p0, Lcom/uprui/tv/launcher8/home/HomeLoadTask$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/uprui/tv/launcher8/home/HomeLoadTask;->loadHome(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 38
    .local v0, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/home/HomeInfo;>;"
    iget-object v1, p0, Lcom/uprui/tv/launcher8/home/HomeLoadTask$1;->this$0:Lcom/uprui/tv/launcher8/home/HomeLoadTask;

    #getter for: Lcom/uprui/tv/launcher8/home/HomeLoadTask;->callback:Lcom/uprui/tv/launcher8/home/HomeLoadTask$HomeCallback;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/home/HomeLoadTask;->access$0(Lcom/uprui/tv/launcher8/home/HomeLoadTask;)Lcom/uprui/tv/launcher8/home/HomeLoadTask$HomeCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/uprui/tv/launcher8/home/HomeLoadTask$1;->this$0:Lcom/uprui/tv/launcher8/home/HomeLoadTask;

    #getter for: Lcom/uprui/tv/launcher8/home/HomeLoadTask;->callback:Lcom/uprui/tv/launcher8/home/HomeLoadTask$HomeCallback;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/home/HomeLoadTask;->access$0(Lcom/uprui/tv/launcher8/home/HomeLoadTask;)Lcom/uprui/tv/launcher8/home/HomeLoadTask$HomeCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/uprui/tv/launcher8/home/HomeLoadTask$HomeCallback;->callback(Ljava/util/ArrayList;)V

    .line 40
    :cond_0
    return-void
.end method
