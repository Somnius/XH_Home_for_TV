.class public abstract Lde/innosystec/unrar/unpack/Unpack20;
.super Lde/innosystec/unrar/unpack/Unpack15;
.source "Unpack20.java"


# static fields
.field public static final DBits:[I

.field public static final DDecode:[I

.field public static final LBits:[B

.field public static final LDecode:[I

.field public static final SDBits:[I

.field public static final SDDecode:[I


# instance fields
.field protected AudV:[Lde/innosystec/unrar/unpack/decode/AudioVariables;

.field protected BD:Lde/innosystec/unrar/unpack/decode/BitDecode;

.field protected DD:Lde/innosystec/unrar/unpack/decode/DistDecode;

.field protected LD:Lde/innosystec/unrar/unpack/decode/LitDecode;

.field protected LDD:Lde/innosystec/unrar/unpack/decode/LowDistDecode;

.field protected MD:[Lde/innosystec/unrar/unpack/decode/MultDecode;

.field protected RD:Lde/innosystec/unrar/unpack/decode/RepDecode;

.field protected UnpAudioBlock:I

.field protected UnpChannelDelta:I

.field protected UnpChannels:I

.field protected UnpCurChannel:I

.field protected UnpOldTable20:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/16 v3, 0x10

    .line 62
    const/16 v0, 0x1c

    new-array v0, v0, [I

    aput v5, v0, v5

    aput v6, v0, v6

    aput v7, v0, v7

    aput v4, v0, v4

    const/4 v1, 0x5

    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 63
    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x20

    aput v1, v0, v3

    const/16 v1, 0x11

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x38

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x50

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x60

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x70

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xa0

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xc0

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 64
    const/16 v2, 0xe0

    aput v2, v0, v1

    .line 62
    sput-object v0, Lde/innosystec/unrar/unpack/Unpack20;->LDecode:[I

    .line 66
    const/16 v0, 0x1c

    new-array v0, v0, [B

    const/16 v1, 0x8

    aput-byte v5, v0, v1

    const/16 v1, 0x9

    aput-byte v5, v0, v1

    const/16 v1, 0xa

    aput-byte v5, v0, v1

    const/16 v1, 0xb

    aput-byte v5, v0, v1

    const/16 v1, 0xc

    aput-byte v6, v0, v1

    const/16 v1, 0xd

    .line 67
    aput-byte v6, v0, v1

    const/16 v1, 0xe

    aput-byte v6, v0, v1

    const/16 v1, 0xf

    aput-byte v6, v0, v1

    aput-byte v7, v0, v3

    const/16 v1, 0x11

    aput-byte v7, v0, v1

    const/16 v1, 0x12

    aput-byte v7, v0, v1

    const/16 v1, 0x13

    aput-byte v7, v0, v1

    const/16 v1, 0x14

    aput-byte v4, v0, v1

    const/16 v1, 0x15

    aput-byte v4, v0, v1

    const/16 v1, 0x16

    aput-byte v4, v0, v1

    const/16 v1, 0x17

    aput-byte v4, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    .line 66
    sput-object v0, Lde/innosystec/unrar/unpack/Unpack20;->LBits:[B

    .line 69
    const/16 v0, 0x30

    new-array v0, v0, [I

    aput v5, v0, v5

    aput v6, v0, v6

    aput v7, v0, v7

    aput v4, v0, v4

    const/4 v1, 0x5

    const/4 v2, 0x6

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x8

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 70
    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x60

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xc0

    aput v2, v0, v1

    const/16 v1, 0x100

    aput v1, v0, v3

    const/16 v1, 0x11

    const/16 v2, 0x180

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x300

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x600

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xc00

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 71
    const/16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x1800

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x3000

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x6000

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x8000

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0xc000

    aput v2, v0, v1

    const/16 v1, 0x20

    const/high16 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x18000

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 72
    const/high16 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x23

    const/high16 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x24

    const/high16 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x25

    const/high16 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x26

    const/high16 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x27

    const/high16 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x28

    const/high16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x29

    const/high16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 73
    const/high16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/high16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/high16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/high16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/high16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/high16 v2, 0xf

    aput v2, v0, v1

    .line 69
    sput-object v0, Lde/innosystec/unrar/unpack/Unpack20;->DDecode:[I

    .line 75
    const/16 v0, 0x30

    new-array v0, v0, [I

    aput v5, v0, v4

    const/4 v1, 0x5

    aput v5, v0, v1

    const/4 v1, 0x6

    aput v6, v0, v1

    const/4 v1, 0x7

    aput v6, v0, v1

    const/16 v1, 0x8

    aput v7, v0, v1

    const/16 v1, 0x9

    aput v7, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v1, 0xb

    aput v4, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 76
    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v1, v0, v3

    const/16 v1, 0x11

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 77
    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x22

    aput v3, v0, v1

    const/16 v1, 0x23

    aput v3, v0, v1

    const/16 v1, 0x24

    aput v3, v0, v1

    const/16 v1, 0x25

    aput v3, v0, v1

    const/16 v1, 0x26

    aput v3, v0, v1

    const/16 v1, 0x27

    aput v3, v0, v1

    const/16 v1, 0x28

    aput v3, v0, v1

    const/16 v1, 0x29

    aput v3, v0, v1

    const/16 v1, 0x2a

    aput v3, v0, v1

    const/16 v1, 0x2b

    aput v3, v0, v1

    const/16 v1, 0x2c

    aput v3, v0, v1

    const/16 v1, 0x2d

    aput v3, v0, v1

    const/16 v1, 0x2e

    aput v3, v0, v1

    const/16 v1, 0x2f

    aput v3, v0, v1

    .line 75
    sput-object v0, Lde/innosystec/unrar/unpack/Unpack20;->DBits:[I

    .line 79
    const/16 v0, 0x8

    new-array v0, v0, [I

    aput v4, v0, v5

    const/16 v1, 0x8

    aput v1, v0, v6

    aput v3, v0, v7

    const/16 v1, 0x20

    aput v1, v0, v4

    const/4 v1, 0x5

    const/16 v2, 0x40

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x80

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xc0

    aput v2, v0, v1

    sput-object v0, Lde/innosystec/unrar/unpack/Unpack20;->SDDecode:[I

    .line 81
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lde/innosystec/unrar/unpack/Unpack20;->SDBits:[I

    .line 41
    return-void

    .line 81
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 41
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/Unpack15;-><init>()V

    .line 44
    new-array v0, v1, [Lde/innosystec/unrar/unpack/decode/MultDecode;

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack20;->MD:[Lde/innosystec/unrar/unpack/decode/MultDecode;

    .line 46
    const/16 v0, 0x404

    new-array v0, v0, [B

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpOldTable20:[B

    .line 50
    new-array v0, v1, [Lde/innosystec/unrar/unpack/decode/AudioVariables;

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack20;->AudV:[Lde/innosystec/unrar/unpack/decode/AudioVariables;

    .line 52
    new-instance v0, Lde/innosystec/unrar/unpack/decode/LitDecode;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/decode/LitDecode;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack20;->LD:Lde/innosystec/unrar/unpack/decode/LitDecode;

    .line 54
    new-instance v0, Lde/innosystec/unrar/unpack/decode/DistDecode;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/decode/DistDecode;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack20;->DD:Lde/innosystec/unrar/unpack/decode/DistDecode;

    .line 56
    new-instance v0, Lde/innosystec/unrar/unpack/decode/LowDistDecode;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/decode/LowDistDecode;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack20;->LDD:Lde/innosystec/unrar/unpack/decode/LowDistDecode;

    .line 58
    new-instance v0, Lde/innosystec/unrar/unpack/decode/RepDecode;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/decode/RepDecode;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack20;->RD:Lde/innosystec/unrar/unpack/decode/RepDecode;

    .line 60
    new-instance v0, Lde/innosystec/unrar/unpack/decode/BitDecode;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/decode/BitDecode;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack20;->BD:Lde/innosystec/unrar/unpack/decode/BitDecode;

    .line 41
    return-void
.end method


# virtual methods
.method protected CopyString20(II)V
    .locals 9
    .parameter "Length"
    .parameter "Distance"

    .prologue
    const v8, 0x3fffff

    const v7, 0x3ffed4

    .line 204
    iget-object v3, p0, Lde/innosystec/unrar/unpack/Unpack20;->oldDist:[I

    iget v4, p0, Lde/innosystec/unrar/unpack/Unpack20;->oldDistPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lde/innosystec/unrar/unpack/Unpack20;->oldDistPtr:I

    and-int/lit8 v4, v4, 0x3

    aput p2, v3, v4

    iput p2, p0, Lde/innosystec/unrar/unpack/Unpack20;->lastDist:I

    .line 205
    iput p1, p0, Lde/innosystec/unrar/unpack/Unpack20;->lastLength:I

    .line 206
    iget-wide v3, p0, Lde/innosystec/unrar/unpack/Unpack20;->destUnpSize:J

    int-to-long v5, p1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/Unpack20;->destUnpSize:J

    .line 208
    iget v3, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    sub-int v0, v3, p2

    .line 209
    .local v0, DestPtr:I
    if-ge v0, v7, :cond_2

    .line 210
    iget v3, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    if-ge v3, v7, :cond_2

    .line 211
    iget-object v3, p0, Lde/innosystec/unrar/unpack/Unpack20;->window:[B

    iget v4, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    iget-object v5, p0, Lde/innosystec/unrar/unpack/Unpack20;->window:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0           #DestPtr:I
    .local v1, DestPtr:I
    aget-byte v5, v5, v0

    aput-byte v5, v3, v4

    .line 212
    iget-object v3, p0, Lde/innosystec/unrar/unpack/Unpack20;->window:[B

    iget v4, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    iget-object v5, p0, Lde/innosystec/unrar/unpack/Unpack20;->window:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1           #DestPtr:I
    .restart local v0       #DestPtr:I
    aget-byte v5, v5, v1

    aput-byte v5, v3, v4

    move v1, v0

    .line 213
    .end local v0           #DestPtr:I
    .restart local v1       #DestPtr:I
    :goto_0
    const/4 v3, 0x2

    if-gt p1, v3, :cond_0

    move v0, v1

    .line 223
    .end local v1           #DestPtr:I
    .restart local v0       #DestPtr:I
    :goto_1
    return-void

    .line 214
    .end local v0           #DestPtr:I
    .restart local v1       #DestPtr:I
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 215
    iget-object v3, p0, Lde/innosystec/unrar/unpack/Unpack20;->window:[B

    iget v4, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    iget-object v5, p0, Lde/innosystec/unrar/unpack/Unpack20;->window:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1           #DestPtr:I
    .restart local v0       #DestPtr:I
    aget-byte v5, v5, v1

    aput-byte v5, v3, v4

    move v1, v0

    .end local v0           #DestPtr:I
    .restart local v1       #DestPtr:I
    goto :goto_0

    .line 219
    :cond_1
    iget-object v3, p0, Lde/innosystec/unrar/unpack/Unpack20;->window:[B

    iget v4, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    iget-object v5, p0, Lde/innosystec/unrar/unpack/Unpack20;->window:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1           #DestPtr:I
    .restart local v0       #DestPtr:I
    and-int v6, v1, v8

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 220
    iget v3, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v8

    iput v3, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    :cond_2
    move v1, v0

    .end local v0           #DestPtr:I
    .restart local v1       #DestPtr:I
    move v2, p1

    .line 218
    .end local p1
    .local v2, Length:I
    add-int/lit8 p1, v2, -0x1

    .end local v2           #Length:I
    .restart local p1
    if-nez v2, :cond_1

    move v0, v1

    .end local v1           #DestPtr:I
    .restart local v0       #DestPtr:I
    goto :goto_1
.end method

.method protected DecodeAudio(I)B
    .locals 14
    .parameter "Delta"

    .prologue
    const/16 v13, 0x10

    const/4 v12, 0x0

    const/16 v11, -0x10

    .line 497
    iget-object v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->AudV:[Lde/innosystec/unrar/unpack/decode/AudioVariables;

    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpCurChannel:I

    aget-object v6, v7, v8

    .line 498
    .local v6, v:Lde/innosystec/unrar/unpack/decode/AudioVariables;
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getByteCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->setByteCount(I)V

    .line 499
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getD3()I

    move-result v7

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->setD4(I)V

    .line 500
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getD2()I

    move-result v7

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->setD3(I)V

    .line 501
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getLastDelta()I

    move-result v7

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getD1()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->setD2(I)V

    .line 502
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getLastDelta()I

    move-result v7

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->setD1(I)V

    .line 505
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getLastChar()I

    move-result v7

    mul-int/lit8 v7, v7, 0x8

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK1()I

    move-result v8

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getD1()I

    move-result v9

    mul-int/2addr v8, v9

    add-int v5, v7, v8

    .line 506
    .local v5, PCh:I
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK2()I

    move-result v7

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getD2()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK3()I

    move-result v8

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getD3()I

    move-result v9

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 507
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK4()I

    move-result v7

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getD4()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK5()I

    move-result v8

    iget v9, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpChannelDelta:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 508
    ushr-int/lit8 v7, v5, 0x3

    and-int/lit16 v5, v7, 0xff

    .line 510
    sub-int v0, v5, p1

    .line 512
    .local v0, Ch:I
    int-to-byte v7, p1

    shl-int/lit8 v1, v7, 0x3

    .line 514
    .local v1, D:I
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    aget v8, v7, v12

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v8, v9

    aput v8, v7, v12

    .line 515
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    const/4 v8, 0x1

    aget v9, v7, v8

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getD1()I

    move-result v10

    sub-int v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 516
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    const/4 v8, 0x2

    aget v9, v7, v8

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getD1()I

    move-result v10

    add-int/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 517
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    const/4 v8, 0x3

    aget v9, v7, v8

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getD2()I

    move-result v10

    sub-int v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 518
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    const/4 v8, 0x4

    aget v9, v7, v8

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getD2()I

    move-result v10

    add-int/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 519
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    const/4 v8, 0x5

    aget v9, v7, v8

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getD3()I

    move-result v10

    sub-int v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 520
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    const/4 v8, 0x6

    aget v9, v7, v8

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getD3()I

    move-result v10

    add-int/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 521
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    const/4 v8, 0x7

    aget v9, v7, v8

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getD4()I

    move-result v10

    sub-int v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 522
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    const/16 v8, 0x8

    aget v9, v7, v8

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getD4()I

    move-result v10

    add-int/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 523
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    const/16 v8, 0x9

    aget v9, v7, v8

    iget v10, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpChannelDelta:I

    sub-int v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 524
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    const/16 v8, 0xa

    aget v9, v7, v8

    iget v10, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpChannelDelta:I

    add-int/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 526
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getLastChar()I

    move-result v7

    sub-int v7, v0, v7

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->setLastDelta(I)V

    .line 527
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getLastDelta()I

    move-result v7

    iput v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpChannelDelta:I

    .line 528
    invoke-virtual {v6, v0}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->setLastChar(I)V

    .line 530
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getByteCount()I

    move-result v7

    and-int/lit8 v7, v7, 0x1f

    if-nez v7, :cond_0

    .line 531
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    aget v3, v7, v12

    .local v3, MinDif:I
    const/4 v4, 0x0

    .line 532
    .local v4, NumMinDif:I
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    aput v12, v7, v12

    .line 533
    const/4 v2, 0x1

    .local v2, I:I
    :goto_0
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    array-length v7, v7

    if-lt v2, v7, :cond_1

    .line 540
    packed-switch v4, :pswitch_data_0

    .line 593
    .end local v2           #I:I
    .end local v3           #MinDif:I
    .end local v4           #NumMinDif:I
    :cond_0
    :goto_1
    int-to-byte v7, v0

    return v7

    .line 534
    .restart local v2       #I:I
    .restart local v3       #MinDif:I
    .restart local v4       #NumMinDif:I
    :cond_1
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    aget v7, v7, v2

    if-ge v7, v3, :cond_2

    .line 535
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    aget v3, v7, v2

    .line 536
    move v4, v2

    .line 538
    :cond_2
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v7

    aput v12, v7, v2

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 542
    :pswitch_0
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK1()I

    move-result v7

    if-lt v7, v11, :cond_0

    .line 543
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK1()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->setK1(I)V

    goto :goto_1

    .line 547
    :pswitch_1
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK1()I

    move-result v7

    if-ge v7, v13, :cond_0

    .line 548
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK1()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->setK1(I)V

    goto :goto_1

    .line 552
    :pswitch_2
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK2()I

    move-result v7

    if-lt v7, v11, :cond_0

    .line 553
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK2()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->setK2(I)V

    goto :goto_1

    .line 557
    :pswitch_3
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK2()I

    move-result v7

    if-ge v7, v13, :cond_0

    .line 558
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK2()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->setK2(I)V

    goto :goto_1

    .line 562
    :pswitch_4
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK3()I

    move-result v7

    if-lt v7, v11, :cond_0

    .line 563
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK3()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->setK3(I)V

    goto :goto_1

    .line 567
    :pswitch_5
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK3()I

    move-result v7

    if-ge v7, v13, :cond_0

    .line 568
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK3()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->setK3(I)V

    goto :goto_1

    .line 572
    :pswitch_6
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK4()I

    move-result v7

    if-lt v7, v11, :cond_0

    .line 573
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK4()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->setK4(I)V

    goto/16 :goto_1

    .line 577
    :pswitch_7
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK4()I

    move-result v7

    if-ge v7, v13, :cond_0

    .line 578
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK4()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->setK4(I)V

    goto/16 :goto_1

    .line 582
    :pswitch_8
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK5()I

    move-result v7

    if-lt v7, v11, :cond_0

    .line 583
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK5()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->setK5(I)V

    goto/16 :goto_1

    .line 587
    :pswitch_9
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK5()I

    move-result v7

    if-ge v7, v13, :cond_0

    .line 588
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->getK5()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/decode/AudioVariables;->setK5(I)V

    goto/16 :goto_1

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected ReadLastTables()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    .line 482
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack20;->readTop:I

    iget v1, p0, Lde/innosystec/unrar/unpack/Unpack20;->inAddr:I

    add-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_0

    .line 483
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpAudioBlock:I

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack20;->MD:[Lde/innosystec/unrar/unpack/decode/MultDecode;

    iget v1, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpCurChannel:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/Unpack20;->decodeNumber(Lde/innosystec/unrar/unpack/decode/Decode;)I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 485
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->ReadTables20()Z

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack20;->LD:Lde/innosystec/unrar/unpack/decode/LitDecode;

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/Unpack20;->decodeNumber(Lde/innosystec/unrar/unpack/decode/Decode;)I

    move-result v0

    const/16 v1, 0x10d

    if-ne v0, v1, :cond_0

    .line 489
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->ReadTables20()Z

    goto :goto_0
.end method

.method protected ReadTables20()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    .line 387
    const/16 v10, 0x13

    new-array v1, v10, [B

    .line 388
    .local v1, BitLength:[B
    const/16 v10, 0x404

    new-array v7, v10, [B

    .line 390
    .local v7, Table:[B
    iget v10, p0, Lde/innosystec/unrar/unpack/Unpack20;->inAddr:I

    iget v11, p0, Lde/innosystec/unrar/unpack/Unpack20;->readTop:I

    add-int/lit8 v11, v11, -0x19

    if-le v10, v11, :cond_0

    .line 391
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->unpReadBuf()Z

    move-result v10

    if-nez v10, :cond_0

    .line 392
    const/4 v10, 0x0

    .line 465
    :goto_0
    return v10

    .line 395
    :cond_0
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->getbits()I

    move-result v0

    .line 396
    .local v0, BitField:I
    const v10, 0x8000

    and-int/2addr v10, v0

    iput v10, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpAudioBlock:I

    .line 398
    and-int/lit16 v10, v0, 0x4000

    if-nez v10, :cond_1

    .line 400
    iget-object v10, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpOldTable20:[B

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([BB)V

    .line 402
    :cond_1
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lde/innosystec/unrar/unpack/Unpack20;->addbits(I)V

    .line 404
    iget v10, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpAudioBlock:I

    if-eqz v10, :cond_4

    .line 405
    ushr-int/lit8 v10, v0, 0xc

    and-int/lit8 v10, v10, 0x3

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpChannels:I

    .line 406
    iget v10, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpCurChannel:I

    iget v11, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpChannels:I

    if-lt v10, v11, :cond_2

    .line 407
    const/4 v10, 0x0

    iput v10, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpCurChannel:I

    .line 409
    :cond_2
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lde/innosystec/unrar/unpack/Unpack20;->addbits(I)V

    .line 410
    iget v10, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpChannels:I

    mul-int/lit16 v8, v10, 0x101

    .line 414
    .local v8, TableSize:I
    :goto_1
    const/4 v2, 0x0

    .local v2, I:I
    :goto_2
    const/16 v10, 0x13

    if-lt v2, v10, :cond_5

    .line 418
    const/4 v10, 0x0

    iget-object v11, p0, Lde/innosystec/unrar/unpack/Unpack20;->BD:Lde/innosystec/unrar/unpack/decode/BitDecode;

    const/16 v12, 0x13

    invoke-virtual {p0, v1, v10, v11, v12}, Lde/innosystec/unrar/unpack/Unpack20;->makeDecodeTables([BILde/innosystec/unrar/unpack/decode/Decode;I)V

    .line 419
    const/4 v2, 0x0

    .line 420
    :cond_3
    :goto_3
    if-lt v2, v8, :cond_6

    .line 449
    iget v10, p0, Lde/innosystec/unrar/unpack/Unpack20;->inAddr:I

    iget v11, p0, Lde/innosystec/unrar/unpack/Unpack20;->readTop:I

    if-le v10, v11, :cond_d

    .line 450
    const/4 v10, 0x1

    goto :goto_0

    .line 412
    .end local v2           #I:I
    .end local v8           #TableSize:I
    :cond_4
    const/16 v8, 0x176

    .restart local v8       #TableSize:I
    goto :goto_1

    .line 415
    .restart local v2       #I:I
    :cond_5
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->getbits()I

    move-result v10

    ushr-int/lit8 v10, v10, 0xc

    int-to-byte v10, v10

    aput-byte v10, v1, v2

    .line 416
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lde/innosystec/unrar/unpack/Unpack20;->addbits(I)V

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 421
    :cond_6
    iget v10, p0, Lde/innosystec/unrar/unpack/Unpack20;->inAddr:I

    iget v11, p0, Lde/innosystec/unrar/unpack/Unpack20;->readTop:I

    add-int/lit8 v11, v11, -0x5

    if-le v10, v11, :cond_7

    .line 422
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->unpReadBuf()Z

    move-result v10

    if-nez v10, :cond_7

    .line 423
    const/4 v10, 0x0

    goto :goto_0

    .line 426
    :cond_7
    iget-object v10, p0, Lde/innosystec/unrar/unpack/Unpack20;->BD:Lde/innosystec/unrar/unpack/decode/BitDecode;

    invoke-virtual {p0, v10}, Lde/innosystec/unrar/unpack/Unpack20;->decodeNumber(Lde/innosystec/unrar/unpack/decode/Decode;)I

    move-result v6

    .line 427
    .local v6, Number:I
    const/16 v10, 0x10

    if-ge v6, v10, :cond_8

    .line 428
    iget-object v10, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpOldTable20:[B

    aget-byte v10, v10, v2

    add-int/2addr v10, v6

    and-int/lit8 v10, v10, 0xf

    int-to-byte v10, v10

    aput-byte v10, v7, v2

    .line 429
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 430
    :cond_8
    const/16 v10, 0x10

    if-ne v6, v10, :cond_9

    .line 431
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->getbits()I

    move-result v10

    ushr-int/lit8 v10, v10, 0xe

    add-int/lit8 v4, v10, 0x3

    .line 432
    .local v4, N:I
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lde/innosystec/unrar/unpack/Unpack20;->addbits(I)V

    move v5, v4

    .line 433
    .end local v4           #N:I
    .local v5, N:I
    :goto_4
    add-int/lit8 v4, v5, -0x1

    .end local v5           #N:I
    .restart local v4       #N:I
    if-lez v5, :cond_3

    if-ge v2, v8, :cond_3

    .line 434
    add-int/lit8 v10, v2, -0x1

    aget-byte v10, v7, v10

    aput-byte v10, v7, v2

    .line 435
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4           #N:I
    .restart local v5       #N:I
    goto :goto_4

    .line 438
    .end local v5           #N:I
    :cond_9
    const/16 v10, 0x11

    if-ne v6, v10, :cond_b

    .line 439
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->getbits()I

    move-result v10

    ushr-int/lit8 v10, v10, 0xd

    add-int/lit8 v4, v10, 0x3

    .line 440
    .restart local v4       #N:I
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lde/innosystec/unrar/unpack/Unpack20;->addbits(I)V

    move v3, v2

    .end local v2           #I:I
    .local v3, I:I
    move v5, v4

    .line 445
    .end local v4           #N:I
    .restart local v5       #N:I
    :goto_5
    add-int/lit8 v4, v5, -0x1

    .end local v5           #N:I
    .restart local v4       #N:I
    if-lez v5, :cond_a

    if-lt v3, v8, :cond_c

    :cond_a
    move v2, v3

    .end local v3           #I:I
    .restart local v2       #I:I
    goto :goto_3

    .line 442
    .end local v4           #N:I
    :cond_b
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->getbits()I

    move-result v10

    ushr-int/lit8 v10, v10, 0x9

    add-int/lit8 v4, v10, 0xb

    .line 443
    .restart local v4       #N:I
    const/4 v10, 0x7

    invoke-virtual {p0, v10}, Lde/innosystec/unrar/unpack/Unpack20;->addbits(I)V

    move v3, v2

    .end local v2           #I:I
    .restart local v3       #I:I
    move v5, v4

    .line 445
    .end local v4           #N:I
    .restart local v5       #N:I
    goto :goto_5

    .line 446
    .end local v5           #N:I
    .restart local v4       #N:I
    :cond_c
    add-int/lit8 v2, v3, 0x1

    .end local v3           #I:I
    .restart local v2       #I:I
    const/4 v10, 0x0

    aput-byte v10, v7, v3

    move v3, v2

    .end local v2           #I:I
    .restart local v3       #I:I
    move v5, v4

    .end local v4           #N:I
    .restart local v5       #N:I
    goto :goto_5

    .line 452
    .end local v3           #I:I
    .end local v5           #N:I
    .end local v6           #Number:I
    .restart local v2       #I:I
    :cond_d
    iget v10, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpAudioBlock:I

    if-eqz v10, :cond_f

    .line 453
    const/4 v2, 0x0

    :goto_6
    iget v10, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpChannels:I

    if-lt v2, v10, :cond_e

    .line 462
    :goto_7
    const/4 v9, 0x0

    .local v9, i:I
    :goto_8
    iget-object v10, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpOldTable20:[B

    array-length v10, v10

    if-lt v9, v10, :cond_10

    .line 465
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 454
    .end local v9           #i:I
    :cond_e
    mul-int/lit16 v10, v2, 0x101

    iget-object v11, p0, Lde/innosystec/unrar/unpack/Unpack20;->MD:[Lde/innosystec/unrar/unpack/decode/MultDecode;

    aget-object v11, v11, v2

    const/16 v12, 0x101

    invoke-virtual {p0, v7, v10, v11, v12}, Lde/innosystec/unrar/unpack/Unpack20;->makeDecodeTables([BILde/innosystec/unrar/unpack/decode/Decode;I)V

    .line 453
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 456
    :cond_f
    const/4 v10, 0x0

    iget-object v11, p0, Lde/innosystec/unrar/unpack/Unpack20;->LD:Lde/innosystec/unrar/unpack/decode/LitDecode;

    const/16 v12, 0x12a

    invoke-virtual {p0, v7, v10, v11, v12}, Lde/innosystec/unrar/unpack/Unpack20;->makeDecodeTables([BILde/innosystec/unrar/unpack/decode/Decode;I)V

    .line 457
    const/16 v10, 0x12a

    iget-object v11, p0, Lde/innosystec/unrar/unpack/Unpack20;->DD:Lde/innosystec/unrar/unpack/decode/DistDecode;

    const/16 v12, 0x30

    invoke-virtual {p0, v7, v10, v11, v12}, Lde/innosystec/unrar/unpack/Unpack20;->makeDecodeTables([BILde/innosystec/unrar/unpack/decode/Decode;I)V

    .line 458
    const/16 v10, 0x15a

    iget-object v11, p0, Lde/innosystec/unrar/unpack/Unpack20;->RD:Lde/innosystec/unrar/unpack/decode/RepDecode;

    .line 459
    const/16 v12, 0x1c

    .line 458
    invoke-virtual {p0, v7, v10, v11, v12}, Lde/innosystec/unrar/unpack/Unpack20;->makeDecodeTables([BILde/innosystec/unrar/unpack/decode/Decode;I)V

    goto :goto_7

    .line 463
    .restart local v9       #i:I
    :cond_10
    iget-object v10, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpOldTable20:[B

    aget-byte v11, v7, v9

    aput-byte v11, v10, v9

    .line 462
    add-int/lit8 v9, v9, 0x1

    goto :goto_8
.end method

.method protected decodeNumber(Lde/innosystec/unrar/unpack/decode/Decode;)I
    .locals 8
    .parameter "dec"

    .prologue
    .line 263
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->getbits()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    int-to-long v1, v5

    .line 323
    .local v1, bitField:J
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/decode/Decode;->getDecodeLen()[I

    move-result-object v4

    .line 324
    .local v4, decodeLen:[I
    const/16 v5, 0x8

    aget v5, v4, v5

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_8

    .line 325
    const/4 v5, 0x4

    aget v5, v4, v5

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_4

    .line 326
    const/4 v5, 0x2

    aget v5, v4, v5

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_2

    .line 327
    const/4 v5, 0x1

    aget v5, v4, v5

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_1

    .line 328
    const/4 v3, 0x1

    .line 376
    .local v3, bits:I
    :goto_0
    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/Unpack20;->addbits(I)V

    .line 377
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/decode/Decode;->getDecodePos()[I

    move-result-object v5

    aget v5, v5, v3

    .line 378
    long-to-int v6, v1

    add-int/lit8 v7, v3, -0x1

    aget v7, v4, v7

    sub-int/2addr v6, v7

    rsub-int/lit8 v7, v3, 0x10

    ushr-int/2addr v6, v7

    .line 377
    add-int v0, v5, v6

    .line 379
    .local v0, N:I
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/decode/Decode;->getMaxNum()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 382
    :cond_0
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/decode/Decode;->getDecodeNum()[I

    move-result-object v5

    aget v5, v5, v0

    return v5

    .line 330
    .end local v0           #N:I
    .end local v3           #bits:I
    :cond_1
    const/4 v3, 0x2

    .restart local v3       #bits:I
    goto :goto_0

    .line 333
    .end local v3           #bits:I
    :cond_2
    const/4 v5, 0x3

    aget v5, v4, v5

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_3

    .line 334
    const/4 v3, 0x3

    .restart local v3       #bits:I
    goto :goto_0

    .line 336
    .end local v3           #bits:I
    :cond_3
    const/4 v3, 0x4

    .restart local v3       #bits:I
    goto :goto_0

    .line 340
    .end local v3           #bits:I
    :cond_4
    const/4 v5, 0x6

    aget v5, v4, v5

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_6

    .line 341
    const/4 v5, 0x5

    aget v5, v4, v5

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_5

    .line 342
    const/4 v3, 0x5

    .restart local v3       #bits:I
    goto :goto_0

    .line 344
    .end local v3           #bits:I
    :cond_5
    const/4 v3, 0x6

    .restart local v3       #bits:I
    goto :goto_0

    .line 346
    .end local v3           #bits:I
    :cond_6
    const/4 v5, 0x7

    aget v5, v4, v5

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_7

    .line 347
    const/4 v3, 0x7

    .restart local v3       #bits:I
    goto :goto_0

    .line 349
    .end local v3           #bits:I
    :cond_7
    const/16 v3, 0x8

    .restart local v3       #bits:I
    goto :goto_0

    .line 354
    .end local v3           #bits:I
    :cond_8
    const/16 v5, 0xc

    aget v5, v4, v5

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_c

    .line 355
    const/16 v5, 0xa

    aget v5, v4, v5

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_a

    .line 356
    const/16 v5, 0x9

    aget v5, v4, v5

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_9

    .line 357
    const/16 v3, 0x9

    .restart local v3       #bits:I
    goto :goto_0

    .line 359
    .end local v3           #bits:I
    :cond_9
    const/16 v3, 0xa

    .restart local v3       #bits:I
    goto :goto_0

    .line 360
    .end local v3           #bits:I
    :cond_a
    const/16 v5, 0xb

    aget v5, v4, v5

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_b

    .line 361
    const/16 v3, 0xb

    .restart local v3       #bits:I
    goto :goto_0

    .line 363
    .end local v3           #bits:I
    :cond_b
    const/16 v3, 0xc

    .restart local v3       #bits:I
    goto :goto_0

    .line 365
    .end local v3           #bits:I
    :cond_c
    const/16 v5, 0xe

    aget v5, v4, v5

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_e

    .line 366
    const/16 v5, 0xd

    aget v5, v4, v5

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_d

    .line 367
    const/16 v3, 0xd

    .restart local v3       #bits:I
    goto/16 :goto_0

    .line 369
    .end local v3           #bits:I
    :cond_d
    const/16 v3, 0xe

    .restart local v3       #bits:I
    goto/16 :goto_0

    .line 372
    .end local v3           #bits:I
    :cond_e
    const/16 v3, 0xf

    .restart local v3       #bits:I
    goto/16 :goto_0
.end method

.method protected makeDecodeTables([BILde/innosystec/unrar/unpack/decode/Decode;I)V
    .locals 11
    .parameter "lenTab"
    .parameter "offset"
    .parameter "dec"
    .parameter "size"

    .prologue
    .line 228
    const/16 v7, 0x10

    new-array v5, v7, [I

    .line 229
    .local v5, lenCount:[I
    const/16 v7, 0x10

    new-array v6, v7, [I

    .line 233
    .local v6, tmpPos:[I
    const/4 v7, 0x0

    invoke-static {v5, v7}, Ljava/util/Arrays;->fill([II)V

    .line 235
    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/decode/Decode;->getDecodeNum()[I

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    .line 237
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, p4, :cond_0

    .line 240
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v5, v7

    .line 241
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/decode/Decode;->getDecodePos()[I

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/decode/Decode;->getDecodeLen()[I

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    const-wide/16 v2, 0x0

    .local v2, N:J
    const/4 v4, 0x1

    :goto_1
    const/16 v7, 0x10

    if-lt v4, v7, :cond_1

    .line 252
    const/4 v4, 0x0

    :goto_2
    if-lt v4, p4, :cond_3

    .line 257
    invoke-virtual {p3, p4}, Lde/innosystec/unrar/unpack/decode/Decode;->setMaxNum(I)V

    .line 258
    return-void

    .line 238
    .end local v2           #N:J
    :cond_0
    add-int v7, p2, v4

    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0xf

    aget v8, v5, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v5, v7

    .line 237
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 242
    .restart local v2       #N:J
    :cond_1
    const-wide/16 v7, 0x2

    aget v9, v5, v4

    int-to-long v9, v9

    add-long/2addr v9, v2

    mul-long v2, v7, v9

    .line 243
    rsub-int/lit8 v7, v4, 0xf

    shl-long v0, v2, v7

    .line 244
    .local v0, M:J
    const-wide/32 v7, 0xffff

    cmp-long v7, v0, v7

    if-lez v7, :cond_2

    .line 245
    const-wide/32 v0, 0xffff

    .line 247
    :cond_2
    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/decode/Decode;->getDecodeLen()[I

    move-result-object v7

    long-to-int v8, v0

    aput v8, v7, v4

    .line 248
    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/decode/Decode;->getDecodePos()[I

    move-result-object v7

    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/decode/Decode;->getDecodePos()[I

    move-result-object v8

    add-int/lit8 v9, v4, -0x1

    aget v8, v8, v9

    .line 249
    add-int/lit8 v9, v4, -0x1

    aget v9, v5, v9

    add-int/2addr v8, v9

    aput v8, v7, v4

    .line 248
    aput v8, v6, v4

    .line 241
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 253
    .end local v0           #M:J
    :cond_3
    add-int v7, p2, v4

    aget-byte v7, p1, v7

    if-eqz v7, :cond_4

    .line 254
    invoke-virtual {p3}, Lde/innosystec/unrar/unpack/decode/Decode;->getDecodeNum()[I

    move-result-object v7

    add-int v8, p2, v4

    aget-byte v8, p1, v8

    and-int/lit8 v8, v8, 0xf

    aget v9, v6, v8

    add-int/lit8 v10, v9, 0x1

    aput v10, v6, v8

    aput v4, v7, v9

    .line 252
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method protected unpInitData20(Z)V
    .locals 3
    .parameter "Solid"

    .prologue
    const/4 v2, 0x0

    .line 470
    if-nez p1, :cond_0

    .line 471
    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpCurChannel:I

    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpChannelDelta:I

    .line 472
    const/4 v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpChannels:I

    .line 474
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack20;->AudV:[Lde/innosystec/unrar/unpack/decode/AudioVariables;

    new-instance v1, Lde/innosystec/unrar/unpack/decode/AudioVariables;

    invoke-direct {v1}, Lde/innosystec/unrar/unpack/decode/AudioVariables;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpOldTable20:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 478
    :cond_0
    return-void
.end method

.method protected unpack20(Z)V
    .locals 11
    .parameter "solid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    .line 88
    iget-boolean v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->suspended:Z

    if-eqz v7, :cond_3

    .line 89
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->wrPtr:I

    iput v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    .line 103
    :cond_0
    :goto_0
    iget-wide v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->destUnpSize:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_5

    .line 197
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->ReadLastTables()V

    .line 198
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->oldUnpWriteBuf()V

    .line 200
    :cond_2
    return-void

    .line 91
    :cond_3
    invoke-virtual {p0, p1}, Lde/innosystec/unrar/unpack/Unpack20;->unpInitData(Z)V

    .line 92
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->unpReadBuf()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 95
    if-nez p1, :cond_4

    .line 96
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->ReadTables20()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 100
    :cond_4
    iget-wide v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->destUnpSize:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->destUnpSize:J

    goto :goto_0

    .line 104
    :cond_5
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    const v8, 0x3fffff

    and-int/2addr v7, v8

    iput v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    .line 106
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->inAddr:I

    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack20;->readTop:I

    add-int/lit8 v8, v8, -0x1e

    if-le v7, v8, :cond_6

    .line 107
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->unpReadBuf()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 109
    :cond_6
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->wrPtr:I

    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    sub-int/2addr v7, v8

    const v8, 0x3fffff

    and-int/2addr v7, v8

    const/16 v8, 0x10e

    if-ge v7, v8, :cond_7

    .line 110
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->wrPtr:I

    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    if-eq v7, v8, :cond_7

    .line 111
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->oldUnpWriteBuf()V

    .line 112
    iget-boolean v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->suspended:Z

    if-nez v7, :cond_2

    .line 115
    :cond_7
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpAudioBlock:I

    if-eqz v7, :cond_a

    .line 116
    iget-object v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->MD:[Lde/innosystec/unrar/unpack/decode/MultDecode;

    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpCurChannel:I

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Lde/innosystec/unrar/unpack/Unpack20;->decodeNumber(Lde/innosystec/unrar/unpack/decode/Decode;)I

    move-result v0

    .line 118
    .local v0, AudioNumber:I
    const/16 v7, 0x100

    if-ne v0, v7, :cond_8

    .line 119
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->ReadTables20()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 123
    :cond_8
    iget-object v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->window:[B

    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/Unpack20;->DecodeAudio(I)B

    move-result v9

    aput-byte v9, v7, v8

    .line 124
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpCurChannel:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpCurChannel:I

    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpChannels:I

    if-ne v7, v8, :cond_9

    .line 125
    const/4 v7, 0x0

    iput v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->UnpCurChannel:I

    .line 126
    :cond_9
    iget-wide v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->destUnpSize:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->destUnpSize:J

    goto/16 :goto_0

    .line 130
    .end local v0           #AudioNumber:I
    :cond_a
    iget-object v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->LD:Lde/innosystec/unrar/unpack/decode/LitDecode;

    invoke-virtual {p0, v7}, Lde/innosystec/unrar/unpack/Unpack20;->decodeNumber(Lde/innosystec/unrar/unpack/decode/Decode;)I

    move-result v6

    .line 131
    .local v6, Number:I
    const/16 v7, 0x100

    if-ge v6, v7, :cond_b

    .line 132
    iget-object v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->window:[B

    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lde/innosystec/unrar/unpack/Unpack20;->unpPtr:I

    int-to-byte v9, v6

    aput-byte v9, v7, v8

    .line 133
    iget-wide v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->destUnpSize:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->destUnpSize:J

    goto/16 :goto_0

    .line 136
    :cond_b
    const/16 v7, 0x10d

    if-le v6, v7, :cond_f

    .line 137
    sget-object v7, Lde/innosystec/unrar/unpack/Unpack20;->LDecode:[I

    add-int/lit16 v6, v6, -0x10e

    aget v7, v7, v6

    add-int/lit8 v4, v7, 0x3

    .line 138
    .local v4, Length:I
    sget-object v7, Lde/innosystec/unrar/unpack/Unpack20;->LBits:[B

    aget-byte v1, v7, v6

    .local v1, Bits:I
    if-lez v1, :cond_c

    .line 139
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->getbits()I

    move-result v7

    rsub-int/lit8 v8, v1, 0x10

    ushr-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 140
    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/Unpack20;->addbits(I)V

    .line 143
    :cond_c
    iget-object v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->DD:Lde/innosystec/unrar/unpack/decode/DistDecode;

    invoke-virtual {p0, v7}, Lde/innosystec/unrar/unpack/Unpack20;->decodeNumber(Lde/innosystec/unrar/unpack/decode/Decode;)I

    move-result v2

    .line 144
    .local v2, DistNumber:I
    sget-object v7, Lde/innosystec/unrar/unpack/Unpack20;->DDecode:[I

    aget v7, v7, v2

    add-int/lit8 v3, v7, 0x1

    .line 145
    .local v3, Distance:I
    sget-object v7, Lde/innosystec/unrar/unpack/Unpack20;->DBits:[I

    aget v1, v7, v2

    if-lez v1, :cond_d

    .line 146
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->getbits()I

    move-result v7

    rsub-int/lit8 v8, v1, 0x10

    ushr-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 147
    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/Unpack20;->addbits(I)V

    .line 150
    :cond_d
    const/16 v7, 0x2000

    if-lt v3, v7, :cond_e

    .line 151
    add-int/lit8 v4, v4, 0x1

    .line 152
    int-to-long v7, v3

    const-wide/32 v9, 0x40000

    cmp-long v7, v7, v9

    if-ltz v7, :cond_e

    .line 153
    add-int/lit8 v4, v4, 0x1

    .line 156
    :cond_e
    invoke-virtual {p0, v4, v3}, Lde/innosystec/unrar/unpack/Unpack20;->CopyString20(II)V

    goto/16 :goto_0

    .line 159
    .end local v1           #Bits:I
    .end local v2           #DistNumber:I
    .end local v3           #Distance:I
    .end local v4           #Length:I
    :cond_f
    const/16 v7, 0x10d

    if-ne v6, v7, :cond_10

    .line 160
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->ReadTables20()Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_1

    .line 164
    :cond_10
    const/16 v7, 0x100

    if-ne v6, v7, :cond_11

    .line 165
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->lastLength:I

    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack20;->lastDist:I

    invoke-virtual {p0, v7, v8}, Lde/innosystec/unrar/unpack/Unpack20;->CopyString20(II)V

    goto/16 :goto_0

    .line 168
    :cond_11
    const/16 v7, 0x105

    if-ge v6, v7, :cond_14

    .line 169
    iget-object v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->oldDist:[I

    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack20;->oldDistPtr:I

    add-int/lit16 v9, v6, -0x100

    sub-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x3

    aget v3, v7, v8

    .line 170
    .restart local v3       #Distance:I
    iget-object v7, p0, Lde/innosystec/unrar/unpack/Unpack20;->RD:Lde/innosystec/unrar/unpack/decode/RepDecode;

    invoke-virtual {p0, v7}, Lde/innosystec/unrar/unpack/Unpack20;->decodeNumber(Lde/innosystec/unrar/unpack/decode/Decode;)I

    move-result v5

    .line 171
    .local v5, LengthNumber:I
    sget-object v7, Lde/innosystec/unrar/unpack/Unpack20;->LDecode:[I

    aget v7, v7, v5

    add-int/lit8 v4, v7, 0x2

    .line 172
    .restart local v4       #Length:I
    sget-object v7, Lde/innosystec/unrar/unpack/Unpack20;->LBits:[B

    aget-byte v1, v7, v5

    .restart local v1       #Bits:I
    if-lez v1, :cond_12

    .line 173
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->getbits()I

    move-result v7

    rsub-int/lit8 v8, v1, 0x10

    ushr-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 174
    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/Unpack20;->addbits(I)V

    .line 176
    :cond_12
    const/16 v7, 0x101

    if-lt v3, v7, :cond_13

    .line 177
    add-int/lit8 v4, v4, 0x1

    .line 178
    const/16 v7, 0x2000

    if-lt v3, v7, :cond_13

    .line 179
    add-int/lit8 v4, v4, 0x1

    .line 180
    const/high16 v7, 0x4

    if-lt v3, v7, :cond_13

    .line 181
    add-int/lit8 v4, v4, 0x1

    .line 184
    :cond_13
    invoke-virtual {p0, v4, v3}, Lde/innosystec/unrar/unpack/Unpack20;->CopyString20(II)V

    goto/16 :goto_0

    .line 187
    .end local v1           #Bits:I
    .end local v3           #Distance:I
    .end local v4           #Length:I
    .end local v5           #LengthNumber:I
    :cond_14
    const/16 v7, 0x10e

    if-ge v6, v7, :cond_0

    .line 188
    sget-object v7, Lde/innosystec/unrar/unpack/Unpack20;->SDDecode:[I

    add-int/lit16 v6, v6, -0x105

    aget v7, v7, v6

    add-int/lit8 v3, v7, 0x1

    .line 189
    .restart local v3       #Distance:I
    sget-object v7, Lde/innosystec/unrar/unpack/Unpack20;->SDBits:[I

    aget v1, v7, v6

    .restart local v1       #Bits:I
    if-lez v1, :cond_15

    .line 190
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack20;->getbits()I

    move-result v7

    rsub-int/lit8 v8, v1, 0x10

    ushr-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 191
    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/Unpack20;->addbits(I)V

    .line 193
    :cond_15
    const/4 v7, 0x2

    invoke-virtual {p0, v7, v3}, Lde/innosystec/unrar/unpack/Unpack20;->CopyString20(II)V

    goto/16 :goto_0
.end method
