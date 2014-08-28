.class Lcom/baidu/location/x$b;
.super Lcom/baidu/location/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private c0:Ljava/lang/String;

.field private c1:Z

.field private c2:Z

.field private c3:Ljava/lang/String;

.field final synthetic cZ:Lcom/baidu/location/x;


# direct methods
.method public constructor <init>(Lcom/baidu/location/x;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/baidu/location/x$b;->cZ:Lcom/baidu/location/x;

    invoke-direct {p0}, Lcom/baidu/location/o;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/location/x$b;->c2:Z

    iput-boolean v0, p0, Lcom/baidu/location/x$b;->c1:Z

    iput-object v1, p0, Lcom/baidu/location/x$b;->c0:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/x$b;->c3:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/x$b;->cP:Ljava/util/List;

    return-void
.end method


# virtual methods
.method declared-synchronized V()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/baidu/location/b;->int()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/x$b;->cL:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/x$b;->cO:I

    iget-object v0, p0, Lcom/baidu/location/x$b;->c0:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/ab;->a()Lcom/baidu/location/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/ab;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/x$b;->c0:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/x$b;->cP:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "bloc"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized X()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/x$b;->c2:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/location/x$b;->c1:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/x$b;->c1:Z

    invoke-virtual {p0}, Lcom/baidu/location/x$b;->Y()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Y()V
    .locals 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/x$b;->c2:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/baidu/location/x$b;->c1:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/baidu/location/x$b;->c2:Z

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-static {}, Lcom/baidu/location/ai;->bb()Lcom/baidu/location/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/ai;->be()Lcom/baidu/location/ai$b;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/baidu/location/ai$b;->a(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/baidu/location/x$b;->c3:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/baidu/location/x$b;->c3:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iput-object v1, p0, Lcom/baidu/location/x$b;->c3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&coor=gcj02"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&rt=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/ap;->bD()Lcom/baidu/location/ap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/location/ap;->try(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/x$b;->c0:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/location/x$b;->R()V

    goto :goto_0
.end method

.method if(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/x$b;->cM:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/x$b;->cM:Lorg/apache/http/HttpEntity;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/ab;->a()Lcom/baidu/location/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/ab;->if(Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/x$b;->cZ:Lcom/baidu/location/x;

    iget-object v0, v0, Lcom/baidu/location/x;->fF:Lcom/baidu/location/x$c;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Lcom/baidu/location/x$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/location/x$b;->cP:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/x$b;->cP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/x$b;->c2:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
