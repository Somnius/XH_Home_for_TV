.class public Lcom/rui/launcher/common/services/RUIUpdateCheckExecutor;
.super Ljava/lang/Object;
.source "RUIUpdateCheckExecutor.java"


# static fields
.field static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static ruiUpdateRunnable:Lcom/rui/launcher/common/services/UpdateRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/rui/launcher/common/services/RUIUpdateCheckExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rui/launcher/common/services/RUIUpdateCheckExecutor;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized execute(Landroid/content/Context;Landroid/os/Handler;Z)V
    .locals 4
    .parameter "context"
    .parameter "handler"
    .parameter "auto"

    .prologue
    .line 20
    const-class v1, Lcom/rui/launcher/common/services/RUIUpdateCheckExecutor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "RUIUpdateCheckExecutor.execute()"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/rui/launcher/common/services/RUIUpdateCheckExecutor;->ruiUpdateRunnable:Lcom/rui/launcher/common/services/UpdateRunnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rui/launcher/common/services/RUIUpdateCheckExecutor;->ruiUpdateRunnable:Lcom/rui/launcher/common/services/UpdateRunnable;

    invoke-virtual {v0}, Lcom/rui/launcher/common/services/UpdateRunnable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v2, Lcom/rui/launcher/common/services/RUIUpdateCheckExecutor;->TAG:Ljava/lang/String;

    const-string v3, "RUI\u66f4\u65b0\u7ebf\u7a0b\u5df2\u7ecf\u5728\u8fd0\u884c\uff01"

    invoke-static {v0, v2, v3}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :goto_0
    monitor-exit v1

    return-void

    .line 25
    :cond_0
    :try_start_1
    sget-object v0, Lcom/rui/launcher/common/services/RUIUpdateCheckExecutor;->ruiUpdateRunnable:Lcom/rui/launcher/common/services/UpdateRunnable;

    if-nez v0, :cond_1

    .line 27
    sget-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v2, Lcom/rui/launcher/common/services/RUIUpdateCheckExecutor;->TAG:Ljava/lang/String;

    const-string v3, "\u521b\u5efaRUI\u66f4\u65b0\u7ebf\u7a0b\uff01"

    invoke-static {v0, v2, v3}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/rui/launcher/common/services/UpdateRunnable;

    .line 29
    const/4 v2, 0x0

    .line 28
    invoke-direct {v0, p0, p1, v2, p2}, Lcom/rui/launcher/common/services/UpdateRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;IZ)V

    sput-object v0, Lcom/rui/launcher/common/services/RUIUpdateCheckExecutor;->ruiUpdateRunnable:Lcom/rui/launcher/common/services/UpdateRunnable;

    .line 30
    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Lcom/rui/launcher/common/services/RUIUpdateCheckExecutor;->ruiUpdateRunnable:Lcom/rui/launcher/common/services/UpdateRunnable;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 33
    :cond_1
    :try_start_2
    sget-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v2, Lcom/rui/launcher/common/services/RUIUpdateCheckExecutor;->TAG:Ljava/lang/String;

    const-string v3, "\u91cd\u65b0\u521b\u5efaRUI\u66f4\u65b0\u7ebf\u7a0b\uff01"

    invoke-static {v0, v2, v3}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/rui/launcher/common/services/UpdateRunnable;

    .line 35
    const/4 v2, 0x0

    .line 34
    invoke-direct {v0, p0, p1, v2, p2}, Lcom/rui/launcher/common/services/UpdateRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;IZ)V

    sput-object v0, Lcom/rui/launcher/common/services/RUIUpdateCheckExecutor;->ruiUpdateRunnable:Lcom/rui/launcher/common/services/UpdateRunnable;

    .line 36
    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Lcom/rui/launcher/common/services/RUIUpdateCheckExecutor;->ruiUpdateRunnable:Lcom/rui/launcher/common/services/UpdateRunnable;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
