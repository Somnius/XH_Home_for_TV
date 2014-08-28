.class public Lcom/rui/launcher/common/security/License;
.super Ljava/lang/Object;
.source "License.java"


# static fields
.field private static final ALGORITHMS:Ljava/lang/String; = "PBEWithMD5AndDES"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initSalt()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 39
    .local v1, salt:[B
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 40
    .local v0, random:Ljava/util/Random;
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 41
    return-object v1
.end method

.method private toKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 4
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 78
    .local v1, keySpec:Ljavax/crypto/spec/PBEKeySpec;
    const-string v3, "PBEWithMD5AndDES"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 79
    .local v0, keyFactory:Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 81
    .local v2, secretKey:Ljavax/crypto/SecretKey;
    return-object v2
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 165
    const-string v9, "^*#"

    const-string v10, "="

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 166
    const-string v9, "#*^"

    const-string v10, " "

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 169
    new-instance v8, Ljava/lang/String;

    invoke-static {p1}, Lcom/rui/launcher/common/security/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 172
    .end local p1
    .local v8, source:Ljava/lang/String;
    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, password:Ljava/lang/String;
    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 175
    .end local v8           #source:Ljava/lang/String;
    .restart local p1
    new-instance v8, Ljava/lang/String;

    invoke-static {p1}, Lcom/rui/launcher/common/security/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 178
    .end local p1
    .restart local v8       #source:Ljava/lang/String;
    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, pbeSource:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/rui/launcher/common/security/License;->toKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1

    .line 184
    .local v1, key:Ljava/security/Key;
    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, saltStr:Ljava/lang/String;
    invoke-static {v7}, Lcom/rui/launcher/common/security/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v6

    .line 189
    .local v6, salt:[B
    invoke-static {v5}, Lcom/rui/launcher/common/security/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 192
    .local v4, pbeBytes:[B
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 v9, 0x64

    invoke-direct {v2, v6, v9}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 193
    .local v2, paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    const-string v9, "PBEWithMD5AndDES"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 194
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v9, 0x2

    invoke-virtual {v0, v9, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 195
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    return-object v9
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/rui/launcher/common/security/License;->password()Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, password:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/rui/launcher/common/security/License;->toKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v3

    .line 103
    .local v3, key:Ljava/security/Key;
    invoke-direct {p0}, Lcom/rui/launcher/common/security/License;->initSalt()[B

    move-result-object v7

    .line 106
    .local v7, salt:[B
    invoke-static {v7}, Lcom/rui/launcher/common/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, saltStr:Ljava/lang/String;
    :goto_0
    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_0

    .line 115
    new-instance v4, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 v9, 0x64

    invoke-direct {v4, v7, v9}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 116
    .local v4, paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    const-string v9, "PBEWithMD5AndDES"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 118
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9

    .line 120
    invoke-static {v9}, Lcom/rui/launcher/common/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, encryptData:Ljava/lang/String;
    const-string v9, "\n"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 125
    .local v2, index:I
    :goto_1
    if-gtz v2, :cond_1

    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lcom/rui/launcher/common/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v6

    .line 138
    const-string v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 139
    :goto_2
    if-gtz v2, :cond_2

    .line 145
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 147
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lcom/rui/launcher/common/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v6

    .line 149
    const-string v9, "="

    const-string v10, "^*#"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 150
    const-string v9, " "

    const-string v10, "#*^"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 152
    return-object v6

    .line 109
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v1           #encryptData:Ljava/lang/String;
    .end local v2           #index:I
    .end local v4           #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v6           #result:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/rui/launcher/common/security/License;->initSalt()[B

    move-result-object v7

    .line 111
    invoke-static {v7}, Lcom/rui/launcher/common/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 126
    .restart local v0       #cipher:Ljavax/crypto/Cipher;
    .restart local v1       #encryptData:Ljava/lang/String;
    .restart local v2       #index:I
    .restart local v4       #paramSpec:Ljavax/crypto/spec/PBEParameterSpec;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {v1, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 126
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    const-string v9, "\n"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_1

    .line 140
    .restart local v6       #result:Ljava/lang/String;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 140
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 142
    const-string v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_2
.end method

.method public password()Ljava/lang/String;
    .locals 7

    .prologue
    .line 52
    const-string v2, ""

    .line 53
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    .line 54
    .local v1, i:I
    :cond_0
    :goto_0
    const/16 v3, 0xa

    if-lt v1, v3, :cond_1

    .line 61
    return-object v2

    .line 55
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4069

    mul-double/2addr v3, v5

    double-to-int v0, v3

    .line 56
    .local v0, count:I
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_4

    :cond_2
    const/16 v3, 0x61

    if-lt v0, v3, :cond_3

    const/16 v3, 0x7a

    if-le v0, v3, :cond_4

    :cond_3
    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_0

    .line 57
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
