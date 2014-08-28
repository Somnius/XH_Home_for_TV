.class Lcom/uprui/executor/RuiHttpTask$6;
.super Ljava/lang/Object;
.source "RuiHttpTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/executor/RuiHttpTask;->onRetry(Ljava/lang/Exception;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/executor/RuiHttpTask;

.field private final synthetic val$e:Ljava/lang/Exception;

.field private final synthetic val$httpListener:Lcom/uprui/executor/RuiHttpListener;

.field private final synthetic val$retryCount:I


# direct methods
.method constructor <init>(Lcom/uprui/executor/RuiHttpTask;Lcom/uprui/executor/RuiHttpListener;Ljava/lang/Exception;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/executor/RuiHttpTask$6;->this$0:Lcom/uprui/executor/RuiHttpTask;

    iput-object p2, p0, Lcom/uprui/executor/RuiHttpTask$6;->val$httpListener:Lcom/uprui/executor/RuiHttpListener;

    iput-object p3, p0, Lcom/uprui/executor/RuiHttpTask$6;->val$e:Ljava/lang/Exception;

    iput p4, p0, Lcom/uprui/executor/RuiHttpTask$6;->val$retryCount:I

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 511
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask$6;->val$httpListener:Lcom/uprui/executor/RuiHttpListener;

    iget-object v1, p0, Lcom/uprui/executor/RuiHttpTask$6;->this$0:Lcom/uprui/executor/RuiHttpTask;

    iget-object v2, p0, Lcom/uprui/executor/RuiHttpTask$6;->val$e:Ljava/lang/Exception;

    iget v3, p0, Lcom/uprui/executor/RuiHttpTask$6;->val$retryCount:I

    invoke-interface {v0, v1, v2, v3}, Lcom/uprui/executor/RuiHttpListener;->onRetry(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/Exception;I)V

    .line 512
    return-void
.end method
