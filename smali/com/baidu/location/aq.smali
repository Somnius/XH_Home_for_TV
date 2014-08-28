.class public Lcom/baidu/location/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/aq$1;,
        Lcom/baidu/location/aq$c;,
        Lcom/baidu/location/aq$d;,
        Lcom/baidu/location/aq$b;,
        Lcom/baidu/location/aq$a;
    }
.end annotation


# static fields
.field private static final iB:Ljava/lang/String; = "GeofenceStrategyService"

.field public static final iE:J = 0x1499700L

.field private static final iF:Ljava/lang/String; = "1"

.field private static final iK:Ljava/lang/String; = "com.baidu.locsdk.geofence.geofencestrategyservice"

.field private static final iL:I = 0x2bf20

.field private static final iN:I = 0xea60

.field public static iP:Lcom/baidu/location/aq; = null

.field private static final iR:Ljava/lang/String; = "0"

.field public static final iS:Ljava/lang/String; = "http://loc.map.baidu.com/fence"

.field private static final iV:Ljava/lang/String; = "&gf=1"

.field private static final iu:Ljava/lang/String; = "GeofenceStrategyService"

.field private static final iv:I = 0x7530

.field private static final iw:I = 0x57e40

.field private static final iy:I = 0x6


# instance fields
.field private iA:Z

.field private iC:Ljava/lang/String;

.field private iD:Lcom/baidu/location/aq$d;

.field private iG:Landroid/os/Handler;

.field private iH:Ljava/lang/String;

.field private iI:Lcom/baidu/location/aq$c;

.field private iJ:Landroid/os/PowerManager$WakeLock;

.field private iM:I

.field private iO:Landroid/os/HandlerThread;

.field private iQ:Landroid/os/Messenger;

.field private iT:Ljava/lang/String;

.field private iU:Lcom/baidu/location/ai$b;

.field private iW:Ljava/util/List;

.field private iX:Lcom/baidu/location/ai$b;

.field private ix:Ljava/lang/String;

.field private iz:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/aq;->iG:Landroid/os/Handler;

    return-void
.end method

.method private b0()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GeofenceStrategyService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/baidu/location/aq;->iO:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/baidu/location/aq;->iO:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/location/aq;->iO:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/location/aq;->iG:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/location/aq$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/aq$d;-><init>(Lcom/baidu/location/aq;Lcom/baidu/location/aq$1;)V

    iput-object v0, p0, Lcom/baidu/location/aq;->iD:Lcom/baidu/location/aq$d;

    return-void
.end method

.method private b1()Ljava/util/List;
    .locals 6

    invoke-static {}, Lcom/baidu/location/n;->K()Lcom/baidu/location/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/n;->H()Lcom/baidu/location/n$a;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/ai;->bb()Lcom/baidu/location/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/ai;->a7()Lcom/baidu/location/ai$b;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/aq;->iX:Lcom/baidu/location/ai$b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "%s|%s|%s|%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Lcom/baidu/location/n$a;->do:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v0, Lcom/baidu/location/n$a;->if:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, v0, Lcom/baidu/location/n$a;->for:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v0, v0, Lcom/baidu/location/n$a;->try:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/aq;->iC:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/aq;->iC:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/aq;->iX:Lcom/baidu/location/ai$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/aq;->iX:Lcom/baidu/location/ai$b;

    iget-object v0, v0, Lcom/baidu/location/ai$b;->for:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static b2()Lcom/baidu/location/aq;
    .locals 1

    sget-object v0, Lcom/baidu/location/aq;->iP:Lcom/baidu/location/aq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/aq;

    invoke-direct {v0}, Lcom/baidu/location/aq;-><init>()V

    sput-object v0, Lcom/baidu/location/aq;->iP:Lcom/baidu/location/aq;

    sget-object v0, Lcom/baidu/location/aq;->iP:Lcom/baidu/location/aq;

    invoke-direct {v0}, Lcom/baidu/location/aq;->b0()V

    :cond_0
    sget-object v0, Lcom/baidu/location/aq;->iP:Lcom/baidu/location/aq;

    return-object v0
.end method

