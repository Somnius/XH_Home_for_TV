.class public Lcom/uprui/tv/launcher8/config/TvConfig;
.super Ljava/lang/Object;
.source "TvConfig.java"


# static fields
.field public static final DEFAULT_SCREEN_COUNT:I = 0x3

.field public static final SCREEN_COUNT:Ljava/lang/String; = "screenCount"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScreenCount(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 12
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 13
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "screenCount"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static saveScreenCount(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "screenCount"

    .prologue
    .line 17
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 18
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "screenCount"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 19
    return-void
.end method
