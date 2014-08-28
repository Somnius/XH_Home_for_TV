.class Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;
.super Ljava/lang/Object;
.source "WorkSpaceLauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
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

.field final synthetic this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;


# direct methods
.method public constructor <init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "op"
    .parameter "packages"

    .prologue
    .line 409
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput p2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;->mOp:I

    .line 411
    iput-object p3, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 412
    return-void
.end method

.method static synthetic access$0(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
    .locals 1
    .parameter

    .prologue
    .line 399
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    return-object v0
.end method

.method private removeItem(Ljava/lang/String;)Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 466
    const/4 v1, 0x0

    .line 467
    .local v1, tempInfo:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    iget-object v2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    iget-object v2, v2, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 473
    :goto_0
    if-eqz v1, :cond_1

    .line 474
    iget-object v2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    iget-object v2, v2, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 476
    :cond_1
    return-object v1

    .line 467
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 468
    .local v0, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    iget-object v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 469
    move-object v1, v0

    .line 470
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 416
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v8, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->app:Lcom/uprui/tv/launcher8/LauncherApplication;
    invoke-static {v9}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$6(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Lcom/uprui/tv/launcher8/LauncherApplication;

    move-result-object v2

    .line 420
    .local v2, context:Landroid/content/Context;
    iget-object v6, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 421
    .local v6, packages:[Ljava/lang/String;
    array-length v0, v6

    .line 422
    .local v0, N:I
    iget v9, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;->mOp:I

    packed-switch v9, :pswitch_data_0

    .line 439
    :cond_0
    iget-object v9, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v9}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$5(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v9}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$5(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;

    move-object v1, v9

    .line 440
    .local v1, callbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
    :goto_0
    if-nez v1, :cond_3

    .line 463
    :cond_1
    :goto_1
    return-void

    .line 424
    .end local v1           #callbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
    :pswitch_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 428
    .end local v3           #i:I
    :pswitch_1
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 433
    .end local v3           #i:I
    :pswitch_2
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    if-ge v3, v0, :cond_0

    .line 434
    aget-object v9, v6, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 439
    .end local v3           #i:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 444
    .restart local v1       #callbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
    :cond_3
    if-eqz v8, :cond_1

    .line 445
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v7, removeItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    .line 452
    iget-object v9, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
    invoke-static {v9}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$1(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask$1;

    invoke-direct {v10, p0, v1, v7}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask$1;-><init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v10}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 446
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 447
    .local v5, packageName:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$PackageUpdatedTask;->removeItem(Ljava/lang/String;)Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    move-result-object v4

    .line 448
    .local v4, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    if-eqz v4, :cond_4

    .line 449
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 422
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
