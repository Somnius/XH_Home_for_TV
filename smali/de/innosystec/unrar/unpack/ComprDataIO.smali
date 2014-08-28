.class public Lde/innosystec/unrar/unpack/ComprDataIO;
.super Ljava/lang/Object;
.source "ComprDataIO.java"


# instance fields
.field private final archive:Lde/innosystec/unrar/Archive;

.field private curPackRead:J

.field private curPackWrite:J

.field private curUnpRead:J

.field private curUnpWrite:J

.field private currentCommand:C

.field private decryption:I

.field private encryption:I

.field private inputStream:Ljava/io/InputStream;

.field private lastPercent:I

.field private nextVolumeMissing:Z

.field private outputStream:Ljava/io/OutputStream;

.field private packFileCRC:J

.field private packVolume:Z

.field private packedCRC:J

.field private processedArcSize:J

.field private skipUnpCRC:Z

.field private subHead:Lde/innosystec/unrar/rarfile/FileHeader;

.field private testMode:Z

.field private totalArcSize:J

.field private totalPackRead:J

.field private unpArcSize:J

.field private unpFileCRC:J

.field private unpPackedSize:J

.field private unpVolume:Z


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/Archive;)V
    .locals 0
    .parameter "arc"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->archive:Lde/innosystec/unrar/Archive;

    .line 82
    return-void
.end method


# virtual methods
.method public getCurPackRead()J
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curPackRead:J

    return-wide v0
.end method

.method public getCurPackWrite()J
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curPackWrite:J

    return-wide v0
.end method

.method public getCurUnpRead()J
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpRead:J

    return-wide v0
.end method

.method public getCurUnpWrite()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpWrite:J

    return-wide v0
.end method

.method public getDecryption()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->decryption:I

    return v0
.end method

.method public getEncryption()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->encryption:I

    return v0
.end method

.method public getPackFileCRC()J
    .locals 2

    .prologue
    .line 282
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packFileCRC:J

    return-wide v0
.end method

.method public getPackedCRC()J
    .locals 2

    .prologue
    .line 273
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packedCRC:J

    return-wide v0
.end method

.method public getProcessedArcSize()J
    .locals 2

    .prologue
    .line 302
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->processedArcSize:J

    return-wide v0
.end method

.method public getSubHeader()Lde/innosystec/unrar/rarfile/FileHeader;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->subHead:Lde/innosystec/unrar/rarfile/FileHeader;

    return-object v0
.end method

.method public getTotalArcSize()J
    .locals 2

    .prologue
    .line 312
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->totalArcSize:J

    return-wide v0
.end method

.method public getTotalPackRead()J
    .locals 2

    .prologue
    .line 322
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->totalPackRead:J

    return-wide v0
.end method

.method public getUnpArcSize()J
    .locals 2

    .prologue
    .line 332
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpArcSize:J

    return-wide v0
.end method

.method public getUnpFileCRC()J
    .locals 2

    .prologue
    .line 342
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpFileCRC:J

    return-wide v0
.end method

.method public init(Lde/innosystec/unrar/rarfile/FileHeader;)V
    .locals 8
    .parameter "hd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 106
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/FileHeader;->getPositionInFile()J

    move-result-wide v0

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/FileHeader;->getHeaderSize()S

    move-result v4

    int-to-long v4, v4

    add-long v2, v0, v4

    .line 107
    .local v2, startPos:J
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v0

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 108
    new-instance v0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;

    .line 109
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->archive:Lde/innosystec/unrar/Archive;

    invoke-virtual {v1}, Lde/innosystec/unrar/Archive;->getRof()Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-result-object v1

    .line 111
    iget-wide v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpPackedSize:J

    add-long/2addr v4, v2

    invoke-direct/range {v0 .. v5}, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;-><init>(Lde/innosystec/unrar/io/IReadOnlyAccess;JJ)V

    .line 108
    iput-object v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->inputStream:Ljava/io/InputStream;

    .line 112
    iput-object p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->subHead:Lde/innosystec/unrar/rarfile/FileHeader;

    .line 113
    iput-wide v6, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpRead:J

    .line 114
    iput-wide v6, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curPackWrite:J

    .line 115
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packedCRC:J

    .line 116
    return-void
.end method

