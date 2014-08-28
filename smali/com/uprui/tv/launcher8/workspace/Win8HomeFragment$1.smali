.class Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment$1;
.super Ljava/lang/Object;
.source "Win8HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->callback(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;

.field private final synthetic val$datas:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment$1;->this$0:Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;

    iput-object p2, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment$1;->val$datas:Ljava/util/ArrayList;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 157
    sget-object v0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->datas:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment$1;->val$datas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment$1;->this$0:Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;

    #calls: Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->bindItem()V
    invoke-static {v0}, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->access$0(Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;)V

    .line 160
    iget-object v0, p0, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment$1;->this$0:Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;

    #getter for: Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->pageView:Lcom/uprui/tv/launcher8/pageview/TvPageView;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;->access$1(Lcom/uprui/tv/launcher8/workspace/Win8HomeFragment;)Lcom/uprui/tv/launcher8/pageview/TvPageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/pageview/TvPageView;->requestFocus()Z

    .line 161
    return-void
.end method
