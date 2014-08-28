.class public Lcom/uprui/executor/RuiHttpStringStream;
.super Ljava/lang/Object;
.source "RuiHttpStringStream.java"

# interfaces
.implements Lcom/uprui/executor/RuiHttpStreamType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/uprui/executor/RuiHttpStreamType",
        "<",
        "Ljava/lang/String;",
        "Ljava/io/ByteArrayOutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/ByteArrayOutputStream;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpStringStream;->getOutputStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public onError()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onFail()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onRetroy()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/io/OutputStream;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Lcom/uprui/executor/RuiHttpStringStream;->onSuccess(Ljava/io/ByteArrayOutputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Ljava/io/ByteArrayOutputStream;)Ljava/lang/String;
    .locals 2
    .parameter "os"

    .prologue
    .line 23
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 28
    :goto_0
    return-object v1

    .line 24
    :catch_0
    move-exception v0

    .line 26
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 28
    const/4 v1, 0x0

    goto :goto_0
.end method