.method public init(Ljava/io/OutputStream;)V
    .locals 5
    .parameter "outputStream"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 85
    iput-object p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->outputStream:Ljava/io/OutputStream;

    .line 86
    iput-wide v3, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 87
    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->testMode:Z

    .line 88
    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->skipUnpCRC:Z

    .line 89
    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packVolume:Z

    .line 90
    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpVolume:Z

    .line 91
    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->nextVolumeMissing:Z

    .line 93
    iput v2, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->encryption:I

    .line 94
    iput v2, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->decryption:I

    .line 95
    iput-wide v3, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->totalPackRead:J

    .line 96
    iput-wide v3, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpWrite:J

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpRead:J

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curPackWrite:J

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curPackRead:J

    .line 97
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packedCRC:J

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpFileCRC:J

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packFileCRC:J

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->lastPercent:I

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->subHead:Lde/innosystec/unrar/rarfile/FileHeader;

    .line 101
    iput-char v2, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->currentCommand:C

    .line 102
    iput-wide v3, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->totalArcSize:J

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->processedArcSize:J

    .line 103
    return-void
.end method

.method public isNextVolumeMissing()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->nextVolumeMissing:Z

    return v0
.end method

.method public isPackVolume()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packVolume:Z

    return v0
.end method

.method public isUnpVolume()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpVolume:Z

    return v0
.end method

.method public setCurPackRead(J)V
    .locals 0
    .parameter "curPackRead"

    .prologue
    .line 209
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curPackRead:J

    .line 210
    return-void
.end method

.method public setCurPackWrite(J)V
    .locals 0
    .parameter "curPackWrite"

    .prologue
    .line 219
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curPackWrite:J

    .line 220
    return-void
.end method

.method public setCurUnpRead(J)V
    .locals 0
    .parameter "curUnpRead"

    .prologue
    .line 229
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpRead:J

    .line 230
    return-void
.end method

.method public setCurUnpWrite(J)V
    .locals 0
    .parameter "curUnpWrite"

    .prologue
    .line 239
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpWrite:J

    .line 240
    return-void
.end method

.method public setDecryption(I)V
    .locals 0
    .parameter "decryption"

    .prologue
    .line 249
    iput p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->decryption:I

    .line 250
    return-void
.end method

.method public setEncryption(I)V
    .locals 0
    .parameter "encryption"

    .prologue
    .line 259
    iput p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->encryption:I

    .line 260
    return-void
.end method

.method public setNextVolumeMissing(Z)V
    .locals 0
    .parameter "nextVolumeMissing"

    .prologue
    .line 269
    iput-boolean p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->nextVolumeMissing:Z

    .line 270
    return-void
.end method

.method public setPackFileCRC(J)V
    .locals 0
    .parameter "packFileCRC"

    .prologue
    .line 287
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packFileCRC:J

    .line 288
    return-void
.end method

.method public setPackVolume(Z)V
    .locals 0
    .parameter "packVolume"

    .prologue
    .line 297
    iput-boolean p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packVolume:Z

    .line 298
    return-void
.end method

.method public setPackedCRC(J)V
    .locals 0
    .parameter "packedCRC"

    .prologue
    .line 277
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packedCRC:J

    .line 278
    return-void
.end method

