.class public Lcom/rui/launcher/common/utils/RuiLicenseFactory;
.super Ljava/lang/Object;
.source "RuiLicenseFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateRuiLicense(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "cx"

    .prologue
    .line 9
    invoke-static {p0}, Lcom/rui/launcher/common/utils/RUtilities;->getUUIDProperty(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 10
    .local v2, uuID:Ljava/lang/String;
    invoke-static {p0}, Lcom/rui/launcher/common/utils/RUtilities;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    .line 11
    .local v3, version:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "^*#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    .local v1, licenseSource:Ljava/lang/String;
    new-instance v4, Lcom/rui/launcher/common/security/LicenseFactory;

    invoke-direct {v4}, Lcom/rui/launcher/common/security/LicenseFactory;-><init>()V

    invoke-virtual {v4, v1}, Lcom/rui/launcher/common/security/LicenseFactory;->generateLicense(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, license:Ljava/lang/String;
    return-object v0
.end method
