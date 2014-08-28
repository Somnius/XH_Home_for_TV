.class public abstract Lde/innosystec/unrar/unpack/Unpack15;
.super Lde/innosystec/unrar/unpack/vm/BitInput;
.source "Unpack15.java"


# static fields
.field private static DecHf0:[I = null

.field private static DecHf1:[I = null

.field private static DecHf2:[I = null

.field private static DecHf3:[I = null

.field private static DecHf4:[I = null

.field private static DecL1:[I = null

.field private static DecL2:[I = null

.field private static PosHf0:[I = null

.field private static PosHf1:[I = null

.field private static PosHf2:[I = null

.field private static PosHf3:[I = null

.field private static PosHf4:[I = null

.field private static PosL1:[I = null

.field private static PosL2:[I = null

.field private static final STARTHF0:I = 0x4

.field private static final STARTHF1:I = 0x5

.field private static final STARTHF2:I = 0x5

.field private static final STARTHF3:I = 0x6

.field private static final STARTHF4:I = 0x8

.field private static final STARTL1:I = 0x2

.field private static final STARTL2:I = 0x3

.field static ShortLen1:[I

.field static ShortLen2:[I

.field static ShortXor1:[I

.field static ShortXor2:[I


# instance fields
.field protected AvrLn1:I

.field protected AvrLn2:I

.field protected AvrLn3:I

.field protected AvrPlc:I

.field protected AvrPlcB:I

.field protected Buf60:I

.field protected ChSet:[I

.field protected ChSetA:[I

.field protected ChSetB:[I

.field protected ChSetC:[I

.field protected FlagBuf:I

.field protected FlagsCnt:I

.field protected LCount:I

.field protected MaxDist3:I

.field protected NToPl:[I

.field protected NToPlB:[I

.field protected NToPlC:[I

.field protected Nhfb:I

.field protected Nlzb:I

.field protected NumHuf:I

.field protected Place:[I

.field protected PlaceA:[I

.field protected PlaceB:[I

.field protected PlaceC:[I

.field protected StMode:I

.field protected destUnpSize:J

.field protected lastDist:I

.field protected lastLength:I

.field protected oldDist:[I

.field protected oldDistPtr:I

.field protected readBorder:I

.field protected readTop:I

.field protected suspended:Z

.field protected unpAllBuf:Z

.field protected unpIO:Lde/innosystec/unrar/unpack/ComprDataIO;

.field protected unpPtr:I

.field protected unpSomeRead:Z

.field protected window:[B

.field protected wrPtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, 0x6

    const/4 v3, 0x4

    .line 77
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lde/innosystec/unrar/unpack/Unpack15;->DecL1:[I

    .line 80
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x3

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v1, v0, v3

    aput v7, v0, v7

    aput v5, v0, v4

    const/16 v1, 0xb

    aput v1, v0, v5

    const/16 v1, 0x10

    aput v1, v0, v6

    const/16 v1, 0x9

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x20

    aput v2, v0, v1

    sput-object v0, Lde/innosystec/unrar/unpack/Unpack15;->PosL1:[I

    .line 84
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lde/innosystec/unrar/unpack/Unpack15;->DecL2:[I

    .line 87
    const/16 v0, 0xd

    new-array v0, v0, [I

    aput v7, v0, v3

    aput v5, v0, v7

    const/16 v1, 0x9

    aput v1, v0, v4

    const/16 v1, 0xd

    aput v1, v0, v5

    const/16 v1, 0x12

    aput v1, v0, v6

    const/16 v1, 0x9

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x24

    aput v2, v0, v1

    sput-object v0, Lde/innosystec/unrar/unpack/Unpack15;->PosL2:[I

    .line 91
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lde/innosystec/unrar/unpack/Unpack15;->DecHf0:[I

    .line 94
    const/16 v0, 0xd

    new-array v0, v0, [I

    aput v6, v0, v7

    const/16 v1, 0x10

    aput v1, v0, v4

    const/16 v1, 0x18

    aput v1, v0, v5

    const/16 v1, 0x21

    aput v1, v0, v6

    const/16 v1, 0x9

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 95
    const/16 v2, 0x21

    aput v2, v0, v1

    .line 94
    sput-object v0, Lde/innosystec/unrar/unpack/Unpack15;->PosHf0:[I

    .line 99
    new-array v0, v6, [I

    fill-array-data v0, :array_3

    sput-object v0, Lde/innosystec/unrar/unpack/Unpack15;->DecHf1:[I

    .line 102
    const/16 v0, 0xd

    new-array v0, v0, [I

    aput v3, v0, v4

    const/16 v1, 0x2c

    aput v1, v0, v5

    const/16 v1, 0x3c

    aput v1, v0, v6

    const/16 v1, 0x9

    const/16 v2, 0x4c

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x50

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x50

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 103
    const/16 v2, 0x7f

    aput v2, v0, v1

    .line 102
    sput-object v0, Lde/innosystec/unrar/unpack/Unpack15;->PosHf1:[I

    .line 107
    new-array v0, v6, [I

    fill-array-data v0, :array_4

    sput-object v0, Lde/innosystec/unrar/unpack/Unpack15;->DecHf2:[I

    .line 110
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x2

    aput v1, v0, v4

    aput v5, v0, v5

    const/16 v1, 0x35

    aput v1, v0, v6

    const/16 v1, 0x9

    const/16 v2, 0x75

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xe9

    aput v2, v0, v1

    sput-object v0, Lde/innosystec/unrar/unpack/Unpack15;->PosHf2:[I

    .line 114
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Lde/innosystec/unrar/unpack/Unpack15;->DecHf3:[I

    .line 117
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x2

    aput v1, v0, v5

    const/16 v1, 0x10

    aput v1, v0, v6

    const/16 v1, 0x9

    const/16 v2, 0xda

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xfb

    aput v2, v0, v1

    sput-object v0, Lde/innosystec/unrar/unpack/Unpack15;->PosHf3:[I

    .line 121
    new-array v0, v4, [I

    fill-array-data v0, :array_6

    sput-object v0, Lde/innosystec/unrar/unpack/Unpack15;->DecHf4:[I

    .line 124
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/16 v1, 0x9

    const/16 v2, 0xff

    aput v2, v0, v1

    sput-object v0, Lde/innosystec/unrar/unpack/Unpack15;->PosHf4:[I

    .line 126
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    aput v7, v0, v3

    aput v4, v0, v7

    aput v5, v0, v4

    aput v6, v0, v5

    aput v6, v0, v6

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    aput v7, v0, v1

    const/16 v1, 0xc

    aput v4, v0, v1

    const/16 v1, 0xd

    aput v4, v0, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    sput-object v0, Lde/innosystec/unrar/unpack/Unpack15;->ShortLen1:[I

    .line 128
    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0xa0

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xd0

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xe0

    aput v2, v0, v1

    const/16 v1, 0xf0

    aput v1, v0, v3

    const/16 v1, 0xf8

    aput v1, v0, v7

    const/16 v1, 0xfc

    aput v1, v0, v4

    const/16 v1, 0xfe

    aput v1, v0, v5

    .line 129
    const/16 v1, 0xff

    aput v1, v0, v6

    const/16 v1, 0x9

    const/16 v2, 0xc0

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x90

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x98

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x9c

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb0

    aput v2, v0, v1

    .line 128
    sput-object v0, Lde/innosystec/unrar/unpack/Unpack15;->ShortXor1:[I

    .line 131
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x3

    aput v2, v0, v1

    aput v3, v0, v3

    aput v3, v0, v7

    aput v7, v0, v4

    aput v4, v0, v5

    aput v4, v0, v6

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    aput v7, v0, v1

    const/16 v1, 0xc

    aput v4, v0, v1

    const/16 v1, 0xd

    aput v4, v0, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    sput-object v0, Lde/innosystec/unrar/unpack/Unpack15;->ShortLen2:[I

    .line 133
    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x40

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x60

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xa0

    aput v2, v0, v1

    const/16 v1, 0xd0

    aput v1, v0, v3

    const/16 v1, 0xe0

    aput v1, v0, v7

    const/16 v1, 0xf0

    aput v1, v0, v4

    const/16 v1, 0xf8

    aput v1, v0, v5

    .line 134
    const/16 v1, 0xfc

    aput v1, v0, v6

    const/16 v1, 0x9

    const/16 v2, 0xc0

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x90

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x98

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x9c

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb0

    aput v2, v0, v1

    .line 133
    sput-object v0, Lde/innosystec/unrar/unpack/Unpack15;->ShortXor2:[I

    .line 33
    return-void

    .line 77
    nop

    :array_0
    .array-data 0x4
        0x0t 0x80t 0x0t 0x0t
        0x0t 0xa0t 0x0t 0x0t
        0x0t 0xc0t 0x0t 0x0t
        0x0t 0xd0t 0x0t 0x0t
        0x0t 0xe0t 0x0t 0x0t
        0x0t 0xeat 0x0t 0x0t
        0x0t 0xeet 0x0t 0x0t
        0x0t 0xf0t 0x0t 0x0t
        0x0t 0xf2t 0x0t 0x0t
        0x0t 0xf2t 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data

    .line 84
    :array_1
    .array-data 0x4
        0x0t 0xa0t 0x0t 0x0t
        0x0t 0xc0t 0x0t 0x0t
        0x0t 0xd0t 0x0t 0x0t
        0x0t 0xe0t 0x0t 0x0t
        0x0t 0xeat 0x0t 0x0t
        0x0t 0xeet 0x0t 0x0t
        0x0t 0xf0t 0x0t 0x0t
        0x0t 0xf2t 0x0t 0x0t
        0x40t 0xf2t 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data

    .line 91
    :array_2
    .array-data 0x4
        0x0t 0x80t 0x0t 0x0t
        0x0t 0xc0t 0x0t 0x0t
        0x0t 0xe0t 0x0t 0x0t
        0x0t 0xf2t 0x0t 0x0t
        0x0t 0xf2t 0x0t 0x0t
        0x0t 0xf2t 0x0t 0x0t
        0x0t 0xf2t 0x0t 0x0t
        0x0t 0xf2t 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data

    .line 99
    :array_3
    .array-data 0x4
        0x0t 0x20t 0x0t 0x0t
        0x0t 0xc0t 0x0t 0x0t
        0x0t 0xe0t 0x0t 0x0t
        0x0t 0xf0t 0x0t 0x0t
        0x0t 0xf2t 0x0t 0x0t
        0x0t 0xf2t 0x0t 0x0t
        0xe0t 0xf7t 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data

    .line 107
    :array_4
    .array-data 0x4
        0x0t 0x10t 0x0t 0x0t
        0x0t 0x24t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0xc0t 0x0t 0x0t
        0x0t 0xfat 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data

    .line 114
    :array_5
    .array-data 0x4
        0x0t 0x8t 0x0t 0x0t
        0x0t 0x24t 0x0t 0x0t
        0x0t 0xeet 0x0t 0x0t
        0x80t 0xfet 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data

    .line 121
    :array_6
    .array-data 0x4
        0x0t 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 33
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/vm/BitInput;-><init>()V

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->oldDist:[I

    .line 58
    new-array v0, v1, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSet:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetA:[I

    .line 59
    new-array v0, v1, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetB:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetC:[I

    .line 61
    new-array v0, v1, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->Place:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->PlaceA:[I

    .line 62
    new-array v0, v1, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->PlaceB:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->PlaceC:[I

    .line 64
    new-array v0, v1, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->NToPl:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->NToPlB:[I

    .line 65
    new-array v0, v1, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->NToPlC:[I

    .line 33
    return-void
.end method

.method private getShortLen1(I)I
    .locals 1
    .parameter "pos"

    .prologue
    .line 244
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->Buf60:I

    add-int/lit8 v0, v0, 0x3

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lde/innosystec/unrar/unpack/Unpack15;->ShortLen1:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method private getShortLen2(I)I
    .locals 1
    .parameter "pos"

    .prologue
    .line 249
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->Buf60:I

    add-int/lit8 v0, v0, 0x3

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lde/innosystec/unrar/unpack/Unpack15;->ShortLen2:[I

    aget v0, v0, p1

    goto :goto_0
.end method


# virtual methods
.method protected corrHuff([I[I)V
    .locals 4
    .parameter "CharSet"
    .parameter "NumToPlace"

    .prologue
    .line 571
    const/4 v2, 0x0

    .line 572
    .local v2, pos:I
    const/4 v0, 0x7

    .local v0, I:I
    :goto_0
    if-gez v0, :cond_0

    .line 578
    const/4 v3, 0x0

    invoke-static {p2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 579
    const/4 v0, 0x6

    :goto_1
    if-gez v0, :cond_2

    .line 582
    return-void

    .line 573
    :cond_0
    const/4 v1, 0x0

    .local v1, J:I
    :goto_2
    const/16 v3, 0x20

    if-lt v1, v3, :cond_1

    .line 572
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 574
    :cond_1
    aget v3, p1, v2

    and-int/lit16 v3, v3, -0x100

    or-int/2addr v3, v0

    aput v3, p1, v2

    .line 573
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 580
    .end local v1           #J:I
    :cond_2
    rsub-int/lit8 v3, v0, 0x7

    mul-int/lit8 v3, v3, 0x20

    aput v3, p2, v0

    .line 579
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method protected decodeNum(II[I[I)I
    .locals 3
    .parameter "Num"
    .parameter "StartPos"
    .parameter "DecTab"
    .parameter "PosTab"

    .prologue
    .line 596
    const v1, 0xfff0

    and-int/2addr p1, v1

    const/4 v0, 0x0

    .local v0, I:I
    :goto_0
    aget v1, p3, v0

    if-le v1, p1, :cond_0

    .line 599
    invoke-virtual {p0, p2}, Lde/innosystec/unrar/unpack/Unpack15;->faddbits(I)V

    .line 600
    if-eqz v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget v1, p3, v1

    :goto_1
    sub-int v1, p1, v1

    rsub-int/lit8 v2, p2, 0x10

    ushr-int/2addr v1, v2

    aget v2, p4, p2

    add-int/2addr v1, v2

    return v1

    .line 597
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 600
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected getFlagsBuf()V
    .locals 8

    .prologue
    .line 522
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->fgetbits()I

    move-result v4

    const/4 v5, 0x5

    sget-object v6, Lde/innosystec/unrar/unpack/Unpack15;->DecHf2:[I

    sget-object v7, Lde/innosystec/unrar/unpack/Unpack15;->PosHf2:[I

    invoke-virtual {p0, v4, v5, v6, v7}, Lde/innosystec/unrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v2

    .line 525
    .local v2, FlagsPlace:I
    :goto_0
    iget-object v4, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetC:[I

    aget v0, v4, v2

    .line 526
    .local v0, Flags:I
    ushr-int/lit8 v4, v0, 0x8

    iput v4, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagBuf:I

    .line 527
    iget-object v4, p0, Lde/innosystec/unrar/unpack/Unpack15;->NToPlC:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #Flags:I
    .local v1, Flags:I
    and-int/lit16 v5, v0, 0xff

    aget v3, v4, v5

    add-int/lit8 v6, v3, 0x1

    aput v6, v4, v5

    .line 528
    .local v3, NewFlagsPlace:I
    and-int/lit16 v4, v1, 0xff

    if-eqz v4, :cond_0

    .line 534
    iget-object v4, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetC:[I

    iget-object v5, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetC:[I

    aget v5, v5, v3

    aput v5, v4, v2

    .line 535
    iget-object v4, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetC:[I

    aput v1, v4, v3

    .line 536
    return-void

    .line 531
    :cond_0
    iget-object v4, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetC:[I

    iget-object v5, p0, Lde/innosystec/unrar/unpack/Unpack15;->NToPlC:[I

    invoke-virtual {p0, v4, v5}, Lde/innosystec/unrar/unpack/Unpack15;->corrHuff([I[I)V

    goto :goto_0
.end method

.method protected huffDecode()V
    .locals 12

    .prologue
    const/4 v5, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x5

    .line 447
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->fgetbits()I

    move-result v0

    .line 449
    .local v0, BitField:I
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlc:I

    const/16 v8, 0x75ff

    if-le v7, v8, :cond_1

    .line 450
    const/16 v7, 0x8

    sget-object v8, Lde/innosystec/unrar/unpack/Unpack15;->DecHf4:[I

    sget-object v9, Lde/innosystec/unrar/unpack/Unpack15;->PosHf4:[I

    invoke-virtual {p0, v0, v7, v8, v9}, Lde/innosystec/unrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    .line 468
    .local v1, BytePlace:I
    :goto_0
    and-int/lit16 v1, v1, 0xff

    .line 469
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->StMode:I

    if-eqz v7, :cond_7

    .line 470
    if-nez v1, :cond_0

    const/16 v7, 0xfff

    if-le v0, v7, :cond_0

    .line 471
    const/16 v1, 0x100

    .line 473
    :cond_0
    add-int/lit8 v1, v1, -0x1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_8

    .line 474
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->fgetbits()I

    move-result v0

    .line 475
    invoke-virtual {p0, v11}, Lde/innosystec/unrar/unpack/Unpack15;->faddbits(I)V

    .line 476
    const v7, 0x8000

    and-int/2addr v7, v0

    if-eqz v7, :cond_5

    .line 477
    const/4 v7, 0x0

    iput v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->StMode:I

    iput v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->NumHuf:I

    .line 517
    :goto_1
    return-void

    .line 452
    .end local v1           #BytePlace:I
    :cond_1
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlc:I

    const/16 v8, 0x5dff

    if-le v7, v8, :cond_2

    .line 453
    const/4 v7, 0x6

    sget-object v8, Lde/innosystec/unrar/unpack/Unpack15;->DecHf3:[I

    sget-object v9, Lde/innosystec/unrar/unpack/Unpack15;->PosHf3:[I

    invoke-virtual {p0, v0, v7, v8, v9}, Lde/innosystec/unrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    .restart local v1       #BytePlace:I
    goto :goto_0

    .line 455
    .end local v1           #BytePlace:I
    :cond_2
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlc:I

    const/16 v8, 0x35ff

    if-le v7, v8, :cond_3

    .line 456
    sget-object v7, Lde/innosystec/unrar/unpack/Unpack15;->DecHf2:[I

    sget-object v8, Lde/innosystec/unrar/unpack/Unpack15;->PosHf2:[I

    invoke-virtual {p0, v0, v10, v7, v8}, Lde/innosystec/unrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    .restart local v1       #BytePlace:I
    goto :goto_0

    .line 458
    .end local v1           #BytePlace:I
    :cond_3
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlc:I

    const/16 v8, 0xdff

    if-le v7, v8, :cond_4

    .line 459
    sget-object v7, Lde/innosystec/unrar/unpack/Unpack15;->DecHf1:[I

    .line 460
    sget-object v8, Lde/innosystec/unrar/unpack/Unpack15;->PosHf1:[I

    .line 459
    invoke-virtual {p0, v0, v10, v7, v8}, Lde/innosystec/unrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    .restart local v1       #BytePlace:I
    goto :goto_0

    .line 462
    .end local v1           #BytePlace:I
    :cond_4
    sget-object v7, Lde/innosystec/unrar/unpack/Unpack15;->DecHf0:[I

    .line 463
    sget-object v8, Lde/innosystec/unrar/unpack/Unpack15;->PosHf0:[I

    .line 462
    invoke-virtual {p0, v0, v5, v7, v8}, Lde/innosystec/unrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    .restart local v1       #BytePlace:I
    goto :goto_0

    .line 480
    :cond_5
    and-int/lit16 v7, v0, 0x4000

    if-eqz v7, :cond_6

    .line 481
    .local v5, Length:I
    :goto_2
    invoke-virtual {p0, v11}, Lde/innosystec/unrar/unpack/Unpack15;->faddbits(I)V

    .line 482
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->fgetbits()I

    move-result v7

    sget-object v8, Lde/innosystec/unrar/unpack/Unpack15;->DecHf2:[I

    sget-object v9, Lde/innosystec/unrar/unpack/Unpack15;->PosHf2:[I

    invoke-virtual {p0, v7, v10, v8, v9}, Lde/innosystec/unrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v4

    .line 483
    .local v4, Distance:I
    shl-int/lit8 v7, v4, 0x5

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->fgetbits()I

    move-result v8

    ushr-int/lit8 v8, v8, 0xb

    or-int v4, v7, v8

    .line 484
    invoke-virtual {p0, v10}, Lde/innosystec/unrar/unpack/Unpack15;->faddbits(I)V

    .line 485
    invoke-virtual {p0, v4, v5}, Lde/innosystec/unrar/unpack/Unpack15;->oldCopyString(II)V

    goto :goto_1

    .line 480
    .end local v4           #Distance:I
    .end local v5           #Length:I
    :cond_6
    const/4 v5, 0x3

    goto :goto_2

    .line 490
    :cond_7
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->NumHuf:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->NumHuf:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_8

    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagsCnt:I

    if-nez v7, :cond_8

    .line 491
    iput v11, p0, Lde/innosystec/unrar/unpack/Unpack15;->StMode:I

    .line 494
    :cond_8
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlc:I

    add-int/2addr v7, v1

    iput v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlc:I

    .line 495
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlc:I

    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlc:I

    ushr-int/lit8 v8, v8, 0x8

    sub-int/2addr v7, v8

    iput v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlc:I

    .line 496
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->Nhfb:I

    add-int/lit8 v7, v7, 0x10

    iput v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->Nhfb:I

    .line 497
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->Nhfb:I

    const/16 v8, 0xff

    if-le v7, v8, :cond_9

    .line 498
    const/16 v7, 0x90

    iput v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->Nhfb:I

    .line 499
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->Nlzb:I

    ushr-int/lit8 v7, v7, 0x1

    iput v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->Nlzb:I

    .line 502
    :cond_9
    iget-object v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->window:[B

    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpPtr:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpPtr:I

    iget-object v9, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSet:[I

    aget v9, v9, v1

    ushr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 503
    iget-wide v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->destUnpSize:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->destUnpSize:J

    .line 506
    :goto_3
    iget-object v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSet:[I

    aget v2, v7, v1

    .line 507
    .local v2, CurByte:I
    iget-object v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->NToPl:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2           #CurByte:I
    .local v3, CurByte:I
    and-int/lit16 v8, v2, 0xff

    aget v6, v7, v8

    add-int/lit8 v9, v6, 0x1

    aput v9, v7, v8

    .line 508
    .local v6, NewBytePlace:I
    and-int/lit16 v7, v3, 0xff

    const/16 v8, 0xa1

    if-le v7, v8, :cond_a

    .line 509
    iget-object v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSet:[I

    iget-object v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->NToPl:[I

    invoke-virtual {p0, v7, v8}, Lde/innosystec/unrar/unpack/Unpack15;->corrHuff([I[I)V

    goto :goto_3

    .line 515
    :cond_a
    iget-object v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSet:[I

    iget-object v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSet:[I

    aget v8, v8, v6

    aput v8, v7, v1

    .line 516
    iget-object v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSet:[I

    aput v3, v7, v6

    goto/16 :goto_1
.end method

.method protected initHuff()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 555
    const/4 v0, 0x0

    .local v0, I:I
    :goto_0
    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 563
    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->NToPl:[I

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([II)V

    .line 564
    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->NToPlB:[I

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([II)V

    .line 565
    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->NToPlC:[I

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([II)V

    .line 566
    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetB:[I

    iget-object v2, p0, Lde/innosystec/unrar/unpack/Unpack15;->NToPlB:[I

    invoke-virtual {p0, v1, v2}, Lde/innosystec/unrar/unpack/Unpack15;->corrHuff([I[I)V

    .line 567
    return-void

    .line 556
    :cond_0
    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->Place:[I

    iget-object v2, p0, Lde/innosystec/unrar/unpack/Unpack15;->PlaceA:[I

    iget-object v3, p0, Lde/innosystec/unrar/unpack/Unpack15;->PlaceB:[I

    aput v0, v3, v0

    aput v0, v2, v0

    aput v0, v1, v0

    .line 557
    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->PlaceC:[I

    xor-int/lit8 v2, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    .line 558
    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSet:[I

    iget-object v2, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetB:[I

    shl-int/lit8 v3, v0, 0x8

    aput v3, v2, v0

    aput v3, v1, v0

    .line 559
    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetA:[I

    aput v0, v1, v0

    .line 560
    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetC:[I

    xor-int/lit8 v2, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aput v2, v1, v0

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected longLZ()V
    .locals 15

    .prologue
    const/16 v14, 0x100

    const/16 v13, 0x40

    const/4 v12, 0x5

    const/4 v11, 0x4

    .line 353
    const/4 v8, 0x0

    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->NumHuf:I

    .line 354
    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->Nlzb:I

    add-int/lit8 v8, v8, 0x10

    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->Nlzb:I

    .line 355
    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->Nlzb:I

    const/16 v9, 0xff

    if-le v8, v9, :cond_0

    .line 356
    const/16 v8, 0x90

    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->Nlzb:I

    .line 357
    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->Nhfb:I

    ushr-int/lit8 v8, v8, 0x1

    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->Nhfb:I

    .line 359
    :cond_0
    iget v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn2:I

    .line 361
    .local v6, OldAvr2:I
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->fgetbits()I

    move-result v0

    .line 362
    .local v0, BitField:I
    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn2:I

    const/16 v9, 0x7a

    if-lt v8, v9, :cond_1

    .line 363
    const/4 v8, 0x3

    sget-object v9, Lde/innosystec/unrar/unpack/Unpack15;->DecL2:[I

    sget-object v10, Lde/innosystec/unrar/unpack/Unpack15;->PosL2:[I

    invoke-virtual {p0, v0, v8, v9, v10}, Lde/innosystec/unrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v4

    .line 379
    .local v4, Length:I
    :goto_0
    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn2:I

    add-int/2addr v8, v4

    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn2:I

    .line 380
    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn2:I

    iget v9, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn2:I

    ushr-int/lit8 v9, v9, 0x5

    sub-int/2addr v8, v9

    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn2:I

    .line 382
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->fgetbits()I

    move-result v0

    .line 383
    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlcB:I

    const/16 v9, 0x28ff

    if-le v8, v9, :cond_5

    .line 384
    sget-object v8, Lde/innosystec/unrar/unpack/Unpack15;->DecHf2:[I

    sget-object v9, Lde/innosystec/unrar/unpack/Unpack15;->PosHf2:[I

    invoke-virtual {p0, v0, v12, v8, v9}, Lde/innosystec/unrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v3

    .line 392
    .local v3, DistancePlace:I
    :goto_1
    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlcB:I

    add-int/2addr v8, v3

    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlcB:I

    .line 393
    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlcB:I

    iget v9, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlcB:I

    shr-int/lit8 v9, v9, 0x8

    sub-int/2addr v8, v9

    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlcB:I

    .line 395
    :goto_2
    iget-object v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetB:[I

    and-int/lit16 v9, v3, 0xff

    aget v1, v8, v9

    .line 396
    .local v1, Distance:I
    iget-object v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->NToPlB:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #Distance:I
    .local v2, Distance:I
    and-int/lit16 v9, v1, 0xff

    aget v5, v8, v9

    add-int/lit8 v10, v5, 0x1

    aput v10, v8, v9

    .line 397
    .local v5, NewDistancePlace:I
    and-int/lit16 v8, v2, 0xff

    if-nez v8, :cond_7

    .line 398
    iget-object v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetB:[I

    iget-object v9, p0, Lde/innosystec/unrar/unpack/Unpack15;->NToPlB:[I

    invoke-virtual {p0, v8, v9}, Lde/innosystec/unrar/unpack/Unpack15;->corrHuff([I[I)V

    goto :goto_2

    .line 365
    .end local v2           #Distance:I
    .end local v3           #DistancePlace:I
    .end local v4           #Length:I
    .end local v5           #NewDistancePlace:I
    :cond_1
    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn2:I

    if-lt v8, v13, :cond_2

    .line 366
    const/4 v8, 0x2

    sget-object v9, Lde/innosystec/unrar/unpack/Unpack15;->DecL1:[I

    sget-object v10, Lde/innosystec/unrar/unpack/Unpack15;->PosL1:[I

    invoke-virtual {p0, v0, v8, v9, v10}, Lde/innosystec/unrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v4

    .restart local v4       #Length:I
    goto :goto_0

    .line 368
    .end local v4           #Length:I
    :cond_2
    if-ge v0, v14, :cond_3

    .line 369
    move v4, v0

    .line 370
    .restart local v4       #Length:I
    const/16 v8, 0x10

    invoke-virtual {p0, v8}, Lde/innosystec/unrar/unpack/Unpack15;->faddbits(I)V

    goto :goto_0

    .line 372
    .end local v4           #Length:I
    :cond_3
    const/4 v4, 0x0

    .restart local v4       #Length:I
    :goto_3
    shl-int v8, v0, v4

    const v9, 0x8000

    and-int/2addr v8, v9

    if-eqz v8, :cond_4

    .line 375
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v8}, Lde/innosystec/unrar/unpack/Unpack15;->faddbits(I)V

    goto :goto_0

    .line 372
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 386
    :cond_5
    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlcB:I

    const/16 v9, 0x6ff

    if-le v8, v9, :cond_6

    .line 387
    sget-object v8, Lde/innosystec/unrar/unpack/Unpack15;->DecHf1:[I

    sget-object v9, Lde/innosystec/unrar/unpack/Unpack15;->PosHf1:[I

    invoke-virtual {p0, v0, v12, v8, v9}, Lde/innosystec/unrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v3

    .restart local v3       #DistancePlace:I
    goto :goto_1

    .line 389
    .end local v3           #DistancePlace:I
    :cond_6
    sget-object v8, Lde/innosystec/unrar/unpack/Unpack15;->DecHf0:[I

    sget-object v9, Lde/innosystec/unrar/unpack/Unpack15;->PosHf0:[I

    invoke-virtual {p0, v0, v11, v8, v9}, Lde/innosystec/unrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v3

    .restart local v3       #DistancePlace:I
    goto :goto_1

    .line 404
    .restart local v2       #Distance:I
    .restart local v5       #NewDistancePlace:I
    :cond_7
    iget-object v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetB:[I

    iget-object v9, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetB:[I

    aget v9, v9, v5

    aput v9, v8, v3

    .line 405
    iget-object v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetB:[I

    aput v2, v8, v5

    .line 407
    const v8, 0xff00

    and-int/2addr v8, v2

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->fgetbits()I

    move-result v9

    ushr-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    ushr-int/lit8 v1, v8, 0x1

    .line 408
    .end local v2           #Distance:I
    .restart local v1       #Distance:I
    const/4 v8, 0x7

    invoke-virtual {p0, v8}, Lde/innosystec/unrar/unpack/Unpack15;->faddbits(I)V

    .line 410
    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn3:I

    .line 411
    .local v7, OldAvr3:I
    const/4 v8, 0x1

    if-eq v4, v8, :cond_8

    if-eq v4, v11, :cond_8

    .line 412
    if-nez v4, :cond_c

    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->MaxDist3:I

    if-gt v1, v8, :cond_c

    .line 413
    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn3:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn3:I

    .line 414
    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn3:I

    iget v9, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn3:I

    shr-int/lit8 v9, v9, 0x8

    sub-int/2addr v8, v9

    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn3:I

    .line 421
    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x3

    .line 422
    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->MaxDist3:I

    if-lt v1, v8, :cond_9

    .line 423
    add-int/lit8 v4, v4, 0x1

    .line 425
    :cond_9
    if-gt v1, v14, :cond_a

    .line 426
    add-int/lit8 v4, v4, 0x8

    .line 428
    :cond_a
    const/16 v8, 0xb0

    if-gt v7, v8, :cond_b

    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlc:I

    const/16 v9, 0x2a00

    if-lt v8, v9, :cond_d

    if-ge v6, v13, :cond_d

    .line 429
    :cond_b
    const/16 v8, 0x7f00

    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->MaxDist3:I

    .line 433
    :goto_5
    iget-object v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->oldDist:[I

    iget v9, p0, Lde/innosystec/unrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lde/innosystec/unrar/unpack/Unpack15;->oldDistPtr:I

    aput v1, v8, v9

    .line 434
    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->oldDistPtr:I

    and-int/lit8 v8, v8, 0x3

    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->oldDistPtr:I

    .line 435
    iput v4, p0, Lde/innosystec/unrar/unpack/Unpack15;->lastLength:I

    .line 436
    iput v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->lastDist:I

    .line 437
    invoke-virtual {p0, v1, v4}, Lde/innosystec/unrar/unpack/Unpack15;->oldCopyString(II)V

    .line 438
    return-void

    .line 416
    :cond_c
    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn3:I

    if-lez v8, :cond_8

    .line 417
    iget v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn3:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn3:I

    goto :goto_4

    .line 431
    :cond_d
    const/16 v8, 0x2001

    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->MaxDist3:I

    goto :goto_5
.end method

.method protected oldCopyString(II)V
    .locals 6
    .parameter "Distance"
    .parameter "Length"

    .prologue
    const v5, 0x3fffff

    .line 586
    iget-wide v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->destUnpSize:J

    int-to-long v3, p2

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->destUnpSize:J

    move v0, p2

    .line 587
    .end local p2
    .local v0, Length:I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0           #Length:I
    .restart local p2
    if-nez v0, :cond_0

    .line 591
    return-void

    .line 588
    :cond_0
    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->window:[B

    iget v2, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpPtr:I

    iget-object v3, p0, Lde/innosystec/unrar/unpack/Unpack15;->window:[B

    iget v4, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpPtr:I

    sub-int/2addr v4, p1

    and-int/2addr v4, v5

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 589
    iget v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpPtr:I

    add-int/lit8 v1, v1, 0x1

    and-int/2addr v1, v5

    iput v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpPtr:I

    move v0, p2

    .end local p2
    .restart local v0       #Length:I
    goto :goto_0
.end method

.method protected oldUnpInitData(Z)V
    .locals 2
    .parameter "Solid"

    .prologue
    const/4 v1, 0x0

    .line 540
    if-nez p1, :cond_0

    .line 541
    iput v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->Buf60:I

    iput v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->NumHuf:I

    iput v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn3:I

    iput v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn2:I

    iput v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn1:I

    iput v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlcB:I

    .line 542
    const/16 v0, 0x3500

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrPlc:I

    .line 543
    const/16 v0, 0x2001

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->MaxDist3:I

    .line 544
    const/16 v0, 0x80

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->Nlzb:I

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->Nhfb:I

    .line 546
    :cond_0
    iput v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagsCnt:I

    .line 547
    iput v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagBuf:I

    .line 548
    iput v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->StMode:I

    .line 549
    iput v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->LCount:I

    .line 550
    iput v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->readTop:I

    .line 551
    return-void
.end method

.method protected oldUnpWriteBuf()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 605
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpPtr:I

    iget v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->wrPtr:I

    if-eq v0, v1, :cond_0

    .line 606
    iput-boolean v5, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpSomeRead:Z

    .line 608
    :cond_0
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpPtr:I

    iget v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->wrPtr:I

    if-ge v0, v1, :cond_1

    .line 609
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->window:[B

    iget v2, p0, Lde/innosystec/unrar/unpack/Unpack15;->wrPtr:I

    iget v3, p0, Lde/innosystec/unrar/unpack/Unpack15;->wrPtr:I

    neg-int v3, v3

    const v4, 0x3fffff

    and-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 610
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->window:[B

    const/4 v2, 0x0

    iget v3, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpPtr:I

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 611
    iput-boolean v5, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpAllBuf:Z

    .line 615
    :goto_0
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpPtr:I

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->wrPtr:I

    .line 616
    return-void

    .line 613
    :cond_1
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->window:[B

    iget v2, p0, Lde/innosystec/unrar/unpack/Unpack15;->wrPtr:I

    iget v3, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpPtr:I

    iget v4, p0, Lde/innosystec/unrar/unpack/Unpack15;->wrPtr:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/ComprDataIO;->unpWrite([BII)V

    goto :goto_0
.end method

.method protected shortLZ()V
    .locals 13

    .prologue
    const v12, 0x8000

    const/16 v11, 0xff

    const/16 v10, 0x9

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 258
    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->NumHuf:I

    .line 260
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->fgetbits()I

    move-result v0

    .line 261
    .local v0, BitField:I
    iget v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->LCount:I

    if-ne v6, v9, :cond_1

    .line 262
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lde/innosystec/unrar/unpack/Unpack15;->faddbits(I)V

    .line 263
    if-lt v0, v12, :cond_0

    .line 264
    iget v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->lastDist:I

    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->lastLength:I

    invoke-virtual {p0, v6, v7}, Lde/innosystec/unrar/unpack/Unpack15;->oldCopyString(II)V

    .line 344
    :goto_0
    return-void

    .line 267
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 268
    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->LCount:I

    .line 270
    :cond_1
    ushr-int/lit8 v0, v0, 0x8

    .line 271
    iget v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn1:I

    const/16 v7, 0x25

    if-ge v6, v7, :cond_3

    .line 272
    const/4 v4, 0x0

    .line 273
    .local v4, Length:I
    :goto_1
    sget-object v6, Lde/innosystec/unrar/unpack/Unpack15;->ShortXor1:[I

    aget v6, v6, v4

    xor-int/2addr v6, v0

    invoke-direct {p0, v4}, Lde/innosystec/unrar/unpack/Unpack15;->getShortLen1(I)I

    move-result v7

    ushr-int v7, v11, v7

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    if-nez v6, :cond_2

    .line 277
    invoke-direct {p0, v4}, Lde/innosystec/unrar/unpack/Unpack15;->getShortLen1(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lde/innosystec/unrar/unpack/Unpack15;->faddbits(I)V

    .line 287
    :goto_2
    if-lt v4, v10, :cond_a

    .line 288
    if-ne v4, v10, :cond_5

    .line 289
    iget v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->LCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->LCount:I

    .line 290
    iget v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->lastDist:I

    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->lastLength:I

    invoke-virtual {p0, v6, v7}, Lde/innosystec/unrar/unpack/Unpack15;->oldCopyString(II)V

    goto :goto_0

    .line 272
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 279
    .end local v4           #Length:I
    :cond_3
    const/4 v4, 0x0

    .line 280
    .restart local v4       #Length:I
    :goto_3
    sget-object v6, Lde/innosystec/unrar/unpack/Unpack15;->ShortXor2:[I

    aget v6, v6, v4

    xor-int/2addr v6, v0

    invoke-direct {p0, v4}, Lde/innosystec/unrar/unpack/Unpack15;->getShortLen2(I)I

    move-result v7

    shr-int v7, v11, v7

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    if-nez v6, :cond_4

    .line 284
    invoke-direct {p0, v4}, Lde/innosystec/unrar/unpack/Unpack15;->getShortLen2(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lde/innosystec/unrar/unpack/Unpack15;->faddbits(I)V

    goto :goto_2

    .line 279
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 293
    :cond_5
    const/16 v6, 0xe

    if-ne v4, v6, :cond_6

    .line 294
    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->LCount:I

    .line 295
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->fgetbits()I

    move-result v6

    const/4 v7, 0x3

    sget-object v8, Lde/innosystec/unrar/unpack/Unpack15;->DecL2:[I

    sget-object v9, Lde/innosystec/unrar/unpack/Unpack15;->PosL2:[I

    invoke-virtual {p0, v6, v7, v8, v9}, Lde/innosystec/unrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v6

    add-int/lit8 v4, v6, 0x5

    .line 296
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->fgetbits()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    or-int v1, v6, v12

    .line 297
    .local v1, Distance:I
    const/16 v6, 0xf

    invoke-virtual {p0, v6}, Lde/innosystec/unrar/unpack/Unpack15;->faddbits(I)V

    .line 298
    iput v4, p0, Lde/innosystec/unrar/unpack/Unpack15;->lastLength:I

    .line 299
    iput v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->lastDist:I

    .line 300
    invoke-virtual {p0, v1, v4}, Lde/innosystec/unrar/unpack/Unpack15;->oldCopyString(II)V

    goto :goto_0

    .line 304
    .end local v1           #Distance:I
    :cond_6
    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->LCount:I

    .line 305
    move v5, v4

    .line 306
    .local v5, SaveLength:I
    iget-object v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->oldDist:[I

    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit8 v8, v4, -0x9

    sub-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x3

    aget v1, v6, v7

    .line 307
    .restart local v1       #Distance:I
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->fgetbits()I

    move-result v6

    sget-object v7, Lde/innosystec/unrar/unpack/Unpack15;->DecL1:[I

    sget-object v8, Lde/innosystec/unrar/unpack/Unpack15;->PosL1:[I

    invoke-virtual {p0, v6, v9, v7, v8}, Lde/innosystec/unrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v6

    add-int/lit8 v4, v6, 0x2

    .line 308
    const/16 v6, 0x101

    if-ne v4, v6, :cond_7

    const/16 v6, 0xa

    if-ne v5, v6, :cond_7

    .line 309
    iget v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->Buf60:I

    xor-int/lit8 v6, v6, 0x1

    iput v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->Buf60:I

    goto/16 :goto_0

    .line 312
    :cond_7
    const/16 v6, 0x100

    if-le v1, v6, :cond_8

    .line 313
    add-int/lit8 v4, v4, 0x1

    .line 314
    :cond_8
    iget v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->MaxDist3:I

    if-lt v1, v6, :cond_9

    .line 315
    add-int/lit8 v4, v4, 0x1

    .line 317
    :cond_9
    iget-object v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->oldDist:[I

    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->oldDistPtr:I

    aput v1, v6, v7

    .line 318
    iget v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->oldDistPtr:I

    and-int/lit8 v6, v6, 0x3

    iput v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->oldDistPtr:I

    .line 319
    iput v4, p0, Lde/innosystec/unrar/unpack/Unpack15;->lastLength:I

    .line 320
    iput v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->lastDist:I

    .line 321
    invoke-virtual {p0, v1, v4}, Lde/innosystec/unrar/unpack/Unpack15;->oldCopyString(II)V

    goto/16 :goto_0

    .line 325
    .end local v1           #Distance:I
    .end local v5           #SaveLength:I
    :cond_a
    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->LCount:I

    .line 326
    iget v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn1:I

    add-int/2addr v6, v4

    iput v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn1:I

    .line 327
    iget v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn1:I

    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn1:I

    shr-int/lit8 v7, v7, 0x4

    sub-int/2addr v6, v7

    iput v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->AvrLn1:I

    .line 329
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->fgetbits()I

    move-result v6

    const/4 v7, 0x5

    sget-object v8, Lde/innosystec/unrar/unpack/Unpack15;->DecHf2:[I

    sget-object v9, Lde/innosystec/unrar/unpack/Unpack15;->PosHf2:[I

    invoke-virtual {p0, v6, v7, v8, v9}, Lde/innosystec/unrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v6

    and-int/lit16 v2, v6, 0xff

    .line 330
    .local v2, DistancePlace:I
    iget-object v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetA:[I

    aget v1, v6, v2

    .line 331
    .restart local v1       #Distance:I
    add-int/lit8 v2, v2, -0x1

    const/4 v6, -0x1

    if-eq v2, v6, :cond_b

    .line 332
    iget-object v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->PlaceA:[I

    aget v7, v6, v1

    add-int/lit8 v7, v7, -0x1

    aput v7, v6, v1

    .line 333
    iget-object v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetA:[I

    aget v3, v6, v2

    .line 334
    .local v3, LastDistance:I
    iget-object v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->PlaceA:[I

    aget v7, v6, v3

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v3

    .line 335
    iget-object v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetA:[I

    add-int/lit8 v7, v2, 0x1

    aput v3, v6, v7

    .line 336
    iget-object v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->ChSetA:[I

    aput v1, v6, v2

    .line 338
    .end local v3           #LastDistance:I
    :cond_b
    add-int/lit8 v4, v4, 0x2

    .line 339
    iget-object v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->oldDist:[I

    iget v7, p0, Lde/innosystec/unrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lde/innosystec/unrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit8 v1, v1, 0x1

    aput v1, v6, v7

    .line 340
    iget v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->oldDistPtr:I

    and-int/lit8 v6, v6, 0x3

    iput v6, p0, Lde/innosystec/unrar/unpack/Unpack15;->oldDistPtr:I

    .line 341
    iput v4, p0, Lde/innosystec/unrar/unpack/Unpack15;->lastLength:I

    .line 342
    iput v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->lastDist:I

    .line 343
    invoke-virtual {p0, v1, v4}, Lde/innosystec/unrar/unpack/Unpack15;->oldCopyString(II)V

    goto/16 :goto_0
.end method

.method protected abstract unpInitData(Z)V
.end method

.method protected unpReadBuf()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 215
    iget v3, p0, Lde/innosystec/unrar/unpack/Unpack15;->readTop:I

    iget v4, p0, Lde/innosystec/unrar/unpack/Unpack15;->inAddr:I

    sub-int v0, v3, v4

    .line 216
    .local v0, dataSize:I
    if-gez v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v2

    .line 219
    :cond_1
    iget v3, p0, Lde/innosystec/unrar/unpack/Unpack15;->inAddr:I

    const/16 v4, 0x4000

    if-le v3, v4, :cond_4

    .line 220
    if-lez v0, :cond_2

    .line 225
    iget-object v3, p0, Lde/innosystec/unrar/unpack/Unpack15;->inBuf:[B

    iget v4, p0, Lde/innosystec/unrar/unpack/Unpack15;->inAddr:I

    iget-object v5, p0, Lde/innosystec/unrar/unpack/Unpack15;->inBuf:[B

    invoke-static {v3, v4, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :cond_2
    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack15;->inAddr:I

    .line 228
    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->readTop:I

    .line 234
    :goto_1
    iget-object v3, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    iget-object v4, p0, Lde/innosystec/unrar/unpack/Unpack15;->inBuf:[B

    const v5, 0x8000

    sub-int/2addr v5, v0

    and-int/lit8 v5, v5, -0x10

    invoke-virtual {v3, v4, v0, v5}, Lde/innosystec/unrar/unpack/ComprDataIO;->unpRead([BII)I

    move-result v1

    .line 235
    .local v1, readCode:I
    if-lez v1, :cond_3

    .line 236
    iget v3, p0, Lde/innosystec/unrar/unpack/Unpack15;->readTop:I

    add-int/2addr v3, v1

    iput v3, p0, Lde/innosystec/unrar/unpack/Unpack15;->readTop:I

    .line 238
    :cond_3
    iget v3, p0, Lde/innosystec/unrar/unpack/Unpack15;->readTop:I

    add-int/lit8 v3, v3, -0x1e

    iput v3, p0, Lde/innosystec/unrar/unpack/Unpack15;->readBorder:I

    .line 239
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 231
    .end local v1           #readCode:I
    :cond_4
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->readTop:I

    goto :goto_1
.end method

.method protected unpack15(Z)V
    .locals 8
    .parameter "solid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const v5, 0x3fffff

    const/4 v4, 0x7

    .line 140
    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->suspended:Z

    if-eqz v0, :cond_3

    .line 141
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->wrPtr:I

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpPtr:I

    .line 154
    :goto_0
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->destUnpSize:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->getFlagsBuf()V

    .line 156
    const/16 v0, 0x8

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagsCnt:I

    .line 159
    :cond_0
    :goto_1
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->destUnpSize:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_5

    .line 208
    :cond_1
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->oldUnpWriteBuf()V

    .line 209
    :cond_2
    return-void

    .line 143
    :cond_3
    invoke-virtual {p0, p1}, Lde/innosystec/unrar/unpack/Unpack15;->unpInitData(Z)V

    .line 144
    invoke-virtual {p0, p1}, Lde/innosystec/unrar/unpack/Unpack15;->oldUnpInitData(Z)V

    .line 145
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->unpReadBuf()Z

    .line 146
    if-nez p1, :cond_4

    .line 147
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->initHuff()V

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpPtr:I

    .line 152
    :goto_2
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->destUnpSize:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->destUnpSize:J

    goto :goto_0

    .line 150
    :cond_4
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->wrPtr:I

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpPtr:I

    goto :goto_2

    .line 160
    :cond_5
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpPtr:I

    and-int/2addr v0, v5

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpPtr:I

    .line 162
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->inAddr:I

    iget v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->readTop:I

    add-int/lit8 v1, v1, -0x1e

    if-le v0, v1, :cond_6

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->unpReadBuf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_6
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->wrPtr:I

    iget v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpPtr:I

    sub-int/2addr v0, v1

    and-int/2addr v0, v5

    const/16 v1, 0x10e

    if-ge v0, v1, :cond_7

    .line 166
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->wrPtr:I

    iget v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->unpPtr:I

    if-eq v0, v1, :cond_7

    .line 167
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->oldUnpWriteBuf()V

    .line 168
    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->suspended:Z

    if-nez v0, :cond_2

    .line 172
    :cond_7
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->StMode:I

    if-eqz v0, :cond_8

    .line 173
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->huffDecode()V

    goto :goto_1

    .line 177
    :cond_8
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagsCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagsCnt:I

    if-gez v0, :cond_9

    .line 178
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->getFlagsBuf()V

    .line 179
    iput v4, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagsCnt:I

    .line 182
    :cond_9
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagBuf:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    .line 183
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagBuf:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagBuf:I

    .line 184
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->Nlzb:I

    iget v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->Nhfb:I

    if-le v0, v1, :cond_a

    .line 185
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->longLZ()V

    goto :goto_1

    .line 187
    :cond_a
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->huffDecode()V

    goto :goto_1

    .line 190
    :cond_b
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagBuf:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagBuf:I

    .line 191
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagsCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagsCnt:I

    if-gez v0, :cond_c

    .line 192
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->getFlagsBuf()V

    .line 193
    iput v4, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagsCnt:I

    .line 195
    :cond_c
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagBuf:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_e

    .line 196
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagBuf:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagBuf:I

    .line 197
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->Nlzb:I

    iget v1, p0, Lde/innosystec/unrar/unpack/Unpack15;->Nhfb:I

    if-le v0, v1, :cond_d

    .line 198
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->huffDecode()V

    goto/16 :goto_1

    .line 200
    :cond_d
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->longLZ()V

    goto/16 :goto_1

    .line 203
    :cond_e
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagBuf:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack15;->FlagBuf:I

    .line 204
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack15;->shortLZ()V

    goto/16 :goto_1
.end method
