.class public final Lcom/baidu/location/f;
.super Landroid/app/Service;

# interfaces
.implements Lcom/baidu/location/an;
.implements Lcom/baidu/location/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/f$a;
    }
.end annotation


# static fields
.field private static gQ:Landroid/content/Context;

.field static gR:Lcom/baidu/location/f$a;

.field public static isServing:Z


# instance fields
.field private gP:Landroid/os/HandlerThread;

.field gS:Landroid/os/Messenger;

.field private gT:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/f;->gR:Lcom/baidu/location/f$a;

    sput-object v0, Lcom/baidu/location/f;->gQ:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/f;->isServing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/f;->gS:Landroid/os/Messenger;

    return-void
.end method

.method private bw()V
    .locals 1

    invoke-static {}, Lcom/baidu/location/n;->K()Lcom/baidu/location/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/n;->O()V

    invoke-static {}, Lcom/baidu/location/s;->aH()Lcom/baidu/location/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/s;->aD()V

    invoke-static {}, Lcom/baidu/location/y;->ag()Lcom/baidu/location/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/y;->af()V

    invoke-static {}, Lcom/baidu/location/x;->aU()Lcom/baidu/location/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/x;->aX()V

    invoke-static {}, Lcom/baidu/location/l;->t()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/f;->isServing:Z

    return-void
.end method

.method private bx()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/location/f;->isServing:Z

    new-instance v0, Lcom/baidu/location/v;

    invoke-direct {v0, p0}, Lcom/baidu/location/v;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/baidu/location/n;->K()Lcom/baidu/location/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/n;->J()V

    invoke-static {}, Lcom/baidu/location/ai;->bb()Lcom/baidu/location/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ai;->a9()V

    invoke-static {}, Lcom/baidu/location/s;->aH()Lcom/baidu/location/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/s;->aB()V

    invoke-static {}, Lcom/baidu/location/m;->D()Lcom/baidu/location/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/m;->G()V

    invoke-static {}, Lcom/baidu/location/d;->new()Lcom/baidu/location/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/d;->do()V

    invoke-static {}, Lcom/baidu/location/y;->ag()Lcom/baidu/location/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/y;->aj()V

    return-void
.end method

.method private d(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/g;->do(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic do(Lcom/baidu/location/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/f;->bw()V

    return-void
.end method

.method static synthetic do(Lcom/baidu/location/f;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/f;->d(Landroid/os/Message;)V

    return-void
.end method

.method private e(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/g;->new(Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/t;->aK()Lcom/baidu/location/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/t;->aM()V

    return-void
.end method

.method private f(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/g;->int(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic for(Lcom/baidu/location/f;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/f;->e(Landroid/os/Message;)V

    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/baidu/location/f;->gR:Lcom/baidu/location/f$a;

    return-object v0
.end method

.method public static getServiceContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/baidu/location/f;->gQ:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic if(Lcom/baidu/location/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/f;->bx()V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/f;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/f;->f(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic int(Lcom/baidu/location/f;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/f;->void(Landroid/os/Message;)V

    return-void
.end method

.method private void(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/ap;->bD()Lcom/baidu/location/ap;

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/ap;->g9:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ap;->bD()Lcom/baidu/location/ap;

    const-string v1, "sign"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/ap;->g8:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/f;->gS:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    sput-object p0, Lcom/baidu/location/f;->gQ:Landroid/content/Context;

    invoke-static {}, Lcom/baidu/location/af;->a()Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/f;->gP:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/baidu/location/f;->gP:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/f;->gT:Landroid/os/Looper;

    new-instance v0, Lcom/baidu/location/f$a;

    iget-object v1, p0, Lcom/baidu/location/f;->gT:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/f$a;-><init>(Lcom/baidu/location/f;Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/location/f;->gR:Lcom/baidu/location/f$a;

    new-instance v0, Landroid/os/Messenger;

    sget-object v1, Lcom/baidu/location/f;->gR:Lcom/baidu/location/f$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/f;->gS:Landroid/os/Messenger;

    sget-object v0, Lcom/baidu/location/f;->gR:Lcom/baidu/location/f$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/f$a;->sendEmptyMessage(I)Z

    const-string v0, "baidu_location_service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baidu location service start1 ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/baidu/location/ai;->bb()Lcom/baidu/location/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ai;->bg()V

    invoke-static {}, Lcom/baidu/location/d;->new()Lcom/baidu/location/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/d;->int()V

    invoke-static {}, Lcom/baidu/location/m;->D()Lcom/baidu/location/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/m;->C()V

    sget-object v0, Lcom/baidu/location/f;->gR:Lcom/baidu/location/f$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/f$a;->sendEmptyMessage(I)Z

    const-string v0, "baidu_location_service"

    const-string v1, "baidu location service stop ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
