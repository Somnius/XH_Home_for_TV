.class public Lcom/baidu/location/f$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/f;


# direct methods
.method public constructor <init>(Lcom/baidu/location/f;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/f$a;->a:Lcom/baidu/location/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/baidu/location/f;->isServing:Z

    if-ne v0, v2, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f$a;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->if(Lcom/baidu/location/f;)V

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/baidu/location/f$a;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->do(Lcom/baidu/location/f;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/baidu/location/f$a;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->for(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/baidu/location/f$a;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->do(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/baidu/location/f$a;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->if(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/baidu/location/f$a;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->int(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/baidu/location/y;->ag()Lcom/baidu/location/y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/y;->case(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/baidu/location/ao;->bz()Lcom/baidu/location/ao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/ao;->h(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcom/baidu/location/p;->an()Lcom/baidu/location/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/p;->else(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lcom/baidu/location/y;->ag()Lcom/baidu/location/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/y;->ae()V

    goto :goto_0

    :sswitch_8
    invoke-static {}, Lcom/baidu/location/x;->aU()Lcom/baidu/location/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/x;->aV()V

    goto :goto_0

    :sswitch_9
    invoke-static {}, Lcom/baidu/location/x;->aU()Lcom/baidu/location/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/x;->aX()V

    goto :goto_0

    :sswitch_a
    invoke-static {}, Lcom/baidu/location/ab;->a()Lcom/baidu/location/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ab;->do()V

    goto :goto_0

    :sswitch_b
    invoke-static {}, Lcom/baidu/location/ab;->a()Lcom/baidu/location/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ab;->if()V

    goto :goto_0

    :sswitch_c
    invoke-static {}, Lcom/baidu/location/ab;->a()Lcom/baidu/location/ab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/ab;->a(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_d
    invoke-static {}, Lcom/baidu/location/aq;->b2()Lcom/baidu/location/aq;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/location/aq;->if(Landroid/content/Context;Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_e
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/al;->int(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc -> :sswitch_1
        0xf -> :sswitch_2
        0x16 -> :sswitch_4
        0x19 -> :sswitch_6
        0x1c -> :sswitch_5
        0x29 -> :sswitch_7
        0x39 -> :sswitch_3
        0x6e -> :sswitch_8
        0x6f -> :sswitch_9
        0xc9 -> :sswitch_a
        0xca -> :sswitch_b
        0xcb -> :sswitch_c
        0xce -> :sswitch_d
        0xcf -> :sswitch_e
    .end sparse-switch
.end method
