.class public Lde/innosystec/unrar/rarfile/FileNameDecoder;
.super Ljava/lang/Object;
.source "FileNameDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BI)Ljava/lang/String;
    .locals 12
    .parameter "name"
    .parameter "encPos"

    .prologue
    .line 27
    const/4 v2, 0x0

    .line 28
    .local v2, decPos:I
    const/4 v5, 0x0

    .line 29
    .local v5, flags:I
    const/4 v4, 0x0

    .line 31
    .local v4, flagBits:I
    const/4 v9, 0x0

    .line 32
    .local v9, low:I
    const/4 v6, 0x0

    .line 33
    .local v6, high:I
    add-int/lit8 v3, p1, 0x1

    .end local p1
    .local v3, encPos:I
    invoke-static {p0, p1}, Lde/innosystec/unrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v7

    .line 34
    .local v7, highByte:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, buf:Ljava/lang/StringBuffer;
    move p1, v3

    .line 35
    .end local v3           #encPos:I
    .restart local p1
    :goto_0
    array-length v10, p0

    if-lt p1, v10, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 36
    :cond_0
    if-nez v4, :cond_5

    .line 37
    add-int/lit8 v3, p1, 0x1

    .end local p1
    .restart local v3       #encPos:I
    invoke-static {p0, p1}, Lde/innosystec/unrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v5

    .line 38
    const/16 v4, 0x8

    .line 40
    :goto_1
    shr-int/lit8 v10, v5, 0x6

    packed-switch v10, :pswitch_data_0

    :cond_1
    move p1, v3

    .line 71
    .end local v3           #encPos:I
    .restart local p1
    :cond_2
    :goto_2
    shl-int/lit8 v10, v5, 0x2

    and-int/lit16 v5, v10, 0xff

    .line 72
    add-int/lit8 v4, v4, -0x2

    goto :goto_0

    .line 42
    .end local p1
    .restart local v3       #encPos:I
    :pswitch_0
    add-int/lit8 p1, v3, 0x1

    .end local v3           #encPos:I
    .restart local p1
    invoke-static {p0, v3}, Lde/innosystec/unrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_2

    .line 46
    .end local p1
    .restart local v3       #encPos:I
    :pswitch_1
    add-int/lit8 p1, v3, 0x1

    .end local v3           #encPos:I
    .restart local p1
    invoke-static {p0, v3}, Lde/innosystec/unrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v10

    shl-int/lit8 v11, v7, 0x8

    add-int/2addr v10, v11

    int-to-char v10, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_2

    .line 50
    .end local p1
    .restart local v3       #encPos:I
    :pswitch_2
    invoke-static {p0, v3}, Lde/innosystec/unrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v9

    .line 51
    add-int/lit8 v10, v3, 0x1

    invoke-static {p0, v10}, Lde/innosystec/unrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v6

    .line 52
    shl-int/lit8 v10, v6, 0x8

    add-int/2addr v10, v9

    int-to-char v10, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    add-int/lit8 p1, v3, 0x2

    .line 55
    .end local v3           #encPos:I
    .restart local p1
    goto :goto_2

    .line 57
    .end local p1
    .restart local v3       #encPos:I
    :pswitch_3
    add-int/lit8 p1, v3, 0x1

    .end local v3           #encPos:I
    .restart local p1
    invoke-static {p0, v3}, Lde/innosystec/unrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v8

    .line 58
    .local v8, length:I
    and-int/lit16 v10, v8, 0x80

    if-eqz v10, :cond_4

    .line 59
    add-int/lit8 v3, p1, 0x1

    .end local p1
    .restart local v3       #encPos:I
    invoke-static {p0, p1}, Lde/innosystec/unrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v1

    .line 60
    .local v1, correction:I
    and-int/lit8 v10, v8, 0x7f

    add-int/lit8 v8, v10, 0x2

    :goto_3
    if-lez v8, :cond_1

    array-length v10, p0

    if-lt v2, v10, :cond_3

    move p1, v3

    .end local v3           #encPos:I
    .restart local p1
    goto :goto_2

    .line 61
    .end local p1
    .restart local v3       #encPos:I
    :cond_3
    invoke-static {p0, v2}, Lde/innosystec/unrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v10

    add-int/2addr v10, v1

    and-int/lit16 v9, v10, 0xff

    .line 62
    shl-int/lit8 v10, v7, 0x8

    add-int/2addr v10, v9

    int-to-char v10, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 65
    .end local v1           #correction:I
    .end local v3           #encPos:I
    .restart local p1
    :cond_4
    add-int/lit8 v8, v8, 0x2

    :goto_4
    if-lez v8, :cond_2

    array-length v10, p0

    if-ge v2, v10, :cond_2

    .line 66
    invoke-static {p0, v2}, Lde/innosystec/unrar/rarfile/FileNameDecoder;->getChar([BI)I

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v8           #length:I
    :cond_5
    move v3, p1

    .end local p1
    .restart local v3       #encPos:I
    goto/16 :goto_1

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getChar([BI)I
    .locals 1
    .parameter "name"
    .parameter "pos"

    .prologue
    .line 23
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
