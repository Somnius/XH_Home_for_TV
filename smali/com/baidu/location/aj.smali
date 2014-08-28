.class Lcom/baidu/location/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/k;
.implements Lcom/baidu/location/an;
.implements Lcom/baidu/location/j;


# instance fields
.field private gd:J

.field private ge:Landroid/location/Location;

.field private gf:Ljava/util/Queue;

.field private gg:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/baidu/location/aj;->gg:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/aj;->gd:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/aj;->gf:Ljava/util/Queue;

    iput-object v2, p0, Lcom/baidu/location/aj;->ge:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public bh()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/aj;->gg:Ljava/util/List;

    iput-object v0, p0, Lcom/baidu/location/aj;->ge:Landroid/location/Location;

    iget-object v0, p0, Lcom/baidu/location/aj;->gf:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public do(Lcom/baidu/location/ai$b;)Z
    .locals 12

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v6, p1, Lcom/baidu/location/ai$b;->for:Ljava/util/List;

    iget-object v7, p0, Lcom/baidu/location/aj;->gg:Ljava/util/List;

    if-ne v6, v7, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_2

    if-nez v7, :cond_3

    :cond_2
    iput-object v6, p0, Lcom/baidu/location/aj;->gg:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/aj;->gd:J

    move v0, v2

    goto :goto_0

    :cond_3
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-nez v9, :cond_4

    if-nez v10, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    if-eqz v9, :cond_5

    if-nez v10, :cond_6

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v5, v2

    move v1, v2

    :goto_1
    if-ge v5, v9, :cond_a

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v11, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v11, :cond_8

    move v0, v1

    :cond_7
    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_1

    :cond_8
    move v4, v2

    :goto_3
    if-ge v4, v10, :cond_d

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v0, v1, 0x1

    :goto_4
    if-ne v4, v10, :cond_7

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_a
    int-to-float v0, v1

    int-to-float v1, v9

    sget v4, Lcom/baidu/location/b;->aN:F

    mul-float/2addr v1, v4

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_b

    move v0, v3

    goto :goto_0

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/baidu/location/aj;->gd:J

    sub-long v3, v0, v3

    sget v5, Lcom/baidu/location/b;->aP:I

    int-to-long v9, v5

    cmp-long v3, v3, v9

    if-lez v3, :cond_c

    iput-object v6, p0, Lcom/baidu/location/aj;->gg:Ljava/util/List;

    iput-wide v0, p0, Lcom/baidu/location/aj;->gd:J

    :goto_5
    move v0, v2

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/baidu/location/aj;->gg:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_d
    move v0, v1

    goto :goto_4
.end method

.method public new(Lcom/baidu/location/BDLocation;)I
    .locals 12

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    new-instance v7, Landroid/location/Location;

    const-string v0, "gps"

    invoke-direct {v7, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/location/Location;

    const-string v0, "gps"

    invoke-direct {v5, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v6, 0xa1

    if-ne v0, v6, :cond_4

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v0

    const/high16 v6, 0x4396

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/baidu/location/aj;->bh()V

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Landroid/location/Location;->setTime(J)V

    iget-object v0, p0, Lcom/baidu/location/aj;->gf:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    iget-object v0, p0, Lcom/baidu/location/aj;->gf:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    sget v0, Lcom/baidu/location/b;->aH:I

    int-to-long v10, v0

    cmp-long v0, v8, v10

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/aj;->gf:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/aj;->gf:Ljava/util/Queue;

    invoke-interface {v0, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/aj;->gf:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v5, v3

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    add-double/2addr v5, v9

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    add-double/2addr v3, v9

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/aj;->gf:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v5, v8

    iget-object v0, p0, Lcom/baidu/location/aj;->gf:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v3, v8

    invoke-virtual {v7, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    invoke-virtual {v7, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    iget-object v0, p0, Lcom/baidu/location/aj;->ge:Landroid/location/Location;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/aj;->ge:Landroid/location/Location;

    invoke-virtual {v7, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    sget v7, Lcom/baidu/location/b;->aU:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_5

    const/4 v0, 0x3

    :goto_2
    if-ne v0, v1, :cond_0

    new-instance v1, Landroid/location/Location;

    const-string v7, "gps"

    invoke-direct {v1, v7}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/location/aj;->ge:Landroid/location/Location;

    iget-object v1, p0, Lcom/baidu/location/aj;->ge:Landroid/location/Location;

    invoke-virtual {v1, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    iget-object v1, p0, Lcom/baidu/location/aj;->ge:Landroid/location/Location;

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {p1, v3, v4}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    invoke-virtual {p1, v5, v6}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/baidu/location/aj;->bh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method
