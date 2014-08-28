.class public abstract Lcom/rui/launcher/common/services/InterruptibleRunnable;
.super Ljava/lang/Object;
.source "InterruptibleRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/rui/launcher/common/services/InterruptibleRunnable;->mContext:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/rui/launcher/common/services/InterruptibleRunnable;->mHandler:Landroid/os/Handler;

    .line 13
    return-void
.end method


# virtual methods
.method protected sendMessage(IIILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/rui/launcher/common/services/InterruptibleRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 17
    return-void
.end method
