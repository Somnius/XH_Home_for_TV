.class Lcom/uprui/executor/RuiThreadPoolExecutor$1;
.super Ljava/lang/Object;
.source "RuiThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/executor/RuiThreadPoolExecutor;->executeDelay(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/executor/RuiThreadPoolExecutor;

.field private final synthetic val$command:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/uprui/executor/RuiThreadPoolExecutor;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/executor/RuiThreadPoolExecutor$1;->this$0:Lcom/uprui/executor/RuiThreadPoolExecutor;

    iput-object p2, p0, Lcom/uprui/executor/RuiThreadPoolExecutor$1;->val$command:Ljava/lang/Runnable;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor$1;->this$0:Lcom/uprui/executor/RuiThreadPoolExecutor;

    iget-object v0, v0, Lcom/uprui/executor/RuiThreadPoolExecutor;->schedulQueue:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/uprui/executor/RuiThreadPoolExecutor$1;->val$command:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/uprui/executor/RuiThreadPoolExecutor$1;->this$0:Lcom/uprui/executor/RuiThreadPoolExecutor;

    iget-object v1, p0, Lcom/uprui/executor/RuiThreadPoolExecutor$1;->val$command:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/uprui/executor/RuiThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method
