.class public Lde/innosystec/unrar/unpack/ppm/PPMContext;
.super Lde/innosystec/unrar/unpack/ppm/Pointer;
.source "PPMContext.java"


# static fields
.field public static final ExpEscape:[I

.field public static final size:I

.field private static final unionSize:I


# instance fields
.field private final freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

.field private numStats:I

.field private final oneState:Lde/innosystec/unrar/unpack/ppm/State;

.field private final ps:[I

.field private suffix:I

.field private tempPPMContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

.field private final tempState1:Lde/innosystec/unrar/unpack/ppm/State;

.field private final tempState2:Lde/innosystec/unrar/unpack/ppm/State;

.field private final tempState3:Lde/innosystec/unrar/unpack/ppm/State;

.field private final tempState4:Lde/innosystec/unrar/unpack/ppm/State;

.field private final tempState5:Lde/innosystec/unrar/unpack/ppm/State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 31
    invoke-static {v0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->unionSize:I

    .line 33
    sget v0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->unionSize:I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    sput v0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->size:I

    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 47
    sput-object v0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->ExpEscape:[I

    .line 28
    return-void

    .line 48
    nop

    :array_0
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "mem"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1}, Lde/innosystec/unrar/unpack/ppm/Pointer;-><init>([B)V

    .line 51
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->tempState1:Lde/innosystec/unrar/unpack/ppm/State;

    .line 52
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->tempState2:Lde/innosystec/unrar/unpack/ppm/State;

    .line 53
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->tempState3:Lde/innosystec/unrar/unpack/ppm/State;

    .line 54
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->tempState4:Lde/innosystec/unrar/unpack/ppm/State;

    .line 55
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/State;

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->tempState5:Lde/innosystec/unrar/unpack/ppm/State;

    .line 56
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->tempPPMContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    .line 57
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->ps:[I

    .line 62
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/State;

    invoke-direct {v0, p1}, Lde/innosystec/unrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->oneState:Lde/innosystec/unrar/unpack/ppm/State;

    .line 63
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-direct {v0, p1}, Lde/innosystec/unrar/unpack/ppm/FreqData;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    .line 64
    return-void
.end method

.method private getArrayIndex(Lde/innosystec/unrar/unpack/ppm/ModelPPM;Lde/innosystec/unrar/unpack/ppm/State;)I
    .locals 5
    .parameter "Model"
    .parameter "rs"

    .prologue
    .line 238
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getSubAlloc()Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    move-result-object v2

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getTempPPMContext([B)Lde/innosystec/unrar/unpack/ppm/PPMContext;

    move-result-object v1

    .line 239
    .local v1, tempSuffix:Lde/innosystec/unrar/unpack/ppm/PPMContext;
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v2

    invoke-virtual {v1, v2}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, ret:I
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getPrevSuccess()I

    move-result v2

    add-int/2addr v0, v2

    .line 242
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getNS2BSIndx()[I

    move-result-object v2

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v0, v2

    .line 243
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHiBitsFlag()I

    move-result v2

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHB2Flag()[I

    move-result-object v3

    invoke-virtual {p2}, Lde/innosystec/unrar/unpack/ppm/State;->getSymbol()I

    move-result v4

    aget v3, v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 244
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getRunLength()I

    move-result v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v2, v2, 0x20

    add-int/2addr v0, v2

    .line 245
    return v0
.end method

.method private getTempPPMContext([B)Lde/innosystec/unrar/unpack/ppm/PPMContext;
    .locals 2
    .parameter "mem"

    .prologue
    .line 141
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->tempPPMContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/PPMContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->tempPPMContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    .line 144
    :cond_0
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->tempPPMContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v0, p1}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->init([B)Lde/innosystec/unrar/unpack/ppm/PPMContext;

    move-result-object v0

    return-object v0
.end method

.method private makeEscFreq2(Lde/innosystec/unrar/unpack/ppm/ModelPPM;I)Lde/innosystec/unrar/unpack/ppm/SEE2Context;
    .locals 9
    .parameter "model"
    .parameter "Diff"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 384
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v2

    .line 385
    .local v2, numStats:I
    const/16 v5, 0x100

    if-eq v2, v5, :cond_3

    .line 386
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v5

    invoke-direct {p0, v5}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getTempPPMContext([B)Lde/innosystec/unrar/unpack/ppm/PPMContext;

    move-result-object v4

    .line 387
    .local v4, suff:Lde/innosystec/unrar/unpack/ppm/PPMContext;
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v5

    invoke-virtual {v4, v5}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 388
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getNS2Indx()[I

    move-result-object v5

    add-int/lit8 v8, p2, -0x1

    aget v0, v5, v8

    .line 389
    .local v0, idx1:I
    const/4 v1, 0x0

    .line 390
    .local v1, idx2:I
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge p2, v5, :cond_0

    move v5, v6

    :goto_0
    add-int/2addr v1, v5

    .line 391
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v5

    mul-int/lit8 v8, v2, 0xb

    if-ge v5, v8, :cond_1

    move v5, v6

    :goto_1
    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    .line 392
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getNumMasked()I

    move-result v5

    if-le v5, p2, :cond_2

    :goto_2
    mul-int/lit8 v5, v6, 0x4

    add-int/2addr v1, v5

    .line 393
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHiBitsFlag()I

    move-result v5

    add-int/2addr v1, v5

    .line 394
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getSEE2Cont()[[Lde/innosystec/unrar/unpack/ppm/SEE2Context;

    move-result-object v5

    aget-object v5, v5, v0

    aget-object v3, v5, v1

    .line 395
    .local v3, psee2c:Lde/innosystec/unrar/unpack/ppm/SEE2Context;
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getCoder()Lde/innosystec/unrar/unpack/ppm/RangeCoder;

    move-result-object v5

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/SEE2Context;->getMean()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->setScale(J)V

    .line 400
    .end local v0           #idx1:I
    .end local v1           #idx2:I
    .end local v4           #suff:Lde/innosystec/unrar/unpack/ppm/PPMContext;
    :goto_3
    return-object v3

    .end local v3           #psee2c:Lde/innosystec/unrar/unpack/ppm/SEE2Context;
    .restart local v0       #idx1:I
    .restart local v1       #idx2:I
    .restart local v4       #suff:Lde/innosystec/unrar/unpack/ppm/PPMContext;
    :cond_0
    move v5, v7

    .line 390
    goto :goto_0

    :cond_1
    move v5, v7

    .line 391
    goto :goto_1

    :cond_2
    move v6, v7

    .line 392
    goto :goto_2

    .line 397
    .end local v0           #idx1:I
    .end local v1           #idx2:I
    .end local v4           #suff:Lde/innosystec/unrar/unpack/ppm/PPMContext;
    :cond_3
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getDummySEE2Cont()Lde/innosystec/unrar/unpack/ppm/SEE2Context;

    move-result-object v3

    .line 398
    .restart local v3       #psee2c:Lde/innosystec/unrar/unpack/ppm/SEE2Context;
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getCoder()Lde/innosystec/unrar/unpack/ppm/RangeCoder;

    move-result-object v5

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v5

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->setScale(J)V

    goto :goto_3
.end method


# virtual methods
.method public createChild(Lde/innosystec/unrar/unpack/ppm/ModelPPM;Lde/innosystec/unrar/unpack/ppm/State;Lde/innosystec/unrar/unpack/ppm/StateRef;)I
    .locals 2
    .parameter "model"
    .parameter "pStats"
    .parameter "firstState"

    .prologue
    .line 150
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getSubAlloc()Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getTempPPMContext([B)Lde/innosystec/unrar/unpack/ppm/PPMContext;

    move-result-object v0

    .line 151
    .local v0, pc:Lde/innosystec/unrar/unpack/ppm/PPMContext;
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getSubAlloc()Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    move-result-object v1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->allocContext()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 152
    if-eqz v0, :cond_0

    .line 153
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setNumStats(I)V

    .line 154
    invoke-virtual {v0, p3}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setOneState(Lde/innosystec/unrar/unpack/ppm/StateRef;)V

    .line 155
    invoke-virtual {v0, p0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setSuffix(Lde/innosystec/unrar/unpack/ppm/PPMContext;)V

    .line 156
    invoke-virtual {p2, v0}, Lde/innosystec/unrar/unpack/ppm/State;->setSuccessor(Lde/innosystec/unrar/unpack/ppm/PPMContext;)V

    .line 158
    :cond_0
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v1

    return v1
.end method

.method public decodeBinSymbol(Lde/innosystec/unrar/unpack/ppm/ModelPPM;)V
    .locals 13
    .parameter "model"

    .prologue
    const v12, 0xffff

    const/4 v11, 0x7

    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 255
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->tempState1:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/ppm/State;->init([B)Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v3

    .line 256
    .local v3, rs:Lde/innosystec/unrar/unpack/ppm/State;
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->oneState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v6

    invoke-virtual {v3, v6}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 257
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHB2Flag()[I

    move-result-object v6

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getFoundState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v7

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/State;->getSymbol()I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {p1, v6}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->setHiBitsFlag(I)V

    .line 258
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 259
    .local v1, off1:I
    invoke-direct {p0, p1, v3}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getArrayIndex(Lde/innosystec/unrar/unpack/ppm/ModelPPM;Lde/innosystec/unrar/unpack/ppm/State;)I

    move-result v2

    .line 260
    .local v2, off2:I
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getBinSumm()[[I

    move-result-object v6

    aget-object v6, v6, v1

    aget v0, v6, v2

    .line 261
    .local v0, bs:I
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getCoder()Lde/innosystec/unrar/unpack/ppm/RangeCoder;

    move-result-object v6

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getCurrentShiftCount(I)J

    move-result-wide v6

    int-to-long v8, v0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 262
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getFoundState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v6

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v7

    invoke-virtual {v6, v7}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 263
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v6

    const/16 v7, 0x80

    if-ge v6, v7, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {v3, v4}, Lde/innosystec/unrar/unpack/ppm/State;->incFreq(I)V

    .line 264
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getCoder()Lde/innosystec/unrar/unpack/ppm/RangeCoder;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 265
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getCoder()Lde/innosystec/unrar/unpack/ppm/RangeCoder;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v4

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 266
    add-int/lit16 v4, v0, 0x80

    invoke-virtual {p0, v0, v11, v10}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getMean(III)I

    move-result v6

    sub-int/2addr v4, v6

    and-int v0, v4, v12

    .line 267
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getBinSumm()[[I

    move-result-object v4

    aget-object v4, v4, v1

    aput v0, v4, v2

    .line 268
    invoke-virtual {p1, v5}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    .line 269
    invoke-virtual {p1, v5}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->incRunLength(I)V

    .line 282
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getCoder()Lde/innosystec/unrar/unpack/ppm/RangeCoder;

    move-result-object v6

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v6

    int-to-long v7, v0

    invoke-virtual {v6, v7, v8}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 272
    invoke-virtual {p0, v0, v11, v10}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getMean(III)I

    move-result v6

    sub-int v6, v0, v6

    and-int v0, v6, v12

    .line 273
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getBinSumm()[[I

    move-result-object v6

    aget-object v6, v6, v1

    aput v0, v6, v2

    .line 274
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getCoder()Lde/innosystec/unrar/unpack/ppm/RangeCoder;

    move-result-object v6

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v6

    const-wide/16 v7, 0x4000

    invoke-virtual {v6, v7, v8}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 275
    sget-object v6, Lde/innosystec/unrar/unpack/ppm/PPMContext;->ExpEscape:[I

    ushr-int/lit8 v7, v0, 0xa

    aget v6, v6, v7

    invoke-virtual {p1, v6}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->setInitEsc(I)V

    .line 276
    invoke-virtual {p1, v5}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->setNumMasked(I)V

    .line 277
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v5

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/State;->getSymbol()I

    move-result v6

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v7

    aput v7, v5, v6

    .line 278
    invoke-virtual {p1, v4}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    .line 279
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getFoundState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v5

    invoke-virtual {v5, v4}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    goto :goto_0
.end method

.method public decodeSymbol1(Lde/innosystec/unrar/unpack/ppm/ModelPPM;)Z
    .locals 13
    .parameter "model"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 406
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getCoder()Lde/innosystec/unrar/unpack/ppm/RangeCoder;

    move-result-object v1

    .line 407
    .local v1, coder:Lde/innosystec/unrar/unpack/ppm/RangeCoder;
    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v9

    iget-object v10, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v10}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->setScale(J)V

    .line 408
    new-instance v6, Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v9

    invoke-direct {v6, v9}, Lde/innosystec/unrar/unpack/ppm/State;-><init>([B)V

    .line 409
    .local v6, p:Lde/innosystec/unrar/unpack/ppm/State;
    iget-object v9, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v9}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v9

    invoke-virtual {v6, v9}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 411
    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getCurrentCount()I

    move-result v9

    int-to-long v2, v9

    .line 412
    .local v2, count:J
    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v9

    invoke-virtual {v9}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v9

    cmp-long v9, v2, v9

    if-ltz v9, :cond_0

    move v8, v7

    .line 455
    :goto_0
    return v8

    .line 415
    :cond_0
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v0

    .local v0, HiCnt:I
    int-to-long v9, v0

    cmp-long v9, v2, v9

    if-gez v9, :cond_3

    .line 416
    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v9

    int-to-long v10, v0

    invoke-virtual {v9, v10, v11}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 417
    mul-int/lit8 v9, v0, 0x2

    int-to-long v9, v9

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v11

    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {p1, v7}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    .line 418
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getPrevSuccess()I

    move-result v7

    invoke-virtual {p1, v7}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->incRunLength(I)V

    .line 419
    add-int/lit8 v0, v0, 0x4

    .line 420
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getFoundState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v7

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v9

    invoke-virtual {v7, v9}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 421
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getFoundState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v7

    invoke-virtual {v7, v0}, Lde/innosystec/unrar/unpack/ppm/State;->setFreq(I)V

    .line 422
    iget-object v7, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Lde/innosystec/unrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 423
    const/16 v7, 0x7c

    if-le v0, v7, :cond_2

    .line 424
    invoke-virtual {p0, p1}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->rescale(Lde/innosystec/unrar/unpack/ppm/ModelPPM;)V

    .line 426
    :cond_2
    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v7

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v9, v10}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    goto :goto_0

    .line 429
    :cond_3
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getFoundState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v9

    invoke-virtual {v9}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v9

    if-nez v9, :cond_4

    move v8, v7

    .line 430
    goto :goto_0

    .line 433
    :cond_4
    invoke-virtual {p1, v7}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->setPrevSuccess(I)V

    .line 434
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v5

    .line 435
    .local v5, numStats:I
    add-int/lit8 v4, v5, -0x1

    .line 436
    .local v4, i:I
    :cond_5
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->incAddress()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v9

    invoke-virtual {v9}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v9

    add-int/2addr v0, v9

    int-to-long v9, v0

    cmp-long v9, v9, v2

    if-lez v9, :cond_6

    .line 452
    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v7

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v9

    sub-int v9, v0, v9

    int-to-long v9, v9

    invoke-virtual {v7, v9, v10}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 453
    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v7

    int-to-long v9, v0

    invoke-virtual {v7, v9, v10}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 454
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v7

    invoke-virtual {p0, p1, v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->update1(Lde/innosystec/unrar/unpack/ppm/ModelPPM;I)V

    goto/16 :goto_0

    .line 438
    :cond_6
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_5

    .line 439
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHB2Flag()[I

    move-result-object v9

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getFoundState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v10

    invoke-virtual {v10}, Lde/innosystec/unrar/unpack/ppm/State;->getSymbol()I

    move-result v10

    aget v9, v9, v10

    invoke-virtual {p1, v9}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->setHiBitsFlag(I)V

    .line 440
    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v9

    int-to-long v10, v0

    invoke-virtual {v9, v10, v11}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 441
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v9

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getSymbol()I

    move-result v10

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v11

    aput v11, v9, v10

    .line 442
    invoke-virtual {p1, v5}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->setNumMasked(I)V

    .line 443
    add-int/lit8 v4, v5, -0x1

    .line 444
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getFoundState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v9

    invoke-virtual {v9, v7}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 446
    :cond_7
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v7

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->decAddress()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v9

    invoke-virtual {v9}, Lde/innosystec/unrar/unpack/ppm/State;->getSymbol()I

    move-result v9

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v10

    aput v10, v7, v9

    .line 447
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_7

    .line 448
    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v7

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v9

    invoke-virtual {v9}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    goto/16 :goto_0
.end method

.method public decodeSymbol2(Lde/innosystec/unrar/unpack/ppm/ModelPPM;)Z
    .locals 13
    .parameter "model"

    .prologue
    .line 319
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v10

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getNumMasked()I

    move-result v11

    sub-int v4, v10, v11

    .line 320
    .local v4, i:I
    invoke-direct {p0, p1, v4}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->makeEscFreq2(Lde/innosystec/unrar/unpack/ppm/ModelPPM;I)Lde/innosystec/unrar/unpack/ppm/SEE2Context;

    move-result-object v8

    .line 321
    .local v8, psee2c:Lde/innosystec/unrar/unpack/ppm/SEE2Context;
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getCoder()Lde/innosystec/unrar/unpack/ppm/RangeCoder;

    move-result-object v0

    .line 323
    .local v0, coder:Lde/innosystec/unrar/unpack/ppm/RangeCoder;
    iget-object v10, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->tempState1:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lde/innosystec/unrar/unpack/ppm/State;->init([B)Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v5

    .line 324
    .local v5, p:Lde/innosystec/unrar/unpack/ppm/State;
    iget-object v10, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->tempState2:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lde/innosystec/unrar/unpack/ppm/State;->init([B)Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v9

    .line 325
    .local v9, temp:Lde/innosystec/unrar/unpack/ppm/State;
    iget-object v10, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v10}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v10

    add-int/lit8 v10, v10, -0x6

    invoke-virtual {v5, v10}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 326
    const/4 v6, 0x0

    .line 327
    .local v6, pps:I
    const/4 v3, 0x0

    .line 331
    .local v3, hiCnt:I
    :cond_0
    :goto_0
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/State;->incAddress()Lde/innosystec/unrar/unpack/ppm/State;

    .line 332
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v10

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/State;->getSymbol()I

    move-result v11

    aget v10, v10, v11

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v11

    if-eq v10, v11, :cond_0

    .line 333
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v10

    add-int/2addr v3, v10

    .line 334
    iget-object v10, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->ps:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #pps:I
    .local v7, pps:I
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v11

    aput v11, v10, v6

    .line 335
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_5

    .line 336
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v10

    invoke-virtual {v10, v3}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->incScale(I)V

    .line 337
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getCurrentCount()I

    move-result v10

    int-to-long v1, v10

    .line 338
    .local v1, count:J
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v10

    invoke-virtual {v10}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v10

    cmp-long v10, v1, v10

    if-ltz v10, :cond_1

    .line 339
    const/4 v10, 0x0

    move v6, v7

    .line 364
    .end local v7           #pps:I
    .restart local v6       #pps:I
    :goto_1
    return v10

    .line 341
    .end local v6           #pps:I
    .restart local v7       #pps:I
    :cond_1
    const/4 v6, 0x0

    .line 342
    .end local v7           #pps:I
    .restart local v6       #pps:I
    iget-object v10, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->ps:[I

    aget v10, v10, v6

    invoke-virtual {v5, v10}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 343
    int-to-long v10, v3

    cmp-long v10, v1, v10

    if-gez v10, :cond_3

    .line 344
    const/4 v3, 0x0

    .line 345
    :goto_2
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v10

    add-int/2addr v3, v10

    int-to-long v10, v3

    cmp-long v10, v10, v1

    if-lez v10, :cond_2

    .line 348
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v10

    int-to-long v11, v3

    invoke-virtual {v10, v11, v12}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 349
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v10

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v11

    sub-int v11, v3, v11

    int-to-long v11, v11

    invoke-virtual {v10, v11, v12}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 350
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/SEE2Context;->update()V

    .line 351
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v10

    invoke-virtual {p0, p1, v10}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->update2(Lde/innosystec/unrar/unpack/ppm/ModelPPM;I)V

    .line 364
    :goto_3
    const/4 v10, 0x1

    goto :goto_1

    .line 346
    :cond_2
    iget-object v10, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->ps:[I

    add-int/lit8 v6, v6, 0x1

    aget v10, v10, v6

    invoke-virtual {v5, v10}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    goto :goto_2

    .line 353
    :cond_3
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v10

    int-to-long v11, v3

    invoke-virtual {v10, v11, v12}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->setLowCount(J)V

    .line 354
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v10

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v11

    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->setHighCount(J)V

    .line 355
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v10

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getNumMasked()I

    move-result v11

    sub-int v4, v10, v11

    .line 356
    add-int/lit8 v6, v6, -0x1

    .line 358
    :cond_4
    iget-object v10, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->ps:[I

    add-int/lit8 v6, v6, 0x1

    aget v10, v10, v6

    invoke-virtual {v9, v10}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 359
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getCharMask()[I

    move-result-object v10

    invoke-virtual {v9}, Lde/innosystec/unrar/unpack/ppm/State;->getSymbol()I

    move-result v11

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v12

    aput v12, v10, v11

    .line 360
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_4

    .line 361
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->getSubRange()Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;

    move-result-object v10

    invoke-virtual {v10}, Lde/innosystec/unrar/unpack/ppm/RangeCoder$SubRange;->getScale()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v8, v10}, Lde/innosystec/unrar/unpack/ppm/SEE2Context;->incSumm(I)V

    .line 362
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v10

    invoke-virtual {p1, v10}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->setNumMasked(I)V

    goto :goto_3

    .end local v1           #count:J
    .end local v6           #pps:I
    .restart local v7       #pps:I
    :cond_5
    move v6, v7

    .end local v7           #pps:I
    .restart local v6       #pps:I
    goto/16 :goto_0
.end method

.method public getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    return-object v0
.end method

.method public getMean(III)I
    .locals 2
    .parameter "summ"
    .parameter "shift"
    .parameter "round"

    .prologue
    .line 250
    const/4 v0, 0x1

    sub-int v1, p2, p3

    shl-int/2addr v0, v1

    add-int/2addr v0, p1

    ushr-int/2addr v0, p2

    return v0
.end method

.method public final getNumStats()I
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->mem:[B

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->mem:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->pos:I

    invoke-static {v0, v1}, Lde/innosystec/unrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->numStats:I

    .line 90
    :cond_0
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->numStats:I

    return v0
.end method

.method public getOneState()Lde/innosystec/unrar/unpack/ppm/State;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->oneState:Lde/innosystec/unrar/unpack/ppm/State;

    return-object v0
.end method

.method public getSuffix()I
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->mem:[B

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->mem:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->pos:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->suffix:I

    .line 116
    :cond_0
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->suffix:I

    return v0
.end method

.method public init([B)Lde/innosystec/unrar/unpack/ppm/PPMContext;
    .locals 1
    .parameter "mem"

    .prologue
    .line 67
    iput-object p1, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->mem:[B

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->pos:I

    .line 69
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->oneState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v0, p1}, Lde/innosystec/unrar/unpack/ppm/State;->init([B)Lde/innosystec/unrar/unpack/ppm/State;

    .line 70
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v0, p1}, Lde/innosystec/unrar/unpack/ppm/FreqData;->init([B)Lde/innosystec/unrar/unpack/ppm/FreqData;

    .line 71
    return-object p0
.end method

.method public rescale(Lde/innosystec/unrar/unpack/ppm/ModelPPM;)V
    .locals 15
    .parameter "model"

    .prologue
    .line 163
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v2

    .local v2, OldNS:I
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .line 165
    .local v3, i:I
    new-instance v7, Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual/range {p1 .. p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v12

    invoke-direct {v7, v12}, Lde/innosystec/unrar/unpack/ppm/State;-><init>([B)V

    .line 166
    .local v7, p1:Lde/innosystec/unrar/unpack/ppm/State;
    new-instance v6, Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual/range {p1 .. p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v12

    invoke-direct {v6, v12}, Lde/innosystec/unrar/unpack/ppm/State;-><init>([B)V

    .line 167
    .local v6, p:Lde/innosystec/unrar/unpack/ppm/State;
    new-instance v8, Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual/range {p1 .. p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v12

    invoke-direct {v8, v12}, Lde/innosystec/unrar/unpack/ppm/State;-><init>([B)V

    .line 169
    .local v8, temp:Lde/innosystec/unrar/unpack/ppm/State;
    invoke-virtual/range {p1 .. p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getFoundState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v12

    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v12

    invoke-virtual {v6, v12}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 170
    :goto_0
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v12

    iget-object v13, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v13

    if-ne v12, v13, :cond_6

    .line 175
    iget-object v12, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v12

    invoke-virtual {v8, v12}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 176
    const/4 v12, 0x4

    invoke-virtual {v8, v12}, Lde/innosystec/unrar/unpack/ppm/State;->incFreq(I)V

    .line 177
    iget-object v12, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lde/innosystec/unrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 178
    iget-object v12, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v12

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v13

    sub-int v1, v12, v13

    .line 179
    .local v1, EscFreq:I
    invoke-virtual/range {p1 .. p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getOrderFall()I

    move-result v12

    if-eqz v12, :cond_7

    const/4 v0, 0x1

    .line 180
    .local v0, Adder:I
    :goto_1
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v12

    add-int/2addr v12, v0

    ushr-int/lit8 v12, v12, 0x1

    invoke-virtual {v6, v12}, Lde/innosystec/unrar/unpack/ppm/State;->setFreq(I)V

    .line 181
    iget-object v12, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v13

    invoke-virtual {v12, v13}, Lde/innosystec/unrar/unpack/ppm/FreqData;->setSummFreq(I)V

    .line 183
    :cond_0
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->incAddress()Lde/innosystec/unrar/unpack/ppm/State;

    .line 184
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v12

    sub-int/2addr v1, v12

    .line 185
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v12

    add-int/2addr v12, v0

    ushr-int/lit8 v12, v12, 0x1

    invoke-virtual {v6, v12}, Lde/innosystec/unrar/unpack/ppm/State;->setFreq(I)V

    .line 186
    iget-object v12, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v13

    invoke-virtual {v12, v13}, Lde/innosystec/unrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 187
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v12

    add-int/lit8 v12, v12, -0x6

    invoke-virtual {v8, v12}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 188
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v12

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v13

    if-le v12, v13, :cond_3

    .line 189
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v12

    invoke-virtual {v7, v12}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 190
    new-instance v11, Lde/innosystec/unrar/unpack/ppm/StateRef;

    invoke-direct {v11}, Lde/innosystec/unrar/unpack/ppm/StateRef;-><init>()V

    .line 191
    .local v11, tmp:Lde/innosystec/unrar/unpack/ppm/StateRef;
    invoke-virtual {v11, v7}, Lde/innosystec/unrar/unpack/ppm/StateRef;->setValues(Lde/innosystec/unrar/unpack/ppm/State;)V

    .line 192
    new-instance v9, Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual/range {p1 .. p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v12

    invoke-direct {v9, v12}, Lde/innosystec/unrar/unpack/ppm/State;-><init>([B)V

    .line 193
    .local v9, temp2:Lde/innosystec/unrar/unpack/ppm/State;
    new-instance v10, Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual/range {p1 .. p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v12

    invoke-direct {v10, v12}, Lde/innosystec/unrar/unpack/ppm/State;-><init>([B)V

    .line 196
    .local v10, temp3:Lde/innosystec/unrar/unpack/ppm/State;
    :cond_1
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v12

    add-int/lit8 v12, v12, -0x6

    invoke-virtual {v9, v12}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 197
    invoke-virtual {v7, v9}, Lde/innosystec/unrar/unpack/ppm/State;->setValues(Lde/innosystec/unrar/unpack/ppm/State;)V

    .line 198
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/State;->decAddress()Lde/innosystec/unrar/unpack/ppm/State;

    .line 199
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v12

    add-int/lit8 v12, v12, -0x6

    invoke-virtual {v10, v12}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 200
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v12

    iget-object v13, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v13

    if-eq v12, v13, :cond_2

    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/ppm/StateRef;->getFreq()I

    move-result v12

    invoke-virtual {v10}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v13

    if-gt v12, v13, :cond_1

    .line 201
    :cond_2
    invoke-virtual {v7, v11}, Lde/innosystec/unrar/unpack/ppm/State;->setValues(Lde/innosystec/unrar/unpack/ppm/StateRef;)V

    .line 203
    .end local v9           #temp2:Lde/innosystec/unrar/unpack/ppm/State;
    .end local v10           #temp3:Lde/innosystec/unrar/unpack/ppm/State;
    .end local v11           #tmp:Lde/innosystec/unrar/unpack/ppm/StateRef;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_0

    .line 204
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v12

    if-nez v12, :cond_8

    .line 206
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 207
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->decAddress()Lde/innosystec/unrar/unpack/ppm/State;

    .line 208
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v12

    if-eqz v12, :cond_4

    .line 209
    add-int/2addr v1, v3

    .line 210
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v12

    sub-int/2addr v12, v3

    invoke-virtual {p0, v12}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setNumStats(I)V

    .line 211
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    .line 212
    new-instance v11, Lde/innosystec/unrar/unpack/ppm/StateRef;

    invoke-direct {v11}, Lde/innosystec/unrar/unpack/ppm/StateRef;-><init>()V

    .line 213
    .restart local v11       #tmp:Lde/innosystec/unrar/unpack/ppm/StateRef;
    iget-object v12, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v12

    invoke-virtual {v8, v12}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 214
    invoke-virtual {v11, v8}, Lde/innosystec/unrar/unpack/ppm/StateRef;->setValues(Lde/innosystec/unrar/unpack/ppm/State;)V

    .line 218
    :cond_5
    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/ppm/StateRef;->getFreq()I

    move-result v12

    ushr-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Lde/innosystec/unrar/unpack/ppm/StateRef;->decFreq(I)V

    .line 219
    ushr-int/lit8 v1, v1, 0x1

    .line 220
    const/4 v12, 0x1

    if-gt v1, v12, :cond_5

    .line 221
    invoke-virtual/range {p1 .. p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getSubAlloc()Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    move-result-object v12

    iget-object v13, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v13

    add-int/lit8 v14, v2, 0x1

    ushr-int/lit8 v14, v14, 0x1

    invoke-virtual {v12, v13, v14}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeUnits(II)V

    .line 222
    iget-object v12, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->oneState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v12, v11}, Lde/innosystec/unrar/unpack/ppm/State;->setValues(Lde/innosystec/unrar/unpack/ppm/StateRef;)V

    .line 223
    invoke-virtual/range {p1 .. p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getFoundState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v12

    iget-object v13, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->oneState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v13

    invoke-virtual {v12, v13}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 234
    .end local v11           #tmp:Lde/innosystec/unrar/unpack/ppm/StateRef;
    :goto_2
    return-void

    .line 172
    .end local v0           #Adder:I
    .end local v1           #EscFreq:I
    :cond_6
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v12

    add-int/lit8 v12, v12, -0x6

    invoke-virtual {v8, v12}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 173
    invoke-static {v6, v8}, Lde/innosystec/unrar/unpack/ppm/State;->ppmdSwap(Lde/innosystec/unrar/unpack/ppm/State;Lde/innosystec/unrar/unpack/ppm/State;)V

    .line 171
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->decAddress()Lde/innosystec/unrar/unpack/ppm/State;

    goto/16 :goto_0

    .line 179
    .restart local v1       #EscFreq:I
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 227
    .restart local v0       #Adder:I
    :cond_8
    ushr-int/lit8 v12, v1, 0x1

    sub-int/2addr v1, v12

    .line 228
    iget-object v12, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v12, v1}, Lde/innosystec/unrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 229
    add-int/lit8 v12, v2, 0x1

    ushr-int/lit8 v4, v12, 0x1

    .local v4, n0:I
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    ushr-int/lit8 v5, v12, 0x1

    .line 230
    .local v5, n1:I
    if-eq v4, v5, :cond_9

    .line 231
    iget-object v12, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual/range {p1 .. p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getSubAlloc()Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    move-result-object v13

    iget-object v14, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v14

    invoke-virtual {v13, v14, v4, v5}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->shrinkUnits(III)I

    move-result v13

    invoke-virtual {v12, v13}, Lde/innosystec/unrar/unpack/ppm/FreqData;->setStats(I)V

    .line 233
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getFoundState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v12

    iget-object v13, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v13

    invoke-virtual {v12, v13}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    goto :goto_2
.end method

.method public setAddress(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 135
    invoke-super {p0, p1}, Lde/innosystec/unrar/unpack/ppm/Pointer;->setAddress(I)V

    .line 136
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->oneState:Lde/innosystec/unrar/unpack/ppm/State;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 137
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/FreqData;->setAddress(I)V

    .line 138
    return-void
.end method

.method public setFreqData(Lde/innosystec/unrar/unpack/ppm/FreqData;)V
    .locals 2
    .parameter "freqData"

    .prologue
    .line 81
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/FreqData;->setSummFreq(I)V

    .line 82
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/FreqData;->setStats(I)V

    .line 83
    return-void
.end method

.method public final setNumStats(I)V
    .locals 3
    .parameter "numStats"

    .prologue
    .line 95
    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->numStats:I

    .line 96
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->mem:[B

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->mem:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->pos:I

    int-to-short v2, p1

    invoke-static {v0, v1, v2}, Lde/innosystec/unrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 99
    :cond_0
    return-void
.end method

.method public setOneState(Lde/innosystec/unrar/unpack/ppm/StateRef;)V
    .locals 1
    .parameter "oneState"

    .prologue
    .line 108
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->oneState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v0, p1}, Lde/innosystec/unrar/unpack/ppm/State;->setValues(Lde/innosystec/unrar/unpack/ppm/StateRef;)V

    .line 109
    return-void
.end method

.method public setSuffix(I)V
    .locals 2
    .parameter "suffix"

    .prologue
    .line 126
    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->suffix:I

    .line 127
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->mem:[B

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->mem:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->pos:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1, p1}, Lde/innosystec/unrar/io/Raw;->writeIntLittleEndian([BII)V

    .line 130
    :cond_0
    return-void
.end method

.method public setSuffix(Lde/innosystec/unrar/unpack/ppm/PPMContext;)V
    .locals 1
    .parameter "suffix"

    .prologue
    .line 121
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setSuffix(I)V

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v1, "PPMContext["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v1, "\n  pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 463
    const-string v1, "\n  size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    sget v1, Lde/innosystec/unrar/unpack/ppm/PPMContext;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    const-string v1, "\n  numStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    const-string v1, "\n  Suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    const-string v1, "\n  freqData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 471
    const-string v1, "\n  oneState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->oneState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 473
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update1(Lde/innosystec/unrar/unpack/ppm/ModelPPM;I)V
    .locals 4
    .parameter "model"
    .parameter "p"

    .prologue
    const/4 v3, 0x4

    .line 301
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getFoundState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v2

    invoke-virtual {v2, p2}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 302
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getFoundState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v2

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/State;->incFreq(I)V

    .line 303
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 304
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->tempState3:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/State;->init([B)Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v0

    .line 305
    .local v0, p0:Lde/innosystec/unrar/unpack/ppm/State;
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->tempState4:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/State;->init([B)Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v1

    .line 306
    .local v1, p1:Lde/innosystec/unrar/unpack/ppm/State;
    invoke-virtual {v0, p2}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 307
    add-int/lit8 v2, p2, -0x6

    invoke-virtual {v1, v2}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 308
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v2

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 309
    invoke-static {v0, v1}, Lde/innosystec/unrar/unpack/ppm/State;->ppmdSwap(Lde/innosystec/unrar/unpack/ppm/State;Lde/innosystec/unrar/unpack/ppm/State;)V

    .line 310
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getFoundState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v2

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 311
    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v2

    const/16 v3, 0x7c

    if-le v2, v3, :cond_0

    .line 312
    invoke-virtual {p0, p1}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->rescale(Lde/innosystec/unrar/unpack/ppm/ModelPPM;)V

    .line 314
    :cond_0
    return-void
.end method

.method public update2(Lde/innosystec/unrar/unpack/ppm/ModelPPM;I)V
    .locals 4
    .parameter "model"
    .parameter "p"

    .prologue
    const/4 v3, 0x4

    .line 369
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->tempState5:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/innosystec/unrar/unpack/ppm/State;->init([B)Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v0

    .line 370
    .local v0, temp:Lde/innosystec/unrar/unpack/ppm/State;
    invoke-virtual {v0, p2}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 371
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getFoundState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v1

    invoke-virtual {v1, p2}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 372
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getFoundState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v1

    invoke-virtual {v1, v3}, Lde/innosystec/unrar/unpack/ppm/State;->incFreq(I)V

    .line 373
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->freqData:Lde/innosystec/unrar/unpack/ppm/FreqData;

    invoke-virtual {v1, v3}, Lde/innosystec/unrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 374
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v1

    const/16 v2, 0x7c

    if-le v1, v2, :cond_0

    .line 375
    invoke-virtual {p0, p1}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->rescale(Lde/innosystec/unrar/unpack/ppm/ModelPPM;)V

    .line 377
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->incEscCount(I)V

    .line 378
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getInitRL()I

    move-result v1

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->setRunLength(I)V

    .line 379
    return-void
.end method
