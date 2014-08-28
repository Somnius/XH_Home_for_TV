.class public Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;
.super Ljava/lang/Object;
.source "RecUpdateExecutor.java"


# static fields
.field static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static recIconsDownloadRunnable:Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;

.field private static recUpdateCheckRunnable:Lcom/rui/launcher/common/services/UpdateRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized executeCheck(Landroid/content/Context;Landroid/os/Handler;Z)V
    .locals 4
    .parameter "context"
    .parameter "handler"
    .parameter "auto"

    .prologue
    .line 41
    const-class v1, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v2, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->TAG:Ljava/lang/String;

    const-string v3, "\u63a8\u8350\u66f4\u65b0\u68c0\u6d4b\u7ebf\u7a0b\u5df2\u7ecf\u5728\u8fd0\u884c\uff01"

    invoke-static {v0, v2, v3}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_0
    monitor-exit v1

    return-void

    .line 44
    :cond_0
    :try_start_1
    sget-object v0, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->recUpdateCheckRunnable:Lcom/rui/launcher/common/services/UpdateRunnable;

    if-nez v0, :cond_1

    .line 45
    sget-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v2, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->TAG:Ljava/lang/String;

    const-string v3, "\u521b\u5efa\u63a8\u8350\u66f4\u65b0\u68c0\u6d4b\u7ebf\u7a0b\uff01"

    invoke-static {v0, v2, v3}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/rui/launcher/common/services/UpdateRunnable;

    .line 47
    const/4 v2, 0x1

    .line 46
    invoke-direct {v0, p0, p1, v2, p2}, Lcom/rui/launcher/common/services/UpdateRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;IZ)V

    sput-object v0, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->recUpdateCheckRunnable:Lcom/rui/launcher/common/services/UpdateRunnable;

    .line 54
    :goto_1
    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->recUpdateCheckRunnable:Lcom/rui/launcher/common/services/UpdateRunnable;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 49
    :cond_1
    :try_start_2
    sget-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v2, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->TAG:Ljava/lang/String;

    const-string v3, "\u91cd\u65b0\u521b\u5efa\u63a8\u8350\u66f4\u65b0\u68c0\u6d4b\u7ebf\u7a0b\uff01"

    invoke-static {v0, v2, v3}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/rui/launcher/common/services/UpdateRunnable;

    .line 52
    const/4 v2, 0x1

    .line 51
    invoke-direct {v0, p0, p1, v2, p2}, Lcom/rui/launcher/common/services/UpdateRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;IZ)V

    sput-object v0, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->recUpdateCheckRunnable:Lcom/rui/launcher/common/services/UpdateRunnable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized executeDownloadTask(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "handler"
    .parameter "content"
    .parameter "auto"

    .prologue
    .line 59
    const-class v1, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v2, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->TAG:Ljava/lang/String;

    const-string v3, "\u63a8\u8350\u56fe\u6807\u4e0b\u8f7d\u7ebf\u7a0b\u5df2\u7ecf\u5728\u8fd0\u884c\uff01"

    invoke-static {v0, v2, v3}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_0
    monitor-exit v1

    return-void

    .line 62
    :cond_0
    :try_start_1
    sget-object v0, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->recIconsDownloadRunnable:Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;

    if-nez v0, :cond_1

    .line 63
    sget-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v2, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->TAG:Ljava/lang/String;

    const-string v3, "\u521b\u5efa\u63a8\u8350\u56fe\u6807\u4e0b\u8f7d\u7ebf\u7a0b\uff01"

    invoke-static {v0, v2, v3}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    sput-object v0, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->recIconsDownloadRunnable:Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;

    .line 71
    :goto_1
    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->recIconsDownloadRunnable:Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 67
    :cond_1
    :try_start_2
    sget-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v2, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->TAG:Ljava/lang/String;

    const-string v3, "\u91cd\u65b0\u521b\u5efa\u63a8\u8350\u56fe\u6807\u4e0b\u8f7d\u7ebf\u7a0b\uff01"

    invoke-static {v0, v2, v3}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    sput-object v0, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->recIconsDownloadRunnable:Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static declared-synchronized isCheckThreadIsRunning()Z
    .locals 2

    .prologue
    .line 20
    const-class v1, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->recUpdateCheckRunnable:Lcom/rui/launcher/common/services/UpdateRunnable;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->recUpdateCheckRunnable:Lcom/rui/launcher/common/services/UpdateRunnable;

    invoke-virtual {v0}, Lcom/rui/launcher/common/services/UpdateRunnable;->isRunning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x1

    .line 24
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized isDownloadThreadIsRunning()Z
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->recIconsDownloadRunnable:Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->recIconsDownloadRunnable:Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;

    invoke-virtual {v0}, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->isRunning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 32
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized isRunning()Z
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->isCheckThreadIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->isDownloadThreadIsRunning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
