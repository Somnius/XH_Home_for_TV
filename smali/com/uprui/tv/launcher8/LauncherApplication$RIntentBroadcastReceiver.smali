.class Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/LauncherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RIntentBroadcastReceiver"
.end annotation


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field final synthetic this$0:Lcom/uprui/tv/launcher8/LauncherApplication;


# direct methods
.method public constructor <init>(Lcom/uprui/tv/launcher8/LauncherApplication;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    iput-object p1, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 215
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 217
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.uprui.tv.launcher.action.SET_NETWORK"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->addAction([Ljava/lang/String;)V

    .line 220
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.uprui.mid.launcher8.action.RUI_UPDATE_REQUEST"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->addAction([Ljava/lang/String;)V

    .line 223
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.uprui.tv.launcher.action.CLASSIFY_REQUEST"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->addAction([Ljava/lang/String;)V

    .line 224
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.uprui.tv.launcher.action.CLASSIFY_START"

    aput-object v1, v0, v2

    const-string v1, "com.uprui.tv.launcher.action.CLASSIFY_DONE"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->addAction([Ljava/lang/String;)V

    .line 225
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.uprui.tv.launcher.action.CLASSIFY_FAIL"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->addAction([Ljava/lang/String;)V

    .line 228
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.uprui.tv.launcher.action.DOWNLOAD_REC"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->addAction([Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.uprui.tv.launcher.action.RECOMMEND_UPDATE_REQUEST"

    aput-object v1, v0, v2

    const-string v1, "com.uprui.tv.launcher.action.RECOMMEND_UPDATE_DONE"

    aput-object v1, v0, v3

    const-string v1, "com.uprui.tv.launcher.action.DOWNLOAD_REC"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->addAction([Ljava/lang/String;)V

    .line 230
    return-void
.end method


# virtual methods
.method public varargs addAction([Ljava/lang/String;)V
    .locals 4
    .parameter "actions"

    .prologue
    .line 233
    if-nez p1, :cond_1

    .line 238
    :cond_0
    return-void

    .line 235
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 236
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 246
    if-nez p1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, action:Ljava/lang/String;
    const-string v8, "com.uprui.tv.launcher.action.CLASSIFY_REQUEST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 252
    const-string v8, "autoMode"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 253
    .local v1, auto:Z
    const-string v8, "isClassify_first"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 254
    .local v3, isClassifyFirst:Z
    const-class v8, Lcom/rui/launcher/common/services/ClassifiedInfo;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 255
    const-string v8, "classifiedData"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 256
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    new-instance v6, Lcom/rui/launcher/common/services/ClassifyClient;

    invoke-direct {v6, p1, v1, v4, v3}, Lcom/rui/launcher/common/services/ClassifyClient;-><init>(Landroid/content/Context;ZLjava/util/List;Z)V

    .line 257
    .local v6, runnable:Lcom/rui/launcher/common/services/ClassifyClient;
    invoke-virtual {v6}, Lcom/rui/launcher/common/services/ClassifyClient;->execute()V

    goto :goto_0

    .line 258
    .end local v1           #auto:Z
    .end local v3           #isClassifyFirst:Z
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    .end local v6           #runnable:Lcom/rui/launcher/common/services/ClassifyClient;
    :cond_2
    const-string v8, "com.uprui.tv.launcher.action.CLASSIFY_START"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 259
    const-string v8, "autoMode"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 260
    .restart local v1       #auto:Z
    if-nez v1, :cond_0

    .line 261
    const-string v8, "state"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 262
    .local v7, state:I
    invoke-static {p1, v0, v7}, Lcom/rui/launcher/common/NotiManager;->showClassifyNotifaction(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 264
    .end local v1           #auto:Z
    .end local v7           #state:I
    :cond_3
    const-string v8, "com.uprui.tv.launcher.action.CLASSIFY_DONE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 265
    const-string v8, "autoMode"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 266
    .restart local v1       #auto:Z
    const-string v8, "state"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 267
    .restart local v7       #state:I
    const/16 v8, 0x5e1

    if-ne v8, v7, :cond_6

    .line 268
    const-string v8, "classifiedData"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 269
    .local v2, data:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    invoke-static {p1}, Lcom/rui/launcher/common/RContentHelper;->isClassified(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 270
    invoke-static {p1, v9}, Lcom/rui/launcher/common/RContentHelper;->setClassified(Landroid/content/Context;Z)V

    .line 271
    invoke-static {v9}, Lcom/uprui/tv/launcher8/LauncherApplication;->access$2(Z)V

    .line 272
    iget-object v8, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    #getter for: Lcom/uprui/tv/launcher8/LauncherApplication;->workSpaceModel:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
    invoke-static {v8}, Lcom/uprui/tv/launcher8/LauncherApplication;->access$0(Lcom/uprui/tv/launcher8/LauncherApplication;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->bindWorkspaceAfterClassify()V

    .line 273
    iget-object v8, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    #getter for: Lcom/uprui/tv/launcher8/LauncherApplication;->allAppsModel:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;
    invoke-static {v8}, Lcom/uprui/tv/launcher8/LauncherApplication;->access$1(Lcom/uprui/tv/launcher8/LauncherApplication;)Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->bindAllAppsAfterClassify()V

    .line 279
    :goto_1
    if-nez v1, :cond_4

    .line 280
    invoke-static {p1, v0, v7}, Lcom/rui/launcher/common/NotiManager;->showClassifyNotifaction(Landroid/content/Context;Ljava/lang/String;I)V

    .line 292
    .end local v2           #data:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :cond_4
    :goto_2
    if-nez v1, :cond_0

    .line 293
    invoke-static {p1, v0, v7}, Lcom/rui/launcher/common/NotiManager;->showClassifyNotifaction(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 276
    .restart local v2       #data:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :cond_5
    iget-object v8, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    #getter for: Lcom/uprui/tv/launcher8/LauncherApplication;->workSpaceModel:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
    invoke-static {v8}, Lcom/uprui/tv/launcher8/LauncherApplication;->access$0(Lcom/uprui/tv/launcher8/LauncherApplication;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    move-result-object v8

    iget-object v9, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    invoke-virtual {v8, v9, v2}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->addClassifieds(Landroid/content/Context;Ljava/util/List;)V

    .line 277
    iget-object v8, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    #getter for: Lcom/uprui/tv/launcher8/LauncherApplication;->allAppsModel:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;
    invoke-static {v8}, Lcom/uprui/tv/launcher8/LauncherApplication;->access$1(Lcom/uprui/tv/launcher8/LauncherApplication;)Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-result-object v8

    iget-object v9, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    invoke-virtual {v8, v9, v2}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->addClassifieds(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1

    .line 284
    .end local v2           #data:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    :cond_6
    if-nez v1, :cond_0

    .line 286
    const/16 v8, 0x5e2

    if-ne v8, v7, :cond_7

    .line 287
    iget-object v8, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    iget-object v9, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    const v10, 0x7f07002b

    invoke-virtual {v9, v10}, Lcom/uprui/tv/launcher8/LauncherApplication;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 289
    :cond_7
    iget-object v8, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    iget-object v9, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    const v10, 0x7f07002a

    invoke-virtual {v9, v10}, Lcom/uprui/tv/launcher8/LauncherApplication;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 294
    .end local v1           #auto:Z
    .end local v7           #state:I
    :cond_8
    const-string v8, "com.uprui.tv.launcher.action.CLASSIFY_FAIL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 295
    const-string v8, "autoMode"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 296
    .restart local v1       #auto:Z
    const-string v8, "state"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 297
    .restart local v7       #state:I
    if-nez v1, :cond_0

    .line 298
    invoke-static {p1, v0, v7}, Lcom/rui/launcher/common/NotiManager;->showClassifyNotifaction(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 300
    .end local v1           #auto:Z
    .end local v7           #state:I
    :cond_9
    const-string v8, "com.uprui.tv.launcher.action.RECOMMEND_UPDATE_REQUEST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 301
    const-string v8, "autoMode"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 302
    .restart local v1       #auto:Z
    invoke-static {p1}, Lcom/rui/launcher/common/utils/RUtilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 304
    iget-object v8, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    #getter for: Lcom/uprui/tv/launcher8/LauncherApplication;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/uprui/tv/launcher8/LauncherApplication;->access$3(Lcom/uprui/tv/launcher8/LauncherApplication;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {p1, v8, v1}, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->executeCheck(Landroid/content/Context;Landroid/os/Handler;Z)V

    goto/16 :goto_0

    .line 306
    :cond_a
    if-nez v1, :cond_0

    .line 307
    invoke-static {p1, v11}, Lcom/rui/launcher/common/NotiManager;->showInvalidNetwork(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 310
    .end local v1           #auto:Z
    :cond_b
    const-string v8, "com.uprui.tv.launcher.action.DOWNLOAD_REC"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 311
    const-string v8, "response"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 312
    .local v5, res:Ljava/lang/String;
    const-string v8, "autoMode"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 313
    .restart local v1       #auto:Z
    if-eqz v5, :cond_0

    .line 314
    invoke-static {p1}, Lcom/rui/launcher/common/utils/RUtilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 315
    iget-object v8, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    #getter for: Lcom/uprui/tv/launcher8/LauncherApplication;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/uprui/tv/launcher8/LauncherApplication;->access$3(Lcom/uprui/tv/launcher8/LauncherApplication;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {p1, v8, v5, v1}, Lcom/rui/launcher/common/tvupdaterec/RecUpdateExecutor;->executeDownloadTask(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 317
    :cond_c
    invoke-static {p1, v11}, Lcom/rui/launcher/common/NotiManager;->showInvalidNetwork(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 320
    .end local v1           #auto:Z
    .end local v5           #res:Ljava/lang/String;
    :cond_d
    const-string v8, "com.uprui.tv.launcher.action.RECOMMEND_UPDATE_DONE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 321
    invoke-static {p1}, Lcom/rui/launcher/common/RContentHelper;->getFirstRecUpdate(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 322
    invoke-static {p1, v9}, Lcom/rui/launcher/common/RContentHelper;->setFirstRecUpdate(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 324
    :cond_e
    const-string v8, "com.uprui.tv.launcher.action.SET_NETWORK"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 325
    invoke-static {p1, v11}, Lcom/rui/launcher/common/NotiManager;->showInvalidNetwork(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 326
    :cond_f
    const-string v8, "com.uprui.mid.launcher8.action.RUI_UPDATE_REQUEST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 327
    const-string v8, "autoMode"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 328
    .restart local v1       #auto:Z
    invoke-static {p1}, Lcom/rui/launcher/common/utils/RUtilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 329
    iget-object v8, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RIntentBroadcastReceiver;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    #getter for: Lcom/uprui/tv/launcher8/LauncherApplication;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/uprui/tv/launcher8/LauncherApplication;->access$3(Lcom/uprui/tv/launcher8/LauncherApplication;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {p1, v8, v1}, Lcom/rui/launcher/common/services/RUIUpdateCheckExecutor;->execute(Landroid/content/Context;Landroid/os/Handler;Z)V

    goto/16 :goto_0

    .line 331
    :cond_10
    if-nez v1, :cond_0

    .line 332
    invoke-static {p1, v11}, Lcom/rui/launcher/common/NotiManager;->showInvalidNetwork(Landroid/content/Context;Z)V

    goto/16 :goto_0
.end method
