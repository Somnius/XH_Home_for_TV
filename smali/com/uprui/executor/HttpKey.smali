.class public Lcom/uprui/executor/HttpKey;
.super Ljava/lang/Object;
.source "HttpKey.java"


# instance fields
.field public params:Lcom/uprui/executor/RequestParams;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/uprui/executor/RequestParams;)V
    .locals 0
    .parameter "url"
    .parameter "params"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/uprui/executor/HttpKey;->url:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/uprui/executor/HttpKey;->params:Lcom/uprui/executor/RequestParams;

    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 13
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/uprui/executor/HttpKey;

    if-nez v1, :cond_1

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 16
    check-cast v0, Lcom/uprui/executor/HttpKey;

    .line 17
    .local v0, other:Lcom/uprui/executor/HttpKey;
    invoke-virtual {p0}, Lcom/uprui/executor/HttpKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/uprui/executor/HttpKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/uprui/executor/HttpKey;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uprui/executor/HttpKey;->url:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uprui/executor/HttpKey;->params:Lcom/uprui/executor/RequestParams;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, urlParams:Ljava/lang/String;
    return-object v0

    .line 26
    .end local v0           #urlParams:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/uprui/executor/HttpKey;->params:Lcom/uprui/executor/RequestParams;

    invoke-virtual {v1}, Lcom/uprui/executor/RequestParams;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
