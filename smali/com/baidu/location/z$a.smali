.class Lcom/baidu/location/z$a;
.super Lcom/baidu/location/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic c4:Lcom/baidu/location/z;

.field c5:Ljava/lang/String;

.field c6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/location/z;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/baidu/location/z$a;->c4:Lcom/baidu/location/z;

    invoke-direct {p0}, Lcom/baidu/location/o;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/z$a;->c6:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/z$a;->c5:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/z$a;->cP:Ljava/util/List;

    return-void
.end method


# virtual methods
.method V()V
    .locals 7

    invoke-static {}, Lcom/baidu/location/b;->int()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/z$a;->cL:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/z$a;->c5:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/ab;->a()Lcom/baidu/location/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/ab;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/z$a;->c5:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/z$a;->c6:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/baidu/location/l;->w()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/z$a;->c6:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/z$a;->cP:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "bloc"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/z$a;->c6:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/z$a;->cP:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "up"

    iget-object v3, p0, Lcom/baidu/location/z$a;->c6:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/z$a;->cP:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "ext"

    const-string v3, "&ki=%s&sn=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/baidu/location/ap;->bD()Lcom/baidu/location/ap;

    sget-object v6, Lcom/baidu/location/ap;->g9:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/baidu/location/ap;->bD()Lcom/baidu/location/ap;

    sget-object v6, Lcom/baidu/location/ap;->g8:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/location/Jni;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/baidu/location/c;->char()Lcom/baidu/location/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c;->else()V

    return-void
.end method

.method if(Z)V
    .locals 4

    const/16 v3, 0x3f

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/baidu/location/z$a;->cM:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/z$a;->cM:Lorg/apache/http/HttpEntity;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/z;->dw:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ab;->a()Lcom/baidu/location/ab;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/location/ab;->if(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, v1}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0xa1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/baidu/location/c;->char()Lcom/baidu/location/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/location/c;->new(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/baidu/location/z$a;->c4:Lcom/baidu/location/z;

    iget-object v1, v1, Lcom/baidu/location/z;->dy:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/z$a;->c6:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/baidu/location/z$a;->cP:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/z$a;->cP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setLocType(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/baidu/location/z$a;->c4:Lcom/baidu/location/z;

    iget-object v0, v0, Lcom/baidu/location/z;->dy:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "HttpStatus error"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/baidu/location/ab;->a()Lcom/baidu/location/ab;

    move-result-object v0

    const-string v1, "network exception"

    invoke-virtual {v0, v1}, Lcom/baidu/location/ab;->if(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/z$a;->c4:Lcom/baidu/location/z;

    iget-object v0, v0, Lcom/baidu/location/z;->dy:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "HttpStatus error"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public long(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/z$a;->c5:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/location/z$a;->R()V

    return-void
.end method
