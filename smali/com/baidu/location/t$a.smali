.class Lcom/baidu/location/t$a;
.super Lcom/baidu/location/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic cV:Lcom/baidu/location/t;

.field cW:Z

.field cX:Ljava/lang/String;

.field cY:Z


# direct methods
.method public constructor <init>(Lcom/baidu/location/t;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/baidu/location/t$a;->cV:Lcom/baidu/location/t;

    invoke-direct {p0}, Lcom/baidu/location/o;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/t$a;->cX:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/t$a;->cW:Z

    iput-boolean v1, p0, Lcom/baidu/location/t$a;->cY:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/t$a;->cP:Ljava/util/List;

    return-void
.end method


# virtual methods
.method V()V
    .locals 5

    invoke-static {}, Lcom/baidu/location/b;->int()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/t$a;->cL:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/t$a;->cO:I

    iget-object v0, p0, Lcom/baidu/location/t$a;->cX:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/t$a;->cX:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/baidu/location/t$a;->cW:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/t$a;->cP:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "qt"

    const-string v4, "grid"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lcom/baidu/location/t$a;->cP:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "req"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/t$a;->cP:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "qt"

    const-string v4, "conf"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public if(Ljava/lang/String;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/t$a;->cY:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/t$a;->cY:Z

    iput-object p1, p0, Lcom/baidu/location/t$a;->cX:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/baidu/location/t$a;->cW:Z

    invoke-virtual {p0}, Lcom/baidu/location/t$a;->R()V

    goto :goto_0
.end method

.method if(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/t$a;->cM:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/t$a;->cW:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/t$a;->cV:Lcom/baidu/location/t;

    iget-object v1, p0, Lcom/baidu/location/t$a;->cM:Lorg/apache/http/HttpEntity;

    invoke-static {v0, v1}, Lcom/baidu/location/t;->if(Lcom/baidu/location/t;Lorg/apache/http/HttpEntity;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/location/t$a;->cP:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/t$a;->cP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/t$a;->cY:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/t$a;->cV:Lcom/baidu/location/t;

    iget-object v1, p0, Lcom/baidu/location/t$a;->cM:Lorg/apache/http/HttpEntity;

    invoke-static {v0, v1}, Lcom/baidu/location/t;->do(Lcom/baidu/location/t;Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method
