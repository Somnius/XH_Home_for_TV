.class Lcom/uprui/tv/launcher8/allapp/DeferredHandler$IdleRunnable;
.super Ljava/lang/Object;
.source "DeferredHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunnable"
.end annotation


# instance fields
.field mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/allapp/DeferredHandler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "r"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/DeferredHandler$IdleRunnable;->this$0:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/uprui/tv/launcher8/allapp/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 66
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 71
    return-void
.end method
