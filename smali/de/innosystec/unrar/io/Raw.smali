.class public Lde/innosystec/unrar/io/Raw;
.super Ljava/lang/Object;
.source "Raw.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final incShortLittleEndian([BII)V
    .locals 4
    .parameter "array"
    .parameter "pos"
    .parameter "dv"

    .prologue
    .line 255
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p2, 0xff

    add-int/2addr v1, v2

    ushr-int/lit8 v0, v1, 0x8

    .line 256
    .local v0, c:I
    aget-byte v1, p0, p1

    and-int/lit16 v2, p2, 0xff

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 257
    if-gtz v0, :cond_0

    const v1, 0xff00

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    .line 258
    :cond_0
    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, v1

    ushr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 260
    :cond_1
    return-void
.end method

.method public static final readIntBigEndian([BI)I
    .locals 2
    .parameter "array"
    .parameter "pos"

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, temp:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 56
    shl-int/lit8 v0, v0, 0x8

    .line 57
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 58
    shl-int/lit8 v0, v0, 0x8

    .line 59
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 60
    shl-int/lit8 v0, v0, 0x8

    .line 61
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 62
    return v0
.end method

.method public static final readIntLittleEndian([BI)I
    .locals 2
    .parameter "array"
    .parameter "pos"

    .prologue
    .line 123
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 124
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 123
    or-int/2addr v0, v1

    .line 125
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 123
    or-int/2addr v0, v1

    .line 125
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    .line 123
    or-int/2addr v0, v1

    return v0
.end method

.method public static final readIntLittleEndianAsLong([BI)J
    .locals 7
    .parameter "array"
    .parameter "pos"

    .prologue
    const-wide/16 v5, 0xff

    .line 137
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    .line 138
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    .line 137
    or-long/2addr v0, v2

    .line 139
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    .line 137
    or-long/2addr v0, v2

    .line 140
    aget-byte v2, p0, p1

    int-to-long v2, v2

    and-long/2addr v2, v5

    .line 137
    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static final readLongBigEndian([BI)J
    .locals 3
    .parameter "array"
    .parameter "pos"

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, temp:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 77
    shl-int/lit8 v0, v0, 0x8

    .line 78
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 79
    shl-int/lit8 v0, v0, 0x8

    .line 80
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 81
    shl-int/lit8 v0, v0, 0x8

    .line 82
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 83
    shl-int/lit8 v0, v0, 0x8

    .line 84
    add-int/lit8 v1, p1, 0x4

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 85
    shl-int/lit8 v0, v0, 0x8

    .line 86
    add-int/lit8 v1, p1, 0x5

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 87
    shl-int/lit8 v0, v0, 0x8

    .line 88
    add-int/lit8 v1, p1, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 89
    shl-int/lit8 v0, v0, 0x8

    .line 90
    add-int/lit8 v1, p1, 0x7

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 91
    int-to-long v1, v0

    return-wide v1
.end method

.method public static final readLongLittleEndian([BI)J
    .locals 3
    .parameter "array"
    .parameter "pos"

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, temp:I
    add-int/lit8 v1, p1, 0x7

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 156
    shl-int/lit8 v0, v0, 0x8

    .line 157
    add-int/lit8 v1, p1, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 158
    shl-int/lit8 v0, v0, 0x8

    .line 159
    add-int/lit8 v1, p1, 0x5

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 160
    shl-int/lit8 v0, v0, 0x8

    .line 161
    add-int/lit8 v1, p1, 0x4

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 162
    shl-int/lit8 v0, v0, 0x8

    .line 163
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 164
    shl-int/lit8 v0, v0, 0x8

    .line 165
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 166
    shl-int/lit8 v0, v0, 0x8

    .line 167
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 168
    shl-int/lit8 v0, v0, 0x8

    .line 169
    aget-byte v1, p0, p1

    or-int/2addr v0, v1

    .line 170
    int-to-long v1, v0

    return-wide v1
.end method

.method public static final readShortBigEndian([BI)S
    .locals 2
    .parameter "array"
    .parameter "pos"

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, temp:S
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 39
    shl-int/lit8 v1, v0, 0x8

    int-to-short v0, v1

    .line 40
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 41
    return v0
.end method

.method public static final readShortLittleEndian([BI)S
    .locals 2
    .parameter "array"
    .parameter "pos"

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, result:S
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v0

    int-to-short v0, v1

    .line 107
    shl-int/lit8 v1, v0, 0x8

    int-to-short v0, v1

    .line 108
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v0

    int-to-short v0, v1

    .line 109
    return v0
.end method

.method public static final writeIntBigEndian([BII)V
    .locals 2
    .parameter "array"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 202
    ushr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 203
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 204
    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 205
    add-int/lit8 v0, p1, 0x3

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 207
    return-void
.end method

.method public static final writeIntLittleEndian([BII)V
    .locals 2
    .parameter "array"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 275
    add-int/lit8 v0, p1, 0x3

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 276
    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 277
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 278
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 280
    return-void
.end method

.method public static final writeLongBigEndian([BIJ)V
    .locals 3
    .parameter "array"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 221
    const/16 v0, 0x38

    ushr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 222
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x30

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 223
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x28

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 224
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 225
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 226
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x10

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 227
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x8

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 228
    add-int/lit8 v0, p1, 0x7

    const-wide/16 v1, 0xff

    and-long/2addr v1, p2

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 230
    return-void
.end method

.method public static final writeLongLittleEndian([BIJ)V
    .locals 3
    .parameter "array"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 295
    add-int/lit8 v0, p1, 0x7

    const/16 v1, 0x38

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 296
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x30

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 297
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x28

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 298
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 299
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 300
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x10

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 301
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x8

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 302
    const-wide/16 v0, 0xff

    and-long/2addr v0, p2

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 304
    return-void
.end method

.method public static final writeShortBigEndian([BIS)V
    .locals 2
    .parameter "array"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 186
    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 187
    add-int/lit8 v0, p1, 0x1

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 189
    return-void
.end method

.method public static final writeShortLittleEndian([BIS)V
    .locals 2
    .parameter "array"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 245
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 246
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 248
    return-void
.end method
