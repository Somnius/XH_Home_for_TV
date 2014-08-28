.class Lcom/baidu/location/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/am;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/d$1;,
        Lcom/baidu/location/d$a;,
        Lcom/baidu/location/d$b;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/location/d;


# instance fields
.field final do:Landroid/os/Handler;

.field private for:Z

.field private if:Z

.field private int:Z

.field private new:Z

.field private try:Lcom/baidu/location/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/d;->a:Lcom/baidu/location/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/d;->try:Lcom/baidu/location/d$a;

    iput-boolean v1, p0, Lcom/baidu/location/d;->int:Z

    iput-boolean v1, p0, Lcom/baidu/location/d;->for:Z

    iput-boolean v1, p0, Lcom/baidu/location/d;->new:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/d;->if:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/d;->do:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/d;->try()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/d;->new:Z

    return p1
.end method

.method static synthetic do(Lcom/baidu/location/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/d;->int:Z

    return v0
.end method

.method static synthetic if(Lcom/baidu/location/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/d;->if:Z

    return v0
.end method

.method public static new()Lcom/baidu/location/d;
    .locals 1

    sget-object v0, Lcom/baidu/location/d;->a:Lcom/baidu/location/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/d;

    invoke-direct {v0}, Lcom/baidu/location/d;-><init>()V

    sput-object v0, Lcom/baidu/location/d;->a:Lcom/baidu/location/d;

    :cond_0
    sget-object v0, Lcom/baidu/location/d;->a:Lcom/baidu/location/d;

    return-object v0
.end method

.method private try()V
    .locals 5

    const/4 v4, 0x1

    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    :try_start_0
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/location/d;->int:Z

    if-eqz v0, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Lcom/baidu/location/d;->int:Z

    iget-object v0, p0, Lcom/baidu/location/d;->do:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/location/d$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/location/d$b;-><init>(Lcom/baidu/location/d;Lcom/baidu/location/d$1;)V

    sget v2, Lcom/baidu/location/b;->ao:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lcom/baidu/location/d;->new:Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/d;->int:Z

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/d;->if:Z

    return-void
.end method

.method public do()V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    new-instance v0, Lcom/baidu/location/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/d$a;-><init>(Lcom/baidu/location/d;Lcom/baidu/location/d$1;)V

    iput-object v0, p0, Lcom/baidu/location/d;->try:Lcom/baidu/location/d$a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/d;->try:Lcom/baidu/location/d$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/d;->for:Z

    invoke-direct {p0}, Lcom/baidu/location/d;->try()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v3, p0, Lcom/baidu/location/d;->if:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public for()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/d;->try:Lcom/baidu/location/d$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/d$a;-><init>(Lcom/baidu/location/d;Lcom/baidu/location/d$1;)V

    iput-object v0, p0, Lcom/baidu/location/d;->try:Lcom/baidu/location/d$a;

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/d;->for:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/d;->try:Lcom/baidu/location/d$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/baidu/location/d;->try()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/d;->for:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public if()V
    .locals 5

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/baidu/location/d;->if:Z

    iget-boolean v0, p0, Lcom/baidu/location/d;->new:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/location/d;->if:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/d;->do:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/location/d$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/location/d$b;-><init>(Lcom/baidu/location/d;Lcom/baidu/location/d$1;)V

    sget v2, Lcom/baidu/location/b;->ao:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lcom/baidu/location/d;->new:Z

    goto :goto_0
.end method

.method public int()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/d;->try:Lcom/baidu/location/d$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/d;->if:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/d;->try:Lcom/baidu/location/d$a;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
