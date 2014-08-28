.class public Lcom/uprui/notify/RuiNotifyBroadCast;
.super Landroid/content/BroadcastReceiver;
.source "RuiNotifyBroadCast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 14
    const-string v2, "type"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 15
    .local v1, type:I
    const-string v2, "createID"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 17
    .local v0, createID:I
    packed-switch v1, :pswitch_data_0

    .line 33
    :goto_0
    :pswitch_0
    return-void

    .line 22
    :pswitch_1
    invoke-static {v0}, Lcom/uprui/executor/RuiHttpClient;->cancelTask(I)V

    goto :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
