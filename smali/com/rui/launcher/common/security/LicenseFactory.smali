.class public Lcom/rui/launcher/common/security/LicenseFactory;
.super Ljava/lang/Object;
.source "LicenseFactory.java"

# interfaces
.implements Lcom/rui/launcher/common/security/LicenseFactoryIntf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateLicense(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "source"

    .prologue
    .line 8
    :try_start_0
    new-instance v2, Lcom/rui/launcher/common/security/License;

    invoke-direct {v2}, Lcom/rui/launcher/common/security/License;-><init>()V

    invoke-virtual {v2, p1}, Lcom/rui/launcher/common/security/License;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 11
    :goto_0
    return-object v1

    .line 10
    :catch_0
    move-exception v0

    .line 11
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseLicense(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "source"

    .prologue
    .line 18
    :try_start_0
    new-instance v2, Lcom/rui/launcher/common/security/License;

    invoke-direct {v2}, Lcom/rui/launcher/common/security/License;-><init>()V

    invoke-virtual {v2, p1}, Lcom/rui/launcher/common/security/License;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 21
    :goto_0
    return-object v1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
