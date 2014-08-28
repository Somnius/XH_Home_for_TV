.class Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;
.super Landroid/os/Handler;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/LauncherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RHandler"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNm:Lcom/rui/launcher/common/NotiManager;

.field final synthetic this$0:Lcom/uprui/tv/launcher8/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/LauncherApplication;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    .line 345
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 346
    iput-object p2, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mContext:Landroid/content/Context;

    .line 347
    invoke-static {p2}, Lcom/rui/launcher/common/NotiManager;->getInstance(Landroid/content/Context;)Lcom/rui/launcher/common/NotiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mNm:Lcom/rui/launcher/common/NotiManager;

    .line 348
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 352
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    .line 353
    .local v11, what:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 354
    .local v10, type:I
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg2:I

    .line 355
    .local v1, auto:I
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 356
    .local v7, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    .line 357
    .local v5, intent:Landroid/content/Intent;
    sparse-switch v11, :sswitch_data_0

    .line 422
    .end local v7           #obj:Ljava/lang/Object;
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 360
    .restart local v7       #obj:Ljava/lang/Object;
    :sswitch_1
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyy-MM-dd"

    invoke-direct {v4, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 361
    .local v4, formatter:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v2, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 362
    .local v2, curDate:Ljava/util/Date;
    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 363
    .local v6, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mContext:Landroid/content/Context;

    const-string v13, "SP"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 364
    .local v8, sp:Landroid/content/SharedPreferences;
    const/4 v12, 0x0

    invoke-interface {v8, v6, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 365
    .local v9, times:I
    const/4 v12, 0x1

    if-ne v1, v12, :cond_1

    if-gtz v9, :cond_0

    .line 368
    :cond_1
    if-nez v10, :cond_0

    .line 369
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mNm:Lcom/rui/launcher/common/NotiManager;

    const/16 v13, 0x7da

    invoke-virtual {v12, v13}, Lcom/rui/launcher/common/NotiManager;->cancel(I)V

    .line 370
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v12, "com.uprui.tv.launcher.action.DOWNLOAD_RUI"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v12, "response"

    check-cast v7, Ljava/lang/String;

    .end local v7           #obj:Ljava/lang/Object;
    invoke-virtual {v5, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mContext:Landroid/content/Context;

    const-class v13, Lcom/uprui/tv/launcher8/ActLauncher;

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 373
    const/high16 v12, 0x1000

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 374
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    invoke-virtual {v12, v5}, Lcom/uprui/tv/launcher8/LauncherApplication;->startActivity(Landroid/content/Intent;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mNm:Lcom/rui/launcher/common/NotiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mContext:Landroid/content/Context;

    const/high16 v14, 0x800

    invoke-static {v13, v10, v5, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/rui/launcher/common/NotiManager;->showUpdateNotification(Landroid/os/Message;Landroid/app/PendingIntent;)V

    .line 377
    const/4 v12, 0x1

    if-ne v1, v12, :cond_0

    .line 378
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 379
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    add-int/lit8 v12, v9, 0x1

    invoke-interface {v3, v6, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 380
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 387
    .end local v2           #curDate:Ljava/util/Date;
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #formatter:Ljava/text/SimpleDateFormat;
    .end local v6           #key:Ljava/lang/String;
    .end local v8           #sp:Landroid/content/SharedPreferences;
    .end local v9           #times:I
    .restart local v7       #obj:Ljava/lang/Object;
    :sswitch_2
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v12, "Nothing"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .restart local v5       #intent:Landroid/content/Intent;
    const/4 v12, 0x1

    if-eq v1, v12, :cond_0

    .line 389
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mNm:Lcom/rui/launcher/common/NotiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/high16 v15, 0x800

    invoke-static {v13, v14, v5, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/rui/launcher/common/NotiManager;->showUpdateNotification(Landroid/os/Message;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 393
    :sswitch_3
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v12, "Nothing"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .restart local v5       #intent:Landroid/content/Intent;
    const/4 v12, 0x1

    if-eq v1, v12, :cond_0

    .line 395
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mNm:Lcom/rui/launcher/common/NotiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/high16 v15, 0x800

    invoke-static {v13, v14, v5, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/rui/launcher/common/NotiManager;->showUpdateNotification(Landroid/os/Message;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 401
    :sswitch_4
    const/4 v12, 0x1

    if-eq v1, v12, :cond_0

    .line 402
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mNm:Lcom/rui/launcher/common/NotiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "Nothing"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v15, 0x800

    invoke-static {v13, v10, v14, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/rui/launcher/common/NotiManager;->showUpdateNotification(Landroid/os/Message;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 408
    :sswitch_5
    const/4 v12, 0x1

    if-ne v12, v10, :cond_2

    .line 409
    const/4 v12, 0x1

    if-eq v1, v12, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mNm:Lcom/rui/launcher/common/NotiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "Nothing"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v15, 0x800

    invoke-static {v13, v10, v14, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/rui/launcher/common/NotiManager;->showUpdateNotification(Landroid/os/Message;Landroid/app/PendingIntent;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mNm:Lcom/rui/launcher/common/NotiManager;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const v15, 0x7f070028

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/rui/launcher/common/NotiManager;->showToast([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 413
    :cond_2
    if-nez v10, :cond_0

    .line 415
    const/4 v12, 0x1

    if-eq v1, v12, :cond_0

    .line 416
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mNm:Lcom/rui/launcher/common/NotiManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "Nothing"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v15, 0x800

    invoke-static {v13, v10, v14, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/rui/launcher/common/NotiManager;->showUpdateNotification(Landroid/os/Message;Landroid/app/PendingIntent;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uprui/tv/launcher8/LauncherApplication$RHandler;->mNm:Lcom/rui/launcher/common/NotiManager;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const v15, 0x7f070039

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/rui/launcher/common/NotiManager;->showToast([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 357
    nop

    :sswitch_data_0
    .sparse-switch
        0x517 -> :sswitch_2
        0x518 -> :sswitch_5
        0x519 -> :sswitch_1
        0x51a -> :sswitch_3
        0x51c -> :sswitch_0
        0x57d -> :sswitch_4
        0x580 -> :sswitch_4
    .end sparse-switch
.end method
