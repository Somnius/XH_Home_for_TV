.class Lcom/baidu/location/ai$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/ai;


# direct methods
.method private constructor <init>(Lcom/baidu/location/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/ai$a;->a:Lcom/baidu/location/ai;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/ai;Lcom/baidu/location/ai$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/ai$a;-><init>(Lcom/baidu/location/ai;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/16 v1, 0x29

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/ai$a;->a:Lcom/baidu/location/ai;

    invoke-static {v0}, Lcom/baidu/location/ai;->if(Lcom/baidu/location/ai;)V

    invoke-static {}, Lcom/baidu/location/f;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-static {}, Lcom/baidu/location/x;->aU()Lcom/baidu/location/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/x;->aY()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/x;->aU()Lcom/baidu/location/x;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/location/x;->fF:Lcom/baidu/location/x$c;

    invoke-virtual {v0, v1}, Lcom/baidu/location/x$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
