.class public Lcom/rui/launcher/common/utils/CountDownUtils;
.super Ljava/lang/Object;
.source "CountDownUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rui/launcher/common/utils/CountDownUtils$CountDownListener;
    }
.end annotation


# instance fields
.field private countDownMilliseconds:J

.field private countdownTask:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private listener:Lcom/rui/launcher/common/utils/CountDownUtils$CountDownListener;

.field private startTime:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;J)V
    .locals 1
    .parameter "handler"
    .parameter "countDownMilliseconds"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/rui/launcher/common/utils/CountDownUtils$1;

    invoke-direct {v0, p0}, Lcom/rui/launcher/common/utils/CountDownUtils$1;-><init>(Lcom/rui/launcher/common/utils/CountDownUtils;)V

    iput-object v0, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->countdownTask:Ljava/lang/Runnable;

    .line 13
    iput-wide p2, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->countDownMilliseconds:J

    .line 14
    iput-object p1, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->handler:Landroid/os/Handler;

    .line 15
    return-void
.end method

.method static synthetic access$0(Lcom/rui/launcher/common/utils/CountDownUtils;)J
    .locals 2
    .parameter

    .prologue
    .line 8
    iget-wide v0, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->startTime:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/rui/launcher/common/utils/CountDownUtils;)Lcom/rui/launcher/common/utils/CountDownUtils$CountDownListener;
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-object v0, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->listener:Lcom/rui/launcher/common/utils/CountDownUtils$CountDownListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/rui/launcher/common/utils/CountDownUtils;)J
    .locals 2
    .parameter

    .prologue
    .line 9
    iget-wide v0, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->countDownMilliseconds:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/rui/launcher/common/utils/CountDownUtils;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/rui/launcher/common/utils/CountDownUtils;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->countdownTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/rui/launcher/common/utils/CountDownUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/rui/launcher/common/utils/CountDownUtils;->onCountDownFinish()V

    return-void
.end method

.method private onCountDownFinish()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->countdownTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    iget-object v0, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->listener:Lcom/rui/launcher/common/utils/CountDownUtils$CountDownListener;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->listener:Lcom/rui/launcher/common/utils/CountDownUtils$CountDownListener;

    invoke-interface {v0}, Lcom/rui/launcher/common/utils/CountDownUtils$CountDownListener;->onCountDownFinish()V

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->countdownTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    return-void
.end method

.method public setCountDownListener(Lcom/rui/launcher/common/utils/CountDownUtils$CountDownListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->listener:Lcom/rui/launcher/common/utils/CountDownUtils$CountDownListener;

    .line 60
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->startTime:J

    .line 19
    iget-object v0, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->countdownTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    iget-object v0, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rui/launcher/common/utils/CountDownUtils;->countdownTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    return-void
.end method
