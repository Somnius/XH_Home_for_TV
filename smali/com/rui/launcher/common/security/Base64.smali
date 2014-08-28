.class public Lcom/rui/launcher/common/security/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final legalChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 18
    sput-object v0, Lcom/rui/launcher/common/security/Base64;->legalChars:[C

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(C)I
    .locals 3
    .parameter "c"

    .prologue
    .line 74
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 75
    add-int/lit8 v0, p0, -0x41

    .line 87
    :goto_0
    return v0

    .line 76
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 77
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x1a

    goto :goto_0

    .line 78
    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    .line 79
    add-int/lit8 v0, p0, -0x30

    add-int/lit8 v0, v0, 0x1a

    add-int/lit8 v0, v0, 0x1a

    goto :goto_0

    .line 81
    :cond_2
    sparse-switch p0, :sswitch_data_0

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :sswitch_0
    const/16 v0, 0x3e

    goto :goto_0

    .line 85
    :sswitch_1
    const/16 v0, 0x3f

    goto :goto_0

    .line 87
    :sswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_0
        0x2f -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method private static decode(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 6
    .parameter "s"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3d

    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 122
    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_2

    .line 125
    :cond_0
    if-ne v0, v1, :cond_3

    .line 143
    :cond_1
    return-void

    .line 123
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/rui/launcher/common/security/Base64;->decode(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x12

    .line 129
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/rui/launcher/common/security/Base64;->decode(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0xc

    .line 128
    add-int/2addr v3, v4

    .line 130
    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/rui/launcher/common/security/Base64;->decode(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x6

    .line 128
    add-int/2addr v3, v4

    .line 131
    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/rui/launcher/common/security/Base64;->decode(C)I

    move-result v4

    .line 128
    add-int v2, v3, v4

    .line 133
    .local v2, tri:I
    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 134
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_1

    .line 136
    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 137
    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_1

    .line 139
    and-int/lit16 v3, v2, 0xff

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 141
    add-int/lit8 v0, v0, 0x4

    .line 121
    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 7
    .parameter "s"

    .prologue
    .line 100
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 102
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0, v0}, Lcom/rui/launcher/common/security/Base64;->decode(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 108
    .local v1, decodedBytes:[B
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v1

    .line 103
    .end local v1           #decodedBytes:[B
    :catch_0
    move-exception v2

    .line 104
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    .line 110
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #decodedBytes:[B
    :catch_1
    move-exception v3

    .line 111
    .local v3, ex:Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error while decoding BASE64: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 10
    .parameter "data"

    .prologue
    .line 28
    const/4 v7, 0x0

    .line 29
    .local v7, start:I
    array-length v4, p0

    .line 30
    .local v4, len:I
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v8, p0

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 32
    .local v0, buf:Ljava/lang/StringBuffer;
    add-int/lit8 v2, v4, -0x3

    .line 33
    .local v2, end:I
    move v3, v7

    .line 34
    .local v3, i:I
    const/4 v5, 0x0

    .local v5, n:I
    move v6, v5

    .line 36
    .end local v5           #n:I
    .local v6, n:I
    :goto_0
    if-le v3, v2, :cond_1

    .line 54
    add-int v8, v7, v4

    add-int/lit8 v8, v8, -0x2

    if-ne v3, v8, :cond_3

    .line 55
    aget-byte v8, p0, v3

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    .line 56
    add-int/lit8 v9, v3, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    .line 55
    or-int v1, v8, v9

    .line 58
    .local v1, d:I
    sget-object v8, Lcom/rui/launcher/common/security/Base64;->legalChars:[C

    shr-int/lit8 v9, v1, 0x12

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 59
    sget-object v8, Lcom/rui/launcher/common/security/Base64;->legalChars:[C

    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    sget-object v8, Lcom/rui/launcher/common/security/Base64;->legalChars:[C

    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    const-string v8, "="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    .end local v1           #d:I
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 37
    :cond_1
    aget-byte v8, p0, v3

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    .line 38
    add-int/lit8 v9, v3, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    .line 37
    or-int/2addr v8, v9

    .line 39
    add-int/lit8 v9, v3, 0x2

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    .line 37
    or-int v1, v8, v9

    .line 41
    .restart local v1       #d:I
    sget-object v8, Lcom/rui/launcher/common/security/Base64;->legalChars:[C

    shr-int/lit8 v9, v1, 0x12

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 42
    sget-object v8, Lcom/rui/launcher/common/security/Base64;->legalChars:[C

    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    sget-object v8, Lcom/rui/launcher/common/security/Base64;->legalChars:[C

    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 44
    sget-object v8, Lcom/rui/launcher/common/security/Base64;->legalChars:[C

    and-int/lit8 v9, v1, 0x3f

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    add-int/lit8 v3, v3, 0x3

    .line 48
    add-int/lit8 v5, v6, 0x1

    .end local v6           #n:I
    .restart local v5       #n:I
    const/16 v8, 0xe

    if-lt v6, v8, :cond_2

    .line 49
    const/4 v5, 0x0

    .line 50
    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    move v6, v5

    .end local v5           #n:I
    .restart local v6       #n:I
    goto/16 :goto_0

    .line 62
    .end local v1           #d:I
    :cond_3
    add-int v8, v7, v4

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_0

    .line 63
    aget-byte v8, p0, v3

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v1, v8, 0x10

    .line 65
    .restart local v1       #d:I
    sget-object v8, Lcom/rui/launcher/common/security/Base64;->legalChars:[C

    shr-int/lit8 v9, v1, 0x12

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 66
    sget-object v8, Lcom/rui/launcher/common/security/Base64;->legalChars:[C

    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    const-string v8, "=="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
