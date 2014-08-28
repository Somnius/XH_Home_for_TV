.class public Lcom/uprui/notify/RuiHttpFileNotifyCallback;
.super Lcom/uprui/executor/RuiHttpFileCallback;
.source "RuiHttpFileNotifyCallback.java"


# instance fields
.field private contentTitle:Ljava/lang/String;

.field private tricker:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/uprui/executor/RuiHttpFileCallback;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"
    .parameter "tricker"
    .parameter "contentTitle"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/uprui/executor/RuiHttpFileCallback;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p3, p0, Lcom/uprui/notify/RuiHttpFileNotifyCallback;->contentTitle:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/uprui/notify/RuiHttpFileNotifyCallback;->tricker:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/uprui/notify/RuiHttpFileNotifyCallback;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTricker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/uprui/notify/RuiHttpFileNotifyCallback;->tricker:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel(Lcom/uprui/executor/RuiHttpTask;)V
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
    .line 66
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    invoke-super {p0, p1}, Lcom/uprui/executor/RuiHttpFileCallback;->onCancel(Lcom/uprui/executor/RuiHttpTask;)V

    .line 67
    iget-object v0, p0, Lcom/uprui/notify/RuiHttpFileNotifyCallback;->contentTitle:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/uprui/notify/RuiNotifyManager;->cancelLoad(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onFaile(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "description"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<",
            "Ljava/io/File;",
            "+",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    invoke-super {p0, p1, p2}, Lcom/uprui/executor/RuiHttpFileCallback;->onFaile(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V

    .line 75
    invoke-static {p1, p2}, Lcom/uprui/notify/RuiNotifyManager;->failLoad(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onFinish(Lcom/uprui/executor/RuiHttpTask;)V
    .locals 0
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
    .line 90
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    invoke-super {p0, p1}, Lcom/uprui/executor/RuiHttpFileCallback;->onFinish(Lcom/uprui/executor/RuiHttpTask;)V

    .line 91
    return-void
.end method

.method public onProgress(Lcom/uprui/executor/RuiHttpTask;JJ)V
    .locals 6
    .parameter
    .parameter "totalSize"
    .parameter "readCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<",
            "Ljava/io/File;",
            "+",
            "Ljava/io/OutputStream;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    invoke-super/range {p0 .. p5}, Lcom/uprui/executor/RuiHttpFileCallback;->onProgress(Lcom/uprui/executor/RuiHttpTask;JJ)V

    .line 53
    iget-object v1, p0, Lcom/uprui/notify/RuiHttpFileNotifyCallback;->contentTitle:Ljava/lang/String;

    move-object v0, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/uprui/notify/RuiNotifyManager;->progressLoad(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;JJ)V

    .line 54
    return-void
.end method

.method public onRetry(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/Exception;I)V
    .locals 1
    .parameter
    .parameter "e"
    .parameter "retryCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<",
            "Ljava/io/File;",
            "+",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/lang/Exception;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/uprui/executor/RuiHttpFileCallback;->onRetry(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/Exception;I)V

    .line 84
    iget-object v0, p0, Lcom/uprui/notify/RuiHttpFileNotifyCallback;->contentTitle:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/uprui/notify/RuiNotifyManager;->retryLoad(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onStart(Lcom/uprui/executor/RuiHttpTask;)V
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
    .line 44
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    invoke-super {p0, p1}, Lcom/uprui/executor/RuiHttpFileCallback;->onStart(Lcom/uprui/executor/RuiHttpTask;)V

    .line 45
    iget-object v0, p0, Lcom/uprui/notify/RuiHttpFileNotifyCallback;->contentTitle:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/uprui/notify/RuiNotifyManager;->startLoad(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public onSuccess(Lcom/uprui/executor/RuiHttpTask;Ljava/io/File;Z)V
    .locals 1
    .parameter
    .parameter "t"
    .parameter "inCache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<",
            "Ljava/io/File;",
            "+",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/io/File;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/uprui/executor/RuiHttpFileCallback;->onSuccess(Lcom/uprui/executor/RuiHttpTask;Ljava/io/File;Z)V

    .line 60
    iget-object v0, p0, Lcom/uprui/notify/RuiHttpFileNotifyCallback;->contentTitle:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/uprui/notify/RuiNotifyManager;->successLoad(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onWait(Lcom/uprui/executor/RuiHttpTask;)V
    .locals 2
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
    .line 37
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    invoke-super {p0, p1}, Lcom/uprui/executor/RuiHttpFileCallback;->onWait(Lcom/uprui/executor/RuiHttpTask;)V

    .line 38
    iget-object v0, p0, Lcom/uprui/notify/RuiHttpFileNotifyCallback;->tricker:Ljava/lang/String;

    iget-object v1, p0, Lcom/uprui/notify/RuiHttpFileNotifyCallback;->contentTitle:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/uprui/notify/RuiNotifyManager;->waitLoad(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "contentTitle"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/uprui/notify/RuiHttpFileNotifyCallback;->contentTitle:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setTricker(Ljava/lang/String;)V
    .locals 0
    .parameter "tricker"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/uprui/notify/RuiHttpFileNotifyCallback;->tricker:Ljava/lang/String;

    .line 33
    return-void
.end method
