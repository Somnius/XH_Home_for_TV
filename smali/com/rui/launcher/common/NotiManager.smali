.class public Lcom/rui/launcher/common/NotiManager;
.super Ljava/lang/Object;
.source "NotiManager.java"


# static fields
.field public static final ID_BASE:I = 0x7db

.field public static final NOTI_ID_CLASSFY:I = 0x7d7

.field public static final NOTI_ID_NETWORK:I = 0x7d8

.field public static final NOTI_ID_RUI_UPDATE:I = 0x7da

.field public static final NOTI_ID_UPDATE:I = 0x7d9

.field private static final TAG:Ljava/lang/String;

.field private static handler:Landroid/os/Handler;

.field private static sInstance:Lcom/rui/launcher/common/NotiManager;

.field private static final sNoti:Landroid/app/Notification;

.field private static sSynLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNm:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/rui/launcher/common/NotiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rui/launcher/common/NotiManager;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/rui/launcher/common/NotiManager;->sInstance:Lcom/rui/launcher/common/NotiManager;

    .line 36
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    sput-object v0, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/rui/launcher/common/NotiManager;->handler:Landroid/os/Handler;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/rui/launcher/common/NotiManager;->sSynLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/rui/launcher/common/NotiManager;->mContext:Landroid/content/Context;

    .line 48
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 47
    iput-object v0, p0, Lcom/rui/launcher/common/NotiManager;->mNm:Landroid/app/NotificationManager;

    .line 49
    return-void
.end method

