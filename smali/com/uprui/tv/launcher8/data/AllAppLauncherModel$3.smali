.class Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$3;
.super Ljava/lang/Object;
.source "AllAppLauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->initTableClassifieds(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

.field private final synthetic val$cx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$3;->this$0:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    iput-object p2, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$3;->val$cx:Landroid/content/Context;

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 622
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$3;->val$cx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 623
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/rui/launcher/common/RLauncherSettings$Classifieds;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 624
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v7, 0x1

    .line 625
    .local v7, done:Z
    :goto_0
    if-eqz v7, :cond_0

    .line 626
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 628
    :cond_0
    return-void

    .line 624
    .end local v7           #done:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method
