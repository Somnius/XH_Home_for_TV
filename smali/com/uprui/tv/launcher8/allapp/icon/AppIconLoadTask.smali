.class public Lcom/uprui/tv/launcher8/allapp/icon/AppIconLoadTask;
.super Ljava/lang/Object;
.source "AppIconLoadTask.java"

# interfaces
.implements Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;


# static fields
.field public static final PREFIX:Ljava/lang/String; = "AppIcon:"


# instance fields
.field private appInfo:Lcom/uprui/tv/launcher8/allapp/AppInfo;


# direct methods
.method public constructor <init>(Lcom/uprui/tv/launcher8/allapp/AppInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIconLoadTask;->appInfo:Lcom/uprui/tv/launcher8/allapp/AppInfo;

    .line 20
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public getTaskKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppIcon:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIconLoadTask;->appInfo:Lcom/uprui/tv/launcher8/allapp/AppInfo;

    iget-object v2, v2, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, key:Ljava/lang/String;
    return-object v0
.end method

.method public obtainBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"

    .prologue
    .line 30
    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIconLoadTask;->appInfo:Lcom/uprui/tv/launcher8/allapp/AppInfo;

    iget-object v3, v3, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIconLoadTask;->appInfo:Lcom/uprui/tv/launcher8/allapp/AppInfo;

    iget-object v0, v3, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 32
    .local v0, componentName:Landroid/content/ComponentName;
    invoke-static {p1, v1}, Lcom/uprui/tv/launcher8/allapp/Utilities;->getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 33
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_0

    .line 35
    sget-object v3, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->defaultIcon:Landroid/graphics/Bitmap;

    .line 37
    :goto_0
    return-object v3

    :cond_0
    invoke-static {p1, v1, v2, v0}, Lcom/uprui/tv/launcher8/allapp/Utilities;->getAndChangeIcon(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method
