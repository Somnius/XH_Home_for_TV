.class public Lcom/uprui/tv/launcher8/workspace/LiveVideoCategoryAcceptAble;
.super Ljava/lang/Object;
.source "LiveVideoCategoryAcceptAble.java"

# interfaces
.implements Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem$CategoryAcceptAble;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(I)Z
    .locals 1
    .parameter "category"

    .prologue
    .line 10
    const/16 v0, 0x28a8

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
