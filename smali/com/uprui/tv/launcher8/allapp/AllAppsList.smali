.class public Lcom/uprui/tv/launcher8/allapp/AllAppsList;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# static fields
.field private static final DEFAULT_APPLICATIONS_NUMBER:I = 0x2a

.field private static lock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isClassified:Z

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;)V
    .locals 2
    .parameter "bitmapCache"

    .prologue
    const/16 v1, 0x2a

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->data:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->added:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->isClassified:Z

    .line 67
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    .line 68
    return-void
.end method

.method private static findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "context"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 179
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 180
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 184
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    .end local v0           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v0

    .restart local v0       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    sget-object v3, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 208
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 209
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 216
    sget-object v3, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 219
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 210
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    .line 211
    .local v2, info:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    iget-object v3, v2, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    sget-object v3, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 212
    const/4 v3, 0x1

    goto :goto_1

    .line 209
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #info:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    :catchall_0
    move-exception v3

    .line 216
    sget-object v4, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 217
    throw v3
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, className:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 198
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 192
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 193
    .local v2, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 194
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/uprui/tv/launcher8/allapp/AppInfo;
    .locals 4
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 226
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 232
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 226
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    .line 227
    .local v1, info:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    iget-object v3, v1, Lcom/uprui/tv/launcher8/allapp/AppInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 228
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public UpdateListComponentName(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 171
    return-void
.end method

.method public declared-synchronized add(Lcom/uprui/tv/launcher8/allapp/AppInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 103
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 104
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 111
    :cond_0
    monitor-exit p0

    return-void

    .line 104
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 105
    .local v1, info:Landroid/content/pm/ResolveInfo;
    new-instance v0, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    invoke-direct {v0, v1, v4}, Lcom/uprui/tv/launcher8/allapp/AppInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;)V

    .line 107
    .local v0, appInfo:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    iget-object v4, v0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/rui/launcher/common/utils/RUtilities;->addNewInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 108
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->add(Lcom/uprui/tv/launcher8/allapp/AppInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    .end local v0           #appInfo:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v2           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findAndUpdateApplicationInfoBy(Landroid/content/ComponentName;I)Lcom/uprui/tv/launcher8/allapp/AppInfo;
    .locals 3
    .parameter "component"
    .parameter "category"

    .prologue
    .line 243
    monitor-enter p0

    if-nez p1, :cond_1

    .line 244
    const/4 v0, 0x0

    .line 252
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 245
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/uprui/tv/launcher8/allapp/AppInfo;

    move-result-object v0

    .line 246
    .local v0, info:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    if-eqz v0, :cond_0

    .line 248
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 249
    iput p2, v0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->category:I

    .line 250
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 243
    .end local v0           #info:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(I)Lcom/uprui/tv/launcher8/allapp/AppInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/allapp/AppInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isClassified()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->isClassified:Z

    return v0
.end method

.method public declared-synchronized removePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->data:Ljava/util/ArrayList;

    .line 118
    .local v1, data:Ljava/util/List;,"Ljava/util/List<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_0

    .line 128
    monitor-exit p0

    return-void

    .line 119
    :cond_0
    :try_start_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    .line 120
    .local v3, info:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    iget-object v4, v3, Lcom/uprui/tv/launcher8/allapp/AppInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 121
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/rui/launcher/common/utils/RUtilities;->removeNewInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 124
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 117
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #data:Ljava/util/List;,"Ljava/util/List<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    .end local v2           #i:I
    .end local v3           #info:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized setClassified(Z)V
    .locals 1
    .parameter "isClassified"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->isClassified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updatePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 135
    .local v5, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 136
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, i:I
    :goto_0
    if-gez v3, :cond_1

    .line 146
    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 147
    .local v2, count:I
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_3

    .line 167
    .end local v2           #count:I
    :cond_0
    monitor-exit p0

    return-void

    .line 137
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    .line 138
    .local v0, applicationInfo:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    iget-object v6, v0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 139
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 140
    invoke-static {v5, v1}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 141
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 136
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 148
    .end local v0           #applicationInfo:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    .restart local v2       #count:I
    :cond_3
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 149
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/uprui/tv/launcher8/allapp/AppInfo;

    move-result-object v0

    .line 150
    .restart local v0       #applicationInfo:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    if-nez v0, :cond_4

    .line 151
    new-instance v6, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    iget-object v7, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    invoke-direct {v6, v4, v7}, Lcom/uprui/tv/launcher8/allapp/AppInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;)V

    invoke-virtual {p0, v6}, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->add(Lcom/uprui/tv/launcher8/allapp/AppInfo;)V

    .line 147
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 153
    :cond_4
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->bitmapCache:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    invoke-virtual {v6, v0, v4}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->getIconAndTitle(Lcom/uprui/tv/launcher8/allapp/AppInfo;Landroid/content/pm/ResolveInfo;)V

    .line 154
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 134
    .end local v0           #applicationInfo:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v5           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 158
    .restart local v5       #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5
    :try_start_2
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .restart local v3       #i:I
    :goto_3
    if-ltz v3, :cond_0

    .line 159
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    .line 160
    .restart local v0       #applicationInfo:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    iget-object v6, v0, Lcom/uprui/tv/launcher8/allapp/AppInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 161
    .restart local v1       #component:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 162
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_3
.end method
