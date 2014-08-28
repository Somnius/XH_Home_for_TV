.class public Lcom/uprui/executor/RuiHttpFileCallback;
.super Ljava/lang/Object;
.source "RuiHttpFileCallback.java"

# interfaces
.implements Lcom/uprui/executor/RuiHttpListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/uprui/executor/RuiHttpListener",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private tmpFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 18
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uprui/utils/RuiFileUtil;->generateLoadTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/uprui/executor/RuiHttpFileCallback;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .parameter "file"
    .parameter "tmpFile"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/uprui/executor/RuiHttpFileCallback;->file:Ljava/io/File;

    .line 23
    iput-object p2, p0, Lcom/uprui/executor/RuiHttpFileCallback;->tmpFile:Ljava/io/File;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lcom/uprui/utils/RuiFileUtil;->generateValidLoadFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/executor/RuiHttpFileCallback;->file:Ljava/io/File;

    .line 14
    invoke-static {p1}, Lcom/uprui/utils/RuiFileUtil;->generateLoadTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/executor/RuiHttpFileCallback;->tmpFile:Ljava/io/File;

    .line 15
    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpFileCallback;->file:Ljava/io/File;

    return-object v0
.end method

.method public getTmpFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpFileCallback;->tmpFile:Ljava/io/File;

    return-object v0
.end method

.method public onCancel(Lcom/uprui/executor/RuiHttpTask;)V
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
    .line 67
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
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
    .line 75
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
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
    .line 89
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    return-void
.end method

.method public onProgress(Lcom/uprui/executor/RuiHttpTask;JJ)V
    .locals 0
    .parameter
    .parameter "totalSize"
    .parameter "l"
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
    .line 53
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    return-void
.end method

.method public onRetry(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/Exception;I)V
    .locals 0
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
    .line 82
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    return-void
.end method

.method public onStart(Lcom/uprui/executor/RuiHttpTask;)V
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
    .line 45
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    return-void
.end method

.method public onSuccess(Lcom/uprui/executor/RuiHttpTask;Ljava/io/File;Z)V
    .locals 0
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
    .line 60
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/uprui/executor/RuiHttpTask;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/uprui/executor/RuiHttpFileCallback;->onSuccess(Lcom/uprui/executor/RuiHttpTask;Ljava/io/File;Z)V

    return-void
.end method

.method public onWait(Lcom/uprui/executor/RuiHttpTask;)V
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
    .line 38
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    return-void
.end method
