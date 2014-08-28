.class Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$4;
.super Ljava/lang/Object;
.source "WorkSpaceLauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->initTableClassifieds(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

.field private final synthetic val$cx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$4;->this$0:Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;

    iput-object p2, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$4;->val$cx:Landroid/content/Context;

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 605
    iget-object v1, p0, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$4;->val$cx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 606
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/rui/launcher/common/RLauncherSettings$Classifieds;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 607
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v7, 0x1

    .line 608
    .local v7, done:Z
    :goto_0
    if-eqz v7, :cond_0

    .line 609
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 611
    :cond_0
    return-void

    .line 607
    .end local v7           #done:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method
