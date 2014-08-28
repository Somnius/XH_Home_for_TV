.class public Lcom/uprui/notify/RuiHttpApkNotifyCallback;
.super Lcom/uprui/notify/RuiHttpFileNotifyCallback;
.source "RuiHttpApkNotifyCallback.java"


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;ILjava/lang/String;)V
    .locals 4
    .parameter "cn"
    .parameter "versionCode"
    .parameter "appName"

    .prologue
    .line 10
    invoke-static {p1, p2}, Lcom/uprui/utils/RuiFileUtil;->generateApkLoadFile(Landroid/content/ComponentName;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/uprui/notify/RuiHttpFileNotifyCallback;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "apk\u4e0b\u8f7d:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    .local v1, tricker:Ljava/lang/String;
    move-object v0, p3

    .line 13
    .local v0, contentTitle:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/uprui/notify/RuiHttpApkNotifyCallback;->setContentTitle(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v1}, Lcom/uprui/notify/RuiHttpApkNotifyCallback;->setTricker(Ljava/lang/String;)V

    .line 15
    return-void
.end method
