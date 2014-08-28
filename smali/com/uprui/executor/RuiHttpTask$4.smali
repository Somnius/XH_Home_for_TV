.class Lcom/uprui/executor/RuiHttpTask$4;
.super Ljava/lang/Object;
.source "RuiHttpTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/executor/RuiHttpTask;->onSuccess(Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/executor/RuiHttpTask;

.field private final synthetic val$httpListener:Lcom/uprui/executor/RuiHttpListener;

.field private final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/uprui/executor/RuiHttpTask;Lcom/uprui/executor/RuiHttpListener;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/executor/RuiHttpTask$4;->this$0:Lcom/uprui/executor/RuiHttpTask;

    iput-object p2, p0, Lcom/uprui/executor/RuiHttpTask$4;->val$httpListener:Lcom/uprui/executor/RuiHttpListener;

    iput-object p3, p0, Lcom/uprui/executor/RuiHttpTask$4;->val$result:Ljava/lang/Object;

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 463
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask$4;->val$httpListener:Lcom/uprui/executor/RuiHttpListener;

    iget-object v1, p0, Lcom/uprui/executor/RuiHttpTask$4;->this$0:Lcom/uprui/executor/RuiHttpTask;

    iget-object v2, p0, Lcom/uprui/executor/RuiHttpTask$4;->val$result:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/uprui/executor/RuiHttpListener;->onSuccess(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/Object;Z)V

    .line 464
    return-void
.end method
