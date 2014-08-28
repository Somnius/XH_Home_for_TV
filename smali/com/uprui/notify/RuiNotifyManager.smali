.class public Lcom/uprui/notify/RuiNotifyManager;
.super Ljava/lang/Object;
.source "RuiNotifyManager.java"


# static fields
.field public static final TYPE_FAIL:I = 0x6

.field public static final TYPE_FINISH:I = 0x7

.field public static final TYPE_PROGRESS:I = 0x3

.field public static final TYPE_RETRY:I = 0x4

.field public static final TYPE_START:I = 0x2

.field public static final TYPE_SUCCESS:I = 0x5

.field public static final TYPE_WAIT:I = 0x1

.field private static app:Landroid/app/Application;

.field private static loadCancel:Ljava/lang/String;

.field private static loadComplete:Ljava/lang/String;

.field private static loadError:Ljava/lang/String;

.field private static loadWait:Ljava/lang/String;

.field private static loading:Ljava/lang/String;

.field private static notificationManager:Landroid/app/NotificationManager;

.field private static notifyMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private static startLoad:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/uprui/notify/RuiNotifyManager;->notifyMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static cancelLoad(I)V
    .locals 2
    .parameter "taskCreateID"

    .prologue
    .line 134
    sget-object v0, Lcom/uprui/notify/RuiNotifyManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 135
    sget-object v0, Lcom/uprui/notify/RuiNotifyManager;->notifyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method protected static cancelLoad(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "contentTitle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<*+",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<*+Ljava/io/OutputStream;>;"
    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->getCreateId()I

    move-result v0

    .line 129
    .local v0, createID:I
    sget-object v1, Lcom/uprui/notify/RuiNotifyManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 130
    sget-object v1, Lcom/uprui/notify/RuiNotifyManager;->notifyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method protected static failLoad(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "contentTitle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<*+",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<*+Ljava/io/OutputStream;>;"
    if-nez p0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->getCreateId()I

    move-result v0

    .line 144
    .local v0, createID:I
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->notifyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification;

    .line 145
    .local v2, notif:Landroid/app/Notification;
    if-eqz v2, :cond_0

    .line 149
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 150
    .local v1, intent:Landroid/content/Intent;
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    const-class v5, Lcom/uprui/notify/RuiNotifyBroadCast;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 151
    const-string v4, "type"

    const/4 v5, 0x6

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    const-string v4, "createID"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 155
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    sget v4, Lcom/example/ruithreadpoolexecutor/R$drawable;->stat_error:I

    iput v4, v2, Landroid/app/Notification;->icon:I

    .line 156
    const/16 v4, 0x10

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 157
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    sget-object v5, Lcom/uprui/notify/RuiNotifyManager;->loadError:Ljava/lang/String;

    invoke-virtual {v2, v4, p1, v5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 158
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->getCreateId()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method protected static finishLoad(Lcom/uprui/executor/RuiHttpTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<*+",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<*+Ljava/io/OutputStream;>;"
    sget-object v0, Lcom/uprui/notify/RuiNotifyManager;->notifyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->getCreateId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public static init(Landroid/app/Application;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 40
    sput-object p0, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    .line 41
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    sput-object v1, Lcom/uprui/notify/RuiNotifyManager;->notificationManager:Landroid/app/NotificationManager;

    .line 43
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    .local v0, rs:Landroid/content/res/Resources;
    sget v1, Lcom/example/ruithreadpoolexecutor/R$string;->start_load:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uprui/notify/RuiNotifyManager;->startLoad:Ljava/lang/String;

    .line 45
    sget v1, Lcom/example/ruithreadpoolexecutor/R$string;->loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uprui/notify/RuiNotifyManager;->loading:Ljava/lang/String;

    .line 46
    sget v1, Lcom/example/ruithreadpoolexecutor/R$string;->load_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uprui/notify/RuiNotifyManager;->loadError:Ljava/lang/String;

    .line 47
    sget v1, Lcom/example/ruithreadpoolexecutor/R$string;->cancel_load:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uprui/notify/RuiNotifyManager;->loadCancel:Ljava/lang/String;

    .line 48
    sget v1, Lcom/example/ruithreadpoolexecutor/R$string;->load_complete:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uprui/notify/RuiNotifyManager;->loadComplete:Ljava/lang/String;

    .line 49
    sget v1, Lcom/example/ruithreadpoolexecutor/R$string;->load_wait:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uprui/notify/RuiNotifyManager;->loadWait:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected static progressLoad(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;JJ)V
    .locals 11
    .parameter
    .parameter "contentTitle"
    .parameter "totalSize"
    .parameter "readCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<*+",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<*+Ljava/io/OutputStream;>;"
    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->getCreateId()I

    move-result v0

    .line 106
    .local v0, createID:I
    sget-object v6, Lcom/uprui/notify/RuiNotifyManager;->notifyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification;

    .line 107
    .local v3, notif:Landroid/app/Notification;
    if-nez v3, :cond_0

    .line 125
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v2, intent:Landroid/content/Intent;
    sget-object v6, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    const-class v7, Lcom/uprui/notify/RuiNotifyBroadCast;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 113
    const-string v6, "type"

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v6, "createID"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    sget-object v6, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    const/4 v7, 0x0

    const/high16 v8, 0x800

    invoke-static {v6, v7, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 118
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    sget v6, Lcom/example/ruithreadpoolexecutor/R$drawable;->stat_download:I

    iput v6, v3, Landroid/app/Notification;->icon:I

    .line 119
    long-to-float v6, p2

    const/high16 v7, 0x3f80

    mul-float/2addr v6, v7

    const/high16 v7, 0x4980

    div-float v5, v6, v7

    .line 120
    .local v5, total:F
    long-to-float v6, p4

    const/high16 v7, 0x3f80

    mul-float/2addr v6, v7

    const/high16 v7, 0x4980

    div-float v1, v6, v7

    .line 122
    .local v1, current:F
    sget-object v6, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    sget-object v7, Lcom/uprui/notify/RuiNotifyManager;->loading:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, p1, v7, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 124
    sget-object v6, Lcom/uprui/notify/RuiNotifyManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->getCreateId()I

    move-result v7

    invoke-virtual {v6, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method protected static release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 205
    sput-object v0, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    .line 206
    sput-object v0, Lcom/uprui/notify/RuiNotifyManager;->notificationManager:Landroid/app/NotificationManager;

    .line 207
    return-void
.end method

.method protected static retryLoad(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "contentTitle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<*+",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<*+Ljava/io/OutputStream;>;"
    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->getCreateId()I

    move-result v0

    .line 184
    .local v0, createID:I
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->notifyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification;

    .line 185
    .local v2, notif:Landroid/app/Notification;
    if-nez v2, :cond_0

    .line 197
    :goto_0
    return-void

    .line 189
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 190
    .local v1, intent:Landroid/content/Intent;
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    const-class v5, Lcom/uprui/notify/RuiNotifyBroadCast;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 191
    const-string v4, "type"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string v4, "createID"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 195
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    sget-object v5, Lcom/uprui/notify/RuiNotifyManager;->loadWait:Ljava/lang/String;

    invoke-virtual {v2, v4, p1, v5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 196
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->getCreateId()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method protected static startLoad(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "contentTitle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<*+",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<*+Ljava/io/OutputStream;>;"
    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->getCreateId()I

    move-result v0

    .line 89
    .local v0, createID:I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v1, intent:Landroid/content/Intent;
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    const-class v5, Lcom/uprui/notify/RuiNotifyBroadCast;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    const-string v4, "type"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const-string v4, "createID"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 95
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->notifyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification;

    .line 96
    .local v2, notif:Landroid/app/Notification;
    sget v4, Lcom/example/ruithreadpoolexecutor/R$drawable;->stat_download:I

    iput v4, v2, Landroid/app/Notification;->icon:I

    .line 98
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    sget-object v5, Lcom/uprui/notify/RuiNotifyManager;->startLoad:Ljava/lang/String;

    invoke-virtual {v2, v4, p1, v5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 100
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->getCreateId()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 102
    return-void
.end method

.method protected static successLoad(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "contentTitle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<*+",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<*+Ljava/io/OutputStream;>;"
    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->getCreateId()I

    move-result v0

    .line 163
    .local v0, createID:I
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->notifyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification;

    .line 164
    .local v2, notif:Landroid/app/Notification;
    if-nez v2, :cond_0

    .line 180
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v1, intent:Landroid/content/Intent;
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    const-class v5, Lcom/uprui/notify/RuiNotifyBroadCast;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 170
    const-string v4, "type"

    const/4 v5, 0x5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    const-string v4, "createID"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 175
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    sget v4, Lcom/example/ruithreadpoolexecutor/R$drawable;->stat_error:I

    iput v4, v2, Landroid/app/Notification;->icon:I

    .line 176
    const/16 v4, 0x10

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 177
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    sget-object v5, Lcom/uprui/notify/RuiNotifyManager;->loadComplete:Ljava/lang/String;

    invoke-virtual {v2, v4, p1, v5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 179
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->getCreateId()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method protected static waitLoad(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "tricker"
    .parameter "contentTitle"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/executor/RuiHttpTask",
            "<*+",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, task:Lcom/uprui/executor/RuiHttpTask;,"Lcom/uprui/executor/RuiHttpTask<*+Ljava/io/OutputStream;>;"
    const/4 v7, 0x1

    .line 54
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v1, intent:Landroid/content/Intent;
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    const-class v5, Lcom/uprui/notify/RuiNotifyBroadCast;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->getCreateId()I

    move-result v0

    .line 57
    .local v0, createID:I
    const-string v4, "type"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const-string v4, "createID"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 63
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 64
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 66
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 67
    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 68
    sget-object v5, Lcom/uprui/notify/RuiNotifyManager;->loadWait:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 69
    sget v5, Lcom/example/ruithreadpoolexecutor/R$drawable;->stat_waiting:I

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 70
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 71
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 82
    .local v2, notif:Landroid/app/Notification;
    :goto_0
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->getCreateId()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 83
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->notifyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/uprui/executor/RuiHttpTask;->getCreateId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void

    .line 73
    .end local v2           #notif:Landroid/app/Notification;
    :cond_0
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 74
    .restart local v2       #notif:Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/app/Notification;->when:J

    .line 75
    sget v4, Lcom/example/ruithreadpoolexecutor/R$drawable;->stat_waiting:I

    iput v4, v2, Landroid/app/Notification;->icon:I

    .line 76
    const/4 v4, 0x2

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 77
    iput-object p1, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 78
    sget-object v4, Lcom/uprui/notify/RuiNotifyManager;->app:Landroid/app/Application;

    sget-object v5, Lcom/uprui/notify/RuiNotifyManager;->loadWait:Ljava/lang/String;

    invoke-virtual {v2, v4, p2, v5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
