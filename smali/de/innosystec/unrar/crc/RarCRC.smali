.class public Lde/innosystec/unrar/crc/RarCRC;
.super Ljava/lang/Object;
.source "RarCRC.java"


# static fields
.field private static final crcTab:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x100

    .line 32
    new-array v3, v4, [I

    sput-object v3, Lde/innosystec/unrar/crc/RarCRC;->crcTab:[I

    .line 33
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 28
    return-void

    .line 34
    :cond_0
    move v0, v1

    .line 35
    .local v0, c:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    .line 44
    sget-object v3, Lde/innosystec/unrar/crc/RarCRC;->crcTab:[I

    aput v0, v3, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_1
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    .line 37
    ushr-int/lit8 v0, v0, 0x1

    .line 38
    const v3, -0x12477ce0

    xor-int/2addr v0, v3

    .line 35
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 41
    :cond_2
    ushr-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static checkCrc(I[BII)I
    .locals 4
    .parameter "startCrc"
    .parameter "data"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 53
    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 85
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 119
    return p0

    .line 111
    :cond_0
    sget-object v2, Lde/innosystec/unrar/crc/RarCRC;->crcTab:[I

    .line 112
    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v3, p0

    and-int/lit16 v3, v3, 0xff

    .line 111
    aget v2, v2, v3

    .line 112
    ushr-int/lit8 v3, p0, 0x8

    .line 111
    xor-int p0, v2, v3

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static checkOldCrc(S[BI)S
    .locals 4
    .parameter "startCrc"
    .parameter "data"
    .parameter "count"

    .prologue
    .line 123
    array-length v2, p1

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 124
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 128
    return p0

    .line 125
    :cond_0
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    add-int/2addr v2, p0

    int-to-short v2, v2

    and-int/lit8 v2, v2, -0x1

    int-to-short p0, v2

    .line 126
    shl-int/lit8 v2, p0, 0x1

    ushr-int/lit8 v3, p0, 0xf

    or-int/2addr v2, v3

    and-int/lit8 v2, v2, -0x1

    int-to-short p0, v2

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
