.class public Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;
.super Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog;
.source "DownloadAppHandler.java"


# static fields
.field private static final REQUEST_INSTALL_APP:I

.field private static mInstance:Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;


# instance fields
.field private dialogmsg:Ljava/lang/String;

.field private dialogtitle:Ljava/lang/String;

.field private downloadedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Landroid/app/Activity;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->downloadedMap:Ljava/util/HashMap;

    .line 44
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;
    .locals 2

    .prologue
    .line 47
    const-class v1, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->mInstance:Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;

    invoke-direct {v0}, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;-><init>()V

    sput-object v0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->mInstance:Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;

    .line 50
    :cond_0
    sget-object v0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->mInstance:Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public dealAppsClick(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V
    .locals 5
    .parameter "dInfo"

    .prologue
    .line 58
    iget-object v3, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->isInstall(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->startApps(Landroid/content/Intent;)V

    .line 81
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    .line 65
    .local v1, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->downloadedMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    .local v2, savePath:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 67
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->className:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->isFileExit(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v2

    .line 68
    if-nez v2, :cond_1

    .line 70
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->downLoadApps(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V

    .line 71
    iget-object v3, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->downloadedMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_1
    iget-object v3, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->downloadedMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0, v2}, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->insallApk(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p0, v2}, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->insallApk(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public downLoadApps(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->mLauncher:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 85
    .local v0, loacale:Ljava/util/Locale;
    invoke-virtual {p1, v0}, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->getTitleByLocale(Ljava/util/Locale;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->dialogtitle:Ljava/lang/String;

    .line 86
    iget-object v1, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->description:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->getDescriptionByLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->dialogmsg:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->dialogmsg:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->dialogmsg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->mLauncher:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x"

    iget-object v3, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->dialogtitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->dialogmsg:Ljava/lang/String;

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->mLauncher:Landroid/app/Activity;

    invoke-virtual {p0, v1, p1}, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->showbulid(Landroid/content/Context;Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V

    .line 91
    return-void
.end method

.method public getDescriptionByLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "l"
    .parameter "description"

    .prologue
    .line 157
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 158
    :cond_0
    const-string p2, ""

    .line 179
    .end local p2
    :cond_1
    :goto_0
    return-object p2

    .line 160
    .restart local p2
    :cond_2
    if-eqz p1, :cond_1

    .line 165
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 166
    .local v2, length:I
    const-string v5, "|"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 167
    .local v3, loc:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    .line 168
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, chDescription:Ljava/lang/String;
    const-string v1, ""

    .line 178
    .local v1, enDescription:Ljava/lang/String;
    :goto_1
    const-string v5, "CN"

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v4, v0

    .local v4, showDescription:Ljava/lang/String;
    :goto_2
    move-object p2, v4

    .line 179
    goto :goto_0

    .line 171
    .end local v0           #chDescription:Ljava/lang/String;
    .end local v1           #enDescription:Ljava/lang/String;
    .end local v4           #showDescription:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 172
    .restart local v0       #chDescription:Ljava/lang/String;
    add-int/lit8 v5, v2, -0x1

    if-ge v3, v5, :cond_4

    .line 173
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 174
    .restart local v1       #enDescription:Ljava/lang/String;
    goto :goto_1

    .line 175
    .end local v1           #enDescription:Ljava/lang/String;
    :cond_4
    const-string v1, ""

    .restart local v1       #enDescription:Ljava/lang/String;
    goto :goto_1

    :cond_5
    move-object v4, v1

    .line 178
    goto :goto_2
.end method

.method public insallApk(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 120
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Lcom/rui/launcher/common/utils/FileUtil;->isInternalFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-static {v0}, Lcom/rui/launcher/common/utils/FileUtil;->changeApkMode(Ljava/io/File;)Z

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->mLauncher:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/rui/launcher/common/utils/PkgUtil;->getPackageArchiveInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 126
    const-string v2, "PackageInstaller"

    const-string v3, "Parse error when parsing manifest. Discontinuing installation"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    return-void

    .line 129
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v2, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->mLauncher:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public isFileExit(Landroid/content/ComponentName;I)Ljava/lang/String;
    .locals 3
    .parameter "componentName"
    .parameter "versionCode"

    .prologue
    .line 190
    iget-object v2, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->mLauncher:Landroid/app/Activity;

    invoke-static {v2, p1, p2}, Lcom/rui/launcher/common/utils/FileUtil;->getArchiveFileByComponent(Landroid/content/Context;Landroid/content/ComponentName;I)Ljava/io/File;

    move-result-object v1

    .line 191
    .local v1, f:Ljava/io/File;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 192
    .local v0, exist:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 195
    :goto_1
    return-object v2

    .line 191
    .end local v0           #exist:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    .restart local v0       #exist:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isInstall(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 142
    if-nez p1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v1

    .line 145
    :cond_1
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    :try_start_0
    iget-object v2, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->mLauncher:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/4 v1, 0x1

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->mLauncher:Landroid/app/Activity;

    .line 55
    return-void
.end method

.method public setMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->dialogmsg:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->dialogtitle:Ljava/lang/String;

    return-object v0
.end method

.method public startApps(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 95
    :try_start_0
    iget-object v3, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->mLauncher:Landroid/app/Activity;

    invoke-virtual {v3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->mLauncher:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 99
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 100
    iget-object v3, p0, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->mLauncher:Landroid/app/Activity;

    invoke-virtual {v3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 101
    :catch_1
    move-exception v1

    .line 102
    .local v1, e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
