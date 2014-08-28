.class Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "AllAppLauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsLaunching:Z

.field private mStopped:Z

.field final synthetic this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 206
    iput-boolean p3, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->mIsLaunching:Z

    .line 207
    return-void
.end method

.method static synthetic access$0(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;)Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    return-object v0
.end method

.method private loadAllAppsByBatch()V
    .locals 15

    .prologue
    .line 292
    iget-object v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v13}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$7(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;

    .line 293
    .local v11, oldCallbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;
    if-nez v11, :cond_1

    .line 392
    :cond_0
    return-void

    .line 296
    :cond_1
    new-instance v10, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    const/4 v14, 0x0

    invoke-direct {v10, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 297
    .local v10, mainIntent:Landroid/content/Intent;
    const-string v13, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iget-object v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 300
    .local v12, packageManager:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 301
    .local v2, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .line 302
    .local v5, classifyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    const v0, 0x7fffffff

    .line 304
    .local v0, N:I
    const/4 v7, 0x0

    .line 305
    .local v7, i:I
    const/4 v3, -0x1

    .line 306
    .local v3, batchSize:I
    :cond_2
    :goto_0
    if-ge v7, v0, :cond_0

    iget-boolean v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->mStopped:Z

    if-nez v13, :cond_0

    .line 307
    if-nez v7, :cond_3

    .line 308
    iget-object v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static {v13}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->clear()V

    .line 309
    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 310
    if-eqz v2, :cond_0

    .line 313
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 314
    if-eqz v0, :cond_0

    .line 317
    iget-object v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->batchSize:I
    invoke-static {v13}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$10(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)I

    move-result v13

    if-nez v13, :cond_5

    .line 318
    move v3, v0

    .line 323
    :goto_1
    new-instance v13, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v13, v12}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 325
    invoke-static {}, Lcom/uprui/tv/launcher8/LauncherApplication;->isClassfied()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 326
    iget-object v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    invoke-virtual {v13}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->getClassifyMap()Ljava/util/HashMap;

    move-result-object v5

    .line 327
    iget-object v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static {v13}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->setClassified(Z)V

    .line 330
    :cond_3
    const/4 v9, 0x0

    .local v9, j:I
    :goto_2
    if-ge v7, v0, :cond_4

    if-lt v9, v3, :cond_6

    .line 343
    :cond_4
    if-gt v7, v3, :cond_8

    const/4 v6, 0x1

    .line 344
    .local v6, first:Z
    :goto_3
    invoke-virtual {p0, v11}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->tryGetCallbacks(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;)Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;

    move-result-object v4

    .line 345
    .local v4, callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;
    iget-object v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static {v13}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v13

    iget-object v1, v13, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->added:Ljava/util/ArrayList;

    .line 346
    .local v1, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    iget-object v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static {v13}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v13, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->added:Ljava/util/ArrayList;

    .line 348
    iget-boolean v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->mStopped:Z

    if-nez v13, :cond_0

    .line 351
    iget-object v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
    invoke-static {v13}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$6(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    move-result-object v13

    new-instance v14, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$3;

    invoke-direct {v14, p0, v4, v6, v1}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$3;-><init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;ZLjava/util/ArrayList;)V

    invoke-virtual {v13, v14}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 365
    iget-boolean v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->mStopped:Z

    if-eqz v13, :cond_9

    .line 366
    iget-object v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
    invoke-static {v13}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$6(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    move-result-object v13

    new-instance v14, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$4;

    invoke-direct {v14, p0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$4;-><init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;)V

    invoke-virtual {v13, v14}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 385
    :goto_4
    iget-object v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsLoadDelay:I
    invoke-static {v13}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$12(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)I

    move-result v13

    if-lez v13, :cond_2

    if-ge v7, v0, :cond_2

    .line 387
    :try_start_0
    iget-object v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsLoadDelay:I
    invoke-static {v13}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$12(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)I

    move-result v13

    int-to-long v13, v13

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 388
    :catch_0
    move-exception v13

    goto/16 :goto_0

    .line 320
    .end local v1           #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    .end local v4           #callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;
    .end local v6           #first:Z
    .end local v9           #j:I
    :cond_5
    iget-object v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->batchSize:I
    invoke-static {v13}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$10(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)I

    move-result v3

    goto/16 :goto_1

    .line 331
    .restart local v9       #j:I
    :cond_6
    new-instance v8, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v14, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;
    invoke-static {v14}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$11(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    move-result-object v14

    invoke-direct {v8, v13, v14}, Lcom/uprui/tv/launcher8/allapp/AppInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;)V

    .line 332
    .local v8, info:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    iget-object v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static {v13}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->isClassified()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 333
    if-eqz v8, :cond_7

    if-eqz v5, :cond_7

    .line 334
    iget-object v13, v8, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 335
    iget-object v13, v8, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v8, Lcom/uprui/tv/launcher8/allapp/AppInfo;->category:I

    .line 339
    :cond_7
    iget-object v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static {v13}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->add(Lcom/uprui/tv/launcher8/allapp/AppInfo;)V

    .line 340
    add-int/lit8 v7, v7, 0x1

    .line 330
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 343
    .end local v8           #info:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 375
    .restart local v1       #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    .restart local v4       #callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;
    .restart local v6       #first:Z
    :cond_9
    iget-object v13, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
    invoke-static {v13}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$6(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    move-result-object v13

    new-instance v14, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$5;

    invoke-direct {v14, p0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$5;-><init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;)V

    invoke-virtual {v13, v14}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method private loadAndBindAllApps()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsLoaded:Z
    invoke-static {v0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$8(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->loadAllAppsByBatch()V

    .line 285
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 289
    :cond_0
    return-void
.end method


# virtual methods
.method isLaunching()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-static {}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderTask run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$3(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 218
    :try_start_0
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 217
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->loadAndBindAllApps()V

    .line 224
    iput-object v2, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 226
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$3(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 228
    :try_start_1
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->loaderTask:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$4(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    const/4 v2, 0x0

    #setter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->loaderTask:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;
    invoke-static {v0, v2}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$5(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;)V

    .line 226
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 232
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$6(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$1;

    invoke-direct {v1, p0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$1;-><init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 247
    :goto_1
    return-void

    .line 218
    :cond_2
    const/16 v0, 0xa

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 226
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$6(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$2;

    invoke-direct {v1, p0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$2;-><init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 250
    monitor-enter p0

    .line 251
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->mStopped:Z

    .line 252
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 250
    monitor-exit p0

    .line 254
    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;)Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;
    .locals 4
    .parameter "oldCallbacks"

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v2, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$3(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 262
    :try_start_0
    iget-boolean v3, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_0

    .line 263
    monitor-exit v2

    move-object v0, v1

    .line 278
    :goto_0
    return-object v0

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$7(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-nez v3, :cond_1

    .line 267
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 270
    :cond_1
    iget-object v3, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$7(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;

    .line 271
    .local v0, callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 272
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 274
    :cond_2
    if-nez v0, :cond_3

    .line 275
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 278
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 261
    .end local v0           #callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
