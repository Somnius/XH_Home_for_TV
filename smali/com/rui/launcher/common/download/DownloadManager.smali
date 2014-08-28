.class public final Lcom/rui/launcher/common/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;,
        Lcom/rui/launcher/common/download/DownloadManager$MyHandler;
    }
.end annotation


# static fields
.field public static final BUSY:I = 0xd2

.field public static final CANCEL_DOWNLOAD:I = 0xd1

.field public static final CONNECTIVITY_CHANGE:I = 0xcf

.field static final DEBUG:Z = true

.field private static final DIRTY_NOTIFICATIONS:Ljava/lang/String; = "dirty_notis"

.field public static final DOWNLOAD_TYPE_APK:I = 0x2

.field public static final DOWNLOAD_TYPE_IMAGE:I = 0x3

.field public static final DOWNLOAD_TYPE_RUI:I = 0x1

.field public static final DOWNLOAD_TYPE_STREAM:I = 0x4

.field public static final MEDIA_UNMOUNTED:I = 0xd0

.field public static final REPEAT_DOWNLOAD:I = 0xce

.field public static final STAT_DOWNLOAD:I = 0xcd

.field public static final STAT_DOWNLOAD_CANCEL:I = 0xc7

.field public static final STAT_DOWNLOAD_DONE:I = 0xc9

.field public static final STAT_DOWNLOAD_FAIL:I = 0xc8

.field public static final STAT_DOWNLOAD_ING:I = 0xca

.field public static final STAT_DOWNLOAD_START:I = 0xcb

.field public static final STAT_DOWNLOAD_WAITING:I = 0xcc

.field static final TAG:Ljava/lang/String;

.field public static final UPDATE_REQUEST:I

.field private static sInstance:Lcom/rui/launcher/common/download/DownloadManager;