.method public setPackedSizeToRead(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 183
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 184
    return-void
.end method

.method public setProcessedArcSize(J)V
    .locals 0
    .parameter "processedArcSize"

    .prologue
    .line 307
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->processedArcSize:J

    .line 308
    return-void
.end method

.method public setSkipUnpCRC(Z)V
    .locals 0
    .parameter "skip"

    .prologue
    .line 193
    iput-boolean p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->skipUnpCRC:Z

    .line 194
    return-void
.end method

.method public setSubHeader(Lde/innosystec/unrar/rarfile/FileHeader;)V
    .locals 0
    .parameter "hd"

    .prologue
    .line 198
    iput-object p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->subHead:Lde/innosystec/unrar/rarfile/FileHeader;

    .line 200
    return-void
.end method

.method public setTestMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 188
    iput-boolean p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->testMode:Z

    .line 189
    return-void
.end method

.method public setTotalArcSize(J)V
    .locals 0
    .parameter "totalArcSize"

    .prologue
    .line 317
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->totalArcSize:J

    .line 318
    return-void
.end method

.method public setTotalPackRead(J)V
    .locals 0
    .parameter "totalPackRead"

    .prologue
    .line 327
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->totalPackRead:J

    .line 328
    return-void
.end method

.method public setUnpArcSize(J)V
    .locals 0
    .parameter "unpArcSize"

    .prologue
    .line 337
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpArcSize:J

    .line 338
    return-void
.end method

.method public setUnpFileCRC(J)V
    .locals 0
    .parameter "unpFileCRC"

    .prologue
    .line 347
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpFileCRC:J

    .line 348
    return-void
.end method

.method public setUnpVolume(Z)V
    .locals 0
    .parameter "unpVolume"

    .prologue
    .line 357
    iput-boolean p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpVolume:Z

    .line 358
    return-void
.end method

.method public unpRead([BII)I
    .locals 8
    .parameter "addr"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 120
    const/4 v1, 0x0

    .local v1, retCode:I
    const/4 v2, 0x0

    .line 121
    .local v2, totalRead:I
    :cond_0
    if-gtz p3, :cond_3

    .line 149
    :cond_1
    if-eq v1, v3, :cond_2

    .line 150
    move v1, v2

    :cond_2
    move v3, v1

    .line 152
    :goto_0
    return v3

    .line 122
    :cond_3
    int-to-long v4, p3

    iget-wide v6, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpPackedSize:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    iget-wide v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpPackedSize:J

    long-to-int v0, v4

    .line 123
    .local v0, readSize:I
    :goto_1
    iget-object v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 124
    if-gez v1, :cond_5

    .line 125
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .end local v0           #readSize:I
    :cond_4
    move v0, p3

    .line 122
    goto :goto_1

    .line 127
    .restart local v0       #readSize:I
    :cond_5
    iget-object v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->subHead:Lde/innosystec/unrar/rarfile/FileHeader;

    invoke-virtual {v4}, Lde/innosystec/unrar/rarfile/FileHeader;->isSplitAfter()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 129
    iget-wide v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packedCRC:J

    long-to-int v4, v4

    .line 128
    invoke-static {v4, p1, p2, v1}, Lde/innosystec/unrar/crc/RarCRC;->checkCrc(I[BII)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packedCRC:J

    .line 132
    :cond_6
    iget-wide v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpRead:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpRead:J

    .line 133
    add-int/2addr v2, v1

    .line 134
    add-int/2addr p2, v1

    .line 135
    sub-int/2addr p3, v1

    .line 136
    iget-wide v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpPackedSize:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 137
    iget-object v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->archive:Lde/innosystec/unrar/Archive;

    invoke-virtual {v4, v1}, Lde/innosystec/unrar/Archive;->bytesReadRead(I)V

    .line 138
    iget-wide v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpPackedSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->subHead:Lde/innosystec/unrar/rarfile/FileHeader;

    invoke-virtual {v4}, Lde/innosystec/unrar/rarfile/FileHeader;->isSplitAfter()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    iget-object v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->archive:Lde/innosystec/unrar/Archive;

    invoke-static {v4, p0}, Lde/innosystec/unrar/Volume;->mergeArchive(Lde/innosystec/unrar/Archive;Lde/innosystec/unrar/unpack/ComprDataIO;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    const/4 v4, 0x1

    iput-boolean v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->nextVolumeMissing:Z

    goto :goto_0
.end method

.method public unpWrite([BII)V
    .locals 4
    .parameter "addr"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->testMode:Z

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 164
    :cond_0
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpWrite:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpWrite:J

    .line 166
    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->skipUnpCRC:Z

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->archive:Lde/innosystec/unrar/Archive;

    invoke-virtual {v0}, Lde/innosystec/unrar/Archive;->isOldFormat()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpFileCRC:J

    long-to-int v0, v0

    int-to-short v0, v0

    .line 168
    invoke-static {v0, p1, p3}, Lde/innosystec/unrar/crc/RarCRC;->checkOldCrc(S[BI)S

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpFileCRC:J

    .line 179
    :cond_1
    :goto_0
    return-void

    .line 173
    :cond_2
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpFileCRC:J

    long-to-int v0, v0

    .line 172
    invoke-static {v0, p1, p2, p3}, Lde/innosystec/unrar/crc/RarCRC;->checkCrc(I[BII)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpFileCRC:J

    goto :goto_0
.end method
