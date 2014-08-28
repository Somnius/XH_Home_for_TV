.class Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;
.super Lcom/rui/launcher/common/services/InterruptibleRunnable;
.source "RecIconsDownloadRunnable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final TYPE_UPDATE:I = 0x1


# instance fields
.field private isRunning:Z

.field protected mAuto:Z

.field private mContent:Ljava/lang/String;

.field private mImageLoader:Lcom/rui/launcher/common/tvupdaterec/ImageLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "handler"
    .parameter "content"
    .parameter "auto"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/rui/launcher/common/services/InterruptibleRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mAuto:Z

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->isRunning:Z

    .line 54
    iput-object p3, p0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mContent:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/rui/launcher/common/tvupdaterec/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mImageLoader:Lcom/rui/launcher/common/tvupdaterec/ImageLoader;

    .line 56
    iput-boolean p4, p0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mAuto:Z

    .line 57
    return-void
.end method

.method private createInfo(Lorg/json/JSONObject;)Lcom/rui/launcher/common/tvupdaterec/RJsonData;
    .locals 11
    .parameter "json"

    .prologue
    .line 305
    new-instance v1, Lcom/rui/launcher/common/tvupdaterec/RJsonData;

    const-string v5, "packageName"

    invoke-static {p1, v5}, Lcom/rui/launcher/common/utils/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "className"

    invoke-static {p1, v6}, Lcom/rui/launcher/common/utils/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/rui/launcher/common/tvupdaterec/RJsonData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .local v1, jd:Lcom/rui/launcher/common/tvupdaterec/RJsonData;
    const-string v5, "title"

    invoke-static {p1, v5}, Lcom/rui/launcher/common/utils/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->title:Ljava/lang/String;

    .line 307
    const-string v5, "versionCode"

    invoke-static {p1, v5}, Lcom/rui/launcher/common/utils/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->verCode:Ljava/lang/String;

    .line 308
    const-string v5, "properties"

    invoke-static {p1, v5}, Lcom/rui/launcher/common/utils/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, recTypeStr:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, types:[Ljava/lang/String;
    array-length v5, v4

    if-lez v5, :cond_0

    .line 311
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "\u5fc5\u5907"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 312
    const/4 v5, 0x1

    iput v5, v1, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->recType:I

    .line 317
    :cond_0
    const-string v5, "classify_index"

    invoke-static {p1, v5}, Lcom/rui/launcher/common/utils/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 318
    .local v0, categoryCode:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 319
    .local v2, length:I
    int-to-double v5, v0

    const-wide/high16 v7, 0x4024

    rsub-int/lit8 v9, v2, 0x7

    int-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual {v1, v5}, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->setCateCode(I)V

    .line 321
    const-string v5, "iconName"

    invoke-static {p1, v5}, Lcom/rui/launcher/common/utils/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->iconUrl:Ljava/lang/String;

    .line 322
    const-string v5, "downloadURL"

    invoke-static {p1, v5}, Lcom/rui/launcher/common/utils/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->downUrl:Ljava/lang/String;

    .line 323
    const-string v5, "downloadURLTwo"

    invoke-static {p1, v5}, Lcom/rui/launcher/common/utils/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->downOption:Ljava/lang/String;

    .line 324
    return-object v1
.end method

.method private deleteExcessApps(I)V
    .locals 10
    .parameter "limit"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 243
    iget-object v1, p0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/rui/launcher/common/RLauncherSettings$Recommends;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 245
    const-string v3, "categoryCode/10000"

    aput-object v3, v2, v8

    const-string v3, "count(*) as appCount"

    aput-object v3, v2, v9

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "categoryCode is not null and language=\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 248
    const-string v5, "\') group by (categoryCode/10000"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 246
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 244
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 250
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 251
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_1
    return-void

    .line 252
    :cond_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sub-int v7, v1, p1

    .line 253
    .local v7, excessNum:I
    if-lez v7, :cond_0

    .line 254
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v7}, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->deleteExcessAppsBycategory(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private deleteExcessAppsBycategory(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 8
    .parameter "resolver"
    .parameter "category"
    .parameter "count"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 263
    .line 264
    sget-object v1, Lcom/rui/launcher/common/RLauncherSettings$Recommends;->CONTENT_URI:Landroid/net/Uri;

    .line 265
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    const/4 v0, 0x1

    const-string v3, "title"

    aput-object v3, v2, v0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "categoryCode/10000="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 267
    const-string v3, " and language=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "_id ASC limit 0,"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    .line 263
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 271
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 272
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 277
    :cond_0
    return-void

    .line 273
    :cond_1
    sget-object v0, Lcom/rui/launcher/common/RLauncherSettings$Recommends;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private done()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mImageLoader:Lcom/rui/launcher/common/tvupdaterec/ImageLoader;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mImageLoader:Lcom/rui/launcher/common/tvupdaterec/ImageLoader;

    invoke-virtual {v0}, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->showDown()Z

    .line 74
    :cond_0
    return-void
.end method

.method private exist(Landroid/content/Context;Lcom/rui/launcher/common/tvupdaterec/RJsonData;)Z
    .locals 5
    .parameter "context"
    .parameter "rd"

    .prologue
    .line 144
    const/4 v1, 0x1

    .line 146
    .local v1, exist:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p2, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->component:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private failed()V
    .locals 2

    .prologue
    .line 64
    const/16 v0, 0x51c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->sendMessage(ILjava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mImageLoader:Lcom/rui/launcher/common/tvupdaterec/ImageLoader;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mImageLoader:Lcom/rui/launcher/common/tvupdaterec/ImageLoader;

    invoke-virtual {v0}, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->showDown()Z

    .line 68
    :cond_0
    return-void
.end method

.method private getRecType(Lcom/rui/launcher/common/tvupdaterec/RJsonData;)I
    .locals 17
    .parameter "data"

    .prologue
    .line 200
    const/4 v14, 0x1

    .line 202
    .local v14, type:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 203
    sget-object v2, Lcom/rui/launcher/common/RLauncherSettings$Recommends;->CONTENT_URI:Landroid/net/Uri;

    .line 204
    const/4 v3, 0x0

    .line 205
    const-string v4, "component LIKE ?"

    .line 206
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->pkgName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "%"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    .line 207
    const/4 v6, 0x0

    .line 202
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 209
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 210
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 211
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 212
    .local v11, idIndex:I
    const-string v1, "title"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 213
    .local v13, titleIndex:I
    const-string v1, "dUrl"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 215
    .local v9, downloadIndex:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 216
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 217
    .local v10, id:Ljava/lang/Long;
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 218
    .local v12, title:Ljava/lang/String;
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 219
    .local v8, download:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->title:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->downUrl:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    const/4 v14, 0x0

    .line 226
    :goto_0
    sget-object v1, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v2, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "repeat-->= id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  tltle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .end local v8           #download:Ljava/lang/String;
    .end local v9           #downloadIndex:I
    .end local v10           #id:Ljava/lang/Long;
    .end local v11           #idIndex:I
    .end local v12           #title:Ljava/lang/String;
    .end local v13           #titleIndex:I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 230
    :cond_1
    return v14

    .line 222
    .restart local v8       #download:Ljava/lang/String;
    .restart local v9       #downloadIndex:I
    .restart local v10       #id:Ljava/lang/Long;
    .restart local v11       #idIndex:I
    .restart local v12       #title:Ljava/lang/String;
    .restart local v13       #titleIndex:I
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object/from16 v0, p1

    iput-wide v1, v0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->id:J

    .line 223
    const/4 v14, 0x2

    goto :goto_0
.end method

.method private getUpdatedData(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v1, Lorg/json/JSONArray;

    const-string v5, "recAppsInfo"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, array:Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v3, data:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/tvupdaterec/RJsonData;>;"
    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 290
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    if-lt v4, v2, :cond_1

    .line 297
    .end local v2           #count:I
    .end local v4           #index:I
    :cond_0
    return-object v3

    .line 291
    .restart local v2       #count:I
    .restart local v4       #index:I
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, appInfo:Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 293
    invoke-direct {p0, v0}, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->createInfo(Lorg/json/JSONObject;)Lcom/rui/launcher/common/tvupdaterec/RJsonData;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private loadImage(Ljava/util/List;)Z
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, result:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    .line 155
    .local v8, size:I
    sget-object v9, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v10, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "result.size:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v9, p0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mImageLoader:Lcom/rui/launcher/common/tvupdaterec/ImageLoader;

    invoke-virtual {v9, v8}, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->setTaskNumber(I)V

    .line 158
    iget-object v9, p0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mImageLoader:Lcom/rui/launcher/common/tvupdaterec/ImageLoader;

    invoke-virtual {v9}, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->getAllTask()Ljava/util/List;

    move-result-object v5

    .line 160
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<*>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v7, rvt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->done()V

    .line 174
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 176
    .local v0, N:I
    if-nez v0, :cond_2

    .line 177
    const/4 v9, 0x0

    .line 194
    :goto_1
    return v9

    .line 161
    .end local v0           #N:I
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 163
    .local v2, f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rui/launcher/common/services/ClassifiedInfo;

    .line 164
    .local v3, info:Lcom/rui/launcher/common/services/ClassifiedInfo;
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-wide v10, v3, Lcom/rui/launcher/common/services/ClassifiedInfo;->id:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 165
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 167
    .end local v3           #info:Lcom/rui/launcher/common/services/ClassifiedInfo;
    :catch_0
    move-exception v1

    .line 168
    .local v1, e:Ljava/lang/InterruptedException;
    sget-object v10, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->error:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v11, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 170
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    sget-object v10, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->error:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v11, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    .end local v2           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    .restart local v0       #N:I
    :cond_2
    const/16 v9, 0x3c

    invoke-direct {p0, v9}, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->deleteExcessApps(I)V

    .line 183
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4RecDone()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "classifiedData"

    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 185
    iget-object v9, p0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 186
    const/16 v9, 0x51a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->sendMessage(ILjava/lang/Object;)V

    .line 188
    mul-int/lit8 v9, v0, 0x64

    div-int v6, v9, v8

    .line 189
    .local v6, rate:I
    sget-object v9, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v10, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "fail:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v12, v8, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " total:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " rate:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/16 v9, 0x46

    if-ge v6, v9, :cond_3

    .line 191
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 194
    :cond_3
    const/4 v9, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->isRunning:Z

    return v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 82
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->isRunning:Z

    .line 83
    const/16 v14, 0x51b

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->sendMessage(ILjava/lang/Object;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mContent:Ljava/lang/String;

    if-nez v14, :cond_0

    .line 86
    invoke-direct/range {p0 .. p0}, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->failed()V

    .line 141
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v10, 0x0

    .line 93
    .local v10, root:Lorg/json/JSONObject;
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mContent:Ljava/lang/String;

    invoke-direct {v11, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    .end local v10           #root:Lorg/json/JSONObject;
    .local v11, root:Lorg/json/JSONObject;
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v7, rList:Ljava/util/List;,"Ljava/util/List<*>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->getUpdatedData(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v7

    .line 97
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    .line 98
    .local v12, size:I
    if-nez v12, :cond_1

    .line 99
    invoke-direct/range {p0 .. p0}, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->failed()V

    .line 100
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->isRunning:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 137
    .end local v7           #rList:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v12           #size:I
    :catch_0
    move-exception v1

    move-object v10, v11

    .line 138
    .end local v11           #root:Lorg/json/JSONObject;
    .local v1, e:Lorg/json/JSONException;
    .restart local v10       #root:Lorg/json/JSONObject;
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->failed()V

    .line 140
    .end local v1           #e:Lorg/json/JSONException;
    :goto_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->isRunning:Z

    goto :goto_0

    .line 104
    .end local v10           #root:Lorg/json/JSONObject;
    .restart local v7       #rList:Ljava/util/List;,"Ljava/util/List<*>;"
    .restart local v11       #root:Lorg/json/JSONObject;
    .restart local v12       #size:I
    :cond_1
    :try_start_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 106
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v2, 0x0

    .line 107
    .local v2, i:I
    const/4 v9, 0x0

    .line 108
    .local v9, repeat:I
    const/4 v4, 0x0

    .local v4, installed:I
    move v3, v2

    .line 110
    .end local v2           #i:I
    .local v3, i:I
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_2

    .line 126
    sget-object v14, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v15, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "repeat:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " installed:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Add tasks:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->loadImage(Ljava/util/List;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 129
    const-string v14, "latelyUpdateTime"

    invoke-static {v11, v14}, Lcom/rui/launcher/common/utils/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, lv:Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mContext:Landroid/content/Context;

    invoke-static {v14, v6}, Lcom/rui/launcher/common/utils/RUtilities;->writeRecLastUpdateTime4Country(Landroid/content/Context;Ljava/lang/String;)Z

    move-object v10, v11

    .line 133
    .end local v11           #root:Lorg/json/JSONObject;
    .restart local v10       #root:Lorg/json/JSONObject;
    goto :goto_2

    .line 112
    .end local v6           #lv:Ljava/lang/String;
    .end local v10           #root:Lorg/json/JSONObject;
    .restart local v11       #root:Lorg/json/JSONObject;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/rui/launcher/common/tvupdaterec/RJsonData;

    .line 113
    .local v8, rd:Lcom/rui/launcher/common/tvupdaterec/RJsonData;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->getRecType(Lcom/rui/launcher/common/tvupdaterec/RJsonData;)I

    move-result v13

    .line 114
    .local v13, type:I
    if-nez v13, :cond_3

    .line 115
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 116
    add-int/lit8 v9, v9, 0x1

    .line 117
    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->exist(Landroid/content/Context;Lcom/rui/launcher/common/tvupdaterec/RJsonData;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 118
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 119
    add-int/lit8 v4, v4, 0x1

    .line 120
    goto :goto_3

    .line 121
    :cond_4
    const-string v14, "latelyUpdateTime"

    invoke-static {v11, v14}, Lcom/rui/launcher/common/utils/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->latestUpdateTime:Ljava/lang/String;

    .line 122
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mImageLoader:Lcom/rui/launcher/common/tvupdaterec/ImageLoader;

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v14, v8, v13, v3}, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->addTask(Lcom/rui/launcher/common/tvupdaterec/RJsonData;II)V

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto/16 :goto_3

    .line 134
    .end local v8           #rd:Lcom/rui/launcher/common/tvupdaterec/RJsonData;
    .end local v13           #type:I
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->failed()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v10, v11

    .line 137
    .end local v11           #root:Lorg/json/JSONObject;
    .restart local v10       #root:Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v3           #i:I
    .end local v4           #installed:I
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v7           #rList:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v9           #repeat:I
    .end local v12           #size:I
    :catch_1
    move-exception v1

    goto/16 :goto_1

    .end local v10           #root:Lorg/json/JSONObject;
    .restart local v3       #i:I
    .restart local v4       #installed:I
    .restart local v5       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v6       #lv:Ljava/lang/String;
    .restart local v7       #rList:Ljava/util/List;,"Ljava/util/List<*>;"
    .restart local v9       #repeat:I
    .restart local v11       #root:Lorg/json/JSONObject;
    .restart local v12       #size:I
    :cond_6
    move-object v10, v11

    .end local v11           #root:Lorg/json/JSONObject;
    .restart local v10       #root:Lorg/json/JSONObject;
    goto/16 :goto_2
.end method

.method protected sendMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    .line 77
    iget-boolean v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecIconsDownloadRunnable;->mAuto:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-super {p0, p1, v1, v0, p2}, Lcom/rui/launcher/common/services/InterruptibleRunnable;->sendMessage(IIILjava/lang/Object;)V

    .line 78
    return-void

    .line 77
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
