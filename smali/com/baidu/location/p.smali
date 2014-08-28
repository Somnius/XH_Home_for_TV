.class Lcom/baidu/location/p;
.super Lcom/baidu/location/z;

# interfaces
.implements Lcom/baidu/location/an;
.implements Lcom/baidu/location/j;


# static fields
.field private static dS:Lcom/baidu/location/p; = null

.field static final dT:I = 0xbb8


# instance fields
.field private dU:J

.field private dV:Lcom/baidu/location/BDLocation;

.field public dW:Lcom/baidu/location/z$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/p;->dS:Lcom/baidu/location/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/baidu/location/z;-><init>()V

    iput-object v2, p0, Lcom/baidu/location/p;->dV:Lcom/baidu/location/BDLocation;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/p;->dU:J

    iput-object v2, p0, Lcom/baidu/location/p;->dW:Lcom/baidu/location/z$a;

    new-instance v0, Lcom/baidu/location/z$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/z$a;-><init>(Lcom/baidu/location/z;)V

    iput-object v0, p0, Lcom/baidu/location/p;->dW:Lcom/baidu/location/z$a;

    return-void
.end method

.method private am()V
    .locals 1

    invoke-static {}, Lcom/baidu/location/l;->u()Lcom/baidu/location/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/l;->z()V

    return-void
.end method

.method public static an()Lcom/baidu/location/p;
    .locals 1

    sget-object v0, Lcom/baidu/location/p;->dS:Lcom/baidu/location/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/p;

    invoke-direct {v0}, Lcom/baidu/location/p;-><init>()V

    sput-object v0, Lcom/baidu/location/p;->dS:Lcom/baidu/location/p;

    :cond_0
    sget-object v0, Lcom/baidu/location/p;->dS:Lcom/baidu/location/p;

    return-object v0
.end method

.method private goto(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/p;->dU:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/p;->dV:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/p;->dV:Lcom/baidu/location/BDLocation;

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/g;->if(Lcom/baidu/location/BDLocation;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/g;->if(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/p;->void(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/p;->dW:Lcom/baidu/location/z$a;

    invoke-virtual {v1, v0}, Lcom/baidu/location/z$a;->long(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/p;->dU:J

    goto :goto_0
.end method


# virtual methods
.method ab()V
    .locals 3

    const-string v0, "baidu_location_service"

    const-string v1, "on network exception"

    invoke-static {v0, v1}, Lcom/baidu/location/b;->do(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/p;->dV:Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/ao;->bz()Lcom/baidu/location/ao;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/location/ao;->new(Z)Lcom/baidu/location/BDLocation;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/g;->if(Lcom/baidu/location/BDLocation;I)V

    invoke-direct {p0}, Lcom/baidu/location/p;->am()V

    return-void
.end method

.method byte(Landroid/os/Message;)V
    .locals 3

    const-string v0, "baidu_location_service"

    const-string v1, "on network success"

    invoke-static {v0, v1}, Lcom/baidu/location/b;->do(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v1, v0, v2}, Lcom/baidu/location/g;->if(Lcom/baidu/location/BDLocation;I)V

    invoke-static {v0}, Lcom/baidu/location/b;->if(Lcom/baidu/location/BDLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/baidu/location/p;->dV:Lcom/baidu/location/BDLocation;

    :goto_0
    invoke-direct {p0}, Lcom/baidu/location/p;->am()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/p;->dV:Lcom/baidu/location/BDLocation;

    goto :goto_0
.end method

.method public else(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/p;->goto(Landroid/os/Message;)V

    return-void
.end method
