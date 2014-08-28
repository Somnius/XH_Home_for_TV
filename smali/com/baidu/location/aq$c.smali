.class public Lcom/baidu/location/aq$c;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/aq;


# direct methods
.method public constructor <init>(Lcom/baidu/location/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/aq$c;->a:Lcom/baidu/location/aq;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/aq$c;->a:Lcom/baidu/location/aq;

    invoke-static {v0, p1}, Lcom/baidu/location/aq;->if(Lcom/baidu/location/aq;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/location/aq$c;->a:Lcom/baidu/location/aq;

    invoke-static {v0}, Lcom/baidu/location/aq;->do(Lcom/baidu/location/aq;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/aq$c;->a:Lcom/baidu/location/aq;

    invoke-static {v1}, Lcom/baidu/location/aq;->for(Lcom/baidu/location/aq;)Lcom/baidu/location/aq$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
