.class public Lcom/uprui/tv/launcher8/allapp/AppInfo;
.super Lcom/uprui/tv/launcher8/allapp/IconItemInfo;
.source "AppInfo.java"


# static fields
.field static final DOWNLOADED_FLAG:I = 0x1

.field static final UPDATED_SYSTEM_APP_FLAG:I = 0x2


# instance fields
.field public flags:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;)V
    .locals 4
    .parameter "pm"
    .parameter "info"
    .parameter "bitmapCache"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;-><init>()V

    .line 34
    iput v2, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->flags:I

    .line 53
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 55
    .local v1, packageName:Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 56
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->container:J

    .line 57
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    const/high16 v3, 0x1020

    invoke-virtual {p0, v2, v3}, Lcom/uprui/tv/launcher8/allapp/AppInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 60
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 61
    .local v0, appFlags:I
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    .line 62
    iget v2, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->flags:I

    .line 64
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    .line 65
    iget v2, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0           #appFlags:I
    :cond_0
    :goto_0
    invoke-virtual {p3, p0, p2}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->getIconAndTitle(Lcom/uprui/tv/launcher8/allapp/AppInfo;Landroid/content/pm/ResolveInfo;)V

    .line 72
    return-void

    .line 68
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;)V
    .locals 3
    .parameter "info"
    .parameter "bitmapCache"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->flags:I

    .line 40
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->container:J

    .line 43
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    const/high16 v1, 0x1020

    invoke-virtual {p0, v0, v1}, Lcom/uprui/tv/launcher8/allapp/AppInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 45
    invoke-virtual {p2, p0, p1}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->getIconAndTitle(Lcom/uprui/tv/launcher8/allapp/AppInfo;Landroid/content/pm/ResolveInfo;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/uprui/tv/launcher8/allapp/AppInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;-><init>(Lcom/uprui/tv/launcher8/allapp/IconItemInfo;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->flags:I

    .line 76
    iget-object v0, p1, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 77
    iget-object v0, p1, Lcom/uprui/tv/launcher8/allapp/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->title:Ljava/lang/CharSequence;

    .line 78
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/uprui/tv/launcher8/allapp/AppInfo;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->mIntent:Landroid/content/Intent;

    .line 79
    iget v0, p1, Lcom/uprui/tv/launcher8/allapp/AppInfo;->flags:I

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->flags:I

    .line 80
    return-void
.end method


# virtual methods
.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "className"
    .parameter "launchFlags"

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->mIntent:Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApplicationInfo(title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
