.class public final Lcom/rui/launcher/common/RLauncherSettings$Recommends;
.super Ljava/lang/Object;
.source "RLauncherSettings.java"

# interfaces
.implements Lcom/rui/launcher/common/RLauncherSettings$BaseRLauncherColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rui/launcher/common/RLauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Recommends"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.androidbook.book"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.androidbook.book"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "modified DESC"

.field public static final DOWNLOAD_OPTION:Ljava/lang/String; = "dOUrl"

.field public static final DOWNLOAD_STATE:Ljava/lang/String; = "state"

.field public static final DOWNLOAD_URL:Ljava/lang/String; = "dUrl"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final ICON_RESOURCE:Ljava/lang/String; = "iconResource"

.field public static final ICON_TYPE:Ljava/lang/String; = "iconType"

.field public static final ICON_TYPE_BITMAP:I = 0x2

.field public static final ICON_TYPE_DEFAULT:I = 0x0

.field public static final ICON_TYPE_RESOURCE:I = 0x1

.field public static final ITEM_TYPE_RECOMMEND:I = 0x2

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final RECOMMEND_TYPE:Ljava/lang/String; = "recType"

.field public static final RECOMMEND_VERSION:Ljava/lang/String; = "version"

.field public static final SAVED:Ljava/lang/String; = "savedFile"

.field public static final VERSION_CODE:Ljava/lang/String; = "versionCode"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/rui/launcher/common/RLauncherProvider;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recommends"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    const-string v1, "notify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/rui/launcher/common/RLauncherSettings$Recommends;->CONTENT_URI:Landroid/net/Uri;

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(JZ)Landroid/net/Uri;
    .locals 2
    .parameter "id"
    .parameter "notify"

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/rui/launcher/common/RLauncherProvider;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    const-string v1, "recommends"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    const-string v1, "notify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
