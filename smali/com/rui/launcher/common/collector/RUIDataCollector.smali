.class public Lcom/rui/launcher/common/collector/RUIDataCollector;
.super Ljava/lang/Object;
.source "RUIDataCollector.java"


# static fields
.field private static final COLLECTOR_CLASSFY_URL:Ljava/lang/String; = "http://ruisystem.duapp.com/classify/classify.html"

.field private static final COLLECTOR_DOWNLOAD_URL:Ljava/lang/String; = "http://ruisystem.duapp.com/client/recapp_usage.html"

.field private static final COLLECT_APPS_URL:Ljava/lang/String; = "http://ruisystem.duapp.com/client/collectApps.html"

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    .line 40
    const-string v1, "collector"

    .line 39
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/rui/launcher/common/collector/RUIDataCollector;->sWorkerThread:Landroid/os/HandlerThread;

    .line 42
    sget-object v0, Lcom/rui/launcher/common/collector/RUIDataCollector;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    .line 45
    sget-object v1, Lcom/rui/launcher/common/collector/RUIDataCollector;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/rui/launcher/common/collector/RUIDataCollector;->sWorker:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 222
    invoke-static {p0}, Lcom/rui/launcher/common/collector/RUIDataCollector;->buildClassifyJsonStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    invoke-static {p0}, Lcom/rui/launcher/common/collector/RUIDataCollector;->uploadComplete(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 149
    invoke-static {p0}, Lcom/rui/launcher/common/collector/RUIDataCollector;->buildAppsJsonStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildAppsJsonStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 24
    .parameter "context"

    .prologue
    .line 151
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/rui/launcher/common/collector/CollectorUtil;->getInstance(Landroid/content/Context;)Lcom/rui/launcher/common/collector/CollectorUtil;

    move-result-object v4

    .line 152
    .local v4, collectorUtil:Lcom/rui/launcher/common/collector/CollectorUtil;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 153
    .local v13, pManager:Landroid/content/pm/PackageManager;
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 155
    .local v16, root:Lorg/json/JSONObject;
    const-string v21, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, deviceID:Ljava/lang/String;
    const-string v21, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v17

    .line 157
    .local v17, simID:Ljava/lang/String;
    const-string v21, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, lineNumber:Ljava/lang/String;
    const-string v21, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, imsi:Ljava/lang/String;
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 160
    .local v20, userObj:Lorg/json/JSONObject;
    const-string v21, "lineNumber"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v21, "deviceId"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v21, "imsi"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v21, "simId"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v21, "area"

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v21, "ruichannel"

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v21, "systemLanguage"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v21, "device"

    invoke-static {}, Lcom/rui/launcher/common/utils/RUtilities;->getDeviceModel()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v21, "plat"

    const-string v22, "Phone"

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 171
    .local v3, appArray:Lorg/json/JSONArray;
    new-instance v11, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v11, mainIntent:Landroid/content/Intent;
    const-string v21, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v11, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 174
    .local v15, resolverInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v7, v0, :cond_0

    .line 191
    invoke-virtual {v4}, Lcom/rui/launcher/common/collector/CollectorUtil;->getUninstallLists()Ljava/util/ArrayList;

    move-result-object v19

    .line 192
    .local v19, uninstallApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_2

    .line 203
    const-string v21, "userInfo"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v21, "apps"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    .line 210
    .end local v3           #appArray:Lorg/json/JSONArray;
    .end local v4           #collectorUtil:Lcom/rui/launcher/common/collector/CollectorUtil;
    .end local v5           #deviceID:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #imsi:Ljava/lang/String;
    .end local v10           #lineNumber:Ljava/lang/String;
    .end local v11           #mainIntent:Landroid/content/Intent;
    .end local v13           #pManager:Landroid/content/pm/PackageManager;
    .end local v15           #resolverInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16           #root:Lorg/json/JSONObject;
    .end local v17           #simID:Ljava/lang/String;
    .end local v19           #uninstallApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20           #userObj:Lorg/json/JSONObject;
    :goto_2
    return-object v21

    .line 175
    .restart local v3       #appArray:Lorg/json/JSONArray;
    .restart local v4       #collectorUtil:Lcom/rui/launcher/common/collector/CollectorUtil;
    .restart local v5       #deviceID:Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v8       #imsi:Ljava/lang/String;
    .restart local v10       #lineNumber:Ljava/lang/String;
    .restart local v11       #mainIntent:Landroid/content/Intent;
    .restart local v13       #pManager:Landroid/content/pm/PackageManager;
    .restart local v15       #resolverInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16       #root:Lorg/json/JSONObject;
    .restart local v17       #simID:Ljava/lang/String;
    .restart local v20       #userObj:Lorg/json/JSONObject;
    :cond_0
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 176
    .local v9, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/rui/launcher/common/collector/RUIDataCollector;->isSystemApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v18

    .line 177
    .local v18, systemApp:Z
    if-eqz v18, :cond_1

    .line 174
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 180
    :cond_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 181
    .local v12, object:Lorg/json/JSONObject;
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 182
    .local v14, packageName:Ljava/lang/String;
    const-string v21, "3"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v21, "4"

    invoke-virtual {v9, v13}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v21, "2"

    invoke-virtual {v4, v14}, Lcom/rui/launcher/common/collector/CollectorUtil;->getRuntime(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    const-string v21, "0"

    invoke-virtual {v4, v14}, Lcom/rui/launcher/common/collector/CollectorUtil;->getOperate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 207
    .end local v3           #appArray:Lorg/json/JSONArray;
    .end local v4           #collectorUtil:Lcom/rui/launcher/common/collector/CollectorUtil;
    .end local v5           #deviceID:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #imsi:Ljava/lang/String;
    .end local v9           #info:Landroid/content/pm/ResolveInfo;
    .end local v10           #lineNumber:Ljava/lang/String;
    .end local v11           #mainIntent:Landroid/content/Intent;
    .end local v12           #object:Lorg/json/JSONObject;
    .end local v13           #pManager:Landroid/content/pm/PackageManager;
    .end local v14           #packageName:Ljava/lang/String;
    .end local v15           #resolverInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16           #root:Lorg/json/JSONObject;
    .end local v17           #simID:Ljava/lang/String;
    .end local v18           #systemApp:Z
    .end local v20           #userObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 208
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    const-string v21, "{}"

    goto :goto_2

    .line 192
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #appArray:Lorg/json/JSONArray;
    .restart local v4       #collectorUtil:Lcom/rui/launcher/common/collector/CollectorUtil;
    .restart local v5       #deviceID:Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v8       #imsi:Ljava/lang/String;
    .restart local v10       #lineNumber:Ljava/lang/String;
    .restart local v11       #mainIntent:Landroid/content/Intent;
    .restart local v13       #pManager:Landroid/content/pm/PackageManager;
    .restart local v15       #resolverInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16       #root:Lorg/json/JSONObject;
    .restart local v17       #simID:Ljava/lang/String;
    .restart local v19       #uninstallApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20       #userObj:Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 193
    .restart local v14       #packageName:Ljava/lang/String;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 194
    .restart local v12       #object:Lorg/json/JSONObject;
    const-string v22, "3"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v22, "4"

    const-string v23, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v22, "2"

    invoke-virtual {v4, v14}, Lcom/rui/launcher/common/collector/CollectorUtil;->getRuntime(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    const-string v22, "0"

    invoke-virtual {v4, v14}, Lcom/rui/launcher/common/collector/CollectorUtil;->getOperate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private static buildClassifyJsonStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .parameter "context"

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 225
    .local v7, array:Lorg/json/JSONArray;
    sget-object v1, Lcom/rui/launcher/common/RLauncherSettings$Classifieds;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 226
    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "component"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 227
    const-string v4, "needUpload"

    aput-object v4, v2, v3

    const-string v3, "needUpload=1"

    .line 228
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 225
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 229
    .local v8, c:Landroid/database/Cursor;
    const-string v6, ""

    .line 231
    .local v6, apps:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 233
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 254
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 255
    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 260
    :cond_1
    :goto_1
    return-object v6

    .line 234
    :cond_2
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 236
    .local v10, component_name:Ljava/lang/String;
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 238
    .local v9, cn:Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 240
    .local v14, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v14, v9, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    .line 241
    .local v12, info:Landroid/content/pm/ActivityInfo;
    invoke-static {v12}, Lcom/rui/launcher/common/collector/RUIDataCollector;->isSystemApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 245
    .local v13, object:Lorg/json/JSONObject;
    const-string v1, "pkgName"

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v1, "title"

    invoke-static {v12, v14}, Lcom/rui/launcher/common/collector/RUIDataCollector;->getTitleByComponentName(Landroid/content/pm/ActivityInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v1, "isBuildIn"

    invoke-static {v12}, Lcom/rui/launcher/common/collector/RUIDataCollector;->isSystemApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    invoke-virtual {v13, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 248
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 249
    .end local v12           #info:Landroid/content/pm/ActivityInfo;
    .end local v13           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v11

    .line 250
    .local v11, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 257
    .end local v9           #cn:Landroid/content/ComponentName;
    .end local v10           #component_name:Ljava/lang/String;
    .end local v11           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v11

    .line 258
    .local v11, e:Lorg/json/JSONException;
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static collectUserInfoAndApps(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 107
    invoke-static {p0}, Lcom/rui/launcher/common/collector/RUIDataCollector;->getRUILicense(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, license:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 111
    :cond_0
    sget-object v1, Lcom/rui/launcher/common/collector/RUIDataCollector;->sWorker:Landroid/os/Handler;

    new-instance v2, Lcom/rui/launcher/common/collector/RUIDataCollector$3;

    invoke-direct {v2, v0, p0}, Lcom/rui/launcher/common/collector/RUIDataCollector$3;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static getAllApps(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 133
    .local v2, pManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 134
    .local v3, packlist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 145
    return-object v0

    .line 135
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 142
    .local v4, pak:Landroid/content/pm/PackageInfo;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getRUILicense(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "cx"

    .prologue
    .line 49
    invoke-static {p0}, Lcom/rui/launcher/common/utils/RUtilities;->getUUIDProperty(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, uuID:Ljava/lang/String;
    invoke-static {p0}, Lcom/rui/launcher/common/utils/RUtilities;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    .line 51
    .local v3, version:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "^*#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, licenseSource:Ljava/lang/String;
    new-instance v4, Lcom/rui/launcher/common/security/LicenseFactory;

    invoke-direct {v4}, Lcom/rui/launcher/common/security/LicenseFactory;-><init>()V

    invoke-virtual {v4, v1}, Lcom/rui/launcher/common/security/LicenseFactory;->generateLicense(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, license:Ljava/lang/String;
    return-object v0
.end method

.method private static getTitleByComponentName(Landroid/content/pm/ActivityInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 2
    .parameter "info"
    .parameter "pm"

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, title:Ljava/lang/String;
    return-object v0
.end method

.method private static isSystemApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 270
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    .line 271
    .local v0, isSystemApp:Z
    :goto_0
    return v0

    .line 270
    .end local v0           #isSystemApp:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onDownloadCompleted(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "data"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/rui/launcher/common/collector/RUIDataCollector;->getRUILicense(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, license:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v1, Lcom/rui/launcher/common/collector/RUIDataCollector;->sWorker:Landroid/os/Handler;

    new-instance v2, Lcom/rui/launcher/common/collector/RUIDataCollector$1;

    invoke-direct {v2, v0, p1}, Lcom/rui/launcher/common/collector/RUIDataCollector$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static uploadAppsClassifyByLocal(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/rui/launcher/common/collector/RUIDataCollector;->getRUILicense(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, license:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, deviceID:Ljava/lang/String;
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, simID:Ljava/lang/String;
    sget-object v3, Lcom/rui/launcher/common/collector/RUIDataCollector;->sWorker:Landroid/os/Handler;

    new-instance v4, Lcom/rui/launcher/common/collector/RUIDataCollector$2;

    invoke-direct {v4, v1, v0, v2, p0}, Lcom/rui/launcher/common/collector/RUIDataCollector$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static uploadComplete(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 216
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "needUpload"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    sget-object v2, Lcom/rui/launcher/common/RLauncherSettings$Classifieds;->CONTENT_URI:Landroid/net/Uri;

    .line 219
    const-string v3, "needUpload=1"

    const/4 v4, 0x0

    .line 218
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 220
    return-void
.end method
