.class public Lcom/uprui/executor/RuiResponseErrorStatusCodeException;
.super Ljava/lang/Exception;
.source "RuiResponseErrorStatusCodeException.java"


# static fields
.field private static final serialVersionUID:J = -0x3873f6c47b34a3a1L


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "throwable"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/uprui/executor/RuiResponseErrorStatusCodeException;->statusCode:I

    return v0
.end method

.method public setStatusCode(I)V
    .locals 0
    .parameter "statusCode"

    .prologue
    .line 38
    iput p1, p0, Lcom/uprui/executor/RuiResponseErrorStatusCodeException;->statusCode:I

    .line 39
    return-void
.end method
