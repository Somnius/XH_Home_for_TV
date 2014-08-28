.class public Lcom/rui/launcher/common/collector/CollectorUtil;
.super Ljava/lang/Object;
.source "CollectorUtil.java"


# static fields
.field private static collectorUtil:Lcom/rui/launcher/common/collector/CollectorUtil;


# instance fields
.field private final install:Ljava/lang/String;

.field private final onOperate:Ljava/lang/String;

.field private final operate:Ljava/lang/String;

.field private operateSp:Landroid/content/SharedPreferences;

.field private final runtime:Ljava/lang/String;

.field private runtimeSp:Landroid/content/SharedPreferences;

.field private final uninstall:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/rui/launcher/common/collector/CollectorUtil;->collectorUtil:Lcom/rui/launcher/common/collector/CollectorUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "runtime"

    iput-object v0, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->runtime:Ljava/lang/String;

    .line 11
    const-string v0, "operate"

    iput-object v0, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->operate:Ljava/lang/String;

    .line 12
    const-string v0, "P"

    iput-object v0, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->onOperate:Ljava/lang/String;

    .line 13
    const-string v0, "I"

    iput-object v0, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->install:Ljava/lang/String;

    .line 14
    const-string v0, "U"

    iput-object v0, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->uninstall:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->runtimeSp:Landroid/content/SharedPreferences;

    .line 18
    iput-object v1, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->operateSp:Landroid/content/SharedPreferences;

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "runtime"

    iput-object v0, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->runtime:Ljava/lang/String;

    .line 11
    const-string v0, "operate"

    iput-object v0, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->operate:Ljava/lang/String;

    .line 12
    const-string v0, "P"

    iput-object v0, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->onOperate:Ljava/lang/String;

    .line 13
    const-string v0, "I"

    iput-object v0, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->install:Ljava/lang/String;

    .line 14
    const-string v0, "U"

    iput-object v0, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->uninstall:Ljava/lang/String;

    .line 17
    iput-object v2, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->runtimeSp:Landroid/content/SharedPreferences;

    .line 18
    iput-object v2, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->operateSp:Landroid/content/SharedPreferences;

    .line 24
    const-string v0, "runtime"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->runtimeSp:Landroid/content/SharedPreferences;

    .line 25
    const-string v0, "operate"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->operateSp:Landroid/content/SharedPreferences;

    .line 26
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/rui/launcher/common/collector/CollectorUtil;
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    sget-object v0, Lcom/rui/launcher/common/collector/CollectorUtil;->collectorUtil:Lcom/rui/launcher/common/collector/CollectorUtil;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/rui/launcher/common/collector/CollectorUtil;

    invoke-direct {v0, p0}, Lcom/rui/launcher/common/collector/CollectorUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/rui/launcher/common/collector/CollectorUtil;->collectorUtil:Lcom/rui/launcher/common/collector/CollectorUtil;

    .line 33
    :cond_0
    sget-object v0, Lcom/rui/launcher/common/collector/CollectorUtil;->collectorUtil:Lcom/rui/launcher/common/collector/CollectorUtil;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/rui/launcher/common/collector/CollectorUtil;->cleanRuntime()V

    .line 64
    invoke-virtual {p0}, Lcom/rui/launcher/common/collector/CollectorUtil;->cleanOperate()V

    .line 65
    return-void
.end method

.method public cleanOperate()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->operateSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    return-void
.end method

.method public cleanRuntime()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->runtimeSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    return-void
.end method

.method public getOperate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->operateSp:Landroid/content/SharedPreferences;

    const-string v1, "P"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRuntime(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->runtimeSp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUninstallLists()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v2, uninstallLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->operateSp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 71
    .local v0, alls:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    return-object v2

    .line 71
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "U"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public updateOperate(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "isInstall"

    .prologue
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/rui/launcher/common/collector/CollectorUtil;->getOperate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, "I"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, operate:Ljava/lang/String;
    iget-object v1, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->operateSp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void

    .line 54
    .end local v0           #operate:Ljava/lang/String;
    :cond_0
    const-string v1, "U"

    goto :goto_0
.end method

.method public updateRuntime(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/rui/launcher/common/collector/CollectorUtil;->getRuntime(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 42
    .local v0, runtime:I
    iget-object v1, p0, Lcom/rui/launcher/common/collector/CollectorUtil;->runtimeSp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    return-void
.end method
