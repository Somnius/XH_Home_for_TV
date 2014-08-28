.class Lcom/baidu/location/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/an;
.implements Lcom/baidu/location/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/ai$1;,
        Lcom/baidu/location/ai$b;,
        Lcom/baidu/location/ai$a;
    }
.end annotation


# static fields
.field private static final f0:I = 0xf

.field private static f8:Lcom/baidu/location/ai;


# instance fields
.field private f1:Z

.field private f2:Lcom/baidu/location/ai$b;

.field private f3:Ljava/lang/Object;

.field private final f4:J

.field private f5:J

.field private final f6:J

.field private f7:Landroid/net/wifi/WifiManager;

.field private f9:Ljava/lang/reflect/Method;

.field private final fZ:J

.field private ga:Z

.field private gb:J

.field private gc:Lcom/baidu/location/ai$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/ai;->f8:Lcom/baidu/location/ai;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    const-wide/16 v0, 0xbb8

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/baidu/location/ai;->fZ:J

    iput-wide v0, p0, Lcom/baidu/location/ai;->f4:J

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/baidu/location/ai;->f6:J

    iput-object v2, p0, Lcom/baidu/location/ai;->f7:Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/baidu/location/ai;->gc:Lcom/baidu/location/ai$a;

    iput-object v2, p0, Lcom/baidu/location/ai;->f2:Lcom/baidu/location/ai$b;

    iput-wide v3, p0, Lcom/baidu/location/ai;->f5:J

    iput-wide v3, p0, Lcom/baidu/location/ai;->gb:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/ai;->ga:Z

    iput-object v2, p0, Lcom/baidu/location/ai;->f3:Ljava/lang/Object;

    iput-object v2, p0, Lcom/baidu/location/ai;->f9:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/ai;->f1:Z

    return-void
.end method

.method private a6()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/ai;->f7:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/ai;->f7:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Lcom/baidu/location/ai$b;

    iget-wide v2, p0, Lcom/baidu/location/ai;->f5:J

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/baidu/location/ai$b;-><init>(Lcom/baidu/location/ai;Ljava/util/List;J)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/location/ai;->f5:J

    iget-object v0, p0, Lcom/baidu/location/ai;->f2:Lcom/baidu/location/ai$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/ai;->f2:Lcom/baidu/location/ai$b;

    invoke-virtual {v1, v0}, Lcom/baidu/location/ai$b;->if(Lcom/baidu/location/ai$b;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iput-object v1, p0, Lcom/baidu/location/ai;->f2:Lcom/baidu/location/ai$b;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static bb()Lcom/baidu/location/ai;
    .locals 1

    sget-object v0, Lcom/baidu/location/ai;->f8:Lcom/baidu/location/ai;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/ai;

    invoke-direct {v0}, Lcom/baidu/location/ai;-><init>()V

    sput-object v0, Lcom/baidu/location/ai;->f8:Lcom/baidu/location/ai;

    :cond_0
    sget-object v0, Lcom/baidu/location/ai;->f8:Lcom/baidu/location/ai;

    return-object v0
.end method

.method public static bf()Z
    .locals 4

    const/4 v2, 0x1

    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    :try_start_0
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic if(Lcom/baidu/location/ai;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/ai;->a6()V

    return-void
.end method


# virtual methods
.method public a4()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/ai;->gb:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-wide v0, p0, Lcom/baidu/location/ai;->gb:J

    invoke-virtual {p0}, Lcom/baidu/location/ai;->a8()Z

    move-result v0

    goto :goto_0
.end method

.method public a5()Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/ai;->f7:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/baidu/location/ai;->f7:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a7()Lcom/baidu/location/ai$b;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/ai;->f2:Lcom/baidu/location/ai$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/ai;->f2:Lcom/baidu/location/ai$b;

    invoke-virtual {v0}, Lcom/baidu/location/ai$b;->for()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/location/ai;->be()Lcom/baidu/location/ai$b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/ai;->f2:Lcom/baidu/location/ai$b;

    goto :goto_0
.end method

.method public a8()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/ai;->f7:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/baidu/location/ai;->f5:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/location/ai;->bc()Z

    move-result v0

    goto :goto_0
.end method

.method public a9()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/ai;->ga:Z

    if-ne v0, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/location/ai;->f7:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/baidu/location/ai$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/ai$a;-><init>(Lcom/baidu/location/ai;Lcom/baidu/location/ai$1;)V

    iput-object v0, p0, Lcom/baidu/location/ai;->gc:Lcom/baidu/location/ai$a;

    :try_start_0
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/ai;->gc:Lcom/baidu/location/ai$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iput-boolean v4, p0, Lcom/baidu/location/ai;->ga:Z

    :try_start_1
    const-string v0, "android.net.wifi.WifiManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mService"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/baidu/location/ai;->f7:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/ai;->f3:Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/location/ai;->f3:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startScan"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/ai;->f9:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/baidu/location/ai;->f9:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/ai;->f9:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public ba()Lcom/baidu/location/ai$b;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/ai;->f2:Lcom/baidu/location/ai$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/ai;->f2:Lcom/baidu/location/ai$b;

    invoke-virtual {v0}, Lcom/baidu/location/ai$b;->new()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/location/ai;->be()Lcom/baidu/location/ai$b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/ai;->f2:Lcom/baidu/location/ai$b;

    goto :goto_0
.end method

.method public bc()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/location/ai;->f7:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/location/ai;->f9:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/location/ai;->f3:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/baidu/location/ai;->f9:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/baidu/location/ai;->f3:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/baidu/location/ai;->f1:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/ai;->f5:J

    :goto_1
    return v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcom/baidu/location/ai;->f7:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/baidu/location/ai;->f7:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/location/ai;->f5:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    goto :goto_1
.end method

.method public bd()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/ai;->f7:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public be()Lcom/baidu/location/ai$b;
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/baidu/location/ai;->f7:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/baidu/location/ai$b;

    iget-object v1, p0, Lcom/baidu/location/ai;->f7:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/baidu/location/ai$b;-><init>(Lcom/baidu/location/ai;Ljava/util/List;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    new-instance v0, Lcom/baidu/location/ai$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/baidu/location/ai$b;-><init>(Lcom/baidu/location/ai;Ljava/util/List;J)V

    goto :goto_0
.end method

.method public bg()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/baidu/location/ai;->ga:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/ai;->gc:Lcom/baidu/location/ai$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object v2, p0, Lcom/baidu/location/ai;->gc:Lcom/baidu/location/ai$a;

    iput-object v2, p0, Lcom/baidu/location/ai;->f7:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/ai;->ga:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
