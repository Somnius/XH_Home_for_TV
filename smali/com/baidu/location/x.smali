.class Lcom/baidu/location/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/j;
.implements Lcom/baidu/location/an;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/x$b;,
        Lcom/baidu/location/x$a;,
        Lcom/baidu/location/x$c;
    }
.end annotation


# static fields
.field private static fu:Lcom/baidu/location/x;


# instance fields
.field private fA:J

.field private fB:Lcom/baidu/location/aa;

.field private volatile fC:Z

.field private fD:I

.field private fE:J

.field public fF:Lcom/baidu/location/x$c;

.field private fv:Z

.field private fw:J

.field private fx:Lcom/baidu/location/x$b;

.field private fy:Lcom/baidu/location/x$a;

.field private fz:Z


# direct methods
.method private constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/baidu/location/x;->fA:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/x;->fC:Z

    iput-object v2, p0, Lcom/baidu/location/x;->fF:Lcom/baidu/location/x$c;

    iput-object v2, p0, Lcom/baidu/location/x;->fB:Lcom/baidu/location/aa;

    iput-object v2, p0, Lcom/baidu/location/x;->fy:Lcom/baidu/location/x$a;

    iput-object v2, p0, Lcom/baidu/location/x;->fx:Lcom/baidu/location/x$b;

    iput-wide v4, p0, Lcom/baidu/location/x;->fw:J

    iput-boolean v3, p0, Lcom/baidu/location/x;->fz:Z

    iput-boolean v3, p0, Lcom/baidu/location/x;->fv:Z

    iput-wide v4, p0, Lcom/baidu/location/x;->fE:J

    iput v3, p0, Lcom/baidu/location/x;->fD:I

    new-instance v0, Lcom/baidu/location/x$c;

    invoke-direct {v0, p0}, Lcom/baidu/location/x$c;-><init>(Lcom/baidu/location/x;)V

    iput-object v0, p0, Lcom/baidu/location/x;->fF:Lcom/baidu/location/x$c;

    new-instance v0, Lcom/baidu/location/x$b;

    invoke-direct {v0, p0}, Lcom/baidu/location/x$b;-><init>(Lcom/baidu/location/x;)V

    iput-object v0, p0, Lcom/baidu/location/x;->fx:Lcom/baidu/location/x$b;

    return-void
.end method

.method private aT()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/location/x;->fz:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/x;->fC:Z

    iget-object v0, p0, Lcom/baidu/location/x;->fx:Lcom/baidu/location/x$b;

    invoke-virtual {v0}, Lcom/baidu/location/x$b;->Y()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/x;->fw:J

    :cond_0
    return-void
.end method

.method public static aU()Lcom/baidu/location/x;
    .locals 1

    sget-object v0, Lcom/baidu/location/x;->fu:Lcom/baidu/location/x;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/x;

    invoke-direct {v0}, Lcom/baidu/location/x;-><init>()V

    sput-object v0, Lcom/baidu/location/x;->fu:Lcom/baidu/location/x;

    :cond_0
    sget-object v0, Lcom/baidu/location/x;->fu:Lcom/baidu/location/x;

    return-object v0
.end method

.method static synthetic do(Lcom/baidu/location/x;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/x;->fA:J

    return-wide v0
.end method

.method static synthetic for(Lcom/baidu/location/x;)Lcom/baidu/location/aa;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/x;->fB:Lcom/baidu/location/aa;

    return-object v0
.end method

.method static synthetic if(Lcom/baidu/location/x;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/x;->fw:J

    return-wide v0
.end method

.method static synthetic if(Lcom/baidu/location/x;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/x;->long(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/x;->fC:Z

    return p1
.end method

.method static synthetic int(Lcom/baidu/location/x;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/x;->fC:Z

    return v0
.end method

.method private long(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0xa1

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getFloor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    iput-boolean v3, p0, Lcom/baidu/location/x;->fv:Z

    :goto_0
    iput v3, p0, Lcom/baidu/location/x;->fD:I

    invoke-static {}, Lcom/baidu/location/y;->ag()Lcom/baidu/location/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/y;->for(Lcom/baidu/location/BDLocation;)V

    :goto_1
    iget-boolean v1, p0, Lcom/baidu/location/x;->fv:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/baidu/location/s;->aH()Lcom/baidu/location/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/s;->ay()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v0, v2}, Lcom/baidu/location/g;->if(Lcom/baidu/location/BDLocation;I)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/x;->fE:J

    iget-object v0, p0, Lcom/baidu/location/x;->fx:Lcom/baidu/location/x$b;

    invoke-virtual {v0}, Lcom/baidu/location/x$b;->X()V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/x;->fv:Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/baidu/location/x;->fD:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/location/x;->fD:I

    iget v1, p0, Lcom/baidu/location/x;->fD:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    iput-boolean v3, p0, Lcom/baidu/location/x;->fv:Z

    goto :goto_1

    :cond_5
    iput-boolean v3, p0, Lcom/baidu/location/x;->fv:Z

    goto :goto_1
.end method

.method static synthetic new(Lcom/baidu/location/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/x;->aT()V

    return-void
.end method


# virtual methods
.method public declared-synchronized aV()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/x;->fz:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/baidu/location/aa;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/location/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/location/x;->fB:Lcom/baidu/location/aa;

    iget-object v0, p0, Lcom/baidu/location/x;->fB:Lcom/baidu/location/aa;

    invoke-virtual {v0}, Lcom/baidu/location/aa;->a2()V

    new-instance v0, Lcom/baidu/location/x$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/x$a;-><init>(Lcom/baidu/location/x;)V

    iput-object v0, p0, Lcom/baidu/location/x;->fy:Lcom/baidu/location/x$a;

    iget-object v0, p0, Lcom/baidu/location/x;->fy:Lcom/baidu/location/x$a;

    invoke-virtual {v0}, Lcom/baidu/location/x$a;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/x;->fv:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/x;->fz:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public aW()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/x;->fz:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/x;->fv:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized aX()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/x;->fB:Lcom/baidu/location/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/x;->fB:Lcom/baidu/location/aa;

    invoke-virtual {v0}, Lcom/baidu/location/aa;->a3()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/x;->fB:Lcom/baidu/location/aa;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/x;->fy:Lcom/baidu/location/x$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/x;->fy:Lcom/baidu/location/x$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/x$a;->a(Lcom/baidu/location/x$a;Z)Z

    iget-object v0, p0, Lcom/baidu/location/x;->fy:Lcom/baidu/location/x$a;

    invoke-virtual {v0}, Lcom/baidu/location/x$a;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/x;->fy:Lcom/baidu/location/x$a;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/x;->fv:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/x;->fz:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public aY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/x;->fz:Z

    return v0
.end method
