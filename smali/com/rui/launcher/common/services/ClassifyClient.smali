.class public Lcom/rui/launcher/common/services/ClassifyClient;
.super Ljava/lang/Object;
.source "ClassifyClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final PARAM_APPS:Ljava/lang/String; = "apps"

.field public static final PARAM_DEVICE_ID:Ljava/lang/String; = "devID"

.field public static final PARAM_DEVICE_MODEL:Ljava/lang/String; = "devModel"

.field public static final PARAM_IMSI:Ljava/lang/String; = "imsi"

.field public static final PARAM_LINE_NUMBER:Ljava/lang/String; = "lineNumber"

.field public static final PARAM_SIM_ID:Ljava/lang/String; = "simID"

.field static final TAG:Ljava/lang/String;

.field private static appsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/rui/launcher/common/services/ClassifiedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static isRunning:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAuto:Z

.field private mIsClassifyFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/rui/launcher/common/services/ClassifyClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rui/launcher/common/services/ClassifyClient;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/rui/launcher/common/services/ClassifyClient;->isRunning:Z

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rui/launcher/common/services/ClassifyClient;->appsMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rui/launcher/common/services/ClassifyClient;->mIsClassifyFirst:Z

    .line 69
    sput-object p1, Lcom/rui/launcher/common/services/ClassifyClient;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "auto"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/rui/launcher/common/services/ClassifiedInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rui/launcher/common/services/ClassifyClient;->mIsClassifyFirst:Z

    .line 83
    sput-object p1, Lcom/rui/launcher/common/services/ClassifyClient;->mContext:Landroid/content/Context;

    .line 84
    iput-boolean p2, p0, Lcom/rui/launcher/common/services/ClassifyClient;->mAuto:Z

    .line 85
    invoke-direct {p0, p3}, Lcom/rui/launcher/common/services/ClassifyClient;->listToMap(Ljava/util/List;)I

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/util/List;Z)V
    .locals 1
    .parameter "context"
    .parameter "auto"
    .parameter
    .parameter "isClassifyFirst"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/rui/launcher/common/services/ClassifiedInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rui/launcher/common/services/ClassifyClient;->mIsClassifyFirst:Z

    .line 89
    sput-object p1, Lcom/rui/launcher/common/services/ClassifyClient;->mContext:Landroid/content/Context;

    .line 90
    iput-boolean p2, p0, Lcom/rui/launcher/common/services/ClassifyClient;->mAuto:Z

    .line 91
    invoke-direct {p0, p3}, Lcom/rui/launcher/common/services/ClassifyClient;->listToMap(Ljava/util/List;)I

    .line 92
    iput-boolean p4, p0, Lcom/rui/launcher/common/services/ClassifyClient;->mIsClassifyFirst:Z

    .line 93
    return-void
.end method

