.class Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RLauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rui/launcher/common/RLauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final TAG_RECOMMEND:Ljava/lang/String; = "recommend"

.field private static final TAG_RECOMMENDS:Ljava/lang/String; = "recommends"


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/rui/launcher/common/RLauncherProvider;


# direct methods
.method public constructor <init>(Lcom/rui/launcher/common/RLauncherProvider;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;->this$0:Lcom/rui/launcher/common/RLauncherProvider;

    .line 197
    const-string v0, "rui.launcher.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 198
    iput-object p2, p0, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 199
    return-void
.end method

.method private addColumnHide(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 257
    const-string v0, "ALTER TABLE classifieds ADD COLUMN hideFlag INTEGER NOT NULL DEFAULT 1"

    .line 258
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method private addRecommend(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Ljava/util/Locale;)Z
    .locals 21
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "pm"
    .parameter "locale"

    .prologue
    .line 317
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 318
    .local v14, pkg:Ljava/lang/String;
    const/16 v17, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, cls:Ljava/lang/String;
    const/16 v17, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 320
    .local v9, downUrl:Ljava/lang/String;
    const/16 v17, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, downOption:Ljava/lang/String;
    if-eqz v14, :cond_0

    if-nez v4, :cond_1

    .line 323
    :cond_0
    const/16 v17, 0x0

    .line 381
    :goto_0
    return v17

    .line 326
    :cond_1
    if-nez v9, :cond_2

    if-nez v8, :cond_2

    .line 327
    const/16 v17, 0x0

    goto :goto_0

    .line 330
    :cond_2
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 332
    .local v16, title:Ljava/lang/String;
    const/4 v5, 0x0

    .line 335
    .local v5, cn:Landroid/content/ComponentName;
    const/4 v12, 0x0

    .line 337
    .local v12, info:Landroid/content/pm/ActivityInfo;
    :try_start_0
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v14, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v5           #cn:Landroid/content/ComponentName;
    .local v6, cn:Landroid/content/ComponentName;
    const/16 v17, 0x0

    :try_start_1
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v12

    move-object v5, v6

    .line 344
    .end local v6           #cn:Landroid/content/ComponentName;
    .restart local v5       #cn:Landroid/content/ComponentName;
    :goto_1
    :try_start_2
    sget-object v17, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-static {}, Lcom/rui/launcher/common/RLauncherProvider;->access$1()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "The recommended app exist in the device. ["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 345
    const/16 v17, 0x0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v10

    move-object v6, v5

    .line 340
    .end local v5           #cn:Landroid/content/ComponentName;
    .restart local v6       #cn:Landroid/content/ComponentName;
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    const/16 v17, 0x1

    :try_start_3
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 341
    .local v15, pkgs:[Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    const/16 v17, 0x0

    aget-object v17, v15, v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 342
    .end local v6           #cn:Landroid/content/ComponentName;
    .restart local v5       #cn:Landroid/content/ComponentName;
    const/16 v17, 0x0

    :try_start_4
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v12

    goto :goto_1

    .line 346
    .end local v5           #cn:Landroid/content/ComponentName;
    .end local v15           #pkgs:[Ljava/lang/String;
    .restart local v6       #cn:Landroid/content/ComponentName;
    :catch_1
    move-exception v10

    move-object v5, v6

    .line 347
    .end local v6           #cn:Landroid/content/ComponentName;
    .restart local v5       #cn:Landroid/content/ComponentName;
    :goto_3
    if-nez v16, :cond_3

    .line 348
    invoke-virtual {v5}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v16

    .line 350
    :cond_3
    const-string v17, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    sget-object v17, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->warning:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-static {}, Lcom/rui/launcher/common/RLauncherProvider;->access$1()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v17, "component"

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v17, "categoryCode"

    const/16 v18, 0x3

    const/16 v19, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    const-string v17, "versionCode"

    const/16 v18, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v17, "dUrl"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v17, "recType"

    const/16 v18, 0x4

    const/16 v19, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string v17, "dOUrl"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/16 v17, 0xb

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 360
    .local v13, language:Ljava/lang/String;
    const/16 v17, 0xc

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 361
    .local v7, country:Ljava/lang/String;
    if-nez v13, :cond_4

    .line 362
    const-string v13, "zh"

    .line 364
    :cond_4
    if-nez v7, :cond_5

    .line 365
    const-string v7, "cn"

    .line 367
    :cond_5
    const-string v17, "language"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v17, "country"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/16 v17, 0x8

    const/16 v18, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 371
    .local v11, iconResId:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_6

    .line 372
    const-string v17, "iconType"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    const-string v17, "iconResource"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_4
    const-string v17, "recommends"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 381
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 375
    :cond_6
    const-string v17, "iconType"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 346
    .end local v7           #country:Ljava/lang/String;
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11           #iconResId:I
    .end local v13           #language:Ljava/lang/String;
    :catch_2
    move-exception v10

    goto/16 :goto_3

    .line 339
    .end local v5           #cn:Landroid/content/ComponentName;
    .restart local v6       #cn:Landroid/content/ComponentName;
    :catch_3
    move-exception v10

    goto/16 :goto_2
.end method

.method private loadClassifieds(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 14
    .parameter "db"

    .prologue
    const/4 v13, 0x1

    .line 385
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v6, mainIntent:Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 390
    .local v8, values:Landroid/content/ContentValues;
    iget-object v9, p0, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 391
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v7, v6, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 392
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .line 393
    .local v2, i:I
    if-eqz v0, :cond_1

    .line 394
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 403
    if-lez v2, :cond_0

    .line 404
    sget-object v9, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-static {}, Lcom/rui/launcher/common/RLauncherProvider;->access$1()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u53d1\u51fa\u9996\u6b21\u5206\u7c7b\u8bf7\u6c42 :"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4Classify()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4Classify()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "autoMode"

    invoke-virtual {v4, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 407
    const-string v9, "isClassify_first"

    invoke-virtual {v4, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    const-string v9, "classifiedData"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 409
    iget-object v9, p0, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 411
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    sget-object v9, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-static {}, Lcom/rui/launcher/common/RLauncherProvider;->access$1()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "loaded "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " apps."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :cond_1
    return v2

    .line 395
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 396
    .local v3, info:Landroid/content/pm/ResolveInfo;
    new-instance v1, Lcom/rui/launcher/common/services/ClassifiedInfo;

    invoke-virtual {v3, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v1, v3, v10}, Lcom/rui/launcher/common/services/ClassifiedInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 397
    .local v1, cinfo:Lcom/rui/launcher/common/services/ClassifiedInfo;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 398
    invoke-virtual {v1, v8}, Lcom/rui/launcher/common/services/ClassifiedInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 399
    const-string v10, "classifieds"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/rui/launcher/common/services/ClassifiedInfo;->setId(J)V

    .line 400
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private loadClassifiedsForUpdate(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 14
    .parameter "db"

    .prologue
    .line 418
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v6, mainIntent:Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 423
    .local v8, values:Landroid/content/ContentValues;
    iget-object v10, p0, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 424
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    invoke-virtual {v7, v6, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 425
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .line 426
    .local v2, i:I
    if-eqz v0, :cond_1

    .line 427
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 438
    if-lez v2, :cond_0

    .line 439
    sget-object v10, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-static {}, Lcom/rui/launcher/common/RLauncherProvider;->access$1()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u53d1\u51fa\u9996\u6b21\u5206\u7c7b\u8bf7\u6c42 :"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4Classify()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4Classify()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v4, intent:Landroid/content/Intent;
    const-string v10, "autoMode"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 442
    const-string v10, "isClassify_first"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    const-string v10, "classifiedData"

    invoke-virtual {v4, v10, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 444
    iget-object v10, p0, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 446
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    sget-object v10, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-static {}, Lcom/rui/launcher/common/RLauncherProvider;->access$1()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "loaded "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " apps."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :cond_1
    return v2

    .line 428
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 429
    .local v3, info:Landroid/content/pm/ResolveInfo;
    new-instance v1, Lcom/rui/launcher/common/services/ClassifiedInfo;

    invoke-virtual {v3, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v1, v3, v11}, Lcom/rui/launcher/common/services/ClassifiedInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 430
    .local v1, cinfo:Lcom/rui/launcher/common/services/ClassifiedInfo;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 431
    invoke-virtual {v1, v8}, Lcom/rui/launcher/common/services/ClassifiedInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 433
    const/4 v11, 0x1

    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, v1, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    .line 434
    .local v9, whereAgr:[Ljava/lang/String;
    const-string v11, "classifieds"

    const-string v12, "component=?"

    invoke-virtual {p1, v11, v8, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v1, v11, v12}, Lcom/rui/launcher/common/services/ClassifiedInfo;->setId(J)V

    .line 435
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private loadRecommends(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 17
    .parameter "db"
    .parameter "recommendResourceId"

    .prologue
    .line 268
    sget-object v1, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->warning:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-static {}, Lcom/rui/launcher/common/RLauncherProvider;->access$1()Ljava/lang/String;

    move-result-object v2

    const-string v16, "loadRecommends"

    move-object/from16 v0, v16

    invoke-static {v1, v2, v0}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 271
    .local v3, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 272
    .local v5, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 273
    .local v14, resources:Landroid/content/res/Resources;
    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 274
    .local v6, locale:Ljava/util/Locale;
    const/4 v11, 0x0

    .line 276
    .local v11, i:I
    :try_start_0
    move/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    .line 277
    .local v13, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v13}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 278
    .local v8, attrs:Landroid/util/AttributeSet;
    const-string v1, "recommends"

    invoke-static {v13, v1}, Lcom/rui/launcher/common/utils/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 280
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 283
    .local v9, depth:I
    :cond_0
    :goto_0
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    .local v15, type:I
    const/4 v1, 0x3

    if-ne v15, v1, :cond_1

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v9, :cond_2

    :cond_1
    const/4 v1, 0x1

    if-ne v15, v1, :cond_3

    .line 313
    .end local v8           #attrs:Landroid/util/AttributeSet;
    .end local v9           #depth:I
    .end local v13           #parser:Landroid/content/res/XmlResourceParser;
    .end local v15           #type:I
    :cond_2
    :goto_1
    return v11

    .line 285
    .restart local v8       #attrs:Landroid/util/AttributeSet;
    .restart local v9       #depth:I
    .restart local v13       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v15       #type:I
    :cond_3
    const/4 v1, 0x2

    if-ne v15, v1, :cond_0

    .line 289
    const/4 v7, 0x0

    .line 290
    .local v7, added:Z
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 292
    .local v12, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/rui/launcher/common/R$styleable;->Recommend:[I

    invoke-virtual {v1, v8, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 294
    .local v4, a:Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 295
    const-string v1, "recommend"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 296
    invoke-direct/range {v1 .. v6}, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;->addRecommend(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Ljava/util/Locale;)Z

    move-result v7

    .line 299
    :cond_4
    if-eqz v7, :cond_5

    .line 300
    add-int/lit8 v11, v11, 0x1

    .line 303
    :cond_5
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 305
    .end local v4           #a:Landroid/content/res/TypedArray;
    .end local v7           #added:Z
    .end local v8           #attrs:Landroid/util/AttributeSet;
    .end local v9           #depth:I
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #parser:Landroid/content/res/XmlResourceParser;
    .end local v15           #type:I
    :catch_0
    move-exception v10

    .line 306
    .local v10, e:Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v1, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->warning:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-static {}, Lcom/rui/launcher/common/RLauncherProvider;->access$1()Ljava/lang/String;

    move-result-object v2

    const-string v16, "Got exception parsing recommends."

    move-object/from16 v0, v16

    invoke-static {v1, v2, v0, v10}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 307
    .end local v10           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v10

    .line 308
    .local v10, e:Ljava/io/IOException;
    sget-object v1, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->warning:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-static {}, Lcom/rui/launcher/common/RLauncherProvider;->access$1()Ljava/lang/String;

    move-result-object v2

    const-string v16, "Got exception parsing recommends."

    move-object/from16 v0, v16

    invoke-static {v1, v2, v0, v10}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 309
    .end local v10           #e:Ljava/io/IOException;
    :catch_2
    move-exception v10

    .line 310
    .local v10, e:Ljava/lang/RuntimeException;
    sget-object v1, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->warning:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-static {}, Lcom/rui/launcher/common/RLauncherProvider;->access$1()Ljava/lang/String;

    move-result-object v2

    const-string v16, "Got exception parsing recommends."

    move-object/from16 v0, v16

    invoke-static {v1, v2, v0, v10}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 204
    const-string v0, "CREATE TABLE IF NOT EXISTS classifieds (_id INTEGER PRIMARY KEY,title TEXT,component TEXT,categoryCode INTEGER NOT NULL DEFAULT -1,flags INTEGER,needUpload INTEGER NOT NULL DEFAULT -1,hideFlag INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 213
    const-string v0, "CREATE TABLE IF NOT EXISTS recommends (_id INTEGER PRIMARY KEY,title TEXT,component TEXT,categoryCode INTEGER NOT NULL DEFAULT -1,versionCode INTEGER,iconType INTEGER NOT NULL DEFAULT 0,iconResource TEXT,icon BLOB,language text,country text,state INTEGER NOT NULL DEFAULT -1,savedFile TEXT,dUrl TEXT,dOUrl TEXT,recType INTEGER,version INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;->loadClassifieds(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 231
    sget v0, Lcom/rui/launcher/common/R$xml;->default_recommended:I

    invoke-direct {p0, p1, v0}, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;->loadRecommends(Landroid/database/sqlite/SQLiteDatabase;I)I

    .line 232
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 236
    const/4 v1, 0x2

    if-ge p2, v1, :cond_0

    .line 237
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;->addColumnHide(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 240
    :cond_0
    const/4 v1, 0x3

    if-ge p2, v1, :cond_1

    .line 242
    const-string v0, "ALTER TABLE classifieds ADD COLUMN needUpload INTEGER NOT NULL DEFAULT -1"

    .line 245
    .local v0, sql2:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 248
    .end local v0           #sql2:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x5

    if-ge p2, v1, :cond_2

    .line 249
    sget-object v1, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->error:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    const-string v2, "SYL"

    const-string v3, "==========> onUpgrade"

    invoke-static {v1, v2, v3}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/rui/launcher/common/RContentHelper;->setClassified(Landroid/content/Context;Z)V

    .line 251
    iget-object v1, p0, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;->this$0:Lcom/rui/launcher/common/RLauncherProvider;

    #calls: Lcom/rui/launcher/common/RLauncherProvider;->updateLocalDB()V
    invoke-static {v1}, Lcom/rui/launcher/common/RLauncherProvider;->access$0(Lcom/rui/launcher/common/RLauncherProvider;)V

    .line 252
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;->loadClassifiedsForUpdate(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 254
    :cond_2
    return-void
.end method
