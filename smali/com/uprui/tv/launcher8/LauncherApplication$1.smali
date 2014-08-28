.class Lcom/uprui/tv/launcher8/LauncherApplication$1;
.super Landroid/database/ContentObserver;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/LauncherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/LauncherApplication;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/LauncherApplication$1;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    .line 125
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/uprui/tv/launcher8/LauncherApplication$1;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    #getter for: Lcom/uprui/tv/launcher8/LauncherApplication;->workSpaceModel:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/LauncherApplication;->access$0(Lcom/uprui/tv/launcher8/LauncherApplication;)Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/uprui/tv/launcher8/LauncherApplication$1;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    invoke-virtual {v0, v1, v2}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 129
    iget-object v0, p0, Lcom/uprui/tv/launcher8/LauncherApplication$1;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    #getter for: Lcom/uprui/tv/launcher8/LauncherApplication;->allAppsModel:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/LauncherApplication;->access$1(Lcom/uprui/tv/launcher8/LauncherApplication;)Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/uprui/tv/launcher8/LauncherApplication$1;->this$0:Lcom/uprui/tv/launcher8/LauncherApplication;

    invoke-virtual {v0, v1, v2}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 130
    return-void
.end method
