.class public Lde/innosystec/unrar/rarfile/EndArcHeader;
.super Lde/innosystec/unrar/rarfile/BaseBlock;
.source "EndArcHeader.java"


# static fields
.field private static final EARC_DATACRC:S = 0x2s

.field private static final EARC_NEXT_VOLUME:S = 0x1s

.field private static final EARC_REVSPACE:S = 0x4s

.field private static final EARC_VOLNUMBER:S = 0x8s

.field public static final endArcArchiveDataCrcSize:S = 0x4s

.field private static final endArcHeaderSize:S = 0x6s

.field public static final endArcVolumeNumberSize:S = 0x2s


# instance fields
.field private archiveDataCRC:I

.field private volumeNumber:S


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V
    .locals 2
    .parameter "bb"
    .parameter "endArcHeader"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/BaseBlock;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;)V

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, pos:I
    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/EndArcHeader;->hasArchiveDataCRC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lde/innosystec/unrar/rarfile/EndArcHeader;->archiveDataCRC:I

    .line 49
    add-int/lit8 v0, v0, 0x4

    .line 51
    :cond_0
    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/EndArcHeader;->hasVolumeNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lde/innosystec/unrar/rarfile/EndArcHeader;->volumeNumber:S

    .line 54
    :cond_1
    return-void
.end method


# virtual methods
.method public getArchiveDataCRC()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lde/innosystec/unrar/rarfile/EndArcHeader;->archiveDataCRC:I

    return v0
.end method

.method public getVolumeNumber()S
    .locals 1

    .prologue
    .line 61
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/EndArcHeader;->volumeNumber:S

    return v0
.end method