.method static synthetic access$0()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/rui/launcher/common/NotiManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/rui/launcher/common/NotiManager;->sSynLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static cancelNoti(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 407
    sget-object v0, Lcom/rui/launcher/common/NotiManager;->sInstance:Lcom/rui/launcher/common/NotiManager;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 408
    sget-object v0, Lcom/rui/launcher/common/NotiManager;->sInstance:Lcom/rui/launcher/common/NotiManager;

    invoke-virtual {v0, p0}, Lcom/rui/launcher/common/NotiManager;->cancel(I)V

    .line 410
    :cond_0
    return-void
.end method

.method private createNoti(Landroid/app/Notification;IILjava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "noti"
    .parameter "iconId"
    .parameter "flags"
    .parameter "ticker"
    .parameter "pending"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "progress"

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 90
    iput p2, p1, Landroid/app/Notification;->icon:I

    .line 91
    iput-object p4, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 92
    iput p3, p1, Landroid/app/Notification;->flags:I

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Landroid/app/Notification;->when:J

    .line 94
    if-eqz p5, :cond_0

    .line 95
    iget-object v0, p0, Lcom/rui/launcher/common/NotiManager;->mContext:Landroid/content/Context;

    .line 96
    if-nez p7, :cond_1

    .line 95
    .end local p4
    :goto_0
    invoke-virtual {p1, v0, p6, p4, p5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 99
    :cond_0
    return-void

    .restart local p4
    :cond_1
    move-object p4, p7

    .line 96
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/rui/launcher/common/NotiManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    sget-object v0, Lcom/rui/launcher/common/NotiManager;->sInstance:Lcom/rui/launcher/common/NotiManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/rui/launcher/common/NotiManager;

    invoke-direct {v0, p0}, Lcom/rui/launcher/common/NotiManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/rui/launcher/common/NotiManager;->sInstance:Lcom/rui/launcher/common/NotiManager;

    .line 55
    :cond_0
    sget-object v0, Lcom/rui/launcher/common/NotiManager;->sInstance:Lcom/rui/launcher/common/NotiManager;

    return-object v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/rui/launcher/common/NotiManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/rui/launcher/common/NotiManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 438
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p0, :cond_0

    .line 439
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 441
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getStringWithFormat(ILjava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "resId"
    .parameter "obj"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/rui/launcher/common/NotiManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/rui/launcher/common/NotiManager;->getStringWithFormat(Landroid/content/Context;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringWithFormat(ILjava/lang/Object;Z)Ljava/lang/String;
    .locals 3
    .parameter "resId"
    .parameter "obj"
    .parameter "recUpdate"

    .prologue
    .line 398
    iget-object v1, p0, Lcom/rui/launcher/common/NotiManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/rui/launcher/common/NotiManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, s:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStringWithFormat(Landroid/content/Context;ILjava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "resId"
    .parameter "format"

    .prologue
    .line 454
    invoke-static {p0, p1}, Lcom/rui/launcher/common/NotiManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, s:Ljava/lang/String;
    move-object v0, p2

    .line 456
    .local v0, f:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 457
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 458
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Lcom/rui/launcher/common/NotiManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 460
    .end local v0           #f:Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 462
    :goto_0
    return-object v2

    .restart local v0       #f:Ljava/lang/Object;
    .restart local p2
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public static showClassifyNotifaction(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 11
    .parameter "context"
    .parameter "action"
    .parameter "state"

    .prologue
    const/16 v3, 0x10

    const/4 v7, 0x0

    const/high16 v10, 0x800

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 519
    invoke-static {p0}, Lcom/rui/launcher/common/NotiManager;->getInstance(Landroid/content/Context;)Lcom/rui/launcher/common/NotiManager;

    move-result-object v0

    .line 521
    .local v0, nm:Lcom/rui/launcher/common/NotiManager;
    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4ClassifyStart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    sget v2, Lcom/rui/launcher/common/R$drawable;->stat_rui:I

    .line 523
    const/16 v3, 0x20

    .line 524
    sget v4, Lcom/rui/launcher/common/R$string;->classify_start:I

    invoke-direct {v0, v4}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 525
    new-instance v5, Landroid/content/Intent;

    const-string v6, "Nothing"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v9, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 527
    sget v6, Lcom/rui/launcher/common/R$string;->rui_prompt:I

    invoke-direct {v0, v6}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 522
    invoke-direct/range {v0 .. v8}, Lcom/rui/launcher/common/NotiManager;->createNoti(Landroid/app/Notification;IILjava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 567
    :cond_0
    :goto_0
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    const/16 v2, 0x7d7

    invoke-virtual {v0, v1, v2}, Lcom/rui/launcher/common/NotiManager;->showNoti(Landroid/app/Notification;I)V

    .line 568
    return-void

    .line 530
    :cond_1
    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4ClassifyDone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 531
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 533
    :sswitch_0
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    sget v2, Lcom/rui/launcher/common/R$drawable;->stat_rui:I

    .line 535
    sget v4, Lcom/rui/launcher/common/R$string;->classify_done:I

    invoke-direct {v0, v4}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 536
    new-instance v5, Landroid/content/Intent;

    .line 537
    const-string v6, "Nothing"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    invoke-static {p0, v9, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 538
    sget v6, Lcom/rui/launcher/common/R$string;->rui_prompt:I

    invoke-direct {v0, v6}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 533
    invoke-direct/range {v0 .. v8}, Lcom/rui/launcher/common/NotiManager;->createNoti(Landroid/app/Notification;IILjava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 541
    :sswitch_1
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    sget v2, Lcom/rui/launcher/common/R$drawable;->stat_rui:I

    .line 543
    sget v4, Lcom/rui/launcher/common/R$string;->classify_done:I

    invoke-direct {v0, v4}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 544
    new-instance v5, Landroid/content/Intent;

    .line 545
    const-string v6, "Nothing"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    invoke-static {p0, v9, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 546
    sget v6, Lcom/rui/launcher/common/R$string;->rui_prompt:I

    invoke-direct {v0, v6}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 541
    invoke-direct/range {v0 .. v8}, Lcom/rui/launcher/common/NotiManager;->createNoti(Landroid/app/Notification;IILjava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 549
    :sswitch_2
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    sget v2, Lcom/rui/launcher/common/R$drawable;->stat_rui:I

    .line 551
    sget v4, Lcom/rui/launcher/common/R$string;->classify_unnecessary:I

    invoke-direct {v0, v4}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 552
    new-instance v5, Landroid/content/Intent;

    .line 553
    const-string v6, "Nothing"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-static {p0, v9, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 554
    sget v6, Lcom/rui/launcher/common/R$string;->rui_prompt:I

    invoke-direct {v0, v6}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 549
    invoke-direct/range {v0 .. v8}, Lcom/rui/launcher/common/NotiManager;->createNoti(Landroid/app/Notification;IILjava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 559
    :cond_2
    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4ClassifyFail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    sget v2, Lcom/rui/launcher/common/R$drawable;->stat_rui:I

    .line 562
    sget v4, Lcom/rui/launcher/common/R$string;->classify_failed:I

    invoke-direct {v0, v4}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 563
    new-instance v5, Landroid/content/Intent;

    const-string v6, "Nothing"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v9, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 565
    sget v6, Lcom/rui/launcher/common/R$string;->rui_prompt:I

    invoke-direct {v0, v6}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 560
    invoke-direct/range {v0 .. v8}, Lcom/rui/launcher/common/NotiManager;->createNoti(Landroid/app/Notification;IILjava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    .line 531
    :sswitch_data_0
    .sparse-switch
        0x5e1 -> :sswitch_0
        0x5e2 -> :sswitch_2
        0x5e7 -> :sswitch_1
    .end sparse-switch
.end method

.method public static showInvalidNetwork(Landroid/content/Context;Z)V
    .locals 10
    .parameter "context"
    .parameter "onlyNotify"

    .prologue
    .line 498
    if-eqz p1, :cond_0

    .line 499
    sget v1, Lcom/rui/launcher/common/R$string;->no_network:I

    invoke-static {p0, v1}, Lcom/rui/launcher/common/NotiManager;->showMessage(Landroid/content/Context;I)V

    .line 515
    :goto_0
    return-void

    .line 501
    :cond_0
    invoke-static {p0}, Lcom/rui/launcher/common/NotiManager;->getInstance(Landroid/content/Context;)Lcom/rui/launcher/common/NotiManager;

    move-result-object v0

    .line 502
    .local v0, nm:Lcom/rui/launcher/common/NotiManager;
    new-instance v9, Landroid/content/Intent;

    .line 503
    const-string v1, "android.settings.WIRELESS_SETTINGS"

    .line 502
    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .local v9, target:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 507
    const/4 v1, 0x0

    .line 508
    const/high16 v2, 0x800

    .line 507
    invoke-static {p0, v1, v9, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 509
    .local v5, pending:Landroid/app/PendingIntent;
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    const v2, 0x108008a

    .line 510
    const/16 v3, 0x10

    .line 511
    sget v4, Lcom/rui/launcher/common/R$string;->set_no_network:I

    invoke-direct {v0, v4}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 512
    sget v6, Lcom/rui/launcher/common/R$string;->download_prompt:I

    invoke-direct {v0, v6}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 509
    invoke-direct/range {v0 .. v8}, Lcom/rui/launcher/common/NotiManager;->createNoti(Landroid/app/Notification;IILjava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 513
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    const/16 v2, 0x7d8

    invoke-virtual {v0, v1, v2}, Lcom/rui/launcher/common/NotiManager;->showNoti(Landroid/app/Notification;I)V

    goto :goto_0
.end method

.method public static showMessage(Landroid/content/Context;I)V
    .locals 1
    .parameter "act"
    .parameter "msg"

    .prologue
    .line 470
    const/16 v0, 0x11

    invoke-static {p0, v0, p1}, Lcom/rui/launcher/common/NotiManager;->showMessage(Landroid/content/Context;II)V

    .line 471
    return-void
.end method

.method public static showMessage(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "gravity"
    .parameter "resId"

    .prologue
    .line 494
    invoke-static {p0, p2}, Lcom/rui/launcher/common/NotiManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/rui/launcher/common/NotiManager;->showMessage(Landroid/content/Context;ILjava/lang/String;)V

    .line 495
    return-void
.end method

.method public static showMessage(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .parameter "act"
    .parameter "gravity"
    .parameter "msg"

    .prologue
    .line 475
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rui/launcher/common/NotiManager$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/rui/launcher/common/NotiManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 489
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 490
    return-void
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "act"
    .parameter "msg"

    .prologue
    .line 466
    const/16 v0, 0x11

    invoke-static {p0, v0, p1}, Lcom/rui/launcher/common/NotiManager;->showMessage(Landroid/content/Context;ILjava/lang/String;)V

    .line 467
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/rui/launcher/common/NotiManager;->mNm:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/rui/launcher/common/NotiManager;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 416
    :cond_0
    return-void
.end method

.method getType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 265
    packed-switch p1, :pswitch_data_0

    .line 279
    const-string v0, "other"

    :goto_0
    return-object v0

    .line 267
    :pswitch_0
    const-string v0, "STAT_DOWNLOAD_CANCEL"

    goto :goto_0

    .line 269
    :pswitch_1
    const-string v0, "STAT_DOWNLOAD_WAITING"

    goto :goto_0

    .line 271
    :pswitch_2
    const-string v0, "STAT_DOWNLOAD_START"

    goto :goto_0

    .line 273
    :pswitch_3
    const-string v0, "STAT_DOWNLOAD_ING"

    goto :goto_0

    .line 275
    :pswitch_4
    const-string v0, "STAT_DOWNLOAD_DONE"

    goto :goto_0

    .line 277
    :pswitch_5
    const-string v0, "STAT_DOWNLOAD_FAIL"

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0xc7
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public showDownloadNotification(ILcom/rui/launcher/common/download/DownloadInfo;)V
    .locals 13
    .parameter "type"
    .parameter "info"

    .prologue
    const/16 v12, 0xc9

    const/16 v11, 0x10

    const/high16 v2, 0x1000

    const/4 v3, 0x2

    const/4 v8, -0x1

    .line 107
    const/4 v9, 0x0

    .line 109
    .local v9, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 262
    :goto_0
    return-void

    .line 116
    :pswitch_0
    const/4 v5, 0x0

    .line 117
    .local v5, pending:Landroid/app/PendingIntent;
    if-eq p1, v12, :cond_3

    .line 118
    new-instance v9, Landroid/content/Intent;

    .end local v9           #intent:Landroid/content/Intent;
    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 121
    .restart local v9       #intent:Landroid/content/Intent;
    const/16 v0, 0xc7

    if-eq p1, v0, :cond_2

    .line 122
    const-string v0, "downloadInfo"

    invoke-virtual {v9, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 123
    const-string v0, "notiId"

    iget v1, p2, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 126
    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4Download()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :goto_1
    if-nez v5, :cond_0

    .line 137
    iget-object v0, p0, Lcom/rui/launcher/common/NotiManager;->mContext:Landroid/content/Context;

    iget v1, p2, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 154
    :cond_0
    :goto_2
    packed-switch p1, :pswitch_data_1

    .line 248
    :goto_3
    if-ne p1, v12, :cond_5

    .line 249
    iget v0, p2, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/rui/launcher/common/NotiManager;->cancel(I)V

    .line 255
    :goto_4
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v10, intent01:Landroid/content/Intent;
    const-string v0, "theme_load_cancel"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v0, "url"

    iget-object v1, p2, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object v0, p0, Lcom/rui/launcher/common/NotiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 129
    .end local v10           #intent01:Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4DownloadCancel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lcom/rui/launcher/common/NotiManager;->mContext:Landroid/content/Context;

    iget v1, p2, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 133
    goto :goto_1

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/rui/launcher/common/NotiManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/rui/launcher/common/download/DownloadService;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 143
    :cond_3
    if-nez v9, :cond_4

    .line 144
    new-instance v9, Landroid/content/Intent;

    .end local v9           #intent:Landroid/content/Intent;
    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 146
    .restart local v9       #intent:Landroid/content/Intent;
    :cond_4
    invoke-static {}, Lcom/rui/launcher/common/RuiIntent;->getAction4Insatll()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const/high16 v0, 0x1400

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    const-string v0, "notiId"

    iget v1, p2, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const-string v0, "downloadInfo"

    invoke-virtual {v9, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 151
    iget-object v0, p0, Lcom/rui/launcher/common/NotiManager;->mContext:Landroid/content/Context;

    iget v1, p2, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    goto :goto_2

    .line 157
    :pswitch_1
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    .line 158
    sget v2, Lcom/rui/launcher/common/R$drawable;->stat_waiting:I

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    sget v4, Lcom/rui/launcher/common/R$string;->download_prompt:I

    invoke-direct {p0, v4}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    sget v4, Lcom/rui/launcher/common/R$string;->rui_download_waiting_ticker:I

    .line 163
    iget-object v6, p2, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    .line 161
    invoke-direct {p0, v4, v6}, Lcom/rui/launcher/common/NotiManager;->getStringWithFormat(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 163
    iget-object v6, p2, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    .line 164
    sget v0, Lcom/rui/launcher/common/R$string;->rui_download_waiting_content:I

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    .line 156
    invoke-direct/range {v0 .. v8}, Lcom/rui/launcher/common/NotiManager;->createNoti(Landroid/app/Notification;IILjava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto/16 :goto_3

    .line 168
    :pswitch_2
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    .line 169
    sget v2, Lcom/rui/launcher/common/R$drawable;->stat_download:I

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    sget v4, Lcom/rui/launcher/common/R$string;->download_prompt:I

    invoke-direct {p0, v4}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    sget v4, Lcom/rui/launcher/common/R$string;->rui_download_start_ticker:I

    .line 174
    iget-object v6, p2, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    .line 172
    invoke-direct {p0, v4, v6}, Lcom/rui/launcher/common/NotiManager;->getStringWithFormat(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 176
    iget-object v6, p2, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    .line 177
    sget v0, Lcom/rui/launcher/common/R$string;->rui_download_progress:I

    const-string v7, "0"

    invoke-direct {p0, v0, v7}, Lcom/rui/launcher/common/NotiManager;->getStringWithFormat(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    .line 167
    invoke-direct/range {v0 .. v8}, Lcom/rui/launcher/common/NotiManager;->createNoti(Landroid/app/Notification;IILjava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 180
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 181
    .restart local v10       #intent01:Landroid/content/Intent;
    const-string v0, "theme_load_start"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v0, "url"

    iget-object v1, p2, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v0, p0, Lcom/rui/launcher/common/NotiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 188
    .end local v10           #intent01:Landroid/content/Intent;
    :pswitch_3
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    .line 189
    sget v2, Lcom/rui/launcher/common/R$drawable;->stat_download:I

    .line 191
    const-string v4, ""

    .line 193
    iget-object v6, p2, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    .line 194
    sget v0, Lcom/rui/launcher/common/R$string;->rui_download_progress:I

    .line 195
    iget v7, p2, Lcom/rui/launcher/common/download/DownloadInfo;->progress:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 194
    invoke-direct {p0, v0, v7}, Lcom/rui/launcher/common/NotiManager;->getStringWithFormat(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 195
    iget v8, p2, Lcom/rui/launcher/common/download/DownloadInfo;->progress:I

    move-object v0, p0

    .line 187
    invoke-direct/range {v0 .. v8}, Lcom/rui/launcher/common/NotiManager;->createNoti(Landroid/app/Notification;IILjava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 198
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 199
    .restart local v10       #intent01:Landroid/content/Intent;
    const-string v0, "theme_load_position"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v0, "url"

    iget-object v1, p2, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v0, "position"

    iget v1, p2, Lcom/rui/launcher/common/download/DownloadInfo;->progress:I

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    iget-object v0, p0, Lcom/rui/launcher/common/NotiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 216
    .end local v10           #intent01:Landroid/content/Intent;
    :pswitch_4
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 217
    .restart local v10       #intent01:Landroid/content/Intent;
    const-string v0, "theme_load_end"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v0, "url"

    iget-object v1, p2, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object v0, p0, Lcom/rui/launcher/common/NotiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 224
    .end local v10           #intent01:Landroid/content/Intent;
    :pswitch_5
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    .line 225
    sget v2, Lcom/rui/launcher/common/R$drawable;->stat_error:I

    .line 227
    sget v0, Lcom/rui/launcher/common/R$string;->rui_download_fail_ticker:I

    .line 228
    iget-object v3, p2, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    .line 227
    invoke-direct {p0, v0, v3}, Lcom/rui/launcher/common/NotiManager;->getStringWithFormat(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 228
    iget-object v6, p2, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    .line 229
    sget v0, Lcom/rui/launcher/common/R$string;->rui_download_fail_content:I

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v3, v11

    .line 223
    invoke-direct/range {v0 .. v8}, Lcom/rui/launcher/common/NotiManager;->createNoti(Landroid/app/Notification;IILjava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 231
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 232
    .restart local v10       #intent01:Landroid/content/Intent;
    const-string v0, "theme_load_error"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v0, "url"

    iget-object v1, p2, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v0, p0, Lcom/rui/launcher/common/NotiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 239
    .end local v10           #intent01:Landroid/content/Intent;
    :pswitch_6
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    .line 240
    sget v2, Lcom/rui/launcher/common/R$drawable;->stat_error:I

    .line 242
    sget v0, Lcom/rui/launcher/common/R$string;->rui_download_cancel:I

    .line 243
    iget-object v3, p2, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    .line 242
    invoke-direct {p0, v0, v3}, Lcom/rui/launcher/common/NotiManager;->getStringWithFormat(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 244
    sget v0, Lcom/rui/launcher/common/R$string;->download_prompt:I

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move v3, v11

    .line 238
    invoke-direct/range {v0 .. v8}, Lcom/rui/launcher/common/NotiManager;->createNoti(Landroid/app/Notification;IILjava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto/16 :goto_3

    .line 251
    :cond_5
    sget-object v0, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    iget v1, p2, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    invoke-virtual {p0, v0, v1}, Lcom/rui/launcher/common/NotiManager;->showNoti(Landroid/app/Notification;I)V

    goto/16 :goto_4

    .line 109
    :pswitch_data_0
    .packed-switch 0xc7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 154
    :pswitch_data_1
    .packed-switch 0xc7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public showNoti(Landroid/app/Notification;I)V
    .locals 1
    .parameter "noti"
    .parameter "id"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/rui/launcher/common/NotiManager;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 429
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/rui/launcher/common/NotiManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x11

    invoke-static {v0, v1, p1}, Lcom/rui/launcher/common/NotiManager;->showMessage(Landroid/content/Context;ILjava/lang/String;)V

    .line 60
    return-void
.end method

.method public varargs showToast([Ljava/lang/Object;)V
    .locals 5
    .parameter "resIds"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    const-string v1, ""

    .line 64
    .local v1, s:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 65
    array-length v0, p1

    .line 66
    .local v0, N:I
    if-ne v4, v0, :cond_1

    .line 67
    aget-object v2, p1, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    .end local v0           #N:I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/rui/launcher/common/NotiManager;->mContext:Landroid/content/Context;

    const/16 v3, 0x11

    invoke-static {v2, v3, v1}, Lcom/rui/launcher/common/NotiManager;->showMessage(Landroid/content/Context;ILjava/lang/String;)V

    .line 73
    return-void

    .line 68
    .restart local v0       #N:I
    :cond_1
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 69
    aget-object v2, p1, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v3, p1, v4

    invoke-direct {p0, v2, v3}, Lcom/rui/launcher/common/NotiManager;->getStringWithFormat(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public showUpdateNotification(Landroid/os/Message;Landroid/app/PendingIntent;)V
    .locals 10
    .parameter "msg"
    .parameter "pending"

    .prologue
    const/4 v7, 0x0

    const/16 v3, 0x10

    const/4 v8, -0x1

    .line 289
    const/4 v9, -0x1

    .line 290
    .local v9, id:I
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 384
    :cond_0
    :goto_0
    if-eq v9, v8, :cond_1

    .line 385
    sget-object v0, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    invoke-virtual {p0, v0, v9}, Lcom/rui/launcher/common/NotiManager;->showNoti(Landroid/app/Notification;I)V

    .line 387
    :cond_1
    return-void

    .line 292
    :sswitch_0
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    const v2, 0x108008a

    .line 294
    sget v0, Lcom/rui/launcher/common/R$string;->no_network:I

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 295
    sget v0, Lcom/rui/launcher/common/R$string;->download_prompt:I

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v5, p2

    .line 292
    invoke-direct/range {v0 .. v8}, Lcom/rui/launcher/common/NotiManager;->createNoti(Landroid/app/Notification;IILjava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 296
    const/16 v9, 0x7d8

    .line 297
    goto :goto_0

    .line 299
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 300
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    sget v2, Lcom/rui/launcher/common/R$drawable;->stat_rui:I

    .line 302
    sget v0, Lcom/rui/launcher/common/R$string;->rui_update_new_content:I

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 303
    sget v0, Lcom/rui/launcher/common/R$string;->rui_prompt:I

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 304
    sget v0, Lcom/rui/launcher/common/R$string;->rui_update_new_content:I

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v5, p2

    .line 300
    invoke-direct/range {v0 .. v8}, Lcom/rui/launcher/common/NotiManager;->createNoti(Landroid/app/Notification;IILjava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 305
    const/16 v9, 0x7da

    .line 306
    goto :goto_0

    .line 318
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 319
    sget-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v1, Lcom/rui/launcher/common/NotiManager;->TAG:Ljava/lang/String;

    const-string v2, "\u68c0\u6d4b\u65b0RUI\u7248\u672c..."

    invoke-static {v0, v1, v2}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    sget v2, Lcom/rui/launcher/common/R$drawable;->stat_rui:I

    .line 321
    const/16 v3, 0x20

    .line 322
    sget v0, Lcom/rui/launcher/common/R$string;->rui_update_check_ticker:I

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 323
    sget v0, Lcom/rui/launcher/common/R$string;->rui_prompt:I

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v5, p2

    .line 320
    invoke-direct/range {v0 .. v8}, Lcom/rui/launcher/common/NotiManager;->createNoti(Landroid/app/Notification;IILjava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 324
    const/16 v9, 0x7da

    .line 334
    goto :goto_0

    .line 336
    :sswitch_3
    sget-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v1, Lcom/rui/launcher/common/NotiManager;->TAG:Ljava/lang/String;

    const-string v2, "\u66f4\u65b0\u5b8c\u6210"

    invoke-static {v0, v1, v2}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    .line 339
    sget v2, Lcom/rui/launcher/common/R$drawable;->stat_rui:I

    .line 341
    sget v0, Lcom/rui/launcher/common/R$string;->rec_update_done_ticker:I

    .line 342
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v5, 0x1

    .line 341
    invoke-direct {p0, v0, v4, v5}, Lcom/rui/launcher/common/NotiManager;->getStringWithFormat(ILjava/lang/Object;Z)Ljava/lang/String;

    move-result-object v4

    .line 343
    sget v0, Lcom/rui/launcher/common/R$string;->rui_prompt:I

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v5, p2

    .line 337
    invoke-direct/range {v0 .. v8}, Lcom/rui/launcher/common/NotiManager;->createNoti(Landroid/app/Notification;IILjava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 344
    const/16 v9, 0x7d9

    .line 345
    goto/16 :goto_0

    .line 347
    :sswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 348
    sget-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v1, Lcom/rui/launcher/common/NotiManager;->TAG:Ljava/lang/String;

    const-string v2, "\u5f53\u524dRUI\u684c\u9762\u5df2\u7ecf\u662f\u6700\u65b0\u7248\u672c"

    invoke-static {v0, v1, v2}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    sget v2, Lcom/rui/launcher/common/R$drawable;->stat_rui:I

    .line 351
    sget v0, Lcom/rui/launcher/common/R$string;->rui_no_update:I

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 352
    sget v0, Lcom/rui/launcher/common/R$string;->rui_prompt:I

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v5, p2

    .line 349
    invoke-direct/range {v0 .. v8}, Lcom/rui/launcher/common/NotiManager;->createNoti(Landroid/app/Notification;IILjava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 353
    const/16 v9, 0x7da

    .line 364
    goto/16 :goto_0

    .line 368
    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 369
    sget-object v1, Lcom/rui/launcher/common/NotiManager;->sNoti:Landroid/app/Notification;

    sget v2, Lcom/rui/launcher/common/R$drawable;->stat_rui:I

    .line 371
    sget v0, Lcom/rui/launcher/common/R$string;->rui_network_erro:I

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 372
    sget v0, Lcom/rui/launcher/common/R$string;->rui_prompt:I

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/NotiManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v5, p2

    .line 369
    invoke-direct/range {v0 .. v8}, Lcom/rui/launcher/common/NotiManager;->createNoti(Landroid/app/Notification;IILjava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 373
    const/16 v9, 0x7da

    goto/16 :goto_0

    .line 290
    :sswitch_data_0
    .sparse-switch
        0x517 -> :sswitch_2
        0x518 -> :sswitch_4
        0x519 -> :sswitch_1
        0x51a -> :sswitch_3
        0x57c -> :sswitch_0
        0x57d -> :sswitch_5
        0x580 -> :sswitch_5
    .end sparse-switch
.end method
