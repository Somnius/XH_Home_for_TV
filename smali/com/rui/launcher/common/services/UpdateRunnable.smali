.class public Lcom/rui/launcher/common/services/UpdateRunnable;
.super Lcom/rui/launcher/common/services/InterruptibleRunnable;
.source "UpdateRunnable.java"


# static fields
.field private static final DEFAULT_SOCKET_TIMEOUT:I = 0xea60

.field private static final DEFAULT_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isRunning:Z

.field protected mAuto:Z

.field protected mRequestHelper:Lcom/rui/launcher/common/services/PostRequestHelper;

.field protected mUpdateType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/rui/launcher/common/services/UpdateRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rui/launcher/common/services/UpdateRunnable;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;IZ)V
    .locals 1
    .parameter "context"
    .parameter "handler"
    .parameter "type"
    .parameter "auto"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/rui/launcher/common/services/InterruptibleRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rui/launcher/common/services/UpdateRunnable;->isRunning:Z

    .line 45
    iput-boolean p4, p0, Lcom/rui/launcher/common/services/UpdateRunnable;->mAuto:Z

    .line 46
    iput p3, p0, Lcom/rui/launcher/common/services/UpdateRunnable;->mUpdateType:I

    .line 47
    new-instance v0, Lcom/rui/launcher/common/services/PostRequestHelper;

    invoke-direct {v0, p1, p3}, Lcom/rui/launcher/common/services/PostRequestHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/rui/launcher/common/services/UpdateRunnable;->mRequestHelper:Lcom/rui/launcher/common/services/PostRequestHelper;

    .line 48
    return-void
.end method

.method private getContentFromServer()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, content:Ljava/lang/String;
    iget-object v3, p0, Lcom/rui/launcher/common/services/UpdateRunnable;->mRequestHelper:Lcom/rui/launcher/common/services/PostRequestHelper;

    const/16 v4, 0x7530

    const v5, 0xea60

    invoke-virtual {v3, v4, v5}, Lcom/rui/launcher/common/services/PostRequestHelper;->setTimeOut(II)V

    .line 132
    iget-object v3, p0, Lcom/rui/launcher/common/services/UpdateRunnable;->mRequestHelper:Lcom/rui/launcher/common/services/PostRequestHelper;

    invoke-virtual {v3}, Lcom/rui/launcher/common/services/PostRequestHelper;->doPost()I

    move-result v2

    .line 133
    .local v2, status:I
    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    .line 134
    iget-object v3, p0, Lcom/rui/launcher/common/services/UpdateRunnable;->mRequestHelper:Lcom/rui/launcher/common/services/PostRequestHelper;

    invoke-virtual {v3}, Lcom/rui/launcher/common/services/PostRequestHelper;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 136
    :cond_0
    iget-object v3, p0, Lcom/rui/launcher/common/services/UpdateRunnable;->mRequestHelper:Lcom/rui/launcher/common/services/PostRequestHelper;

    invoke-virtual {v3}, Lcom/rui/launcher/common/services/PostRequestHelper;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 137
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->warning:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v4, Lcom/rui/launcher/common/services/UpdateRunnable;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u51fa\u9519\u4e86\uff01mUpdateType:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/rui/launcher/common/services/UpdateRunnable;->mUpdateType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs addRequestParam([Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/rui/launcher/common/services/UpdateRunnable;->mRequestHelper:Lcom/rui/launcher/common/services/PostRequestHelper;

    invoke-virtual {v0, p1}, Lcom/rui/launcher/common/services/PostRequestHelper;->addRequestParams([Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;)V

    .line 60
    return-void
.end method

.method public addRequestParams(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, pl:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;

    invoke-virtual {p0, v0}, Lcom/rui/launcher/common/services/UpdateRunnable;->addRequestParam([Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;)V

    .line 56
    return-void
.end method

.method public declared-synchronized isRunning()Z
    .locals 1

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/rui/launcher/common/services/UpdateRunnable;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected parseData(Ljava/lang/String;)V
    .locals 6
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    .local v2, result:Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "message"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    .local v3, root:Lorg/json/JSONObject;
    const-string v4, "hasNewVersion"

    .line 108
    invoke-static {v3, v4}, Lcom/rui/launcher/common/utils/JsonUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    .line 111
    .local v0, needUpdate:Z
    const-string v4, "updateStrInfo"

    .line 110
    invoke-static {v3, v4}, Lcom/rui/launcher/common/utils/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, respone:Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 114
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/rui/launcher/common/services/UpdateRunnable;->isRunning:Z

    .line 115
    const/16 v4, 0x519

    invoke-virtual {p0, v4, v1}, Lcom/rui/launcher/common/services/UpdateRunnable;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_1
    const/16 v4, 0x518

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/rui/launcher/common/services/UpdateRunnable;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x57d

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 65
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/rui/launcher/common/services/UpdateRunnable;->isRunning:Z

    .line 66
    const/16 v2, 0x517

    invoke-virtual {p0, v2, v5}, Lcom/rui/launcher/common/services/UpdateRunnable;->sendMessage(ILjava/lang/Object;)V

    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, content:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/rui/launcher/common/services/UpdateRunnable;->getContentFromServer()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0, v7, v5}, Lcom/rui/launcher/common/services/UpdateRunnable;->sendMessage(ILjava/lang/Object;)V

    .line 83
    :cond_0
    :try_start_1
    sget-object v2, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v3, Lcom/rui/launcher/common/services/UpdateRunnable;->TAG:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/rui/launcher/common/services/UpdateRunnable;->parseData(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :goto_0
    iput-boolean v6, p0, Lcom/rui/launcher/common/services/UpdateRunnable;->isRunning:Z

    .line 90
    :goto_1
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Ljava/io/IOException;
    sget-object v2, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v3, Lcom/rui/launcher/common/services/UpdateRunnable;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    invoke-virtual {p0, v7, v5}, Lcom/rui/launcher/common/services/UpdateRunnable;->sendMessage(ILjava/lang/Object;)V

    .line 74
    iput-boolean v6, p0, Lcom/rui/launcher/common/services/UpdateRunnable;->isRunning:Z

    goto :goto_1

    .line 85
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 86
    .local v1, e:Lorg/json/JSONException;
    sget-object v2, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v3, Lcom/rui/launcher/common/services/UpdateRunnable;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    const/16 v2, 0x580

    invoke-virtual {p0, v2, v5}, Lcom/rui/launcher/common/services/UpdateRunnable;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected sendMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 93
    iget v1, p0, Lcom/rui/launcher/common/services/UpdateRunnable;->mUpdateType:I

    iget-boolean v0, p0, Lcom/rui/launcher/common/services/UpdateRunnable;->mAuto:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, p1, v1, v0, p2}, Lcom/rui/launcher/common/services/InterruptibleRunnable;->sendMessage(IIILjava/lang/Object;)V

    .line 94
    return-void

    .line 93
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
