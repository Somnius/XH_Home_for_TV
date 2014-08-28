.class Lcom/rui/launcher/common/utils/CountDownUtils$1;
.super Ljava/lang/Object;
.source "CountDownUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rui/launcher/common/utils/CountDownUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rui/launcher/common/utils/CountDownUtils;


# direct methods
.method constructor <init>(Lcom/rui/launcher/common/utils/CountDownUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rui/launcher/common/utils/CountDownUtils$1;->this$0:Lcom/rui/launcher/common/utils/CountDownUtils;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 34
    .local v0, currentTime:J
    iget-object v8, p0, Lcom/rui/launcher/common/utils/CountDownUtils$1;->this$0:Lcom/rui/launcher/common/utils/CountDownUtils;

    #getter for: Lcom/rui/launcher/common/utils/CountDownUtils;->startTime:J
    invoke-static {v8}, Lcom/rui/launcher/common/utils/CountDownUtils;->access$0(Lcom/rui/launcher/common/utils/CountDownUtils;)J

    move-result-wide v8

    sub-long v2, v0, v8

    .line 35
    .local v2, duration:J
    div-long v6, v2, v12

    .line 37
    .local v6, second:J
    iget-object v8, p0, Lcom/rui/launcher/common/utils/CountDownUtils$1;->this$0:Lcom/rui/launcher/common/utils/CountDownUtils;

    #getter for: Lcom/rui/launcher/common/utils/CountDownUtils;->listener:Lcom/rui/launcher/common/utils/CountDownUtils$CountDownListener;
    invoke-static {v8}, Lcom/rui/launcher/common/utils/CountDownUtils;->access$1(Lcom/rui/launcher/common/utils/CountDownUtils;)Lcom/rui/launcher/common/utils/CountDownUtils$CountDownListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 38
    iget-object v8, p0, Lcom/rui/launcher/common/utils/CountDownUtils$1;->this$0:Lcom/rui/launcher/common/utils/CountDownUtils;

    #getter for: Lcom/rui/launcher/common/utils/CountDownUtils;->listener:Lcom/rui/launcher/common/utils/CountDownUtils$CountDownListener;
    invoke-static {v8}, Lcom/rui/launcher/common/utils/CountDownUtils;->access$1(Lcom/rui/launcher/common/utils/CountDownUtils;)Lcom/rui/launcher/common/utils/CountDownUtils$CountDownListener;

    move-result-object v8

    invoke-interface {v8, v6, v7}, Lcom/rui/launcher/common/utils/CountDownUtils$CountDownListener;->onCountDownPassed(J)V

    .line 41
    :cond_0
    iget-object v8, p0, Lcom/rui/launcher/common/utils/CountDownUtils$1;->this$0:Lcom/rui/launcher/common/utils/CountDownUtils;

    #getter for: Lcom/rui/launcher/common/utils/CountDownUtils;->countDownMilliseconds:J
    invoke-static {v8}, Lcom/rui/launcher/common/utils/CountDownUtils;->access$2(Lcom/rui/launcher/common/utils/CountDownUtils;)J

    move-result-wide v8

    cmp-long v8, v2, v8

    if-gez v8, :cond_1

    .line 42
    iget-object v8, p0, Lcom/rui/launcher/common/utils/CountDownUtils$1;->this$0:Lcom/rui/launcher/common/utils/CountDownUtils;

    #getter for: Lcom/rui/launcher/common/utils/CountDownUtils;->startTime:J
    invoke-static {v8}, Lcom/rui/launcher/common/utils/CountDownUtils;->access$0(Lcom/rui/launcher/common/utils/CountDownUtils;)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long/2addr v10, v6

    mul-long/2addr v10, v12

    add-long v4, v8, v10

    .line 44
    .local v4, nextTime:J
    iget-object v8, p0, Lcom/rui/launcher/common/utils/CountDownUtils$1;->this$0:Lcom/rui/launcher/common/utils/CountDownUtils;

    #getter for: Lcom/rui/launcher/common/utils/CountDownUtils;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/rui/launcher/common/utils/CountDownUtils;->access$3(Lcom/rui/launcher/common/utils/CountDownUtils;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/rui/launcher/common/utils/CountDownUtils$1;->this$0:Lcom/rui/launcher/common/utils/CountDownUtils;

    #getter for: Lcom/rui/launcher/common/utils/CountDownUtils;->countdownTask:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/rui/launcher/common/utils/CountDownUtils;->access$4(Lcom/rui/launcher/common/utils/CountDownUtils;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    iget-object v8, p0, Lcom/rui/launcher/common/utils/CountDownUtils$1;->this$0:Lcom/rui/launcher/common/utils/CountDownUtils;

    #getter for: Lcom/rui/launcher/common/utils/CountDownUtils;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/rui/launcher/common/utils/CountDownUtils;->access$3(Lcom/rui/launcher/common/utils/CountDownUtils;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/rui/launcher/common/utils/CountDownUtils$1;->this$0:Lcom/rui/launcher/common/utils/CountDownUtils;

    #getter for: Lcom/rui/launcher/common/utils/CountDownUtils;->countdownTask:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/rui/launcher/common/utils/CountDownUtils;->access$4(Lcom/rui/launcher/common/utils/CountDownUtils;)Ljava/lang/Runnable;

    move-result-object v9

    sub-long v10, v4, v0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    .end local v4           #nextTime:J
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v8, p0, Lcom/rui/launcher/common/utils/CountDownUtils$1;->this$0:Lcom/rui/launcher/common/utils/CountDownUtils;

    #calls: Lcom/rui/launcher/common/utils/CountDownUtils;->onCountDownFinish()V
    invoke-static {v8}, Lcom/rui/launcher/common/utils/CountDownUtils;->access$5(Lcom/rui/launcher/common/utils/CountDownUtils;)V

    goto :goto_0
.end method
