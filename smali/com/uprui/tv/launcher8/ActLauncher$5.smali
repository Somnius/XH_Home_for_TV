.class Lcom/uprui/tv/launcher8/ActLauncher$5;
.super Ljava/lang/Object;
.source "ActLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/ActLauncher;->bindShortcutRemoved(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/ActLauncher;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/ActLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/ActLauncher$5;->this$0:Lcom/uprui/tv/launcher8/ActLauncher;

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher$5;->this$0:Lcom/uprui/tv/launcher8/ActLauncher;

    #getter for: Lcom/uprui/tv/launcher8/ActLauncher;->mItemCallback:Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/ActLauncher;->access$1(Lcom/uprui/tv/launcher8/ActLauncher;)Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;->computeFourceIndex()V

    .line 631
    iget-object v0, p0, Lcom/uprui/tv/launcher8/ActLauncher$5;->this$0:Lcom/uprui/tv/launcher8/ActLauncher;

    #getter for: Lcom/uprui/tv/launcher8/ActLauncher;->mItemCallback:Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/ActLauncher;->access$1(Lcom/uprui/tv/launcher8/ActLauncher;)Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/uprui/tv/launcher8/ActLauncher$5;->this$0:Lcom/uprui/tv/launcher8/ActLauncher;

    #getter for: Lcom/uprui/tv/launcher8/ActLauncher;->itemDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/ActLauncher;->access$0(Lcom/uprui/tv/launcher8/ActLauncher;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uprui/tv/launcher8/ActLauncher$ItemCallback;->bindItems(Ljava/util/ArrayList;)V

    .line 632
    return-void
.end method
