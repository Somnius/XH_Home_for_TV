.class Lcom/uprui/executor/RuiHttpTask$5;
.super Ljava/lang/Object;
.source "RuiHttpTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/executor/RuiHttpTask;->onFaile(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/executor/RuiHttpTask;

.field private final synthetic val$description:Ljava/lang/String;

.field private final synthetic val$httpListener:Lcom/uprui/executor/RuiHttpListener;


# direct methods
.method constructor <init>(Lcom/uprui/executor/RuiHttpTask;Lcom/uprui/executor/RuiHttpListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/executor/RuiHttpTask$5;->this$0:Lcom/uprui/executor/RuiHttpTask;

    iput-object p2, p0, Lcom/uprui/executor/RuiHttpTask$5;->val$httpListener:Lcom/uprui/executor/RuiHttpListener;

    iput-object p3, p0, Lcom/uprui/executor/RuiHttpTask$5;->val$description:Ljava/lang/String;

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask$5;->val$httpListener:Lcom/uprui/executor/RuiHttpListener;

    iget-object v1, p0, Lcom/uprui/executor/RuiHttpTask$5;->this$0:Lcom/uprui/executor/RuiHttpTask;

    iget-object v2, p0, Lcom/uprui/executor/RuiHttpTask$5;->val$description:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/uprui/executor/RuiHttpListener;->onFaile(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V

    .line 488
    return-void
.end method
