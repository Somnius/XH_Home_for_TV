.class Lcom/baidu/location/s$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/s;


# direct methods
.method private constructor <init>(Lcom/baidu/location/s;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/s$b;->a:Lcom/baidu/location/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/s;Lcom/baidu/location/s$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/s$b;-><init>(Lcom/baidu/location/s;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/s$b;->a:Lcom/baidu/location/s;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/baidu/location/s;->do(Lcom/baidu/location/s;J)J

    iget-object v0, p0, Lcom/baidu/location/s$b;->a:Lcom/baidu/location/s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/s;->if(Lcom/baidu/location/s;Z)V

    iget-object v0, p0, Lcom/baidu/location/s$b;->a:Lcom/baidu/location/s;

    invoke-static {v0, p1}, Lcom/baidu/location/s;->if(Lcom/baidu/location/s;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/s$b;->a:Lcom/baidu/location/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/s;->do(Lcom/baidu/location/s;Z)Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/s$b;->a:Lcom/baidu/location/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/s;->if(Lcom/baidu/location/s;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/s$b;->a:Lcom/baidu/location/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/s;->if(Lcom/baidu/location/s;Z)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/baidu/location/s$b;->a:Lcom/baidu/location/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/s;->if(Lcom/baidu/location/s;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/s$b;->a:Lcom/baidu/location/s;

    invoke-static {v0, v3}, Lcom/baidu/location/s;->if(Lcom/baidu/location/s;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/baidu/location/s$b;->a:Lcom/baidu/location/s;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/baidu/location/s;->if(Lcom/baidu/location/s;J)J

    iget-object v0, p0, Lcom/baidu/location/s$b;->a:Lcom/baidu/location/s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/s;->do(Lcom/baidu/location/s;Z)Z

    iget-object v0, p0, Lcom/baidu/location/s$b;->a:Lcom/baidu/location/s;

    invoke-static {v0, v3}, Lcom/baidu/location/s;->if(Lcom/baidu/location/s;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/baidu/location/s$b;->a:Lcom/baidu/location/s;

    invoke-static {v0, v3}, Lcom/baidu/location/s;->do(Lcom/baidu/location/s;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
