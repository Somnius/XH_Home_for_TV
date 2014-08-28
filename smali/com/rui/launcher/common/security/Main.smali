.class public Lcom/rui/launcher/common/security/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static license(Ljava/lang/String;)V
    .locals 5
    .parameter "source"

    .prologue
    .line 26
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n\n\u5bc6\u94a5\u539f\u6587"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    new-instance v2, Lcom/rui/launcher/common/security/LicenseFactory;

    invoke-direct {v2}, Lcom/rui/launcher/common/security/LicenseFactory;-><init>()V

    invoke-virtual {v2, p0}, Lcom/rui/launcher/common/security/LicenseFactory;->generateLicense(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, license:Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5bc6\u94a5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    new-instance v2, Lcom/rui/launcher/common/security/LicenseFactory;

    invoke-direct {v2}, Lcom/rui/launcher/common/security/LicenseFactory;-><init>()V

    invoke-virtual {v2, v0}, Lcom/rui/launcher/common/security/LicenseFactory;->parseLicense(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, parseLicense:Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u89e3\u6790\u540e\u7684\u5bc6\u94a5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x0

    const-string v4, "&;%"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "&;%"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\u5bc6\u94a5\u89e3\u6790\u524d\u540e\u4e00\u81f4"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "\u5bc6\u94a5\u89e3\u6790\u524d\u540e\u4e0d\u4e00\u81f4"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 13
    const-string v0, "537d7f31-8301-41c2-8202-8e4ad8526063&;%1586"

    .line 14
    .local v0, source:Ljava/lang/String;
    invoke-static {v0}, Lcom/rui/launcher/common/security/Main;->license(Ljava/lang/String;)V

    .line 15
    return-void
.end method
