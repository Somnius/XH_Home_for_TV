.class public Lde/innosystec/unrar/rarfile/AVHeader;
.super Lde/innosystec/unrar/rarfile/BaseBlock;
.source "AVHeader.java"


# static fields
.field public static final avHeaderSize:I = 0x7


# instance fields
.field private avInfoCRC:I

.field private avVersion:B

.field private method:B

.field private unpackVersion:B


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V
    .locals 3
    .parameter "bb"
    .parameter "avHeader"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/BaseBlock;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;)V

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, pos:I
    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/AVHeader;->unpackVersion:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lde/innosystec/unrar/rarfile/AVHeader;->unpackVersion:B

    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/AVHeader;->method:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lde/innosystec/unrar/rarfile/AVHeader;->method:B

    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/AVHeader;->avVersion:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lde/innosystec/unrar/rarfile/AVHeader;->avVersion:B

    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lde/innosystec/unrar/rarfile/AVHeader;->avInfoCRC:I

    .line 49
    return-void
.end method


# virtual methods
.method public getAvInfoCRC()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lde/innosystec/unrar/rarfile/AVHeader;->avInfoCRC:I

    return v0
.end method

.method public getAvVersion()B
    .locals 1

    .prologue
    .line 56
    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/AVHeader;->avVersion:B

    return v0
.end method

.method public getMethod()B
    .locals 1

    .prologue
    .line 60
    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/AVHeader;->method:B

    return v0
.end method

.method public getUnpackVersion()B
    .locals 1

    .prologue
    .line 64
    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/AVHeader;->unpackVersion:B

    return v0
.end method
