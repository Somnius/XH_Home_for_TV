.class public Lcom/example/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 14
    invoke-static {p0}, Lcom/uprui/executor/RuiHttpClient;->init(Landroid/app/Application;)V

    .line 15
    invoke-static {p0}, Lcom/uprui/notify/RuiNotifyManager;->init(Landroid/app/Application;)V

    .line 16
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 22
    return-void
.end method
