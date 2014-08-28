.class public Lcom/uprui/executor/RuiHttpBitmapStream;
.super Ljava/lang/Object;
.source "RuiHttpBitmapStream.java"

# interfaces
.implements Lcom/uprui/executor/RuiHttpStreamType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/uprui/executor/RuiHttpStreamType",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/io/ByteArrayOutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/ByteArrayOutputStream;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpBitmapStream;->getOutputStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public onError()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onFail()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onRetroy()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public onSuccess(Ljava/io/ByteArrayOutputStream;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "os"

    .prologue
    .line 18
    move-object v2, p1

    .line 19
    .local v2, bos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 20
    .local v0, array:[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 21
    .local v1, bitmap:Landroid/graphics/Bitmap;
    return-object v1
.end method

.method public bridge synthetic onSuccess(Ljava/io/OutputStream;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Lcom/uprui/executor/RuiHttpBitmapStream;->onSuccess(Ljava/io/ByteArrayOutputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
