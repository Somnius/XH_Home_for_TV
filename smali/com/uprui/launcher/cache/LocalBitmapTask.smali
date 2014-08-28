.class public Lcom/uprui/launcher/cache/LocalBitmapTask;
.super Ljava/lang/Object;
.source "LocalBitmapTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LocalBitmapTask"


# instance fields
.field private callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;",
            ">;"
        }
    .end annotation
.end field

.field private file:Ljava/io/File;

.field private isCancel:Z

.field isFinish:Z

.field private lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;)V
    .locals 2
    .parameter "file"
    .parameter "callback"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->file:Ljava/io/File;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->callbacks:Ljava/util/ArrayList;

    .line 27
    iget-object v0, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 29
    return-void
.end method

.method private onCancel()V
    .locals 6

    .prologue
    .line 109
    :try_start_0
    iget-object v4, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 110
    iget-object v2, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->callbacks:Ljava/util/ArrayList;

    .line 111
    .local v2, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 112
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 119
    iget-object v4, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 122
    return-void

    .line 113
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;

    .line 114
    .local v0, callback:Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;
    if-eqz v0, :cond_1

    .line 115
    invoke-interface {v0, p0}, Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;->onCancel(Lcom/uprui/launcher/cache/LocalBitmapTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v0           #callback:Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;>;"
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    .line 119
    iget-object v5, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 120
    throw v4
.end method

.method private onError(Ljava/lang/String;)V
    .locals 6
    .parameter "errorDescription"

    .prologue
    .line 173
    :try_start_0
    iget-object v4, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 174
    iget-object v2, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->callbacks:Ljava/util/ArrayList;

    .line 175
    .local v2, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 176
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 183
    iget-object v4, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 186
    return-void

    .line 177
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;

    .line 178
    .local v0, callback:Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;
    if-eqz v0, :cond_1

    .line 179
    invoke-interface {v0, p0, p1}, Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;->onError(Lcom/uprui/launcher/cache/LocalBitmapTask;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v0           #callback:Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;>;"
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    .line 183
    iget-object v5, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 184
    throw v4
.end method

.method private onFinish()V
    .locals 6

    .prologue
    .line 149
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->isFinish:Z

    .line 151
    :try_start_0
    iget-object v4, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 152
    iget-object v2, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->callbacks:Ljava/util/ArrayList;

    .line 153
    .local v2, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 154
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 161
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v4, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 166
    return-void

    .line 155
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;

    .line 156
    .local v0, callback:Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;
    if-eqz v0, :cond_1

    .line 157
    invoke-interface {v0, p0}, Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;->onFinish(Lcom/uprui/launcher/cache/LocalBitmapTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v0           #callback:Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;>;"
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    .line 163
    iget-object v5, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 164
    throw v4
.end method

.method private onStart()V
    .locals 6

    .prologue
    .line 88
    :try_start_0
    iget-object v4, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 89
    iget-object v2, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->callbacks:Ljava/util/ArrayList;

    .line 90
    .local v2, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 91
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 98
    iget-object v4, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    return-void

    .line 92
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;

    .line 93
    .local v0, callback:Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;
    if-eqz v0, :cond_1

    .line 94
    invoke-interface {v0, p0}, Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;->onStart(Lcom/uprui/launcher/cache/LocalBitmapTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v0           #callback:Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;>;"
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    .line 98
    iget-object v5, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 99
    throw v4
.end method

.method private onSucess(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "icon"

    .prologue
    .line 126
    :try_start_0
    iget-object v4, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 130
    iget-object v2, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->callbacks:Ljava/util/ArrayList;

    .line 131
    .local v2, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 132
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 139
    iget-object v4, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 143
    return-void

    .line 133
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;

    .line 134
    .local v0, callback:Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;
    if-eqz v0, :cond_1

    .line 135
    const/4 v4, 0x0

    invoke-interface {v0, p0, p1, v4}, Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;->onSucess(Lcom/uprui/launcher/cache/LocalBitmapTask;Landroid/graphics/Bitmap;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v0           #callback:Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;>;"
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    .line 139
    iget-object v5, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 140
    throw v4
.end method


# virtual methods
.method public addCallback(Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 37
    iget-object v0, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 43
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    iget-object v1, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 41
    throw v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->isCancel:Z

    .line 191
    return-void
.end method

.method public removeCallback(Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 51
    iget-object v0, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object v0, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 56
    return-void

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    iget-object v1, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 54
    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/uprui/launcher/cache/LocalBitmapTask;->onStart()V

    .line 61
    iget-boolean v2, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->isCancel:Z

    if-eqz v2, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/uprui/launcher/cache/LocalBitmapTask;->onCancel()V

    .line 63
    invoke-direct {p0}, Lcom/uprui/launcher/cache/LocalBitmapTask;->onFinish()V

    .line 81
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    .local v0, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x10

    .line 68
    .local v1, round:I
    invoke-static {v0, v1, v1}, Lcom/uprui/utils/BitmapUtil;->toRoundCorner(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    iget-boolean v2, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->isCancel:Z

    if-eqz v2, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/uprui/launcher/cache/LocalBitmapTask;->onCancel()V

    .line 71
    invoke-direct {p0}, Lcom/uprui/launcher/cache/LocalBitmapTask;->onFinish()V

    goto :goto_0

    .line 74
    :cond_1
    if-eqz v0, :cond_2

    .line 75
    invoke-direct {p0, v0}, Lcom/uprui/launcher/cache/LocalBitmapTask;->onSucess(Landroid/graphics/Bitmap;)V

    .line 80
    :goto_1
    invoke-direct {p0}, Lcom/uprui/launcher/cache/LocalBitmapTask;->onFinish()V

    goto :goto_0

    .line 77
    :cond_2
    const-string v2, ""

    invoke-direct {p0, v2}, Lcom/uprui/launcher/cache/LocalBitmapTask;->onError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isCancel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->isCancel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isFinish/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/uprui/launcher/cache/LocalBitmapTask;->isFinish:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
