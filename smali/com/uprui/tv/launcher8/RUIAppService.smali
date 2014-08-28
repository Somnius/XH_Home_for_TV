.class public Lcom/uprui/tv/launcher8/RUIAppService;
.super Landroid/app/Service;
.source "RUIAppService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 32
    .local v0, notification:Landroid/app/Notification;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/uprui/tv/launcher8/RUIAppService;->startForeground(ILandroid/app/Notification;)V

    .line 33
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v0, localIntent:Landroid/content/Intent;
    const-class v1, Lcom/uprui/tv/launcher8/RUIAppService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/RUIAppService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 54
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, localIntentFilter:Landroid/content/IntentFilter;
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 46
    new-instance v1, Lcom/uprui/tv/launcher8/RUIAppReceiver;

    invoke-direct {v1}, Lcom/uprui/tv/launcher8/RUIAppReceiver;-><init>()V

    .line 47
    .local v1, searchReceiver:Lcom/uprui/tv/launcher8/RUIAppReceiver;
    invoke-virtual {p0, v1, v0}, Lcom/uprui/tv/launcher8/RUIAppService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method
