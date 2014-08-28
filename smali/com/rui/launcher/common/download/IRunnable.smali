.class public abstract Lcom/rui/launcher/common/download/IRunnable;
.super Ljava/lang/Object;
.source "IRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field protected volatile mRunning:Z

.field protected volatile mStopped:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/rui/launcher/common/download/IRunnable;->mContext:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/rui/launcher/common/download/IRunnable;->mHandler:Landroid/os/Handler;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rui/launcher/common/download/IRunnable;->mRunning:Z

    .line 20
    return-void
.end method


# virtual methods
.method protected getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2
    .parameter "json"
    .parameter "key"

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 41
    :goto_0
    return v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 2
    .parameter "json"
    .parameter "key"

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 49
    :goto_0
    return v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Lorg/json/JSONException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "json"
    .parameter "key"

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isRunning()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/rui/launcher/common/download/IRunnable;->mRunning:Z

    return v0
.end method

.method protected sendMessage(IIILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/rui/launcher/common/download/IRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 35
    return-void
.end method

.method protected stop()V
    .locals 1

    .prologue
    .line 27
    monitor-enter p0

    .line 28
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/rui/launcher/common/download/IRunnable;->mStopped:Z

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 27
    monitor-exit p0

    .line 31
    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
