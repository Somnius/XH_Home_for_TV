.class Lcom/uprui/executor/RuiHttpTask$1;
.super Ljava/lang/Object;
.source "RuiHttpTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/executor/RuiHttpTask;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/executor/RuiHttpTask;

.field private final synthetic val$httpListener:Lcom/uprui/executor/RuiHttpListener;


# direct methods
.method constructor <init>(Lcom/uprui/executor/RuiHttpTask;Lcom/uprui/executor/RuiHttpListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/executor/RuiHttpTask$1;->this$0:Lcom/uprui/executor/RuiHttpTask;

    iput-object p2, p0, Lcom/uprui/executor/RuiHttpTask$1;->val$httpListener:Lcom/uprui/executor/RuiHttpListener;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask$1;->val$httpListener:Lcom/uprui/executor/RuiHttpListener;

    iget-object v1, p0, Lcom/uprui/executor/RuiHttpTask$1;->this$0:Lcom/uprui/executor/RuiHttpTask;

    invoke-interface {v0, v1}, Lcom/uprui/executor/RuiHttpListener;->onStart(Lcom/uprui/executor/RuiHttpTask;)V

    .line 396
    return-void
.end method
