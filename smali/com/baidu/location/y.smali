.class Lcom/baidu/location/y;
.super Lcom/baidu/location/z;

# interfaces
.implements Lcom/baidu/location/an;
.implements Lcom/baidu/location/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/y$1;,
        Lcom/baidu/location/y$a;
    }
.end annotation


# static fields
.field private static dE:Lcom/baidu/location/y;


# instance fields
.field final dD:I

.field private dF:Lcom/baidu/location/aj;

.field private dG:Z

.field private dH:Lcom/baidu/location/BDLocation;

.field public dI:Lcom/baidu/location/z$a;

.field private dJ:Z

.field private dK:Ljava/lang/String;

.field private dL:J

.field final dM:I

.field private dN:Lcom/baidu/location/n$a;

.field private dO:Z

.field private volatile dP:Z

.field private dQ:Lcom/baidu/location/ai$b;

.field final dy:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/y;->dE:Lcom/baidu/location/y;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/location/z;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/baidu/location/y;->dD:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/baidu/location/y;->dM:I

    iput-boolean v3, p0, Lcom/baidu/location/y;->dJ:Z

    iput-object v1, p0, Lcom/baidu/location/y;->dF:Lcom/baidu/location/aj;

    iput-object v1, p0, Lcom/baidu/location/y;->dI:Lcom/baidu/location/z$a;

    iput-object v1, p0, Lcom/baidu/location/y;->dK:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/y;->dH:Lcom/baidu/location/BDLocation;

    iput-object v1, p0, Lcom/baidu/location/y;->dQ:Lcom/baidu/location/ai$b;

    iput-object v1, p0, Lcom/baidu/location/y;->dN:Lcom/baidu/location/n$a;

    iput-boolean v3, p0, Lcom/baidu/location/y;->dG:Z

    iput-boolean v2, p0, Lcom/baidu/location/y;->dP:Z

    iput-boolean v2, p0, Lcom/baidu/location/y;->dO:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/y;->dL:J

    new-instance v0, Lcom/baidu/location/z$b;

    invoke-direct {v0, p0}, Lcom/baidu/location/z$b;-><init>(Lcom/baidu/location/z;)V

    iput-object v0, p0, Lcom/baidu/location/y;->dy:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/location/aj;

    invoke-direct {v0}, Lcom/baidu/location/aj;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/y;->dF:Lcom/baidu/location/aj;

    new-instance v0, Lcom/baidu/location/z$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/z$a;-><init>(Lcom/baidu/location/z;)V

    iput-object v0, p0, Lcom/baidu/location/y;->dI:Lcom/baidu/location/z$a;

    return-void
.end method