.method private declared-synchronized buildParamAppsForClassify(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/rui/launcher/common/services/ClassifiedInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, infos:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 220
    .local v0, array:Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 226
    const/4 v3, 0x3

    :try_start_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 229
    :goto_1
    monitor-exit p0

    return-object v3

    .line 220
    :cond_1
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rui/launcher/common/services/ClassifiedInfo;

    .line 221
    .local v2, info:Lcom/rui/launcher/common/services/ClassifiedInfo;
    iget v4, v2, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 223
    invoke-virtual {v2}, Lcom/rui/launcher/common/services/ClassifiedInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 219
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #info:Lcom/rui/launcher/common/services/ClassifiedInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 227
    .restart local v0       #array:Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 228
    .local v1, e:Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 229
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_1
.end method

.method private static declared-synchronized classifyFromLocal()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rui/launcher/common/services/ClassifiedInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    const-class v6, Lcom/rui/launcher/common/services/ClassifyClient;

    monitor-enter v6

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v4, updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/data/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/rui/launcher/common/services/ClassifyClient;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/databases/local_category.db"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, path:Ljava/lang/String;
    sget-object v7, Lcom/rui/launcher/common/services/ClassifyClient;->appsMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 346
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 347
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 349
    :try_start_2
    sget-object v5, Lcom/rui/launcher/common/services/ClassifyClient;->appsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 356
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 359
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 345
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 363
    monitor-exit v6

    return-object v4

    .line 349
    :cond_0
    :try_start_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rui/launcher/common/services/ClassifiedInfo;

    .line 350
    .local v0, cInfo:Lcom/rui/launcher/common/services/ClassifiedInfo;
    iget-object v8, v0, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, packageName:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/rui/launcher/common/services/ClassifyClient;->getCategoryFromLocal(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v8

    iput v8, v0, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    .line 353
    const/4 v8, 0x1

    iput v8, v0, Lcom/rui/launcher/common/services/ClassifiedInfo;->needUpload:I

    .line 354
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 357
    .end local v0           #cInfo:Lcom/rui/launcher/common/services/ClassifiedInfo;
    .end local v2           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v5

    .line 358
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 359
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 360
    throw v5

    .line 345
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 343
    .end local v3           #path:Ljava/lang/String;
    :catchall_2
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "inputString"

    .prologue
    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "UPrui"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 371
    .local v2, inputData:[B
    :try_start_0
    invoke-static {v2}, Lcom/rui/launcher/common/utils/CryptUtil;->encryptMD5([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 375
    :goto_0
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>([B)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, encodeString:Ljava/lang/String;
    return-object v1

    .line 372
    .end local v1           #encodeString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static declared-synchronized getCategoryFromLocal(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 13
    .parameter "packageName"
    .parameter "db"

    .prologue
    .line 380
    const-class v12, Lcom/rui/launcher/common/services/ClassifyClient;

    monitor-enter v12

    :try_start_0
    invoke-static {p0}, Lcom/rui/launcher/common/services/ClassifyClient;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 381
    .local v11, encodePackageName:Ljava/lang/String;
    const-string v3, "packageName=?"

    .line 382
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "category"

    aput-object v1, v2, v0

    .line 383
    .local v2, columns:[Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v11, v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    .local v4, parms:[Ljava/lang/String;
    const/4 v8, -0x1

    .line 385
    .local v8, categoryCode:I
    const/4 v9, 0x0

    .line 387
    .local v9, cr:Landroid/database/Cursor;
    :try_start_1
    const-string v1, "category"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 388
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 394
    :cond_0
    if-eqz v9, :cond_1

    .line 395
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    :cond_1
    :goto_0
    monitor-exit v12

    return v8

    .line 391
    :catch_0
    move-exception v10

    .line 392
    .local v10, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 394
    if-eqz v9, :cond_1

    .line 395
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 380
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #parms:[Ljava/lang/String;
    .end local v8           #categoryCode:I
    .end local v9           #cr:Landroid/database/Cursor;
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #encodePackageName:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0

    .line 393
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #parms:[Ljava/lang/String;
    .restart local v8       #categoryCode:I
    .restart local v9       #cr:Landroid/database/Cursor;
    .restart local v11       #encodePackageName:Ljava/lang/String;
    :catchall_1
    move-exception v0

    .line 394
    if-eqz v9, :cond_2

    .line 395
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_2
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private declared-synchronized getInfoByPkg(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/rui/launcher/common/services/ClassifiedInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 293
    .local v2, target:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 294
    if-nez p1, :cond_0

    .line 306
    :goto_0
    monitor-exit p0

    return-object v2

    .line 296
    :cond_0
    :try_start_1
    sget-object v4, Lcom/rui/launcher/common/services/ClassifyClient;->appsMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 297
    :try_start_2
    sget-object v3, Lcom/rui/launcher/common/services/ClassifyClient;->appsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 296
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 292
    .end local v2           #target:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 297
    .restart local v2       #target:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :cond_2
    :try_start_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 298
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 299
    sget-object v5, Lcom/rui/launcher/common/services/ClassifyClient;->appsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rui/launcher/common/services/ClassifiedInfo;

    .line 300
    .local v1, info:Lcom/rui/launcher/common/services/ClassifiedInfo;
    const/4 v5, -0x1

    iget v6, v1, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    if-ne v5, v6, :cond_1

    .line 301
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized getResponse()Ljava/lang/String;
    .locals 11

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    sget-object v9, Lcom/rui/launcher/common/services/ClassifyClient;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, deviceID:Ljava/lang/String;
    sget-object v9, Lcom/rui/launcher/common/services/ClassifyClient;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, simID:Ljava/lang/String;
    sget-object v9, Lcom/rui/launcher/common/services/ClassifyClient;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, lineNumber:Ljava/lang/String;
    sget-object v9, Lcom/rui/launcher/common/services/ClassifyClient;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, imsi:Ljava/lang/String;
    sget-object v9, Lcom/rui/launcher/common/services/ClassifyClient;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/rui/launcher/common/services/PostRequestHelper;->getClassifyHelper(Landroid/content/Context;)Lcom/rui/launcher/common/services/PostRequestHelper;

    move-result-object v5

    .line 199
    .local v5, requestHelper:Lcom/rui/launcher/common/services/PostRequestHelper;
    const-string v9, "devModel"

    invoke-static {}, Lcom/rui/launcher/common/utils/RUtilities;->getDeviceModel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/rui/launcher/common/services/PostRequestHelper;->addRequestParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v9, "devID"

    invoke-virtual {v5, v9, v1}, Lcom/rui/launcher/common/services/PostRequestHelper;->addRequestParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v9, "simID"

    invoke-virtual {v5, v9, v7}, Lcom/rui/launcher/common/services/PostRequestHelper;->addRequestParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v9, "lineNumber"

    invoke-virtual {v5, v9, v3}, Lcom/rui/launcher/common/services/PostRequestHelper;->addRequestParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v9, "imsi"

    invoke-virtual {v5, v9, v2}, Lcom/rui/launcher/common/services/PostRequestHelper;->addRequestParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    sget-object v9, Lcom/rui/launcher/common/services/ClassifyClient;->appsMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 205
    .local v0, appsList:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    invoke-direct {p0, v0}, Lcom/rui/launcher/common/services/ClassifyClient;->buildParamAppsForClassify(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, paramApps:Ljava/lang/String;
    const-string v9, "apps"

    invoke-virtual {v5, v9, v4}, Lcom/rui/launcher/common/services/PostRequestHelper;->addRequestParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Lcom/rui/launcher/common/services/ClassifyClient;->sendStartMessage()V

    .line 210
    invoke-virtual {v5}, Lcom/rui/launcher/common/services/PostRequestHelper;->doPost()I

    move-result v8

    .line 211
    .local v8, status:I
    invoke-virtual {v5}, Lcom/rui/launcher/common/services/PostRequestHelper;->getContent()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 212
    .local v6, result:Ljava/lang/String;
    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    if-eqz v6, :cond_0

    .line 215
    .end local v6           #result:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v6

    .restart local v6       #result:Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 194
    .end local v0           #appsList:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    .end local v1           #deviceID:Ljava/lang/String;
    .end local v2           #imsi:Ljava/lang/String;
    .end local v3           #lineNumber:Ljava/lang/String;
    .end local v4           #paramApps:Ljava/lang/String;
    .end local v5           #requestHelper:Lcom/rui/launcher/common/services/PostRequestHelper;
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #simID:Ljava/lang/String;
    .end local v8           #status:I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private declared-synchronized listToMap(Ljava/util/List;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/rui/launcher/common/services/ClassifiedInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/rui/launcher/common/services/ClassifyClient;->appsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    if-nez p1, :cond_0

    .line 107
    const/4 v1, 0x0

    .line 111
    :goto_0
    monitor-exit p0

    return v1

    .line 108
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    sget-object v1, Lcom/rui/launcher/common/services/ClassifyClient;->appsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rui/launcher/common/services/ClassifiedInfo;

    .line 109
    .local v0, info:Lcom/rui/launcher/common/services/ClassifiedInfo;
    sget-object v2, Lcom/rui/launcher/common/services/ClassifyClient;->appsMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 105
    .end local v0           #info:Lcom/rui/launcher/common/services/ClassifiedInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized parseJsonData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rui/launcher/common/services/ClassifiedInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .local v8, rvt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 246
    .local v7, resultRoot:Lorg/json/JSONObject;
    const-string v10, "message"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 247
    .local v3, message:Lorg/json/JSONObject;
    const-string v10, "result"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 249
    .local v6, resultArray:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    if-lt v2, v10, :cond_0

    .line 265
    .end local v2           #i:I
    .end local v3           #message:Lorg/json/JSONObject;
    .end local v6           #resultArray:Lorg/json/JSONArray;
    .end local v7           #resultRoot:Lorg/json/JSONObject;
    :goto_1
    monitor-exit p0

    return-object v8

    .line 250
    .restart local v2       #i:I
    .restart local v3       #message:Lorg/json/JSONObject;
    .restart local v6       #resultArray:Lorg/json/JSONArray;
    .restart local v7       #resultRoot:Lorg/json/JSONObject;
    :cond_0
    :try_start_2
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 251
    .local v4, object:Lorg/json/JSONObject;
    const-string v10, "pkgName"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, pkgName:Ljava/lang/String;
    const-string v10, "categoryCode"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, categoryCode:Ljava/lang/String;
    sget-object v10, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    const-string v11, "pkgName"

    invoke-static {v10, v11, v5}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v10, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    const-string v11, "categoryCode"

    invoke-static {v10, v11, v0}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0, v5, v0}, Lcom/rui/launcher/common/services/ClassifyClient;->update(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 257
    .local v9, updated:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_1

    .line 258
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 249
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    .end local v0           #categoryCode:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #message:Lorg/json/JSONObject;
    .end local v4           #object:Lorg/json/JSONObject;
    .end local v5           #pkgName:Ljava/lang/String;
    .end local v6           #resultArray:Lorg/json/JSONArray;
    .end local v7           #resultRoot:Lorg/json/JSONObject;
    .end local v9           #updated:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :catch_0
    move-exception v1

    .line 262
    .local v1, e:Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 241
    .end local v1           #e:Lorg/json/JSONException;
    .end local v8           #rvt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method private sendBroadcast(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "action"

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/rui/launcher/common/services/ClassifyClient;->sendBroadcast(ILjava/util/List;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method private sendBroadcast(ILjava/util/List;Ljava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/rui/launcher/common/services/ClassifiedInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 330
    .local p2, result:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "autoMode"

    iget-boolean v2, p0, Lcom/rui/launcher/common/services/ClassifyClient;->mAuto:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 332
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    if-eqz p2, :cond_0

    .line 334
    const-class v1, Lcom/rui/launcher/common/services/ClassifiedInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 335
    const-string v1, "classifiedData"

    .line 336
    check-cast p2, Ljava/util/ArrayList;

    .line 335
    .end local p2           #result:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 338
    :cond_0
    sget-object v1, Lcom/rui/launcher/common/services/ClassifyClient;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method private sendStartMessage()V
    .locals 2

    .prologue
    .line 310
    const/16 v0, 0x5e7

    .line 311
    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4ClassifyStart()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-direct {p0, v0, v1}, Lcom/rui/launcher/common/services/ClassifyClient;->sendBroadcast(ILjava/lang/String;)V

    .line 312
    return-void
.end method

.method private sendSuccessMessage(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/rui/launcher/common/services/ClassifiedInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    const/16 v0, 0x5e1

    .line 321
    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4ClassifyDone()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-direct {p0, v0, p1, v1}, Lcom/rui/launcher/common/services/ClassifyClient;->sendBroadcast(ILjava/util/List;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method private sendUnnecessaryMessage()V
    .locals 2

    .prologue
    .line 315
    const/16 v0, 0x5e2

    .line 316
    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4ClassifyDone()Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-direct {p0, v0, v1}, Lcom/rui/launcher/common/services/ClassifyClient;->sendBroadcast(ILjava/lang/String;)V

    .line 317
    return-void
.end method

.method private declared-synchronized update(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "pkg"
    .parameter "categoryCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/rui/launcher/common/services/ClassifiedInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    monitor-enter p0

    const/4 v0, -0x1

    .line 271
    .local v0, cd:I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 275
    :goto_0
    if-lez v0, :cond_1

    .line 276
    :try_start_1
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/services/ClassifyClient;->getInfoByPkg(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 277
    .local v5, updated:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 278
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v4, rvt:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 288
    .end local v4           #rvt:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    .end local v5           #updated:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :goto_2
    monitor-exit p0

    return-object v4

    .line 272
    :catch_0
    move-exception v2

    .line 273
    .local v2, e:Ljava/lang/Exception;
    const/4 v0, -0x1

    goto :goto_0

    .line 279
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #rvt:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    .restart local v5       #updated:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :cond_0
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 280
    .local v1, cn:Landroid/content/ComponentName;
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rui/launcher/common/services/ClassifiedInfo;

    .line 281
    .local v3, info:Lcom/rui/launcher/common/services/ClassifiedInfo;
    iput v0, v3, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    .line 282
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v7, Lcom/rui/launcher/common/services/ClassifyClient;->appsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 269
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #info:Lcom/rui/launcher/common/services/ClassifiedInfo;
    .end local v4           #rvt:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    .end local v5           #updated:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 288
    :cond_1
    const/4 v4, 0x0

    goto :goto_2
.end method


# virtual methods
.method public doClassify(Ljava/util/List;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/rui/launcher/common/services/ClassifiedInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 409
    :try_start_0
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/services/ClassifyClient;->listToMap(Ljava/util/List;)I

    .line 410
    sget-object v4, Lcom/rui/launcher/common/services/ClassifyClient;->appsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/rui/launcher/common/services/ClassifyClient;->sendUnnecessaryMessage()V

    .line 412
    const/4 v4, 0x0

    sput-boolean v4, Lcom/rui/launcher/common/services/ClassifyClient;->isRunning:Z

    .line 442
    :goto_0
    return v2

    .line 415
    :cond_0
    const/4 v1, 0x0

    .line 429
    .local v1, rvt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    invoke-static {}, Lcom/rui/launcher/common/services/ClassifyClient;->classifyFromLocal()Ljava/util/ArrayList;

    move-result-object v1

    .line 433
    const/4 v4, 0x0

    sput-boolean v4, Lcom/rui/launcher/common/services/ClassifyClient;->isRunning:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    .end local v1           #rvt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :catch_0
    move-exception v0

    .line 439
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 440
    goto :goto_0
.end method

.method public declared-synchronized execute()V
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/rui/launcher/common/services/ClassifyClient;->isRunning:Z

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .locals 3

    .prologue
    .line 116
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Lcom/rui/launcher/common/services/ClassifyClient;->isRunning:Z

    .line 117
    iget-boolean v2, p0, Lcom/rui/launcher/common/services/ClassifyClient;->mAuto:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/rui/launcher/common/services/ClassifyClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/rui/launcher/common/RContentHelper;->isClassified(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    :cond_0
    sget-object v2, Lcom/rui/launcher/common/services/ClassifyClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/rui/launcher/common/RContentHelper;->getUnClassifiedInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/rui/launcher/common/services/ClassifyClient;->listToMap(Ljava/util/List;)I

    .line 120
    :cond_1
    sget-object v2, Lcom/rui/launcher/common/services/ClassifyClient;->appsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 121
    invoke-direct {p0}, Lcom/rui/launcher/common/services/ClassifyClient;->sendUnnecessaryMessage()V

    .line 122
    const/4 v2, 0x0

    sput-boolean v2, Lcom/rui/launcher/common/services/ClassifyClient;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_3
    const/4 v1, 0x0

    .line 127
    .local v1, rvt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :try_start_1
    iget-boolean v2, p0, Lcom/rui/launcher/common/services/ClassifyClient;->mIsClassifyFirst:Z

    if-nez v2, :cond_4

    sget-object v2, Lcom/rui/launcher/common/services/ClassifyClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/rui/launcher/common/utils/RUtilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 129
    :cond_4
    invoke-static {}, Lcom/rui/launcher/common/services/ClassifyClient;->classifyFromLocal()Ljava/util/ArrayList;

    move-result-object v1

    .line 139
    :goto_1
    invoke-virtual {p0, v1}, Lcom/rui/launcher/common/services/ClassifyClient;->updateItemInDB(Ljava/util/ArrayList;)V

    .line 141
    const/4 v2, 0x0

    sput-boolean v2, Lcom/rui/launcher/common/services/ClassifyClient;->isRunning:Z

    .line 143
    sget-object v2, Lcom/rui/launcher/common/services/ClassifyClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/rui/launcher/common/utils/RUtilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    sget-object v2, Lcom/rui/launcher/common/services/ClassifyClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/rui/launcher/common/collector/RUIDataCollector;->uploadAppsClassifyByLocal(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    .end local v1           #rvt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 131
    .restart local v1       #rvt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :cond_5
    :try_start_2
    invoke-direct {p0}, Lcom/rui/launcher/common/services/ClassifyClient;->getResponse()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 133
    invoke-direct {p0, v0}, Lcom/rui/launcher/common/services/ClassifyClient;->parseJsonData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 134
    goto :goto_1

    .line 136
    :cond_6
    invoke-static {}, Lcom/rui/launcher/common/services/ClassifyClient;->classifyFromLocal()Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_1
.end method

.method public declared-synchronized updateItemInDB(Ljava/util/ArrayList;)V
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rui/launcher/common/services/ClassifiedInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, rvt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    monitor-enter p0

    :try_start_0
    sget-object v12, Lcom/rui/launcher/common/services/ClassifyClient;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 150
    .local v3, cr:Landroid/content/ContentResolver;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v8, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .local v11, values:Landroid/content/ContentValues;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v7, insertLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 155
    .local v10, size:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-lt v5, v10, :cond_0

    .line 180
    :try_start_1
    invoke-static {}, Lcom/rui/launcher/common/RLauncherProvider;->getAuthority()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v9

    .line 181
    .local v9, results:[Landroid/content/ContentProviderResult;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 182
    .local v2, count:I
    const/4 v5, 0x0

    :goto_1
    if-lt v5, v2, :cond_2

    .line 190
    .end local v2           #count:I
    .end local v9           #results:[Landroid/content/ContentProviderResult;
    :goto_2
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/rui/launcher/common/services/ClassifyClient;->sendSuccessMessage(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 156
    :cond_0
    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/rui/launcher/common/services/ClassifiedInfo;

    .line 157
    .local v6, info:Lcom/rui/launcher/common/services/ClassifiedInfo;
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 158
    iget-wide v12, v6, Lcom/rui/launcher/common/services/ClassifiedInfo;->id:J

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-eqz v12, :cond_1

    .line 159
    iget-wide v12, v6, Lcom/rui/launcher/common/services/ClassifiedInfo;->id:J

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/rui/launcher/common/RLauncherSettings$Classifieds;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 160
    .local v1, build:Landroid/content/ContentProviderOperation$Builder;
    const-string v12, "categoryCode"

    iget v13, v6, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string v12, "needUpload"

    iget v13, v6, Lcom/rui/launcher/common/services/ClassifiedInfo;->needUpload:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    invoke-virtual {v1, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 164
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 168
    .end local v1           #build:Landroid/content/ContentProviderOperation$Builder;
    :cond_1
    invoke-virtual {v6, v11}, Lcom/rui/launcher/common/services/ClassifiedInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 169
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v12, Lcom/rui/launcher/common/RLauncherSettings$Classifieds;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 172
    .restart local v1       #build:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v1, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 173
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 149
    .end local v1           #build:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v5           #i:I
    .end local v6           #info:Lcom/rui/launcher/common/services/ClassifiedInfo;
    .end local v7           #insertLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v10           #size:I
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 183
    .restart local v2       #count:I
    .restart local v3       #cr:Landroid/content/ContentResolver;
    .restart local v5       #i:I
    .restart local v7       #insertLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v9       #results:[Landroid/content/ContentProviderResult;
    .restart local v10       #size:I
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_2
    :try_start_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/rui/launcher/common/services/ClassifiedInfo;

    aget-object v13, v9, v5

    iget-object v13, v13, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/rui/launcher/common/services/ClassifiedInfo;->id:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_1

    .line 182
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 185
    .end local v2           #count:I
    .end local v9           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v4

    .line 186
    .local v4, e:Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 187
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 188
    .local v4, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v4}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2
.end method
