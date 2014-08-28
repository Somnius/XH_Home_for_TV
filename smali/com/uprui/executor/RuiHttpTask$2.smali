.class Lcom/uprui/executor/RuiHttpTask$2;
.super Ljava/lang/Object;
.source "RuiHttpTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/executor/RuiHttpTask;->onProgress(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/executor/RuiHttpTask;

.field private final synthetic val$httpListener:Lcom/uprui/executor/RuiHttpListener;

.field private final synthetic val$readCount:J

.field private final synthetic val$totalSize:J


# direct methods
.method constructor <init>(Lcom/uprui/executor/RuiHttpTask;Lcom/uprui/executor/RuiHttpListener;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/executor/RuiHttpTask$2;->this$0:Lcom/uprui/executor/RuiHttpTask;

    iput-object p2, p0, Lcom/uprui/executor/RuiHttpTask$2;->val$httpListener:Lcom/uprui/executor/RuiHttpListener;

    iput-wide p3, p0, Lcom/uprui/executor/RuiHttpTask$2;->val$totalSize:J

    iput-wide p5, p0, Lcom/uprui/executor/RuiHttpTask$2;->val$readCount:J

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 419
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpTask$2;->val$httpListener:Lcom/uprui/executor/RuiHttpListener;

    iget-object v1, p0, Lcom/uprui/executor/RuiHttpTask$2;->this$0:Lcom/uprui/executor/RuiHttpTask;

    iget-wide v2, p0, Lcom/uprui/executor/RuiHttpTask$2;->val$totalSize:J

    iget-wide v4, p0, Lcom/uprui/executor/RuiHttpTask$2;->val$readCount:J

    invoke-interface/range {v0 .. v5}, Lcom/uprui/executor/RuiHttpListener;->onProgress(Lcom/uprui/executor/RuiHttpTask;JJ)V

    .line 420
    return-void
.end method