# instance fields
.field private exec:Ljava/util/concurrent/ExecutorService;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private tasks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/rui/launcher/common/download/DownloadInfo;",
            "Lcom/rui/launcher/common/download/CallableTask",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/rui/launcher/common/download/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rui/launcher/common/download/DownloadManager;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/rui/launcher/common/download/DownloadManager;->sInstance:Lcom/rui/launcher/common/download/DownloadManager;

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager;->exec:Ljava/util/concurrent/ExecutorService;

    .line 64
    iput-object p1, p0, Lcom/rui/launcher/common/download/DownloadManager;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/rui/launcher/common/download/DownloadManager$MyHandler;

    invoke-direct {v0, p0, p1}, Lcom/rui/launcher/common/download/DownloadManager$MyHandler;-><init>(Lcom/rui/launcher/common/download/DownloadManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;

    invoke-direct {v0, p1}, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager;->exec:Ljava/util/concurrent/ExecutorService;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager;->tasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/rui/launcher/common/download/DownloadManager;Lcom/rui/launcher/common/download/DownloadInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/download/DownloadManager;->removeTask(Lcom/rui/launcher/common/download/DownloadInfo;)V

    return-void
.end method

.method static synthetic access$1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-static {p0, p1}, Lcom/rui/launcher/common/download/DownloadManager;->removeId(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-static {p0, p1, p2}, Lcom/rui/launcher/common/download/DownloadManager;->addId(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static addId(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 93
    const-string v1, "dirty_notis"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    return-void
.end method

.method private addTask(Lcom/rui/launcher/common/download/DownloadInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 166
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadManager;->tasks:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/rui/launcher/common/download/DownloadManager;->newTask(Lcom/rui/launcher/common/download/DownloadInfo;Landroid/content/Context;)Lcom/rui/launcher/common/download/CallableTask;

    move-result-object v0

    .line 169
    .local v0, task:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<*>;"
    invoke-virtual {p0, v0}, Lcom/rui/launcher/common/download/DownloadManager;->addRunnable(Ljava/lang/Runnable;)V

    .line 171
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadManager;->tasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadManager;->exec:Ljava/util/concurrent/ExecutorService;

    check-cast v1, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;

    invoke-virtual {v1}, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->isWaiting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/rui/launcher/common/download/CallableTask;->onPreStart()V

    goto :goto_0
.end method

.method private downloadStateChange(ILcom/rui/launcher/common/download/DownloadInfo;)V
    .locals 3
    .parameter "state"
    .parameter "info"

    .prologue
    .line 249
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4DownloadStateChange()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "downloadState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const-string v1, "downloadInfo"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 252
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public static getIds(Landroid/content/Context;)[I
    .locals 8
    .parameter "context"

    .prologue
    .line 78
    const-string v6, "dirty_notis"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 79
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 80
    .local v4, maps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    new-array v2, v6, [I

    .line 82
    .local v2, ids:[I
    const/4 v0, 0x0

    .line 83
    .local v0, i:I
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 86
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    .end local v0           #i:I
    .end local v2           #ids:[I
    :goto_1
    return-object v2

    .line 83
    .restart local v0       #i:I
    .restart local v2       #ids:[I
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 84
    .local v3, key:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 89
    .end local v0           #i:I
    .end local v2           #ids:[I
    .end local v3           #key:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/rui/launcher/common/download/DownloadManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    sget-object v0, Lcom/rui/launcher/common/download/DownloadManager;->sInstance:Lcom/rui/launcher/common/download/DownloadManager;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/rui/launcher/common/download/DownloadManager;

    invoke-direct {v0, p0}, Lcom/rui/launcher/common/download/DownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/rui/launcher/common/download/DownloadManager;->sInstance:Lcom/rui/launcher/common/download/DownloadManager;

    .line 74
    :cond_0
    sget-object v0, Lcom/rui/launcher/common/download/DownloadManager;->sInstance:Lcom/rui/launcher/common/download/DownloadManager;

    return-object v0
.end method

.method public static getPriority(I)I
    .locals 1
    .parameter "downloadType"

    .prologue
    .line 198
    packed-switch p0, :pswitch_data_0

    .line 210
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 200
    :pswitch_0
    const/16 v0, 0x9

    goto :goto_0

    .line 202
    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 204
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 206
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 208
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static newTask(Lcom/rui/launcher/common/download/DownloadInfo;Landroid/content/Context;)Lcom/rui/launcher/common/download/CallableTask;
    .locals 3
    .parameter "info"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rui/launcher/common/download/DownloadInfo;",
            "Landroid/content/Context;",
            ")",
            "Lcom/rui/launcher/common/download/CallableTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 215
    if-nez p0, :cond_0

    .line 216
    const/4 v1, 0x0

    .line 234
    :goto_0
    return-object v1

    .line 217
    :cond_0
    const/4 v1, 0x0

    .line 218
    .local v1, task:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<*>;"
    const/4 v0, 0x0

    .line 219
    .local v0, l:Lcom/rui/launcher/common/download/ITaskListener;
    iget v2, p0, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 231
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 222
    :pswitch_1
    if-eqz p1, :cond_1

    .line 223
    new-instance v0, Lcom/rui/launcher/common/download/DownloadListener;

    .end local v0           #l:Lcom/rui/launcher/common/download/ITaskListener;
    invoke-direct {v0, p1}, Lcom/rui/launcher/common/download/DownloadListener;-><init>(Landroid/content/Context;)V

    .line 225
    .restart local v0       #l:Lcom/rui/launcher/common/download/ITaskListener;
    :cond_1
    new-instance v1, Lcom/rui/launcher/common/download/DownloadTask;

    .end local v1           #task:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<*>;"
    invoke-direct {v1, p0, v0}, Lcom/rui/launcher/common/download/DownloadTask;-><init>(Lcom/rui/launcher/common/download/DownloadInfo;Lcom/rui/launcher/common/download/ITaskListener;)V

    .line 226
    .restart local v1       #task:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<*>;"
    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static removeId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "key"

    .prologue
    .line 98
    const-string v1, "dirty_notis"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    return-void
.end method

.method private removeTask(Lcom/rui/launcher/common/download/DownloadInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 179
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager;->tasks:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager;->exec:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;

    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadManager;->tasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->removeInQueue(Ljava/lang/Runnable;)Z

    .line 182
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager;->tasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addDownloadTask(Lcom/rui/launcher/common/download/DownloadInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadManager;->exec:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lcom/rui/launcher/common/download/DownloadManager;->isTaskExist(Lcom/rui/launcher/common/download/DownloadInfo;)Lcom/rui/launcher/common/download/CallableTask;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {p1}, Lcom/rui/launcher/common/download/DownloadInfo;->flush()V

    .line 124
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xce

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadManager;->exec:Ljava/util/concurrent/ExecutorService;

    check-cast v1, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;

    invoke-virtual {v1}, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    const/4 v1, 0x1

    iget v2, p1, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    if-ne v1, v2, :cond_4

    .line 130
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadManager;->exec:Ljava/util/concurrent/ExecutorService;

    check-cast v1, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;

    invoke-virtual {v1}, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->removeHead()Ljava/lang/Runnable;

    move-result-object v0

    .line 131
    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_3

    .line 132
    check-cast v0, Lcom/rui/launcher/common/download/DownloadTask;

    .end local v0           #r:Ljava/lang/Runnable;
    invoke-virtual {v0}, Lcom/rui/launcher/common/download/DownloadTask;->getTag()Lcom/rui/launcher/common/download/DownloadInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/rui/launcher/common/download/DownloadManager;->removeTask(Lcom/rui/launcher/common/download/DownloadInfo;)V

    .line 141
    :cond_3
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/download/DownloadManager;->addTask(Lcom/rui/launcher/common/download/DownloadInfo;)V

    goto :goto_0

    .line 135
    :cond_4
    invoke-virtual {p1}, Lcom/rui/launcher/common/download/DownloadInfo;->flush()V

    .line 136
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public addRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager;->exec:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 149
    :cond_0
    return-void
.end method

.method public cancelTask(Lcom/rui/launcher/common/download/DownloadInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadManager;->exec:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lcom/rui/launcher/common/download/DownloadManager;->isTaskExist(Lcom/rui/launcher/common/download/DownloadInfo;)Lcom/rui/launcher/common/download/CallableTask;

    move-result-object v0

    .line 156
    .local v0, t:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<*>;"
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/rui/launcher/common/download/CallableTask;->cancel()V

    .line 158
    const/4 v1, -0x1

    iget v2, v0, Lcom/rui/launcher/common/download/CallableTask;->progress:I

    if-ne v1, v2, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/rui/launcher/common/download/CallableTask;->setCancel()V

    goto :goto_0
.end method

.method public cancelTask(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager;->exec:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;

    invoke-virtual {v0, p1}, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->cancelTask(I)Z

    move-result v0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getTask(I)Lcom/rui/launcher/common/download/CallableTask;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/rui/launcher/common/download/CallableTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager;->exec:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;

    invoke-virtual {v0, p1}, Lcom/rui/launcher/common/download/DownloadManager$DownloadThreadPool;->getTask(I)Lcom/rui/launcher/common/download/CallableTask;

    move-result-object v0

    return-object v0
.end method

.method public getTasks()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager;->tasks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public isTaskExist(Lcom/rui/launcher/common/download/DownloadInfo;)Lcom/rui/launcher/common/download/CallableTask;
    .locals 1
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rui/launcher/common/download/DownloadInfo;",
            ")",
            "Lcom/rui/launcher/common/download/CallableTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager;->tasks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager;->tasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rui/launcher/common/download/CallableTask;

    goto :goto_0
.end method

.method public removeAllTasks()V
    .locals 4

    .prologue
    .line 238
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadManager;->tasks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadManager;->tasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadManager;->tasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    :cond_0
    return-void

    .line 239
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rui/launcher/common/download/CallableTask;

    .local v0, t:Lcom/rui/launcher/common/download/CallableTask;,"Lcom/rui/launcher/common/download/CallableTask<*>;"
    move-object v1, v0

    .line 240
    check-cast v1, Lcom/rui/launcher/common/download/DownloadTask;

    invoke-virtual {v1}, Lcom/rui/launcher/common/download/DownloadTask;->onPreFailed()V

    .line 241
    const/16 v3, 0xc8

    move-object v1, v0

    check-cast v1, Lcom/rui/launcher/common/download/DownloadTask;

    invoke-virtual {v1}, Lcom/rui/launcher/common/download/DownloadTask;->getTag()Lcom/rui/launcher/common/download/DownloadInfo;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/rui/launcher/common/download/DownloadManager;->downloadStateChange(ILcom/rui/launcher/common/download/DownloadInfo;)V

    .line 242
    invoke-virtual {v0}, Lcom/rui/launcher/common/download/CallableTask;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rui/launcher/common/download/DownloadInfo;

    invoke-direct {p0, v1}, Lcom/rui/launcher/common/download/DownloadManager;->removeTask(Lcom/rui/launcher/common/download/DownloadInfo;)V

    goto :goto_0
.end method

.method public shotDown()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadManager;->exec:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 195
    return-void
.end method
