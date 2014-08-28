.class Lcom/uprui/tv/launcher8/clock/ClockWidget$YuanDaoClockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/clock/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YuanDaoClockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/clock/ClockWidget;


# direct methods
.method private constructor <init>(Lcom/uprui/tv/launcher8/clock/ClockWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget$YuanDaoClockReceiver;->this$0:Lcom/uprui/tv/launcher8/clock/ClockWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uprui/tv/launcher8/clock/ClockWidget;Lcom/uprui/tv/launcher8/clock/ClockWidget$YuanDaoClockReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/uprui/tv/launcher8/clock/ClockWidget$YuanDaoClockReceiver;-><init>(Lcom/uprui/tv/launcher8/clock/ClockWidget;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget$YuanDaoClockReceiver;->this$0:Lcom/uprui/tv/launcher8/clock/ClockWidget;

    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->updateTime()V

    .line 197
    iget-object v1, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget$YuanDaoClockReceiver;->this$0:Lcom/uprui/tv/launcher8/clock/ClockWidget;

    #getter for: Lcom/uprui/tv/launcher8/clock/ClockWidget;->moliClock:Lcom/uprui/tv/launcher8/clock/MoliClock;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->access$0(Lcom/uprui/tv/launcher8/clock/ClockWidget;)Lcom/uprui/tv/launcher8/clock/MoliClock;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget$YuanDaoClockReceiver;->this$0:Lcom/uprui/tv/launcher8/clock/ClockWidget;

    #getter for: Lcom/uprui/tv/launcher8/clock/ClockWidget;->moliClock:Lcom/uprui/tv/launcher8/clock/MoliClock;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->access$0(Lcom/uprui/tv/launcher8/clock/ClockWidget;)Lcom/uprui/tv/launcher8/clock/MoliClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/clock/MoliClock;->invalidate()V

    .line 201
    :cond_1
    return-void
.end method
