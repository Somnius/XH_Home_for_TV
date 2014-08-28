.class Lcom/baidu/location/l$a;
.super Lcom/baidu/location/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic cR:Lcom/baidu/location/l;

.field cS:Z

.field private cT:Ljava/util/ArrayList;

.field cU:I


# direct methods
.method public constructor <init>(Lcom/baidu/location/l;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/baidu/location/l$a;->cR:Lcom/baidu/location/l;

    invoke-direct {p0}, Lcom/baidu/location/o;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/location/l$a;->cS:Z

    iput v0, p0, Lcom/baidu/location/l$a;->cU:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/l$a;->cT:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/l$a;->cP:Ljava/util/List;

    return-void
.end method


# virtual methods
.method V()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/baidu/location/b;->int()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/l$a;->cL:Ljava/lang/String;

    iput v7, p0, Lcom/baidu/location/l$a;->cO:I

    iget-object v0, p0, Lcom/baidu/location/l$a;->cT:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/baidu/location/l$a;->cT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget v0, p0, Lcom/baidu/location/l$a;->cU:I

    if-ne v0, v6, :cond_0

    iget-object v3, p0, Lcom/baidu/location/l$a;->cP:Ljava/util/List;

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cldc["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/baidu/location/l$a;->cT:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/baidu/location/l$a;->cP:Ljava/util/List;

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cltr["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/baidu/location/l$a;->cT:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/baidu/location/l$a;->cU:I

    if-ne v0, v7, :cond_2

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/l$a;->cP:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "trtm"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public W()V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/l$a;->cS:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/baidu/location/l$a;->cS:Z

    iput v1, p0, Lcom/baidu/location/l$a;->cU:I

    iget-object v0, p0, Lcom/baidu/location/l$a;->cT:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    iput v1, p0, Lcom/baidu/location/l$a;->cU:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/l$a;->cT:Ljava/util/ArrayList;

    move v0, v1

    :cond_1
    iget v2, p0, Lcom/baidu/location/l$a;->cU:I

    if-ge v2, v6, :cond_9

    invoke-static {}, Lcom/baidu/location/l;->w()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_6

    iget v4, p0, Lcom/baidu/location/l$a;->cU:I

    if-eq v4, v5, :cond_6

    iput v6, p0, Lcom/baidu/location/l$a;->cU:I

    :try_start_0
    sget v4, Lcom/baidu/location/b;->aO:I

    if-nez v4, :cond_5

    invoke-static {}, Lcom/baidu/location/h;->l()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/baidu/location/r;->at()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_2
    :goto_2
    if-nez v2, :cond_7

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/baidu/location/l$a;->cT:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/l$a;->cT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v5, :cond_8

    :cond_4
    iput-object v3, p0, Lcom/baidu/location/l$a;->cT:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/baidu/location/l$a;->cS:Z

    goto :goto_0

    :cond_5
    :try_start_1
    sget v4, Lcom/baidu/location/b;->aO:I

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/baidu/location/r;->at()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/baidu/location/h;->l()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v2, v3

    goto :goto_2

    :cond_6
    iput v5, p0, Lcom/baidu/location/l$a;->cU:I

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/baidu/location/l$a;->cT:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    const/16 v2, 0x800

    if-lt v0, v2, :cond_1

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/baidu/location/l$a;->R()V

    goto :goto_0

    :cond_9
    move-object v2, v3

    goto :goto_1
.end method

.method if(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/l$a;->cM:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/l$a;->cT:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/l$a;->cT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/l$a;->cP:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/l$a;->cP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/l$a;->cS:Z

    return-void
.end method
