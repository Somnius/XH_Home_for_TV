.class public Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
.super Ljava/lang/Object;
.source "TVShortcutInfo.java"


# instance fields
.field public apkDownloadUrl:Ljava/lang/String;

.field public categoryCode:I

.field public className:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field private enTitle:Ljava/lang/CharSequence;

.field public iconDownloadUrl:Ljava/lang/String;

.field public iconFrom:I

.field public iconResId:I

.field public iconType:I

.field public id:J

.field public intent:Landroid/content/Intent;

.field public isDownload:Z

.field public isInstall:Z

.field public packageName:Ljava/lang/String;

.field private sCHTitle:Ljava/lang/CharSequence;

.field public savePath:Ljava/lang/String;

.field public startCount:I

.field private title:Ljava/lang/String;

.field public webUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->id:J

    .line 18
    iput-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->intent:Landroid/content/Intent;

    .line 19
    iput-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    .line 20
    iput-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->className:Ljava/lang/String;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->categoryCode:I

    .line 22
    iput-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconDownloadUrl:Ljava/lang/String;

    .line 23
    iput v3, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconResId:I

    .line 24
    iput v3, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconType:I

    .line 25
    iput v3, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconFrom:I

    .line 26
    iput-boolean v3, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->isInstall:Z

    .line 27
    iput-boolean v3, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->isDownload:Z

    .line 28
    iput-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->savePath:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->description:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->webUrl:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->apkDownloadUrl:Ljava/lang/String;

    .line 32
    iput v3, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->startCount:I

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->id:J

    .line 18
    iput-object v8, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->intent:Landroid/content/Intent;

    .line 19
    iput-object v8, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    .line 20
    iput-object v8, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->className:Ljava/lang/String;

    .line 21
    const/4 v5, -0x1

    iput v5, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->categoryCode:I

    .line 22
    iput-object v8, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconDownloadUrl:Ljava/lang/String;

    .line 23
    iput v7, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconResId:I

    .line 24
    iput v7, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconType:I

    .line 25
    iput v7, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconFrom:I

    .line 26
    iput-boolean v7, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->isInstall:Z

    .line 27
    iput-boolean v7, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->isDownload:Z

    .line 28
    iput-object v8, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->savePath:Ljava/lang/String;

    .line 29
    iput-object v8, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->description:Ljava/lang/String;

    .line 30
    iput-object v8, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->webUrl:Ljava/lang/String;

    .line 31
    iput-object v8, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->apkDownloadUrl:Ljava/lang/String;

    .line 32
    iput v7, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->startCount:I

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 50
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 51
    .local v3, resolveIntent:Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {v3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {v2, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 55
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 56
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_0

    .line 57
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v5, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->className:Ljava/lang/String;

    .line 58
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->intent:Landroid/content/Intent;

    .line 59
    iget-object v5, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->intent:Landroid/content/Intent;

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->className:Ljava/lang/String;

    invoke-direct {v1, p2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v1, cn:Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 62
    invoke-virtual {v4, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->title:Ljava/lang/String;

    .line 65
    .end local v1           #cn:Landroid/content/ComponentName;
    :cond_0
    iput-object p2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    .line 66
    iput v7, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconType:I

    .line 67
    iput v7, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconFrom:I

    .line 68
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->isInstall:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/uprui/tv/launcher8/allapp/IconItemInfo;)V
    .locals 4
    .parameter "updateInfo"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->id:J

    .line 18
    iput-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->intent:Landroid/content/Intent;

    .line 19
    iput-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    .line 20
    iput-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->className:Ljava/lang/String;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->categoryCode:I

    .line 22
    iput-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconDownloadUrl:Ljava/lang/String;

    .line 23
    iput v3, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconResId:I

    .line 24
    iput v3, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconType:I

    .line 25
    iput v3, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconFrom:I

    .line 26
    iput-boolean v3, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->isInstall:Z

    .line 27
    iput-boolean v3, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->isDownload:Z

    .line 28
    iput-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->savePath:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->description:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->webUrl:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->apkDownloadUrl:Ljava/lang/String;

    .line 32
    iput v3, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->startCount:I

    .line 37
    iget-object v0, p1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->title:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->intent:Landroid/content/Intent;

    .line 39
    iget-object v0, p1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->className:Ljava/lang/String;

    .line 41
    iget v0, p1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->category:I

    iput v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->categoryCode:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconType:I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->isInstall:Z

    .line 45
    iget-object v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->setTitle(Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public coverInfoByNetWorkInfo(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 126
    iget v0, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->categoryCode:I

    iput v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->categoryCode:I

    .line 127
    iget-object v0, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconDownloadUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconDownloadUrl:Ljava/lang/String;

    .line 128
    iget v0, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconResId:I

    iput v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconResId:I

    .line 129
    iget v0, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconType:I

    iput v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconType:I

    .line 130
    iget v0, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconFrom:I

    iput v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconFrom:I

    .line 131
    iget-object v0, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->description:Ljava/lang/String;

    .line 132
    iget-object v0, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->webUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->webUrl:Ljava/lang/String;

    .line 133
    iget-object v0, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->apkDownloadUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->apkDownloadUrl:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 138
    instance-of v1, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 139
    check-cast v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 140
    .local v0, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    iget-object v1, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 146
    .end local v0           #info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    :goto_0
    return v1

    .line 142
    .restart local v0       #info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    :cond_0
    iget-object v1, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->webUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->webUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->webUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->webUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 146
    .end local v0           #info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 121
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->className:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleByLocale(Ljava/util/Locale;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "l"

    .prologue
    .line 76
    if-nez p1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->title:Ljava/lang/String;

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    const-string v1, "CN"

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->sCHTitle:Ljava/lang/CharSequence;

    .line 79
    .local v0, label:Ljava/lang/CharSequence;
    :goto_1
    if-nez v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->title:Ljava/lang/String;

    goto :goto_0

    .line 78
    .end local v0           #label:Ljava/lang/CharSequence;
    :cond_2
    iget-object v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->enTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 83
    .restart local v0       #label:Ljava/lang/CharSequence;
    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 84
    iget-object v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->enTitle:Ljava/lang/CharSequence;

    .line 87
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->sCHTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, code:I
    iget-object v1, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 159
    :goto_0
    return v0

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->webUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->webUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 156
    goto :goto_0

    .line 157
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4
    .parameter "title"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->title:Ljava/lang/String;

    .line 97
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, text:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 102
    .local v0, length:I
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 103
    .local v1, loc:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 104
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->sCHTitle:Ljava/lang/CharSequence;

    .line 105
    const-string v3, ""

    iput-object v3, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->enTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 107
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->sCHTitle:Ljava/lang/CharSequence;

    .line 108
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_3

    .line 109
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->enTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 111
    :cond_3
    const-string v3, ""

    iput-object v3, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->enTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method
