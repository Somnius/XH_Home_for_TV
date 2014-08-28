.class public Lcom/rui/launcher/common/download/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static sInstance:Lcom/rui/launcher/common/download/DownloadService;


# instance fields
.field private mDManager:Lcom/rui/launcher/common/download/DownloadManager;

.field private mDlReceiver:Lcom/rui/launcher/common/download/DownloadReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/rui/launcher/common/download/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rui/launcher/common/download/DownloadService;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/rui/launcher/common/download/DownloadService;

    invoke-direct {v0}, Lcom/rui/launcher/common/download/DownloadService;-><init>()V

    sput-object v0, Lcom/rui/launcher/common/download/DownloadService;->sInstance:Lcom/rui/launcher/common/download/DownloadService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static getService()Landroid/app/Service;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/rui/launcher/common/download/DownloadService;->sInstance:Lcom/rui/launcher/common/download/DownloadService;

    return-object v0
.end method

.method public static startDownload(Landroid/content/Context;Lcom/rui/launcher/common/download/DownloadInfo;)V
    .locals 4
    .parameter "context"
    .parameter "info"

    .prologue
    .line 100
    sget-object v1, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v2, Lcom/rui/launcher/common/download/DownloadService;->TAG:Ljava/lang/String;

    const-string v3, "startDownload intent"

    invoke-static {v1, v2, v3}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4Download()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "downloadInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 104
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 52
    sput-object p0, Lcom/rui/launcher/common/download/DownloadService;->sInstance:Lcom/rui/launcher/common/download/DownloadService;

    .line 54
    invoke-static {p0}, Lcom/rui/launcher/common/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/rui/launcher/common/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadService;->mDManager:Lcom/rui/launcher/common/download/DownloadManager;

    .line 56
    new-instance v0, Lcom/rui/launcher/common/download/DownloadReceiver;

    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadService;->mDManager:Lcom/rui/launcher/common/download/DownloadManager;

    invoke-virtual {v1}, Lcom/rui/launcher/common/download/DownloadManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rui/launcher/common/download/DownloadReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadService;->mDlReceiver:Lcom/rui/launcher/common/download/DownloadReceiver;

    .line 57
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadService;->mDlReceiver:Lcom/rui/launcher/common/download/DownloadReceiver;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Lcom/rui/launcher/common/download/DownloadReceiver;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadService;->mDlReceiver:Lcom/rui/launcher/common/download/DownloadReceiver;

    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4DownloadCancel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rui/launcher/common/download/DownloadReceiver;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadService;->mDlReceiver:Lcom/rui/launcher/common/download/DownloadReceiver;

    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadService;->mDlReceiver:Lcom/rui/launcher/common/download/DownloadReceiver;

    invoke-virtual {v1}, Lcom/rui/launcher/common/download/DownloadReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/rui/launcher/common/download/DownloadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadService;->mDlReceiver:Lcom/rui/launcher/common/download/DownloadReceiver;

    invoke-virtual {p0, v0}, Lcom/rui/launcher/common/download/DownloadService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 66
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 70
    iget-object v3, p0, Lcom/rui/launcher/common/download/DownloadService;->mDManager:Lcom/rui/launcher/common/download/DownloadManager;

    if-nez v3, :cond_0

    .line 71
    invoke-static {p0}, Lcom/rui/launcher/common/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/rui/launcher/common/download/DownloadManager;

    move-result-object v3

    iput-object v3, p0, Lcom/rui/launcher/common/download/DownloadService;->mDManager:Lcom/rui/launcher/common/download/DownloadManager;

    .line 73
    :cond_0
    sget-object v3, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v4, Lcom/rui/launcher/common/download/DownloadService;->TAG:Ljava/lang/String;

    const-string v5, "onStartCommand"

    invoke-static {v3, v4, v5}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4Download()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    sget-object v3, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v4, Lcom/rui/launcher/common/download/DownloadService;->TAG:Ljava/lang/String;

    const-string v5, "\u6536\u5230\u4e0b\u8f7d\u547d\u4ee4"

    invoke-static {v3, v4, v5}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {p0}, Lcom/rui/launcher/common/utils/RUtilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    const-string v3, "downloadInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/rui/launcher/common/download/DownloadInfo;

    .line 80
    .local v2, info:Lcom/rui/launcher/common/download/DownloadInfo;
    if-eqz v2, :cond_1

    .line 81
    const-string v3, "notiId"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, id:I
    invoke-static {v1}, Lcom/rui/launcher/common/NotiManager;->cancelNoti(I)V

    .line 83
    iget-object v3, p0, Lcom/rui/launcher/common/download/DownloadService;->mDManager:Lcom/rui/launcher/common/download/DownloadManager;

    invoke-virtual {v3, v2}, Lcom/rui/launcher/common/download/DownloadManager;->addDownloadTask(Lcom/rui/launcher/common/download/DownloadInfo;)V

    .line 90
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #id:I
    .end local v2           #info:Lcom/rui/launcher/common/download/DownloadInfo;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    return v3

    .line 86
    .restart local v0       #action:Ljava/lang/String;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4SetNetwork()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/rui/launcher/common/download/DownloadService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
