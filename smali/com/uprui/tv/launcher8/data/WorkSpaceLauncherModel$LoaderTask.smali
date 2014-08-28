.class Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;
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
    name = "LoaderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsLaunching:Z

.field private mLoadAndBindStepFinished:Z

.field private mStopped:Z

.field final synthetic this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 203
    iput-boolean p3, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->mIsLaunching:Z

    .line 204
    return-void
.end method

.method static synthetic access$0(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    return-void
.end method

.method static synthetic access$1(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    return-object v0
.end method

.method private loadWorkspace()V
    .locals 32

    .prologue
    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    iget-object v3, v3, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 304
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 305
    .local v12, context:Landroid/content/Context;
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 307
    .local v2, contentResolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/uprui/tv/launcher8/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 310
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 311
    .local v19, idIndex:I
    const-string v3, "title"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 312
    .local v30, titleIndex:I
    const-string v3, "intent"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 313
    .local v21, intentIndex:I
    const-string v3, "packageName"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 314
    .local v27, packageNameIndex:I
    const-string v3, "className"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 315
    .local v11, classNameIndex:I
    const-string v3, "categoryCode"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 316
    .local v10, categoryCodeIndex:I
    const-string v3, "iconType"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 317
    .local v18, iconTypeIndex:I
    const-string v3, "iconFrom"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 318
    .local v16, iconFromIndex:I
    const-string v3, "iconResID"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 319
    .local v17, iconResourceIndex:I
    const-string v3, "iconDownloadUrl"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 320
    .local v15, iconDownloadUrlIndex:I
    const-string v3, "apkDownloadUrl"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 321
    .local v8, apkDownloadUrlIndex:I
    const-string v3, "isDownload"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 322
    .local v23, isDownlaodIndex:I
    const-string v3, "isInstall"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 323
    .local v24, isInstallIndex:I
    const-string v3, "description"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 324
    .local v13, descriptionIndex:I
    const-string v3, "webUrl"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 325
    .local v31, webUrlIndex:I
    const-string v3, "startCount"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 326
    .local v29, startCountIndex:I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->mStopped:Z

    if-nez v3, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 357
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$5(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 358
    .local v25, oldCallbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
    if-nez v25, :cond_5

    .line 389
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 391
    .end local v8           #apkDownloadUrlIndex:I
    .end local v10           #categoryCodeIndex:I
    .end local v11           #classNameIndex:I
    .end local v13           #descriptionIndex:I
    .end local v15           #iconDownloadUrlIndex:I
    .end local v16           #iconFromIndex:I
    .end local v17           #iconResourceIndex:I
    .end local v18           #iconTypeIndex:I
    .end local v19           #idIndex:I
    .end local v21           #intentIndex:I
    .end local v23           #isDownlaodIndex:I
    .end local v24           #isInstallIndex:I
    .end local v25           #oldCallbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
    .end local v27           #packageNameIndex:I
    .end local v29           #startCountIndex:I
    .end local v30           #titleIndex:I
    .end local v31           #webUrlIndex:I
    :goto_1
    return-void

    .line 328
    .restart local v8       #apkDownloadUrlIndex:I
    .restart local v10       #categoryCodeIndex:I
    .restart local v11       #classNameIndex:I
    .restart local v13       #descriptionIndex:I
    .restart local v15       #iconDownloadUrlIndex:I
    .restart local v16       #iconFromIndex:I
    .restart local v17       #iconResourceIndex:I
    .restart local v18       #iconTypeIndex:I
    .restart local v19       #idIndex:I
    .restart local v21       #intentIndex:I
    .restart local v23       #isDownlaodIndex:I
    .restart local v24       #isInstallIndex:I
    .restart local v27       #packageNameIndex:I
    .restart local v29       #startCountIndex:I
    .restart local v30       #titleIndex:I
    .restart local v31       #webUrlIndex:I
    :cond_1
    :try_start_1
    new-instance v20, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    invoke-direct/range {v20 .. v20}, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;-><init>()V

    .line 329
    .local v20, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->id:J

    .line 330
    move/from16 v0, v30

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->setTitle(Ljava/lang/String;)V

    .line 331
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 332
    .local v22, intentString:Ljava/lang/String;
    if-eqz v22, :cond_2

    .line 333
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->intent:Landroid/content/Intent;

    .line 335
    :cond_2
    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    .line 336
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->className:Ljava/lang/String;

    .line 337
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->categoryCode:I

    .line 338
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconType:I

    .line 339
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconFrom:I

    .line 340
    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 341
    .local v28, resName:Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v26

    .line 342
    .local v26, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v3, v0, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconResId:I

    .line 343
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconDownloadUrl:Ljava/lang/String;

    .line 344
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->apkDownloadUrl:Ljava/lang/String;

    .line 345
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->isDownload:Z

    .line 346
    move/from16 v0, v24

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->isInstall:Z

    .line 347
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->description:Ljava/lang/String;

    .line 348
    move/from16 v0, v31

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->webUrl:Ljava/lang/String;

    .line 349
    move/from16 v0, v29

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->startCount:I

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    iget-object v3, v3, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 352
    .end local v20           #info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    .end local v22           #intentString:Ljava/lang/String;
    .end local v26           #packageName:Ljava/lang/String;
    .end local v28           #resName:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 353
    .local v14, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 386
    .end local v8           #apkDownloadUrlIndex:I
    .end local v10           #categoryCodeIndex:I
    .end local v11           #classNameIndex:I
    .end local v13           #descriptionIndex:I
    .end local v14           #e:Ljava/lang/Exception;
    .end local v15           #iconDownloadUrlIndex:I
    .end local v16           #iconFromIndex:I
    .end local v17           #iconResourceIndex:I
    .end local v18           #iconTypeIndex:I
    .end local v19           #idIndex:I
    .end local v21           #intentIndex:I
    .end local v23           #isDownlaodIndex:I
    .end local v24           #isInstallIndex:I
    .end local v27           #packageNameIndex:I
    .end local v29           #startCountIndex:I
    .end local v30           #titleIndex:I
    .end local v31           #webUrlIndex:I
    :catch_1
    move-exception v14

    .line 387
    .restart local v14       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 389
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 345
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v8       #apkDownloadUrlIndex:I
    .restart local v10       #categoryCodeIndex:I
    .restart local v11       #classNameIndex:I
    .restart local v13       #descriptionIndex:I
    .restart local v15       #iconDownloadUrlIndex:I
    .restart local v16       #iconFromIndex:I
    .restart local v17       #iconResourceIndex:I
    .restart local v18       #iconTypeIndex:I
    .restart local v19       #idIndex:I
    .restart local v20       #info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    .restart local v21       #intentIndex:I
    .restart local v22       #intentString:Ljava/lang/String;
    .restart local v23       #isDownlaodIndex:I
    .restart local v24       #isInstallIndex:I
    .restart local v26       #packageName:Ljava/lang/String;
    .restart local v27       #packageNameIndex:I
    .restart local v28       #resName:Ljava/lang/String;
    .restart local v29       #startCountIndex:I
    .restart local v30       #titleIndex:I
    .restart local v31       #webUrlIndex:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 346
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 364
    .end local v20           #info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    .end local v22           #intentString:Ljava/lang/String;
    .end local v26           #packageName:Ljava/lang/String;
    .end local v28           #resName:Ljava/lang/String;
    .restart local v25       #oldCallbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
    invoke-static {v3}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$1(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$4;-><init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;)V

    invoke-virtual {v3, v4}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
    invoke-static {v3}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$1(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v1}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$5;-><init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;)V

    invoke-virtual {v3, v4}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->post(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 389
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 388
    .end local v8           #apkDownloadUrlIndex:I
    .end local v10           #categoryCodeIndex:I
    .end local v11           #classNameIndex:I
    .end local v13           #descriptionIndex:I
    .end local v15           #iconDownloadUrlIndex:I
    .end local v16           #iconFromIndex:I
    .end local v17           #iconResourceIndex:I
    .end local v18           #iconTypeIndex:I
    .end local v19           #idIndex:I
    .end local v21           #intentIndex:I
    .end local v23           #isDownlaodIndex:I
    .end local v24           #isInstallIndex:I
    .end local v25           #oldCallbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
    .end local v27           #packageNameIndex:I
    .end local v29           #startCountIndex:I
    .end local v30           #titleIndex:I
    .end local v31           #webUrlIndex:I
    :catchall_0
    move-exception v3

    .line 389
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 390
    throw v3
.end method

.method private waitForIdle()V
    .locals 2

    .prologue
    .line 212
    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$1(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$1;

    invoke-direct {v1, p0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$1;-><init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 224
    :goto_0
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    return-void

    .line 226
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method isLaunching()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$2(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 239
    :try_start_0
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 238
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->loadWorkspace()V

    .line 243
    iput-object v2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 245
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$2(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 247
    :try_start_1
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->loaderTask:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$3(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    const/4 v2, 0x0

    #setter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->loaderTask:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;
    invoke-static {v0, v2}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$4(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;)V

    .line 245
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$1(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$2;

    invoke-direct {v1, p0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$2;-><init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 266
    :goto_1
    return-void

    .line 239
    :cond_1
    const/16 v0, 0xa

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 245
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->handler:Lcom/uprui/tv/launcher8/allapp/DeferredHandler;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$1(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Lcom/uprui/tv/launcher8/allapp/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$3;

    invoke-direct {v1, p0}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask$3;-><init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/uprui/tv/launcher8/allapp/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 269
    monitor-enter p0

    .line 270
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->mStopped:Z

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 269
    monitor-exit p0

    .line 273
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
    .locals 4
    .parameter "oldCallbacks"

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$2(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 281
    :try_start_0
    iget-boolean v3, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_0

    .line 282
    monitor-exit v2

    move-object v0, v1

    .line 297
    :goto_0
    return-object v0

    .line 285
    :cond_0
    iget-object v3, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$5(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-nez v3, :cond_1

    .line 286
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 289
    :cond_1
    iget-object v3, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$LoaderTask;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    #getter for: Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->callbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->access$5(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;

    .line 290
    .local v0, callbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 291
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 293
    :cond_2
    if-nez v0, :cond_3

    .line 294
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 297
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 280
    .end local v0           #callbacks:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$Callbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