.method private ac()Z
    .locals 2

    invoke-static {}, Lcom/baidu/location/ai;->bb()Lcom/baidu/location/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ai;->ba()Lcom/baidu/location/ai$b;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/y;->dC:Lcom/baidu/location/ai$b;

    iget-object v0, p0, Lcom/baidu/location/y;->dF:Lcom/baidu/location/aj;

    iget-object v1, p0, Lcom/baidu/location/y;->dC:Lcom/baidu/location/ai$b;

    invoke-virtual {v0, v1}, Lcom/baidu/location/aj;->do(Lcom/baidu/location/ai$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ad()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/y;->dP:Z

    invoke-direct {p0}, Lcom/baidu/location/y;->ak()V

    return-void
.end method

.method public static ag()Lcom/baidu/location/y;
    .locals 1

    sget-object v0, Lcom/baidu/location/y;->dE:Lcom/baidu/location/y;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/y;

    invoke-direct {v0}, Lcom/baidu/location/y;-><init>()V

    sput-object v0, Lcom/baidu/location/y;->dE:Lcom/baidu/location/y;

    :cond_0
    sget-object v0, Lcom/baidu/location/y;->dE:Lcom/baidu/location/y;

    return-object v0
.end method

.method private ak()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/y;->dH:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/l;->u()Lcom/baidu/location/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/l;->z()V

    :cond_0
    return-void
.end method

.method private al()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/y;->dP:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/y;->dL:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/y;->dH:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/y;->dH:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0, v1}, Lcom/baidu/location/g;->do(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/y;->ad()V

    goto :goto_0

    :cond_1
    const-string v0, "baidu_location_service"

    const-string v1, "start network locating ..."

    invoke-static {v0, v1}, Lcom/baidu/location/b;->do(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/baidu/location/y;->dP:Z

    iget-object v0, p0, Lcom/baidu/location/y;->dN:Lcom/baidu/location/n$a;

    invoke-direct {p0, v0}, Lcom/baidu/location/y;->if(Lcom/baidu/location/n$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/location/y;->dJ:Z

    invoke-direct {p0}, Lcom/baidu/location/y;->ac()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/baidu/location/y;->dJ:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/y;->dH:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/y;->dH:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0, v1}, Lcom/baidu/location/g;->do(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/y;->ad()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v5}, Lcom/baidu/location/y;->void(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/g;->do(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/y;->ad()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/baidu/location/y;->dK:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/y;->dK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v5, p0, Lcom/baidu/location/y;->dK:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lcom/baidu/location/y;->dI:Lcom/baidu/location/z$a;

    invoke-virtual {v1, v0}, Lcom/baidu/location/z$a;->long(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/y;->dz:Lcom/baidu/location/n$a;

    iput-object v0, p0, Lcom/baidu/location/y;->dN:Lcom/baidu/location/n$a;

    iget-object v0, p0, Lcom/baidu/location/y;->dC:Lcom/baidu/location/ai$b;

    iput-object v0, p0, Lcom/baidu/location/y;->dQ:Lcom/baidu/location/ai$b;

    iget-boolean v0, p0, Lcom/baidu/location/y;->dG:Z

    if-ne v0, v4, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/y;->dG:Z

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/y;->dL:J

    goto/16 :goto_0
.end method

.method private char(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "baidu_location_service"

    const-string v1, "on request location ..."

    invoke-static {v0, v1}, Lcom/baidu/location/b;->do(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/g;->for(Landroid/os/Message;)I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/baidu/location/s;->aH()Lcom/baidu/location/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/s;->ay()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/location/s;->aH()Lcom/baidu/location/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/s;->aw()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/baidu/location/g;->if(Lcom/baidu/location/BDLocation;Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/ab;->a()Lcom/baidu/location/ab;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/baidu/location/ab;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/ab;->a()Lcom/baidu/location/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/ab;->if(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/location/y;->dG:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/baidu/location/y;->al()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/baidu/location/y;->dP:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/location/ai;->bb()Lcom/baidu/location/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ai;->a8()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/baidu/location/y;->dO:Z

    iget-object v0, p0, Lcom/baidu/location/y;->dy:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/location/y$a;

    invoke-direct {v1, p0, v3}, Lcom/baidu/location/y$a;-><init>(Lcom/baidu/location/y;Lcom/baidu/location/y$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/baidu/location/y;->al()V

    goto :goto_0
.end method

.method static synthetic do(Lcom/baidu/location/y;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/y;->dO:Z

    return v0
.end method

.method static synthetic if(Lcom/baidu/location/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/y;->al()V

    return-void
.end method

.method private if(Lcom/baidu/location/ai$b;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/location/ai;->bb()Lcom/baidu/location/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/ai;->ba()Lcom/baidu/location/ai$b;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/y;->dC:Lcom/baidu/location/ai$b;

    iget-object v2, p0, Lcom/baidu/location/y;->dC:Lcom/baidu/location/ai$b;

    if-ne p1, v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/baidu/location/y;->dC:Lcom/baidu/location/ai$b;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/baidu/location/y;->dC:Lcom/baidu/location/ai$b;

    invoke-virtual {p1, v2}, Lcom/baidu/location/ai$b;->a(Lcom/baidu/location/ai$b;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private if(Lcom/baidu/location/n$a;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/location/n;->K()Lcom/baidu/location/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/n;->H()Lcom/baidu/location/n$a;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/y;->dz:Lcom/baidu/location/n$a;

    iget-object v2, p0, Lcom/baidu/location/y;->dz:Lcom/baidu/location/n$a;

    if-ne v2, p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/baidu/location/y;->dz:Lcom/baidu/location/n$a;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/baidu/location/y;->dz:Lcom/baidu/location/n$a;

    invoke-virtual {p1, v2}, Lcom/baidu/location/n$a;->a(Lcom/baidu/location/n$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic if(Lcom/baidu/location/y;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/y;->dO:Z

    return p1
.end method


# virtual methods
.method ab()V
    .locals 3

    const-string v0, "baidu_location_service"

    const-string v1, "on network exception"

    invoke-static {v0, v1}, Lcom/baidu/location/b;->do(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/y;->dH:Lcom/baidu/location/BDLocation;

    iget-object v0, p0, Lcom/baidu/location/y;->dF:Lcom/baidu/location/aj;

    invoke-virtual {v0}, Lcom/baidu/location/aj;->bh()V

    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/ao;->bz()Lcom/baidu/location/ao;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/location/ao;->new(Z)Lcom/baidu/location/BDLocation;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/g;->if(Lcom/baidu/location/BDLocation;I)V

    invoke-direct {p0}, Lcom/baidu/location/y;->ad()V

    return-void
.end method

.method public ae()V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/y;->dO:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/location/y;->al()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/y;->dO:Z

    :cond_0
    return-void
.end method

.method af()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/y;->dP:Z

    invoke-virtual {p0}, Lcom/baidu/location/y;->ah()V

    return-void
.end method

.method ah()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/y;->dH:Lcom/baidu/location/BDLocation;

    iget-object v0, p0, Lcom/baidu/location/y;->dF:Lcom/baidu/location/aj;

    invoke-virtual {v0}, Lcom/baidu/location/aj;->bh()V

    return-void
.end method

.method public ai()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/y;->dJ:Z

    return v0
.end method

.method aj()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/y;->dG:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/y;->dP:Z

    return-void
.end method

.method byte(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x15

    const-string v0, "baidu_location_service"

    const-string v1, "on network success"

    invoke-static {v0, v1}, Lcom/baidu/location/b;->do(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/BDLocation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/location/y;->dF:Lcom/baidu/location/aj;

    invoke-virtual {v2, v0}, Lcom/baidu/location/aj;->new(Lcom/baidu/location/BDLocation;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/location/y;->dH:Lcom/baidu/location/BDLocation;

    invoke-virtual {v2, v3, v4}, Lcom/baidu/location/g;->if(Lcom/baidu/location/BDLocation;I)V

    :goto_0
    invoke-static {v0}, Lcom/baidu/location/b;->if(Lcom/baidu/location/BDLocation;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/baidu/location/y;->dH:Lcom/baidu/location/BDLocation;

    :cond_1
    :goto_1
    sget-object v0, Lcom/baidu/location/y;->dw:Ljava/lang/String;

    const-string v1, "ssid\":\""

    const-string v2, "\""

    invoke-static {v0, v1, v2}, Lcom/baidu/location/b;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/baidu/location/y;->dQ:Lcom/baidu/location/ai$b;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/location/y;->dQ:Lcom/baidu/location/ai$b;

    invoke-virtual {v1, v0}, Lcom/baidu/location/ai$b;->if(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/y;->dK:Ljava/lang/String;

    :goto_2
    invoke-static {}, Lcom/baidu/location/ao;->bz()Lcom/baidu/location/ao;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/y;->dw:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/y;->dN:Lcom/baidu/location/n$a;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/ao;->if(Ljava/lang/String;Lcom/baidu/location/n$a;)V

    invoke-direct {p0}, Lcom/baidu/location/y;->ad()V

    return-void

    :cond_2
    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/baidu/location/g;->if(Lcom/baidu/location/BDLocation;I)V

    goto :goto_0

    :cond_3
    iput-object v5, p0, Lcom/baidu/location/y;->dH:Lcom/baidu/location/BDLocation;

    iget-object v0, p0, Lcom/baidu/location/y;->dF:Lcom/baidu/location/aj;

    invoke-virtual {v0}, Lcom/baidu/location/aj;->bh()V

    goto :goto_1

    :cond_4
    iput-object v5, p0, Lcom/baidu/location/y;->dK:Ljava/lang/String;

    goto :goto_2
.end method

.method public case(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/y;->char(Landroid/os/Message;)V

    return-void
.end method

.method public for(Lcom/baidu/location/BDLocation;)V
    .locals 0

    invoke-virtual {p0}, Lcom/baidu/location/y;->ah()V

    iput-object p1, p0, Lcom/baidu/location/y;->dH:Lcom/baidu/location/BDLocation;

    return-void
.end method
