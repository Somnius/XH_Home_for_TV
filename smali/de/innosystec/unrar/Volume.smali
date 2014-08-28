.class public Lde/innosystec/unrar/Volume;
.super Ljava/lang/Object;
.source "Volume.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method private static isDigit(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 109
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mergeArchive(Lde/innosystec/unrar/Archive;Lde/innosystec/unrar/unpack/ComprDataIO;)Z
    .locals 11
    .parameter "archive"
    .parameter "dataIO"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ComprDataIO;->getSubHeader()Lde/innosystec/unrar/rarfile/FileHeader;

    move-result-object v1

    .line 20
    .local v1, hd:Lde/innosystec/unrar/rarfile/FileHeader;
    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/FileHeader;->getUnpVersion()B

    move-result v7

    const/16 v8, 0x14

    if-lt v7, v8, :cond_0

    .line 21
    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/FileHeader;->getFileCRC()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 22
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ComprDataIO;->getPackedCRC()J

    move-result-wide v7

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/FileHeader;->getFileCRC()I

    move-result v9

    xor-int/lit8 v9, v9, -0x1

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 23
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Data Bad CRC"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    :cond_0
    invoke-virtual {p0}, Lde/innosystec/unrar/Archive;->getMainHeader()Lde/innosystec/unrar/rarfile/MainHeader;

    move-result-object v7

    invoke-virtual {v7}, Lde/innosystec/unrar/rarfile/MainHeader;->isNewNumbering()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 27
    invoke-virtual {p0}, Lde/innosystec/unrar/Archive;->isOldFormat()Z

    move-result v7

    if-nez v7, :cond_2

    move v4, v5

    .line 28
    .local v4, oldNumbering:Z
    :goto_0
    invoke-virtual {p0}, Lde/innosystec/unrar/Archive;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lde/innosystec/unrar/Volume;->nextVolumeName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, nextName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v3, nextVolume:Ljava/io/File;
    invoke-virtual {p0}, Lde/innosystec/unrar/Archive;->getUnrarCallback()Lde/innosystec/unrar/UnrarCallback;

    move-result-object v0

    .line 32
    .local v0, callback:Lde/innosystec/unrar/UnrarCallback;
    if-eqz v0, :cond_3

    invoke-interface {v0, v3}, Lde/innosystec/unrar/UnrarCallback;->isNextVolumeReady(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 44
    :cond_1
    :goto_1
    return v5

    .end local v0           #callback:Lde/innosystec/unrar/UnrarCallback;
    .end local v2           #nextName:Ljava/lang/String;
    .end local v3           #nextVolume:Ljava/io/File;
    .end local v4           #oldNumbering:Z
    :cond_2
    move v4, v6

    .line 27
    goto :goto_0

    .line 35
    .restart local v0       #callback:Lde/innosystec/unrar/UnrarCallback;
    .restart local v2       #nextName:Ljava/lang/String;
    .restart local v3       #nextVolume:Ljava/io/File;
    .restart local v4       #oldNumbering:Z
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 38
    invoke-virtual {p0, v3}, Lde/innosystec/unrar/Archive;->setFile(Ljava/io/File;)V

    .line 39
    invoke-virtual {p0}, Lde/innosystec/unrar/Archive;->nextFileHeader()Lde/innosystec/unrar/rarfile/FileHeader;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/ComprDataIO;->init(Lde/innosystec/unrar/rarfile/FileHeader;)V

    move v5, v6

    .line 44
    goto :goto_1
.end method

.method public static nextVolumeName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .parameter "arcName"
    .parameter "oldNumbering"

    .prologue
    .line 49
    if-nez p1, :cond_8

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 52
    .local v7, len:I
    add-int/lit8 v6, v7, -0x1

    .line 53
    .local v6, indexR:I
    :goto_0
    if-ltz v6, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lde/innosystec/unrar/Volume;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 56
    :cond_0
    add-int/lit8 v4, v6, 0x1

    .line 57
    .local v4, index:I
    add-int/lit8 v5, v6, -0x1

    .line 58
    .local v5, indexL:I
    :goto_1
    if-ltz v5, :cond_1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lde/innosystec/unrar/Volume;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_3

    .line 61
    :cond_1
    if-gez v5, :cond_4

    .line 62
    const/4 v9, 0x0

    .line 104
    .end local v4           #index:I
    .end local v5           #indexL:I
    .end local v6           #indexR:I
    :goto_2
    return-object v9

    .line 54
    .restart local v6       #indexR:I
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 59
    .restart local v4       #index:I
    .restart local v5       #indexL:I
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 64
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 66
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    invoke-virtual {v0, p0, v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 67
    sub-int v9, v6, v5

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [C

    .line 68
    .local v1, digits:[C
    add-int/lit8 v9, v6, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v5, v9, v1, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 69
    array-length v9, v1

    add-int/lit8 v6, v9, -0x1

    .line 70
    :goto_3
    if-ltz v6, :cond_5

    aget-char v9, v1, v6

    add-int/lit8 v9, v9, 0x1

    int-to-char v9, v9

    aput-char v9, v1, v6

    const/16 v10, 0x3a

    if-eq v9, v10, :cond_7

    .line 74
    :cond_5
    if-gez v6, :cond_6

    .line 75
    const/16 v9, 0x31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, p0, v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 71
    :cond_7
    const/16 v9, 0x30

    aput-char v9, v1, v6

    .line 72
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 83
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #digits:[C
    .end local v4           #index:I
    .end local v5           #indexL:I
    .end local v6           #indexR:I
    .end local v7           #len:I
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 84
    .restart local v7       #len:I
    const/4 v9, 0x4

    if-le v7, v9, :cond_9

    add-int/lit8 v9, v7, -0x4

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    if-eq v9, v10, :cond_a

    .line 85
    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    .line 87
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .restart local v0       #buffer:Ljava/lang/StringBuilder;
    add-int/lit8 v8, v7, -0x3

    .line 89
    .local v8, off:I
    const/4 v9, 0x0

    invoke-virtual {v0, p0, v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lde/innosystec/unrar/Volume;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 91
    add-int/lit8 v9, v8, 0x2

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lde/innosystec/unrar/Volume;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_c

    .line 92
    :cond_b
    const-string v9, "r00"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 95
    :cond_c
    const/4 v9, 0x3

    new-array v2, v9, [C

    .line 96
    .local v2, ext:[C
    const/4 v9, 0x0

    invoke-virtual {p0, v8, v7, v2, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 97
    array-length v9, v2

    add-int/lit8 v3, v9, -0x1

    .line 98
    .local v3, i:I
    :goto_5
    aget-char v9, v2, v3

    add-int/lit8 v9, v9, 0x1

    int-to-char v9, v9

    aput-char v9, v2, v3

    const/16 v10, 0x3a

    if-eq v9, v10, :cond_d

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 99
    :cond_d
    const/16 v9, 0x30

    aput-char v9, v2, v3

    .line 100
    add-int/lit8 v3, v3, -0x1

    goto :goto_5
.end method
