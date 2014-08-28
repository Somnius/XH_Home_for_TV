.class Lcom/uprui/tv/launcher8/ActLauncher$2;
.super Ljava/lang/Object;
.source "ActLauncher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/ActLauncher;->showRuiUpdateDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/ActLauncher;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/ActLauncher;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/ActLauncher$2;->this$0:Lcom/uprui/tv/launcher8/ActLauncher;

    iput-object p2, p0, Lcom/uprui/tv/launcher8/ActLauncher$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/uprui/tv/launcher8/ActLauncher$2;->val$context:Landroid/content/Context;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 360
    :try_start_0
    iget-object v2, p0, Lcom/uprui/tv/launcher8/ActLauncher$2;->val$url:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 361
    iget-object v2, p0, Lcom/uprui/tv/launcher8/ActLauncher$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/rui/launcher/common/utils/RUtilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    const-string v2, ""

    const-string v3, "RUI download ..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v1, Lcom/rui/launcher/common/download/DownloadInfo;

    const-string v2, "RUI"

    .line 364
    iget-object v3, p0, Lcom/uprui/tv/launcher8/ActLauncher$2;->val$url:Ljava/lang/String;

    const/4 v4, 0x1

    .line 363
    invoke-direct {v1, v2, v3, v4}, Lcom/rui/launcher/common/download/DownloadInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 365
    .local v1, info:Lcom/rui/launcher/common/download/DownloadInfo;
    new-instance v2, Landroid/content/ComponentName;

    .line 366
    iget-object v3, p0, Lcom/uprui/tv/launcher8/ActLauncher$2;->this$0:Lcom/uprui/tv/launcher8/ActLauncher;

    invoke-virtual {v3}, Lcom/uprui/tv/launcher8/ActLauncher;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-class v4, Lcom/uprui/tv/launcher8/ActLauncher;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    iput-object v2, v1, Lcom/rui/launcher/common/download/DownloadInfo;->component:Landroid/content/ComponentName;

    .line 367
    iget-object v2, p0, Lcom/uprui/tv/launcher8/ActLauncher$2;->this$0:Lcom/uprui/tv/launcher8/ActLauncher;

    invoke-virtual {v2}, Lcom/uprui/tv/launcher8/ActLauncher;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/rui/launcher/common/download/DownloadService;->startDownload(Landroid/content/Context;Lcom/rui/launcher/common/download/DownloadInfo;)V

    .line 376
    .end local v1           #info:Lcom/rui/launcher/common/download/DownloadInfo;
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/uprui/tv/launcher8/ActLauncher$2;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/rui/launcher/common/NotiManager;->showInvalidNetwork(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "err"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
