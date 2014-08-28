.class Lcom/baidu/location/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/g;

.field public do:Lcom/baidu/location/LocationClientOption;

.field public for:Landroid/os/Messenger;

.field public if:I

.field public int:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/location/g;Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/g$a;->int:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/g$a;->for:Landroid/os/Messenger;

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/g$a;->do:Lcom/baidu/location/LocationClientOption;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/g$a;->if:I

    iget-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/baidu/location/g$a;->for:Landroid/os/Messenger;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "packName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/g$a;->int:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/g$a;->do:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "prodName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ap;->bD()Lcom/baidu/location/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/g$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/g$a;->int:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/ap;->int(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/g$a;->do:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "coorType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/g$a;->do:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "addrType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/LocationClientOption;->char:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/g$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-object v0, v0, Lcom/baidu/location/LocationClientOption;->char:Ljava/lang/String;

    sput-object v0, Lcom/baidu/location/b;->ar:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/g$a;->do:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "openGPS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/baidu/location/LocationClientOption;->case:Z

    iget-object v0, p0, Lcom/baidu/location/g$a;->do:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "scanSpan"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/location/LocationClientOption;->int:I

    iget-object v0, p0, Lcom/baidu/location/g$a;->do:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "timeOut"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/location/LocationClientOption;->long:I

    iget-object v0, p0, Lcom/baidu/location/g$a;->do:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "priority"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/location/LocationClientOption;->goto:I

    iget-object v0, p0, Lcom/baidu/location/g$a;->do:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "location_change_notify"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/baidu/location/LocationClientOption;->void:Z

    return-void
.end method

.method private a(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/g$a;->for:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/g$a;->for:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/g$a;->if:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    instance-of v0, v0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/baidu/location/g$a;->if:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/location/g$a;->if:I

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Lcom/baidu/location/BDLocation;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/g$a;->for:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/g$a;->for:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/g$a;->if:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/baidu/location/g$a;->if:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/location/g$a;->if:I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/g$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/g$a;->a(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/baidu/location/g$a;->a(I)V

    return-void
.end method

.method public a(Lcom/baidu/location/BDLocation;)V
    .locals 1

    const/16 v0, 0x15

    invoke-virtual {p0, p1, v0}, Lcom/baidu/location/g$a;->a(Lcom/baidu/location/BDLocation;I)V

    return-void
.end method

.method public a(Lcom/baidu/location/BDLocation;I)V
    .locals 12

    const/4 v7, 0x1

    const/4 v0, 0x0

    const-wide/16 v10, 0x1

    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, p1}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x15

    if-ne p2, v2, :cond_1

    const/16 v2, 0x1b

    const-string v3, "locStr"

    invoke-direct {p0, v2, v3, v1}, Lcom/baidu/location/g$a;->a(ILjava/lang/String;Lcom/baidu/location/BDLocation;)V

    :cond_1
    iget-object v2, p0, Lcom/baidu/location/g$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/baidu/location/g$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;

    const-string v3, "gcj02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    cmpl-double v6, v2, v10

    if-eqz v6, :cond_2

    cmpl-double v6, v4, v10

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/baidu/location/g$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-object v6, v6, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/baidu/location/Jni;->if(DDLjava/lang/String;)[D

    move-result-object v2

    aget-wide v3, v2, v0

    invoke-virtual {v1, v3, v4}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    aget-wide v2, v2, v7

    invoke-virtual {v1, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    :cond_2
    iget-object v2, p0, Lcom/baidu/location/g$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->else:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x1a

    if-ne p2, v2, :cond_5

    :try_start_0
    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v3, 0xa1

    if-ne v2, v3, :cond_5

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->hasPoi()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getPoi()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "p"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-string v7, "y"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v9, v5, v10

    if-eqz v9, :cond_3

    cmpl-double v9, v7, v10

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/baidu/location/g$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-object v9, v9, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8, v9}, Lcom/baidu/location/Jni;->if(DDLjava/lang/String;)[D

    move-result-object v5

    const-string v6, "x"

    const/4 v7, 0x0

    aget-wide v7, v5, v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "y"

    const/4 v7, 0x1

    aget-wide v7, v5, v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const-string v0, "p"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setPoi(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    const-string v0, "locStr"

    invoke-direct {p0, p2, v0, v1}, Lcom/baidu/location/g$a;->a(ILjava/lang/String;Lcom/baidu/location/BDLocation;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public if()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/g$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->void:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/baidu/location/b;->ai:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x36

    invoke-direct {p0, v0}, Lcom/baidu/location/g$a;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/baidu/location/g$a;->a(I)V

    goto :goto_0
.end method

.method public if(Lcom/baidu/location/BDLocation;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/g$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->void:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/baidu/location/x;->aU()Lcom/baidu/location/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/x;->aW()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/location/g$a;->a(Lcom/baidu/location/BDLocation;)V

    invoke-static {}, Lcom/baidu/location/ab;->a()Lcom/baidu/location/ab;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/ab;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/ab;->a()Lcom/baidu/location/ab;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/ab;->a()Lcom/baidu/location/ab;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/location/ab;->new:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/ab;->if(Ljava/lang/String;)V

    goto :goto_0
.end method