.method private bW()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/aq;->iJ:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/aq;->iJ:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/aq;->iJ:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/aq;->iJ:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private bX()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/location/aq;->iU:Lcom/baidu/location/ai$b;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/baidu/location/aq;->iX:Lcom/baidu/location/ai$b;

    iget-object v3, p0, Lcom/baidu/location/aq;->iU:Lcom/baidu/location/ai$b;

    if-ne v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/baidu/location/aq;->iU:Lcom/baidu/location/ai$b;

    iget-object v3, p0, Lcom/baidu/location/aq;->iX:Lcom/baidu/location/ai$b;

    invoke-virtual {v2, v3}, Lcom/baidu/location/ai$b;->a(Lcom/baidu/location/ai$b;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private bY()V
    .locals 6

    const v1, 0x2bf20

    const/16 v5, 0x7530

    iget-boolean v0, p0, Lcom/baidu/location/aq;->iz:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/baidu/location/aq;->if(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/baidu/location/aq;->iM:I

    if-lez v0, :cond_2

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v2

    iget v0, p0, Lcom/baidu/location/aq;->iM:I

    const/4 v3, 0x6

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/baidu/location/aq;->if(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/baidu/location/aq;->iM:I

    mul-int/lit16 v0, v0, 0x7530

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/aq;->iW:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/location/aq;->iW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/baidu/location/aq;->iW:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/ah;

    invoke-virtual {v0}, Lcom/baidu/location/ah;->if()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/baidu/location/ah;->for()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v2, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/location/aq;->do(Lcom/baidu/location/ah;)V

    :cond_3
    move v0, v2

    move v2, v0

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/baidu/location/aq;->if(Landroid/content/Context;I)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/location/aq;->if(Landroid/content/Context;I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x57e40

    invoke-virtual {p0, v0, v1}, Lcom/baidu/location/aq;->if(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private bZ()V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/baidu/location/aq;->b1()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/aq;->for(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/baidu/location/aq;->iC:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/location/aq;->iH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/baidu/location/aq;->bX()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/ah;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/baidu/location/aq;->iz:Z

    invoke-direct {p0, v0}, Lcom/baidu/location/aq;->do(Lcom/baidu/location/ah;)V

    iget-object v0, p0, Lcom/baidu/location/aq;->iC:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/aq;->iH:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/aq;->iX:Lcom/baidu/location/ai$b;

    iput-object v0, p0, Lcom/baidu/location/aq;->iU:Lcom/baidu/location/ai$b;

    iput v4, p0, Lcom/baidu/location/aq;->iM:I

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/baidu/location/aq;->iz:Z

    iget v0, p0, Lcom/baidu/location/aq;->iM:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/location/aq;->iM:I

    iget v0, p0, Lcom/baidu/location/aq;->iM:I

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/baidu/location/aq;->iM:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/baidu/location/aq;->iM:I

    goto :goto_1

    :cond_3
    iput-boolean v4, p0, Lcom/baidu/location/aq;->iz:Z

    :cond_4
    return-void
.end method

.method static synthetic do(Lcom/baidu/location/aq;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/aq;->iG:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic do(Lcom/baidu/location/aq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/aq;->iH:Ljava/lang/String;

    return-object p1
.end method

.method private do(Lcom/baidu/location/ah;)V
    .locals 3

    new-instance v0, Lcom/baidu/location/aq$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/aq$b;-><init>(Lcom/baidu/location/aq;Lcom/baidu/location/aq$1;)V

    const-string v1, "&gf=1"

    invoke-virtual {v0, v1}, Lcom/baidu/location/aq$b;->void(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcj02"

    invoke-virtual {p1}, Lcom/baidu/location/ah;->int()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/Jni;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/location/aq$a;

    invoke-direct {v1, p0, p1, v0}, Lcom/baidu/location/aq$a;-><init>(Lcom/baidu/location/aq;Lcom/baidu/location/ah;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/baidu/location/aq$a;->aa()V

    return-void
.end method

.method static synthetic for(Lcom/baidu/location/aq;)Lcom/baidu/location/aq$d;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/aq;->iD:Lcom/baidu/location/aq$d;

    return-object v0
.end method

.method static synthetic if(Lcom/baidu/location/aq;Lcom/baidu/location/ai$b;)Lcom/baidu/location/ai$b;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/aq;->iU:Lcom/baidu/location/ai$b;

    return-object p1
.end method

.method static synthetic if(Lcom/baidu/location/aq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/aq;->ix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic if(Lcom/baidu/location/aq;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/aq;->iW:Ljava/util/List;

    return-object p1
.end method

.method static synthetic if(Lcom/baidu/location/aq;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/aq;->bY()V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/aq;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/aq;->new(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/aq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/aq;->iz:Z

    return p1
.end method

.method static synthetic int(Lcom/baidu/location/aq;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/aq;->bZ()V

    return-void
.end method

.method static synthetic new(Lcom/baidu/location/aq;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/aq;->iQ:Landroid/os/Messenger;

    return-object v0
.end method

.method private new(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/aq;->iJ:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "GeofenceStrategyService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/aq;->iJ:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/baidu/location/aq;->iJ:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/baidu/location/aq;->iJ:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public byte(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/location/aq;->iA:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.locsdk.geofence.geofencestrategyservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x800

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/location/e;->a(Landroid/content/Context;Landroid/app/PendingIntent;)V

    invoke-direct {p0}, Lcom/baidu/location/aq;->bW()V

    iget-object v0, p0, Lcom/baidu/location/aq;->iI:Lcom/baidu/location/aq$c;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/aq;->iI:Lcom/baidu/location/aq$c;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public for(Ljava/util/List;)Ljava/util/List;
    .locals 32

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/i;->a(Landroid/content/Context;)Lcom/baidu/location/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    const/4 v2, 0x0

    if-eqz v17, :cond_7

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    move-object v3, v1

    :goto_0
    :try_start_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    const-string v1, "SELECT b.geofence_id, b.longitude, b.latitude, b.radius, b.coord_type, b.duration_millis, b.is_lac, b.is_cell, b.is_wifi, b.radius_type FROM %s AS a LEFT JOIN %s AS b WHERE (a.geofence_id = b.geofence_id) AND (a.ap = \'%s\' AND  (b.valid_date + b.duration_millis) >= %d) AND (b.next_active_time < %d)"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "geofence_detail"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "geofence"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v11}, Lcom/baidu/location/Jni;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v13

    if-eqz v13, :cond_9

    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_9

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-interface {v12}, Ljava/util/List;->clear()V

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "geofence_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    const-string v1, "longitude"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    const-string v1, "latitude"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    const-string v1, "radius"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    const-string v1, "coord_type"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    const-string v1, "duration_millis"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    const-string v1, "is_lac"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    const-string v1, "is_cell"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    const-string v1, "is_wifi"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    const-string v1, "radius_type"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    :cond_0
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/location/aq;->iT:Ljava/lang/String;

    move/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v22

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move/from16 v0, v23

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move/from16 v0, v24

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v31

    move/from16 v0, v25

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v0, v26

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move/from16 v0, v27

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move/from16 v16, v1

    :goto_1
    move/from16 v0, v28

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    move v15, v1

    :goto_2
    move/from16 v0, v29

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move v14, v1

    :goto_3
    move/from16 v0, v30

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    new-instance v1, Lcom/baidu/location/ah;

    float-to-double v3, v3

    float-to-double v5, v5

    invoke-direct/range {v1 .. v10}, Lcom/baidu/location/ah;-><init>(Ljava/lang/String;DDIJLjava/lang/String;)V

    if-eqz v1, :cond_1

    move/from16 v0, v31

    invoke-virtual {v1, v0}, Lcom/baidu/location/ah;->a(F)V

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/baidu/location/ah;->do(Z)V

    invoke-virtual {v1, v15}, Lcom/baidu/location/ah;->a(Z)V

    invoke-virtual {v1, v14}, Lcom/baidu/location/ah;->if(Z)V

    :cond_1
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v12

    :goto_4
    move-object v3, v13

    move-object v2, v1

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x0

    move/from16 v16, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    move v15, v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    move v14, v1

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_5
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    return-object v2

    :catch_0
    move-exception v3

    :goto_6
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v2

    move-object v13, v1

    move-object v1, v2

    :goto_7
    if-eqz v13, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_7

    :catchall_2
    move-exception v1

    move-object v13, v3

    goto :goto_7

    :catch_1
    move-exception v1

    move-object v1, v13

    move-object v2, v12

    goto :goto_6

    :catch_2
    move-exception v1

    move-object v1, v3

    goto :goto_6

    :catch_3
    move-exception v1

    move-object v1, v13

    goto :goto_6

    :cond_9
    move-object v1, v2

    goto :goto_4
.end method

.method public if(Landroid/content/Context;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.locsdk.geofence.geofencestrategyservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-gtz p2, :cond_0

    invoke-static {p1, v1}, Lcom/baidu/location/e;->a(Landroid/content/Context;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, v1, p2}, Lcom/baidu/location/e;->a(Landroid/content/Context;Landroid/app/PendingIntent;I)V

    goto :goto_0
.end method

.method public if(Landroid/content/Context;Landroid/os/Message;)V
    .locals 3

    iget-boolean v0, p0, Lcom/baidu/location/aq;->iA:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/baidu/location/aq;->iQ:Landroid/os/Messenger;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/aq;->iA:Z

    new-instance v0, Lcom/baidu/location/aq$c;

    invoke-direct {v0, p0}, Lcom/baidu/location/aq$c;-><init>(Lcom/baidu/location/aq;)V

    iput-object v0, p0, Lcom/baidu/location/aq;->iI:Lcom/baidu/location/aq$c;

    iget-object v0, p0, Lcom/baidu/location/aq;->iI:Lcom/baidu/location/aq$c;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.baidu.locsdk.geofence.geofencestrategyservice"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/location/aq;->if(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public m(Ljava/lang/String;)Ljava/util/List;
    .locals 28

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/i;->a(Landroid/content/Context;)Lcom/baidu/location/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    const/4 v1, 0x0

    if-eqz v16, :cond_4

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :try_start_0
    const-string v5, "SELECT b.geofence_id, b.longitude, b.latitude, b.radius, b.coord_type, b.duration_millis, b.is_lac, b.is_cell, b.is_wifi, b.radius_type FROM %s AS a LEFT JOIN %s AS b WHERE (a.geofence_id = b.geofence_id) AND (a.ap = \'%s\' AND  (b.valid_date + b.duration_millis >= %d) AND b.next_active_time < %d)"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "geofence_detail"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "geofence"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p1, v6, v7

    const/4 v7, 0x3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    if-eqz v11, :cond_2

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "geofence_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    const-string v1, "longitude"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    const-string v1, "latitude"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    const-string v1, "radius"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    const-string v1, "coord_type"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    const-string v1, "duration_millis"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    const-string v1, "is_lac"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    const-string v1, "is_cell"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    const-string v1, "is_wifi"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    const-string v1, "radius_type"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    :cond_0
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v27

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move/from16 v0, v23

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    move v15, v1

    :goto_0
    move/from16 v0, v24

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    move v14, v1

    :goto_1
    move/from16 v0, v25

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    move v13, v1

    :goto_2
    move/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    new-instance v1, Lcom/baidu/location/ah;

    float-to-double v3, v3

    float-to-double v5, v5

    invoke-direct/range {v1 .. v10}, Lcom/baidu/location/ah;-><init>(Ljava/lang/String;DDIJLjava/lang/String;)V

    if-eqz v1, :cond_1

    move/from16 v0, v27

    invoke-virtual {v1, v0}, Lcom/baidu/location/ah;->a(F)V

    invoke-virtual {v1, v15}, Lcom/baidu/location/ah;->do(Z)V

    invoke-virtual {v1, v14}, Lcom/baidu/location/ah;->a(Z)V

    invoke-virtual {v1, v13}, Lcom/baidu/location/ah;->if(Z)V

    :cond_1
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v12

    :cond_2
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    return-object v1

    :cond_5
    const/4 v1, 0x0

    move v15, v1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    move v14, v1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    move v13, v1

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_4
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v11, v2

    :goto_5
    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v2

    move-object v2, v11

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v2, v11

    move-object v1, v12

    goto :goto_4
.end method

.method public try(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/location/aq;->if(Landroid/content/Context;Landroid/os/Message;)V

    return-void
.end method
