.class Lcom/uprui/launcher/cache/MemoryModel$1;
.super Lcom/uprui/executor/RuiHttpFileCallback;
.source "MemoryModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/launcher/cache/MemoryModel;->getLoadHttpBitmapInFile(Ljava/lang/String;Lcom/uprui/executor/RequestParams;Lcom/uprui/executor/RuiHttpFileCallback;)Lcom/uprui/executor/RuiHttpTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/launcher/cache/MemoryModel;


# direct methods
.method constructor <init>(Lcom/uprui/launcher/cache/MemoryModel;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/launcher/cache/MemoryModel$1;->this$0:Lcom/uprui/launcher/cache/MemoryModel;

    .line 116
    invoke-direct {p0, p2}, Lcom/uprui/executor/RuiHttpFileCallback;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/uprui/executor/RuiHttpTask;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<",
            "Ljava/io/File;",
            "+",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    invoke-super {p0, p1}, Lcom/uprui/executor/RuiHttpFileCallback;->onFinish(Lcom/uprui/executor/RuiHttpTask;)V

    .line 122
    iget-object v0, p0, Lcom/uprui/launcher/cache/MemoryModel$1;->this$0:Lcom/uprui/launcher/cache/MemoryModel;

    #calls: Lcom/uprui/launcher/cache/MemoryModel;->removeNetworkTask(Lcom/uprui/executor/RuiHttpTask;)V
    invoke-static {v0, p1}, Lcom/uprui/launcher/cache/MemoryModel;->access$0(Lcom/uprui/launcher/cache/MemoryModel;Lcom/uprui/executor/RuiHttpTask;)V

    .line 123
    return-void
.end method
