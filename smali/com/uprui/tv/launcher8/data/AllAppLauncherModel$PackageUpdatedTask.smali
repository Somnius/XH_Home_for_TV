.class Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;
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
    name = "PackageUpdatedTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_UNAVAILABLE:I = 0x4

.field public static final OP_UPDATE:I = 0x2


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;


# direct methods
.method public constructor <init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "op"
    .parameter "packages"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput p2, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->mOp:I

    .line 414
    iput-object p3, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 415
    return-void
.end method

.method static synthetic access$0(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;)Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;
    .locals 1
    .parameter

    .prologue
    .line 402
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    return-object v0
.end method

.method private fillUnClassifiedAppList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 532
    .local p2, unclassified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .local p3, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    invoke-static {p1}, Lcom/rui/launcher/common/RContentHelper;->getUnClassifiedInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 534
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 535
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 537
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 548
    return-void

    .line 537
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    .line 538
    .local v2, info:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 539
    new-instance v0, Lcom/rui/launcher/common/services/ClassifiedInfo;

    iget-object v5, v2, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {v0, v5}, Lcom/rui/launcher/common/services/ClassifiedInfo;-><init>(Landroid/content/ComponentName;)V

    .line 540
    .local v0, cinfo:Lcom/rui/launcher/common/services/ClassifiedInfo;
    iget v5, v2, Lcom/uprui/tv/launcher8/allapp/AppInfo;->flags:I

    iput v5, v0, Lcom/rui/launcher/common/services/ClassifiedInfo;->flags:I

    .line 541
    iget-object v5, v2, Lcom/uprui/tv/launcher8/allapp/AppInfo;->title:Ljava/lang/CharSequence;

    iput-object v5, v0, Lcom/rui/launcher/common/services/ClassifiedInfo;->title:Ljava/lang/CharSequence;

    .line 542
    const/4 v5, -0x1

    iput v5, v0, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    .line 543
    invoke-virtual {v0, v3}, Lcom/rui/launcher/common/services/ClassifiedInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 544
    sget-object v5, Lcom/rui/launcher/common/RLauncherSettings$Classifieds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/rui/launcher/common/services/ClassifiedInfo;->setId(J)V

    .line 545
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v20, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;
    invoke-static/range {v20 .. v20}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$13(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/LauncherApplication;

    move-result-object v8

    .line 421
    .local v8, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 422
    .local v14, packages:[Ljava/lang/String;
    array-length v3, v14

    .line 423
    .local v3, N:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 442
    :cond_0
    const/4 v4, 0x0

    .line 443
    .local v4, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    const/16 v16, 0x0

    .line 444
    .local v16, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    const/4 v12, 0x0

    .line 446
    .local v12, modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v20, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static/range {v20 .. v20}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_1

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v20, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static/range {v20 .. v20}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->added:Ljava/util/ArrayList;

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v20, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static/range {v20 .. v20}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v20

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->added:Ljava/util/ArrayList;

    .line 450
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v20, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static/range {v20 .. v20}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_2

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v20, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static/range {v20 .. v20}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v20, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static/range {v20 .. v20}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v20

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 455
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v20, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static/range {v20 .. v20}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->modified:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_3

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v20, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static/range {v20 .. v20}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v20, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static/range {v20 .. v20}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v20

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 460
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v20, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;
    invoke-static/range {v20 .. v20}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$7(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v20

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v20, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;
    invoke-static/range {v20 .. v20}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$7(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;

    move-object/from16 v6, v20

    .line 461
    .local v6, callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;
    :goto_0
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v20, "AllAppLauncherModel==>callBacks is null="

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v6, :cond_6

    const/16 v20, 0x1

    :goto_1
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 462
    if-nez v6, :cond_7

    .line 529
    :cond_4
    :goto_2
    return-void

    .line 425
    .end local v4           #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    .end local v6           #callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;
    .end local v12           #modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    .end local v16           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    :pswitch_0
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    if-ge v10, v3, :cond_0

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v20, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static/range {v20 .. v20}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v20

    aget-object v21, v14, v10

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 425
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 430
    .end local v10           #i:I
    :pswitch_1
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_4
    if-ge v10, v3, :cond_0

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v20, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static/range {v20 .. v20}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v20

    aget-object v21, v14, v10

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 430
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 436
    .end local v10           #i:I
    :pswitch_2
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_5
    if-ge v10, v3, :cond_0

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v20, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static/range {v20 .. v20}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v20

    aget-object v21, v14, v10

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->removePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 436
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 460
    .end local v10           #i:I
    .restart local v4       #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    .restart local v12       #modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    .restart local v16       #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .line 461
    .restart local v6       #callbacks:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;
    :cond_6
    const/16 v20, 0x0

    goto :goto_1

    .line 466
    :cond_7
    if-eqz v4, :cond_9

    .line 467
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 468
    .local v9, cr:Landroid/content/ContentResolver;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 470
    .local v19, values:Landroid/content/ContentValues;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_8
    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_b

    .line 496
    move-object v5, v4

    .line 497
    .local v5, addedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v20, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
    invoke-static/range {v20 .. v20}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$6(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    move-result-object v20

    new-instance v21, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v5}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask$1;-><init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual/range {v20 .. v21}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 506
    .end local v5           #addedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    .end local v9           #cr:Landroid/content/ContentResolver;
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_9
    if-eqz v12, :cond_a

    .line 507
    move-object v13, v12

    .line 508
    .local v13, modifiedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v20, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
    invoke-static/range {v20 .. v20}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$6(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    move-result-object v20

    new-instance v21, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v13}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask$2;-><init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual/range {v20 .. v21}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 517
    .end local v13           #modifiedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    :cond_a
    if-eqz v16, :cond_4

    .line 518
    move-object/from16 v0, p0

    iget v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    const/4 v15, 0x1

    .line 519
    .local v15, permanent:Z
    :goto_7
    move-object/from16 v17, v16

    .line 520
    .local v17, removedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v20, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
    invoke-static/range {v20 .. v20}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$6(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    move-result-object v20

    new-instance v21, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v6, v2, v15}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask$3;-><init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;Ljava/util/ArrayList;Z)V

    invoke-virtual/range {v20 .. v21}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 470
    .end local v15           #permanent:Z
    .end local v17           #removedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    .restart local v9       #cr:Landroid/content/ContentResolver;
    .restart local v19       #values:Landroid/content/ContentValues;
    :cond_b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    .line 471
    .local v11, info:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    .line 472
    new-instance v7, Lcom/rui/launcher/common/services/ClassifiedInfo;

    iget-object v0, v11, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lcom/rui/launcher/common/services/ClassifiedInfo;-><init>(Landroid/content/ComponentName;)V

    .line 473
    .local v7, cinfo:Lcom/rui/launcher/common/services/ClassifiedInfo;
    iget v0, v11, Lcom/uprui/tv/launcher8/allapp/AppInfo;->flags:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Lcom/rui/launcher/common/services/ClassifiedInfo;->flags:I

    .line 474
    iget-object v0, v11, Lcom/uprui/tv/launcher8/allapp/AppInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v7, Lcom/rui/launcher/common/services/ClassifiedInfo;->title:Ljava/lang/CharSequence;

    .line 476
    iget v0, v7, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v11, Lcom/uprui/tv/launcher8/allapp/AppInfo;->category:I

    .line 478
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/rui/launcher/common/services/ClassifiedInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 479
    sget-object v21, Lcom/rui/launcher/common/RLauncherSettings$Classifieds;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v7, v0, v1}, Lcom/rui/launcher/common/services/ClassifiedInfo;->setId(J)V

    .line 481
    iget v0, v7, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 483
    invoke-static {v8}, Lcom/rui/launcher/common/RContentHelper;->isClassified(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-object/from16 v21, v0

    #getter for: Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->allAppsList:Lcom/uprui/tv/launcher8/allapp/AllAppsList;
    invoke-static/range {v21 .. v21}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$9(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;)Lcom/uprui/tv/launcher8/allapp/AllAppsList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->add(Lcom/uprui/tv/launcher8/allapp/AppInfo;)V

    goto/16 :goto_6

    .line 488
    :cond_c
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v18, unclassified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v1, v4}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$PackageUpdatedTask;->fillUnClassifiedAppList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 490
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-nez v21, :cond_d

    invoke-static {v8}, Lcom/rui/launcher/common/RContentHelper;->isClassified(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 491
    :cond_d
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v8, v0, v1}, Lcom/uprui/tv/launcher8/LauncherApplication;->requestClassify(Landroid/content/Context;ZLjava/util/ArrayList;)V

    goto/16 :goto_6

    .line 518
    .end local v7           #cinfo:Lcom/rui/launcher/common/services/ClassifiedInfo;
    .end local v9           #cr:Landroid/content/ContentResolver;
    .end local v11           #info:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    .end local v18           #unclassified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
