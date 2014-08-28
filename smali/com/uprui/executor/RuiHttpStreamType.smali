.class public interface abstract Lcom/uprui/executor/RuiHttpStreamType;
.super Ljava/lang/Object;
.source "RuiHttpStreamType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/io/OutputStream;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method public abstract onError()V
.end method

.method public abstract onFail()V
.end method

.method public abstract onRetroy()V
.end method

.method public abstract onSuccess(Ljava/io/OutputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)TT;"
        }
    .end annotation
.end method
