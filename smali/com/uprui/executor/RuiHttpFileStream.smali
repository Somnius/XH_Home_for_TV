.class public Lcom/uprui/executor/RuiHttpFileStream;
.super Ljava/lang/Object;
.source "RuiHttpFileStream.java"

# interfaces
.implements Lcom/uprui/executor/RuiHttpStreamType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/uprui/executor/RuiHttpStreamType",
        "<",
        "Ljava/io/File;",
        "Ljava/io/FileOutputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private tempFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .parameter "file"
    .parameter "tempFile"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/uprui/executor/RuiHttpFileStream;->file:Ljava/io/File;

    .line 20
    iput-object p2, p0, Lcom/uprui/executor/RuiHttpFileStream;->tempFile:Ljava/io/File;

    .line 22
    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/FileOutputStream;
    .locals 3

    .prologue
    .line 25
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpFileStream;->tempFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpFileStream;->tempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/uprui/executor/RuiHttpFileStream;->tempFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    :goto_1
    return-object v1

    .line 28
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 34
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 36
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 54
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 41
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpFileStream;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 47
    :goto_3
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/uprui/executor/RuiHttpFileStream;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 48
    :catch_2
    move-exception v0

    .line 50
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 42
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 44
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public bridge synthetic getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpFileStream;->getOutputStream()Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public onError()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onFail()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpFileStream;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/uprui/executor/RuiHttpFileStream;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 102
    :cond_0
    return-void
.end method

.method public onRetroy()V
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpFileStream;->tempFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpFileStream;->tempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpFileStream;->tempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpFileStream;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 85
    :try_start_1
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpFileStream;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    .line 88
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSuccess(Ljava/io/FileOutputStream;)Ljava/io/File;
    .locals 3
    .parameter "os"

    .prologue
    .line 58
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpFileStream;->tempFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpFileStream;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 61
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpFileStream;->tempFile:Ljava/io/File;

    iget-object v2, p0, Lcom/uprui/executor/RuiHttpFileStream;->file:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/uprui/utils/RuiFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 62
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpFileStream;->tempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/uprui/executor/RuiHttpFileStream;->file:Ljava/io/File;

    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/io/OutputStream;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lcom/uprui/executor/RuiHttpFileStream;->onSuccess(Ljava/io/FileOutputStream;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
