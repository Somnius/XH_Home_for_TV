.class Lcom/uprui/launcher/cache/LoadImageView$2;
.super Lcom/uprui/executor/RuiHttpFileCallback;
.source "LoadImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/launcher/cache/LoadImageView;->loadNetWorkImageInFile(Ljava/io/File;Ljava/lang/String;Lcom/uprui/executor/RequestParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/launcher/cache/LoadImageView;


# direct methods
.method constructor <init>(Lcom/uprui/launcher/cache/LoadImageView;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/launcher/cache/LoadImageView$2;->this$0:Lcom/uprui/launcher/cache/LoadImageView;

    .line 102
    invoke-direct {p0, p2}, Lcom/uprui/executor/RuiHttpFileCallback;-><init>(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$0(Lcom/uprui/launcher/cache/LoadImageView$2;)Lcom/uprui/launcher/cache/LoadImageView;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView$2;->this$0:Lcom/uprui/launcher/cache/LoadImageView;

    return-object v0
.end method


# virtual methods
.method public onFaile(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V
    .locals 2
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
    .line 137
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    invoke-super {p0, p1, p2}, Lcom/uprui/executor/RuiHttpFileCallback;->onFaile(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView$2;->this$0:Lcom/uprui/launcher/cache/LoadImageView;

    new-instance v1, Lcom/uprui/launcher/cache/LoadImageView$2$3;

    invoke-direct {v1, p0}, Lcom/uprui/launcher/cache/LoadImageView$2$3;-><init>(Lcom/uprui/launcher/cache/LoadImageView$2;)V

    invoke-virtual {v0, v1}, Lcom/uprui/launcher/cache/LoadImageView;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method public onFinish(Lcom/uprui/executor/RuiHttpTask;)V
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
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    const/4 v1, 0x0

    .line 148
    invoke-super {p0, p1}, Lcom/uprui/executor/RuiHttpFileCallback;->onFinish(Lcom/uprui/executor/RuiHttpTask;)V

    .line 149
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView$2;->this$0:Lcom/uprui/launcher/cache/LoadImageView;

    #setter for: Lcom/uprui/launcher/cache/LoadImageView;->loaddingHttp:Z
    invoke-static {v0, v1}, Lcom/uprui/launcher/cache/LoadImageView;->access$2(Lcom/uprui/launcher/cache/LoadImageView;Z)V

    .line 150
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView$2;->this$0:Lcom/uprui/launcher/cache/LoadImageView;

    #setter for: Lcom/uprui/launcher/cache/LoadImageView;->progress:I
    invoke-static {v0, v1}, Lcom/uprui/launcher/cache/LoadImageView;->access$1(Lcom/uprui/launcher/cache/LoadImageView;I)V

    .line 151
    return-void
.end method

.method public onProgress(Lcom/uprui/executor/RuiHttpTask;JJ)V
    .locals 3
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
    .line 158
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    invoke-super/range {p0 .. p5}, Lcom/uprui/executor/RuiHttpFileCallback;->onProgress(Lcom/uprui/executor/RuiHttpTask;JJ)V

    .line 159
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView$2;->this$0:Lcom/uprui/launcher/cache/LoadImageView;

    const-wide/16 v1, 0x64

    mul-long/2addr v1, p4

    div-long/2addr v1, p2

    long-to-int v1, v1

    #setter for: Lcom/uprui/launcher/cache/LoadImageView;->progress:I
    invoke-static {v0, v1}, Lcom/uprui/launcher/cache/LoadImageView;->access$1(Lcom/uprui/launcher/cache/LoadImageView;I)V

    .line 161
    return-void
.end method

.method public onSuccess(Lcom/uprui/executor/RuiHttpTask;Ljava/io/File;Z)V
    .locals 2
    .parameter
    .parameter "file"
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
    .line 123
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/uprui/executor/RuiHttpFileCallback;->onSuccess(Lcom/uprui/executor/RuiHttpTask;Ljava/io/File;Z)V

    .line 126
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView$2;->this$0:Lcom/uprui/launcher/cache/LoadImageView;

    new-instance v1, Lcom/uprui/launcher/cache/LoadImageView$2$2;

    invoke-direct {v1, p0, p2}, Lcom/uprui/launcher/cache/LoadImageView$2$2;-><init>(Lcom/uprui/launcher/cache/LoadImageView$2;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/uprui/launcher/cache/LoadImageView;->post(Ljava/lang/Runnable;)Z

    .line 131
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
    .line 107
    .local p1, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<Ljava/io/File;+Ljava/io/OutputStream;>;"
    invoke-super {p0, p1}, Lcom/uprui/executor/RuiHttpFileCallback;->onWait(Lcom/uprui/executor/RuiHttpTask;)V

    .line 108
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView$2;->this$0:Lcom/uprui/launcher/cache/LoadImageView;

    const/4 v1, 0x0

    #setter for: Lcom/uprui/launcher/cache/LoadImageView;->progress:I
    invoke-static {v0, v1}, Lcom/uprui/launcher/cache/LoadImageView;->access$1(Lcom/uprui/launcher/cache/LoadImageView;I)V

    .line 109
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView$2;->this$0:Lcom/uprui/launcher/cache/LoadImageView;

    new-instance v1, Lcom/uprui/launcher/cache/LoadImageView$2$1;

    invoke-direct {v1, p0}, Lcom/uprui/launcher/cache/LoadImageView$2$1;-><init>(Lcom/uprui/launcher/cache/LoadImageView$2;)V

    invoke-virtual {v0, v1}, Lcom/uprui/launcher/cache/LoadImageView;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method
