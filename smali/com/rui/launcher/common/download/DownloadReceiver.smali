.class public Lcom/rui/launcher/common/download/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadReceiver.java"


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mTargetHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/rui/launcher/common/download/DownloadReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rui/launcher/common/download/DownloadReceiver;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/rui/launcher/common/download/DownloadReceiver;->mTargetHandler:Landroid/os/Handler;

    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4DownloadStateChange()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 23
    return-void
.end method

.method private sendDownloadMessage(ILcom/rui/launcher/common/download/DownloadInfo;)V
    .locals 2
    .parameter "op"
    .parameter "info"

    .prologue
    .line 72
    const/16 v0, 0xcd

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/rui/launcher/common/download/DownloadReceiver;->sendMessage(IIILjava/lang/Object;)V

    .line 73
    return-void
.end method

.method private sendMessage(IIILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadReceiver;->mTargetHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadReceiver;->mTargetHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 30
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadReceiver;->mFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_2

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadReceiver;->mFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xcf

    const/4 v7, -0x1

    .line 41
    if-nez p2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4DownloadStateChange()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 47
    const-string v6, "downloadState"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 48
    .local v4, op:I
    const-string v6, "downloadInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/rui/launcher/common/download/DownloadInfo;

    .line 49
    .local v2, info:Lcom/rui/launcher/common/download/DownloadInfo;
    if-eqz v2, :cond_0

    .line 50
    invoke-direct {p0, v4, v2}, Lcom/rui/launcher/common/download/DownloadReceiver;->sendDownloadMessage(ILcom/rui/launcher/common/download/DownloadInfo;)V

    goto :goto_0

    .line 52
    .end local v2           #info:Lcom/rui/launcher/common/download/DownloadInfo;
    .end local v4           #op:I
    :cond_2
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 53
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 54
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 55
    .local v3, mobNetInfo:Landroid/net/NetworkInfo;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 56
    .local v5, wifiNetInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_3

    if-nez v5, :cond_4

    .line 57
    :cond_3
    invoke-direct {p0, v8, v7, v7, v9}, Lcom/rui/launcher/common/download/DownloadReceiver;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 61
    invoke-direct {p0, v8, v7, v7, v9}, Lcom/rui/launcher/common/download/DownloadReceiver;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 63
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #mobNetInfo:Landroid/net/NetworkInfo;
    .end local v5           #wifiNetInfo:Landroid/net/NetworkInfo;
    :cond_5
    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4DownloadCancel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    const-string v6, "downloadInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/rui/launcher/common/download/DownloadInfo;

    .line 65
    .restart local v2       #info:Lcom/rui/launcher/common/download/DownloadInfo;
    if-eqz v2, :cond_0

    .line 66
    const/16 v6, 0xd1

    invoke-direct {p0, v6, v7, v7, v2}, Lcom/rui/launcher/common/download/DownloadReceiver;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0
.end method
