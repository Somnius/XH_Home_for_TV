.class Lcom/baidu/location/al$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/al;

.field final synthetic if:Lcom/baidu/location/ah;


# direct methods
.method constructor <init>(Lcom/baidu/location/al;Lcom/baidu/location/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/al$1;->a:Lcom/baidu/location/al;

    iput-object p2, p0, Lcom/baidu/location/al$1;->if:Lcom/baidu/location/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/al$1;->a:Lcom/baidu/location/al;

    iget-object v1, p0, Lcom/baidu/location/al$1;->if:Lcom/baidu/location/ah;

    invoke-virtual {v1}, Lcom/baidu/location/ah;->getGeofenceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/al;->k(Ljava/lang/String;)V

    return-void
.end method
