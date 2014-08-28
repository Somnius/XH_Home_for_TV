.class public Lcom/uprui/executor/RuiHttpBinaryStream;
.super Ljava/lang/Object;
.source "RuiHttpBinaryStream.java"

# interfaces
.implements Lcom/uprui/executor/RuiHttpStreamType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/uprui/executor/RuiHttpStreamType",
        "<[B",
        "Ljava/io/ByteArrayOutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/ByteArrayOutputStream;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpBinaryStream;->getOutputStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public onError()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public onFail()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onRetroy()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/io/OutputStream;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Lcom/uprui/executor/RuiHttpBinaryStream;->onSuccess(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Ljava/io/ByteArrayOutputStream;)[B
    .locals 1
    .parameter "os"

    .prologue
    .line 16
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
