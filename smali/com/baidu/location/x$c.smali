.class public Lcom/baidu/location/x$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/x;


# direct methods
.method public constructor <init>(Lcom/baidu/location/x;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/x$c;->a:Lcom/baidu/location/x;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    sget-boolean v0, Lcom/baidu/location/f;->isServing:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/baidu/location/x$c;->a:Lcom/baidu/location/x;

    invoke-static {v0}, Lcom/baidu/location/x;->new(Lcom/baidu/location/x;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/baidu/location/x$c;->a:Lcom/baidu/location/x;

    invoke-static {v0, p1}, Lcom/baidu/location/x;->if(Lcom/baidu/location/x;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x29 -> :sswitch_0
    .end sparse-switch
.end method
