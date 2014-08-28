.class Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog$1;
.super Ljava/lang/Object;
.source "CreateAppsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog;->showbulid(Landroid/content/Context;Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog;Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog$1;->this$0:Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog;

    iput-object p2, p0, Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog$1;->val$info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    iput-object p3, p0, Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog$1;->val$context:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 39
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog$1;->val$info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    iget-object v2, v2, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog$1;->val$info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    iget-object v3, v3, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->className:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .local v0, componentName:Landroid/content/ComponentName;
    new-instance v1, Lcom/rui/launcher/common/download/DownloadInfo;

    iget-object v2, p0, Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog$1;->val$info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->getTitleByLocale(Ljava/util/Locale;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog$1;->val$info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    iget-object v3, v3, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->apkDownloadUrl:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/rui/launcher/common/download/DownloadInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/content/ComponentName;)V

    .line 41
    .local v1, downloadInfo:Lcom/rui/launcher/common/download/DownloadInfo;
    iget-object v2, p0, Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/rui/launcher/common/download/DownloadService;->startDownload(Landroid/content/Context;Lcom/rui/launcher/common/download/DownloadInfo;)V

    .line 43
    return-void
.end method
