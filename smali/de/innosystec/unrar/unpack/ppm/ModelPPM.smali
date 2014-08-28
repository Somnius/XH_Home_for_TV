.class public Lde/innosystec/unrar/unpack/ppm/ModelPPM;
.super Ljava/lang/Object;
.source "ModelPPM.java"


# static fields
.field public static final BIN_SCALE:I = 0x4000

.field public static final INTERVAL:I = 0x80

.field public static final INT_BITS:I = 0x7

.field private static InitBinEsc:[I = null

.field public static final MAX_FREQ:I = 0x7c

.field public static final MAX_O:I = 0x40

.field public static final PERIOD_BITS:I = 0x7

.field public static final TOT_BITS:I = 0xe


# instance fields
.field private HB2Flag:[I

.field private NS2BSIndx:[I

.field private NS2Indx:[I

.field private SEE2Cont:[[Lde/innosystec/unrar/unpack/ppm/SEE2Context;

.field private binSumm:[[I

.field private charMask:[I

.field private coder:Lde/innosystec/unrar/unpack/ppm/RangeCoder;

.field private dummySEE2Cont:Lde/innosystec/unrar/unpack/ppm/SEE2Context;

.field private escCount:I

.field private foundState:Lde/innosystec/unrar/unpack/ppm/State;

.field private hiBitsFlag:I

.field private initEsc:I

.field private initRL:I

.field private maxContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

.field private maxOrder:I

.field private medContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

.field private minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

.field private numMasked:I

.field private orderFall:I

.field private prevSuccess:I

.field private final ps:[I

.field private runLength:I

.field private subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

.field private final tempPPMContext1:Lde/innosystec/unrar/unpack/ppm/PPMContext;

.field private final tempPPMContext2:Lde/innosystec/unrar/unpack/ppm/PPMContext;

.field private final tempPPMContext3:Lde/innosystec/unrar/unpack/ppm/PPMContext;

.field private final tempPPMContext4:Lde/innosystec/unrar/unpack/ppm/PPMContext;

.field private final tempState1:Lde/innosystec/unrar/unpack/ppm/State;

.field private final tempState2:Lde/innosystec/unrar/unpack/ppm/State;

.field private final tempState3:Lde/innosystec/unrar/unpack/ppm/State;

.field private final tempState4:Lde/innosystec/unrar/unpack/ppm/State;

.field private final tempStateRef1:Lde/innosystec/unrar/unpack/ppm/StateRef;

.field private final tempStateRef2:Lde/innosystec/unrar/unpack/ppm/StateRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->InitBinEsc:[I

    .line 32
    return-void

    .line 75
    :array_0
    .array-data 0x4
        0xddt 0x3ct 0x0t 0x0t
        0x3ft 0x1ft 0x0t 0x0t
        0xbft 0x59t 0x0t 0x0t
        0xf3t 0x48t 0x0t 0x0t
        0xa1t 0x64t 0x0t 0x0t
        0xbct 0x5at 0x0t 0x0t
        0x32t 0x66t 0x0t 0x0t
        0x51t 0x60t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x40

    const/16 v3, 0x100

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x19

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lde/innosystec/unrar/unpack/ppm/SEE2Context;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lde/innosystec/unrar/unpack/ppm/SEE2Context;

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lde/innosystec/unrar/unpack/ppm/SEE2Context;

    .line 58
    new-array v0, v3, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->charMask:[I

    .line 60
    new-array v0, v3, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    .line 62
    new-array v0, v3, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    .line 64
    new-array v0, v3, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    .line 69
    const/16 v0, 0x80

    filled-new-array {v0, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->binSumm:[[I

    .line 71
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/RangeCoder;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->coder:Lde/innosystec/unrar/unpack/ppm/RangeCoder;

    .line 73
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    .line 79
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/State;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempState1:Lde/innosystec/unrar/unpack/ppm/State;

    .line 80
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/State;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempState2:Lde/innosystec/unrar/unpack/ppm/State;

    .line 81
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/State;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempState3:Lde/innosystec/unrar/unpack/ppm/State;

    .line 82
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/State;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/State;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempState4:Lde/innosystec/unrar/unpack/ppm/State;

    .line 83
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/StateRef;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/ppm/StateRef;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempStateRef1:Lde/innosystec/unrar/unpack/ppm/StateRef;

    .line 84
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/StateRef;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/ppm/StateRef;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempStateRef2:Lde/innosystec/unrar/unpack/ppm/StateRef;

    .line 85
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempPPMContext1:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    .line 86
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempPPMContext2:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    .line 87
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempPPMContext3:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    .line 88
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-direct {v0, v2}, Lde/innosystec/unrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempPPMContext4:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    .line 89
    new-array v0, v4, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->ps:[I

    .line 93
    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    .line 94
    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->maxContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    .line 95
    iput-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->medContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    .line 96
    return-void
.end method

.method private clearMask()V
    .locals 2

    .prologue
    .line 182
    const/4 v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->escCount:I

    .line 183
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->charMask:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 184
    return-void
.end method

.method private createSuccessors(ZLde/innosystec/unrar/unpack/ppm/State;)I
    .locals 13
    .parameter "Skip"
    .parameter "p1"

    .prologue
    .line 416
    iget-object v10, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempStateRef2:Lde/innosystec/unrar/unpack/ppm/StateRef;

    .line 417
    .local v10, upState:Lde/innosystec/unrar/unpack/ppm/StateRef;
    iget-object v11, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempState1:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lde/innosystec/unrar/unpack/ppm/State;->init([B)Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v8

    .line 420
    .local v8, tempState:Lde/innosystec/unrar/unpack/ppm/State;
    iget-object v11, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempPPMContext1:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->init([B)Lde/innosystec/unrar/unpack/ppm/PPMContext;

    move-result-object v4

    .line 421
    .local v4, pc:Lde/innosystec/unrar/unpack/ppm/PPMContext;
    iget-object v11, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v11

    invoke-virtual {v4, v11}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 422
    iget-object v11, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempPPMContext2:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->init([B)Lde/innosystec/unrar/unpack/ppm/PPMContext;

    move-result-object v9

    .line 423
    .local v9, upBranch:Lde/innosystec/unrar/unpack/ppm/PPMContext;
    iget-object v11, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->foundState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/ppm/State;->getSuccessor()I

    move-result v11

    invoke-virtual {v9, v11}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 426
    iget-object v11, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempState2:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lde/innosystec/unrar/unpack/ppm/State;->init([B)Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v3

    .line 427
    .local v3, p:Lde/innosystec/unrar/unpack/ppm/State;
    const/4 v5, 0x0

    .line 429
    .local v5, pps:I
    const/4 v2, 0x0

    .line 431
    .local v2, noLoop:Z
    if-nez p1, :cond_0

    .line 432
    iget-object v11, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->ps:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5           #pps:I
    .local v6, pps:I
    iget-object v12, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->foundState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v12

    aput v12, v11, v5

    .line 433
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v11

    if-nez v11, :cond_10

    .line 434
    const/4 v2, 0x1

    move v5, v6

    .line 437
    .end local v6           #pps:I
    .restart local v5       #pps:I
    :cond_0
    :goto_0
    if-nez v2, :cond_3

    .line 438
    const/4 v1, 0x0

    .line 439
    .local v1, loopEntry:Z
    invoke-virtual {p2}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v11

    if-eqz v11, :cond_6

    .line 440
    invoke-virtual {p2}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v11

    invoke-virtual {v3, v11}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 441
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v11

    invoke-virtual {v4, v11}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 442
    const/4 v1, 0x1

    move v6, v5

    .line 445
    .end local v5           #pps:I
    .restart local v6       #pps:I
    :goto_1
    if-nez v1, :cond_2

    .line 446
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v11

    invoke-virtual {v4, v11}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 447
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    .line 448
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v11

    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v11

    invoke-virtual {v3, v11}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 449
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/State;->getSymbol()I

    move-result v11

    iget-object v12, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->foundState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/ppm/State;->getSymbol()I

    move-result v12

    if-eq v11, v12, :cond_2

    .line 451
    :cond_1
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/State;->incAddress()Lde/innosystec/unrar/unpack/ppm/State;

    .line 452
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/State;->getSymbol()I

    move-result v11

    iget-object v12, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->foundState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/ppm/State;->getSymbol()I

    move-result v12

    if-ne v11, v12, :cond_1

    .line 458
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .line 459
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/State;->getSuccessor()I

    move-result v11

    invoke-virtual {v9}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v12

    if-eq v11, v12, :cond_5

    .line 460
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/State;->getSuccessor()I

    move-result v11

    invoke-virtual {v4, v11}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    move v5, v6

    .line 467
    .end local v1           #loopEntry:Z
    .end local v6           #pps:I
    .restart local v5       #pps:I
    :cond_3
    if-nez v5, :cond_7

    .line 468
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v11

    .line 500
    :goto_3
    return v11

    .line 455
    .end local v5           #pps:I
    .restart local v1       #loopEntry:Z
    .restart local v6       #pps:I
    :cond_4
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getOneState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v11

    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v11

    invoke-virtual {v3, v11}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    goto :goto_2

    .line 463
    :cond_5
    iget-object v11, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->ps:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6           #pps:I
    .restart local v5       #pps:I
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v12

    aput v12, v11, v6

    .line 464
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v11

    if-eqz v11, :cond_3

    :cond_6
    move v6, v5

    .end local v5           #pps:I
    .restart local v6       #pps:I
    goto :goto_1

    .line 470
    .end local v1           #loopEntry:Z
    .end local v6           #pps:I
    .restart local v5       #pps:I
    :cond_7
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v11

    invoke-virtual {v9}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v12

    aget-byte v11, v11, v12

    invoke-virtual {v10, v11}, Lde/innosystec/unrar/unpack/ppm/StateRef;->setSymbol(I)V

    .line 473
    invoke-virtual {v9}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Lde/innosystec/unrar/unpack/ppm/StateRef;->setSuccessor(I)V

    .line 474
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_e

    .line 475
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v11

    iget-object v12, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v12

    if-gt v11, v12, :cond_8

    .line 476
    const/4 v11, 0x0

    goto :goto_3

    .line 478
    :cond_8
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v11

    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v11

    invoke-virtual {v3, v11}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 479
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/State;->getSymbol()I

    move-result v11

    invoke-virtual {v10}, Lde/innosystec/unrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v12

    if-eq v11, v12, :cond_a

    .line 481
    :cond_9
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/State;->incAddress()Lde/innosystec/unrar/unpack/ppm/State;

    .line 482
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/State;->getSymbol()I

    move-result v11

    invoke-virtual {v10}, Lde/innosystec/unrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v12

    if-ne v11, v12, :cond_9

    .line 484
    :cond_a
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v11

    add-int/lit8 v0, v11, -0x1

    .line 485
    .local v0, cf:I
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v11

    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v11

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int v7, v11, v0

    .line 487
    .local v7, s0:I
    mul-int/lit8 v11, v0, 0x2

    if-gt v11, v7, :cond_d

    mul-int/lit8 v11, v0, 0x5

    if-le v11, v7, :cond_c

    const/4 v11, 0x1

    .line 488
    :goto_4
    add-int/lit8 v11, v11, 0x1

    .line 487
    invoke-virtual {v10, v11}, Lde/innosystec/unrar/unpack/ppm/StateRef;->setFreq(I)V

    .line 494
    .end local v0           #cf:I
    .end local v7           #s0:I
    :cond_b
    :goto_5
    iget-object v11, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->ps:[I

    add-int/lit8 v5, v5, -0x1

    aget v11, v11, v5

    invoke-virtual {v8, v11}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 495
    invoke-virtual {v4, p0, v8, v10}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->createChild(Lde/innosystec/unrar/unpack/ppm/ModelPPM;Lde/innosystec/unrar/unpack/ppm/State;Lde/innosystec/unrar/unpack/ppm/StateRef;)I

    move-result v11

    invoke-virtual {v4, v11}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 496
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v11

    if-nez v11, :cond_f

    .line 497
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 487
    .restart local v0       #cf:I
    .restart local v7       #s0:I
    :cond_c
    const/4 v11, 0x0

    goto :goto_4

    .line 488
    :cond_d
    mul-int/lit8 v11, v0, 0x2

    mul-int/lit8 v12, v7, 0x3

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    mul-int/lit8 v12, v7, 0x2

    div-int/2addr v11, v12

    goto :goto_4

    .line 490
    .end local v0           #cf:I
    .end local v7           #s0:I
    :cond_e
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getOneState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v11

    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v11

    invoke-virtual {v10, v11}, Lde/innosystec/unrar/unpack/ppm/StateRef;->setFreq(I)V

    goto :goto_5

    .line 499
    :cond_f
    if-nez v5, :cond_b

    .line 500
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v11

    goto/16 :goto_3

    .end local v5           #pps:I
    .restart local v6       #pps:I
    :cond_10
    move v5, v6

    .end local v6           #pps:I
    .restart local v5       #pps:I
    goto/16 :goto_0
.end method

.method private restartModelRare()V
    .locals 10

    .prologue
    const/16 v8, 0x100

    const/16 v9, 0x80

    const/16 v5, 0xc

    const/4 v7, 0x0

    .line 105
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->charMask:[I

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 106
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->initSubAllocator()V

    .line 107
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->maxOrder:I

    if-ge v6, v5, :cond_0

    iget v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->maxOrder:I

    :cond_0
    neg-int v5, v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->initRL:I

    .line 108
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->allocContext()I

    move-result v0

    .line 109
    .local v0, addr:I
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v5, v0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 110
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->maxContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v5, v0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 111
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v5, v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setSuffix(I)V

    .line 112
    iget v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->maxOrder:I

    iput v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->orderFall:I

    .line 113
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v5, v8}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setNumStats(I)V

    .line 114
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v5

    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lde/innosystec/unrar/unpack/ppm/FreqData;->setSummFreq(I)V

    .line 116
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v5, v9}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->allocUnits(I)I

    move-result v0

    .line 117
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->foundState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v5, v0}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 118
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v5

    invoke-virtual {v5, v0}, Lde/innosystec/unrar/unpack/ppm/FreqData;->setStats(I)V

    .line 120
    new-instance v4, Lde/innosystec/unrar/unpack/ppm/State;

    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lde/innosystec/unrar/unpack/ppm/State;-><init>([B)V

    .line 121
    .local v4, state:Lde/innosystec/unrar/unpack/ppm/State;
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v5

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v0

    .line 122
    iget v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->initRL:I

    iput v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->runLength:I

    .line 123
    iput v7, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->prevSuccess:I

    .line 124
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v8, :cond_1

    .line 131
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v9, :cond_2

    .line 138
    const/4 v1, 0x0

    :goto_2
    const/16 v5, 0x19

    if-lt v1, v5, :cond_5

    .line 143
    return-void

    .line 125
    :cond_1
    mul-int/lit8 v5, v1, 0x6

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 126
    invoke-virtual {v4, v1}, Lde/innosystec/unrar/unpack/ppm/State;->setSymbol(I)V

    .line 127
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lde/innosystec/unrar/unpack/ppm/State;->setFreq(I)V

    .line 128
    invoke-virtual {v4, v7}, Lde/innosystec/unrar/unpack/ppm/State;->setSuccessor(I)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_2
    const/4 v2, 0x0

    .local v2, k:I
    :goto_3
    const/16 v5, 0x8

    if-lt v2, v5, :cond_3

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    :cond_3
    const/4 v3, 0x0

    .local v3, m:I
    :goto_4
    const/16 v5, 0x40

    if-lt v3, v5, :cond_4

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 134
    :cond_4
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->binSumm:[[I

    aget-object v5, v5, v1

    add-int v6, v2, v3

    sget-object v7, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->InitBinEsc:[I

    aget v7, v7, v2

    add-int/lit8 v8, v1, 0x2

    div-int/2addr v7, v8

    rsub-int v7, v7, 0x4000

    aput v7, v5, v6

    .line 133
    add-int/lit8 v3, v3, 0x8

    goto :goto_4

    .line 139
    .end local v2           #k:I
    .end local v3           #m:I
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #k:I
    :goto_5
    const/16 v5, 0x10

    if-lt v2, v5, :cond_6

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 140
    :cond_6
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lde/innosystec/unrar/unpack/ppm/SEE2Context;

    aget-object v5, v5, v1

    aget-object v5, v5, v2

    mul-int/lit8 v6, v1, 0x5

    add-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Lde/innosystec/unrar/unpack/ppm/SEE2Context;->init(I)V

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private startModelRare(I)V
    .locals 9
    .parameter "MaxOrder"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 148
    iput v7, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->escCount:I

    .line 149
    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->maxOrder:I

    .line 150
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->restartModelRare()V

    .line 152
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    aput v8, v5, v8

    .line 153
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    const/4 v6, 0x2

    aput v6, v5, v7

    .line 154
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    const/16 v5, 0x9

    if-lt v2, v5, :cond_0

    .line 157
    const/4 v2, 0x0

    :goto_1
    const/16 v5, 0xf5

    if-lt v2, v5, :cond_1

    .line 160
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/4 v5, 0x3

    if-lt v1, v5, :cond_2

    .line 163
    move v4, v1

    .local v4, m:I
    const/4 v3, 0x1

    .local v3, k:I
    const/4 v0, 0x1

    .local v0, Step:I
    :goto_3
    const/16 v5, 0x100

    if-lt v1, v5, :cond_3

    .line 170
    const/4 v2, 0x0

    :goto_4
    const/16 v5, 0x40

    if-lt v2, v5, :cond_5

    .line 173
    const/4 v2, 0x0

    :goto_5
    const/16 v5, 0xc0

    if-lt v2, v5, :cond_6

    .line 176
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->dummySEE2Cont:Lde/innosystec/unrar/unpack/ppm/SEE2Context;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lde/innosystec/unrar/unpack/ppm/SEE2Context;->setShift(I)V

    .line 178
    return-void

    .line 155
    .end local v0           #Step:I
    .end local v1           #i:I
    .end local v3           #k:I
    .end local v4           #m:I
    :cond_0
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    add-int/lit8 v6, v2, 0x2

    const/4 v7, 0x4

    aput v7, v5, v6

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_1
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    add-int/lit8 v6, v2, 0xb

    const/4 v7, 0x6

    aput v7, v5, v6

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    .restart local v1       #i:I
    :cond_2
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    aput v1, v5, v1

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 164
    .restart local v0       #Step:I
    .restart local v3       #k:I
    .restart local v4       #m:I
    :cond_3
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    aput v4, v5, v1

    .line 165
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_4

    .line 166
    add-int/lit8 v0, v0, 0x1

    move v3, v0

    .line 167
    add-int/lit8 v4, v4, 0x1

    .line 163
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 171
    :cond_5
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    aput v8, v5, v2

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 174
    :cond_6
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    add-int/lit8 v6, v2, 0x40

    const/16 v7, 0x8

    aput v7, v5, v6

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private updateModel()V
    .locals 17

    .prologue
    .line 513
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempStateRef1:Lde/innosystec/unrar/unpack/ppm/StateRef;

    .line 514
    .local v3, fs:Lde/innosystec/unrar/unpack/ppm/StateRef;
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->foundState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v3, v13}, Lde/innosystec/unrar/unpack/ppm/StateRef;->setValues(Lde/innosystec/unrar/unpack/ppm/State;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempState3:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v14

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/ppm/State;->init([B)Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v6

    .line 516
    .local v6, p:Lde/innosystec/unrar/unpack/ppm/State;
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempState4:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v14

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/ppm/State;->init([B)Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v12

    .line 518
    .local v12, tempState:Lde/innosystec/unrar/unpack/ppm/State;
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempPPMContext3:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v14

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->init([B)Lde/innosystec/unrar/unpack/ppm/PPMContext;

    move-result-object v7

    .line 519
    .local v7, pc:Lde/innosystec/unrar/unpack/ppm/PPMContext;
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->tempPPMContext4:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v14

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->init([B)Lde/innosystec/unrar/unpack/ppm/PPMContext;

    move-result-object v10

    .line 522
    .local v10, successor:Lde/innosystec/unrar/unpack/ppm/PPMContext;
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v13

    invoke-virtual {v7, v13}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 523
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/StateRef;->getFreq()I

    move-result v13

    const/16 v14, 0x1f

    if-ge v13, v14, :cond_2

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v13

    if-eqz v13, :cond_2

    .line 524
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_4

    .line 525
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v13

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v13

    invoke-virtual {v6, v13}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 526
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getSymbol()I

    move-result v13

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v14

    if-eq v13, v14, :cond_1

    .line 528
    :cond_0
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->incAddress()Lde/innosystec/unrar/unpack/ppm/State;

    .line 529
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getSymbol()I

    move-result v13

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v14

    if-ne v13, v14, :cond_0

    .line 530
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v13

    add-int/lit8 v13, v13, -0x6

    invoke-virtual {v12, v13}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 531
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v13

    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v14

    if-lt v13, v14, :cond_1

    .line 532
    invoke-static {v6, v12}, Lde/innosystec/unrar/unpack/ppm/State;->ppmdSwap(Lde/innosystec/unrar/unpack/ppm/State;Lde/innosystec/unrar/unpack/ppm/State;)V

    .line 533
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->decAddress()Lde/innosystec/unrar/unpack/ppm/State;

    .line 536
    :cond_1
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v13

    const/16 v14, 0x73

    if-ge v13, v14, :cond_2

    .line 537
    const/4 v13, 0x2

    invoke-virtual {v6, v13}, Lde/innosystec/unrar/unpack/ppm/State;->incFreq(I)V

    .line 538
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 547
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->orderFall:I

    if-nez v13, :cond_5

    .line 548
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->foundState:Lde/innosystec/unrar/unpack/ppm/State;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->createSuccessors(ZLde/innosystec/unrar/unpack/ppm/State;)I

    move-result v14

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/ppm/State;->setSuccessor(I)V

    .line 549
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->foundState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/ppm/State;->getSuccessor()I

    move-result v14

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 550
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->maxContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->foundState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/ppm/State;->getSuccessor()I

    move-result v14

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 551
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v13

    if-nez v13, :cond_3

    .line 552
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    .line 658
    :cond_3
    :goto_1
    return-void

    .line 541
    :cond_4
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getOneState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v13

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v13

    invoke-virtual {v6, v13}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 542
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v13

    const/16 v14, 0x20

    if-ge v13, v14, :cond_2

    .line 543
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lde/innosystec/unrar/unpack/ppm/State;->incFreq(I)V

    goto :goto_0

    .line 557
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v14

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    .line 558
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->incPText()V

    .line 559
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v13

    invoke-virtual {v10, v13}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 560
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getFakeUnitsStart()I

    move-result v14

    if-lt v13, v14, :cond_6

    .line 561
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    goto :goto_1

    .line 566
    :cond_6
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v13

    if-eqz v13, :cond_9

    .line 567
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v14

    if-gt v13, v14, :cond_7

    .line 568
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->createSuccessors(ZLde/innosystec/unrar/unpack/ppm/State;)I

    move-result v13

    invoke-virtual {v3, v13}, Lde/innosystec/unrar/unpack/ppm/StateRef;->setSuccessor(I)V

    .line 569
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v13

    if-nez v13, :cond_7

    .line 570
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    goto :goto_1

    .line 574
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->orderFall:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->orderFall:I

    if-nez v13, :cond_8

    .line 575
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v13

    invoke-virtual {v10, v13}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 576
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->maxContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v14

    if-eq v13, v14, :cond_8

    .line 577
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->decPText(I)V

    .line 587
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v4

    .line 588
    .local v4, ns:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v13

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v13

    sub-int/2addr v13, v4

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/StateRef;->getFreq()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    sub-int v8, v13, v14

    .line 589
    .local v8, s0:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->maxContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v13

    invoke-virtual {v7, v13}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 590
    :goto_3
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v14

    if-ne v13, v14, :cond_a

    .line 648
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/StateRef;->getSuccessor()I

    move-result v1

    .line 649
    .local v1, address:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->maxContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v13, v1}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 650
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v13, v1}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    goto/16 :goto_1

    .line 582
    .end local v1           #address:I
    .end local v4           #ns:I
    .end local v8           #s0:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->foundState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v10}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v14

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/ppm/State;->setSuccessor(I)V

    .line 583
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v3, v13}, Lde/innosystec/unrar/unpack/ppm/StateRef;->setSuccessor(Lde/innosystec/unrar/unpack/ppm/PPMContext;)V

    goto :goto_2

    .line 592
    .restart local v4       #ns:I
    .restart local v8       #s0:I
    :cond_a
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v5

    .local v5, ns1:I
    const/4 v13, 0x1

    if-eq v5, v13, :cond_f

    .line 593
    and-int/lit8 v13, v5, 0x1

    if-nez v13, :cond_b

    .line 595
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v13

    .line 596
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v15

    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v15

    .line 597
    ushr-int/lit8 v16, v5, 0x1

    .line 596
    invoke-virtual/range {v14 .. v16}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->expandUnits(II)I

    move-result v14

    .line 595
    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/ppm/FreqData;->setStats(I)V

    .line 598
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v13

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v13

    if-nez v13, :cond_b

    .line 599
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    goto/16 :goto_1

    .line 607
    :cond_b
    mul-int/lit8 v13, v5, 0x2

    if-ge v13, v4, :cond_c

    const/4 v13, 0x1

    move v15, v13

    .line 608
    :goto_4
    mul-int/lit8 v13, v5, 0x4

    if-gt v13, v4, :cond_d

    const/4 v13, 0x1

    .line 609
    :goto_5
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v14

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v14

    mul-int/lit8 v16, v5, 0x8

    move/from16 v0, v16

    if-gt v14, v0, :cond_e

    const/4 v14, 0x1

    .line 607
    :goto_6
    and-int/2addr v13, v14

    mul-int/lit8 v13, v13, 0x2

    add-int v11, v15, v13

    .line 611
    .local v11, sum:I
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v13

    invoke-virtual {v13, v11}, Lde/innosystec/unrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 630
    .end local v11           #sum:I
    :goto_7
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/StateRef;->getFreq()I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v14

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v14

    add-int/lit8 v14, v14, 0x6

    mul-int v2, v13, v14

    .line 631
    .local v2, cf:I
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v13

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getSummFreq()I

    move-result v13

    add-int v9, v8, v13

    .line 632
    .local v9, sf:I
    mul-int/lit8 v13, v9, 0x6

    if-ge v2, v13, :cond_15

    .line 633
    if-le v2, v9, :cond_13

    const/4 v13, 0x1

    :goto_8
    add-int/lit8 v14, v13, 0x1

    mul-int/lit8 v13, v9, 0x4

    if-lt v2, v13, :cond_14

    const/4 v13, 0x1

    :goto_9
    add-int v2, v14, v13

    .line 634
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v13

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/ppm/FreqData;->incSummFreq(I)V

    .line 641
    :goto_a
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v13

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v13

    mul-int/lit8 v14, v5, 0x6

    add-int/2addr v13, v14

    invoke-virtual {v6, v13}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 642
    invoke-virtual {v6, v10}, Lde/innosystec/unrar/unpack/ppm/State;->setSuccessor(Lde/innosystec/unrar/unpack/ppm/PPMContext;)V

    .line 643
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/StateRef;->getSymbol()I

    move-result v13

    invoke-virtual {v6, v13}, Lde/innosystec/unrar/unpack/ppm/State;->setSymbol(I)V

    .line 644
    invoke-virtual {v6, v2}, Lde/innosystec/unrar/unpack/ppm/State;->setFreq(I)V

    .line 645
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setNumStats(I)V

    .line 591
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v13

    invoke-virtual {v7, v13}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    goto/16 :goto_3

    .line 607
    .end local v2           #cf:I
    .end local v9           #sf:I
    :cond_c
    const/4 v13, 0x0

    move v15, v13

    goto :goto_4

    .line 608
    :cond_d
    const/4 v13, 0x0

    goto :goto_5

    .line 609
    :cond_e
    const/4 v14, 0x0

    goto :goto_6

    .line 614
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->allocUnits(I)I

    move-result v13

    invoke-virtual {v6, v13}, Lde/innosystec/unrar/unpack/ppm/State;->setAddress(I)V

    .line 615
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v13

    if-nez v13, :cond_10

    .line 616
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->updateModelRestart()V

    goto/16 :goto_1

    .line 619
    :cond_10
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getOneState()Lde/innosystec/unrar/unpack/ppm/State;

    move-result-object v13

    invoke-virtual {v6, v13}, Lde/innosystec/unrar/unpack/ppm/State;->setValues(Lde/innosystec/unrar/unpack/ppm/State;)V

    .line 620
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v13

    invoke-virtual {v13, v6}, Lde/innosystec/unrar/unpack/ppm/FreqData;->setStats(Lde/innosystec/unrar/unpack/ppm/State;)V

    .line 621
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v13

    const/16 v14, 0x1e

    if-ge v13, v14, :cond_11

    .line 622
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v13

    invoke-virtual {v6, v13}, Lde/innosystec/unrar/unpack/ppm/State;->incFreq(I)V

    .line 627
    :goto_b
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v14

    .line 628
    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/State;->getFreq()I

    move-result v13

    move-object/from16 v0, p0

    iget v15, v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->initEsc:I

    add-int/2addr v15, v13

    const/4 v13, 0x3

    if-le v4, v13, :cond_12

    const/4 v13, 0x1

    :goto_c
    add-int/2addr v13, v15

    .line 627
    invoke-virtual {v14, v13}, Lde/innosystec/unrar/unpack/ppm/FreqData;->setSummFreq(I)V

    goto/16 :goto_7

    .line 625
    :cond_11
    const/16 v13, 0x78

    invoke-virtual {v6, v13}, Lde/innosystec/unrar/unpack/ppm/State;->setFreq(I)V

    goto :goto_b

    .line 628
    :cond_12
    const/4 v13, 0x0

    goto :goto_c

    .line 633
    .restart local v2       #cf:I
    .restart local v9       #sf:I
    :cond_13
    const/4 v13, 0x0

    goto/16 :goto_8

    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_9

    .line 637
    :cond_15
    mul-int/lit8 v13, v9, 0x9

    if-lt v2, v13, :cond_16

    const/4 v13, 0x1

    :goto_d
    add-int/lit8 v14, v13, 0x4

    mul-int/lit8 v13, v9, 0xc

    if-lt v2, v13, :cond_17

    const/4 v13, 0x1

    :goto_e
    add-int/2addr v14, v13

    .line 638
    mul-int/lit8 v13, v9, 0xf

    if-lt v2, v13, :cond_18

    const/4 v13, 0x1

    .line 637
    :goto_f
    add-int v2, v14, v13

    .line 639
    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v13

    invoke-virtual {v13, v2}, Lde/innosystec/unrar/unpack/ppm/FreqData;->incSummFreq(I)V

    goto/16 :goto_a

    .line 637
    :cond_16
    const/4 v13, 0x0

    goto :goto_d

    :cond_17
    const/4 v13, 0x0

    goto :goto_e

    .line 638
    :cond_18
    const/4 v13, 0x0

    goto :goto_f
.end method

.method private updateModelRestart()V
    .locals 1

    .prologue
    .line 505
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->restartModelRare()V

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->escCount:I

    .line 507
    return-void
.end method


# virtual methods
.method public decodeChar()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 236
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v2

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 237
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v2

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getHeapEnd()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 242
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v2

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v2

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 243
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getFreqData()Lde/innosystec/unrar/unpack/ppm/FreqData;

    move-result-object v2

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/FreqData;->getStats()I

    move-result v2

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getHeapEnd()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 246
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v2, p0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->decodeSymbol1(Lde/innosystec/unrar/unpack/ppm/ModelPPM;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    :goto_1
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->coder:Lde/innosystec/unrar/unpack/ppm/RangeCoder;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->decode()V

    .line 253
    :goto_2
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->foundState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/State;->getAddress()I

    move-result v2

    if-eqz v2, :cond_4

    .line 268
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->foundState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/State;->getSymbol()I

    move-result v0

    .line 269
    .local v0, Symbol:I
    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->orderFall:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->foundState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/State;->getSuccessor()I

    move-result v2

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v3

    if-le v2, v3, :cond_6

    .line 271
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->foundState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/State;->getSuccessor()I

    move-result v1

    .line 272
    .local v1, addr:I
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v2, v1}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 273
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->maxContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v2, v1}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 281
    .end local v1           #addr:I
    :cond_2
    :goto_3
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->coder:Lde/innosystec/unrar/unpack/ppm/RangeCoder;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->ariDecNormalize()V

    goto :goto_0

    .line 250
    .end local v0           #Symbol:I
    :cond_3
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v2, p0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->decodeBinSymbol(Lde/innosystec/unrar/unpack/ppm/ModelPPM;)V

    goto :goto_1

    .line 254
    :cond_4
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->coder:Lde/innosystec/unrar/unpack/ppm/RangeCoder;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->ariDecNormalize()V

    .line 256
    :cond_5
    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->orderFall:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->orderFall:I

    .line 257
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getSuffix()I

    move-result v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->setAddress(I)V

    .line 258
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v2

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 259
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v2

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getHeapEnd()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 262
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getNumStats()I

    move-result v2

    iget v3, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->numMasked:I

    if-eq v2, v3, :cond_5

    .line 263
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v2, p0}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->decodeSymbol2(Lde/innosystec/unrar/unpack/ppm/ModelPPM;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->coder:Lde/innosystec/unrar/unpack/ppm/RangeCoder;

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->decode()V

    goto/16 :goto_2

    .line 275
    .restart local v0       #Symbol:I
    :cond_6
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->updateModel()V

    .line 277
    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->escCount:I

    if-nez v2, :cond_2

    .line 278
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->clearMask()V

    goto :goto_3
.end method

.method public decodeInit(Lde/innosystec/unrar/unpack/Unpack;I)Z
    .locals 10
    .parameter "unpackRead"
    .parameter "escChar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x10

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 190
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/Unpack;->getChar()I

    move-result v7

    and-int/lit16 v1, v7, 0xff

    .line 191
    .local v1, MaxOrder:I
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_4

    move v4, v6

    .line 193
    .local v4, reset:Z
    :goto_0
    const/4 v0, 0x0

    .line 194
    .local v0, MaxMB:I
    if-eqz v4, :cond_5

    .line 195
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/Unpack;->getChar()I

    move-result v0

    .line 201
    :cond_0
    and-int/lit8 v7, v1, 0x40

    if-eqz v7, :cond_1

    .line 202
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/Unpack;->getChar()I

    move-result p2

    .line 203
    invoke-virtual {p1, p2}, Lde/innosystec/unrar/unpack/Unpack;->setPpmEscChar(I)V

    .line 205
    :cond_1
    iget-object v7, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->coder:Lde/innosystec/unrar/unpack/ppm/RangeCoder;

    invoke-virtual {v7, p1}, Lde/innosystec/unrar/unpack/ppm/RangeCoder;->initDecoder(Lde/innosystec/unrar/unpack/Unpack;)V

    .line 206
    if-eqz v4, :cond_7

    .line 207
    and-int/lit8 v7, v1, 0x1f

    add-int/lit8 v1, v7, 0x1

    .line 208
    if-le v1, v9, :cond_2

    .line 209
    add-int/lit8 v7, v1, -0x10

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v1, v7, 0x10

    .line 211
    :cond_2
    if-ne v1, v6, :cond_6

    .line 212
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->stopSubAllocator()V

    .line 228
    :cond_3
    :goto_1
    return v5

    .end local v0           #MaxMB:I
    .end local v4           #reset:Z
    :cond_4
    move v4, v5

    .line 191
    goto :goto_0

    .line 197
    .restart local v0       #MaxMB:I
    .restart local v4       #reset:Z
    :cond_5
    iget-object v7, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->GetAllocatedMemory()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 215
    :cond_6
    iget-object v7, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->startSubAllocator(I)Z

    .line 216
    new-instance v7, Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lde/innosystec/unrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v7, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    .line 217
    new-instance v7, Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lde/innosystec/unrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v7, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->medContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    .line 218
    new-instance v7, Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lde/innosystec/unrar/unpack/ppm/PPMContext;-><init>([B)V

    iput-object v7, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->maxContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    .line 219
    new-instance v7, Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getHeap()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lde/innosystec/unrar/unpack/ppm/State;-><init>([B)V

    iput-object v7, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->foundState:Lde/innosystec/unrar/unpack/ppm/State;

    .line 220
    new-instance v7, Lde/innosystec/unrar/unpack/ppm/SEE2Context;

    invoke-direct {v7}, Lde/innosystec/unrar/unpack/ppm/SEE2Context;-><init>()V

    iput-object v7, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->dummySEE2Cont:Lde/innosystec/unrar/unpack/ppm/SEE2Context;

    .line 221
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    const/16 v7, 0x19

    if-lt v2, v7, :cond_8

    .line 226
    invoke-direct {p0, v1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->startModelRare(I)V

    .line 228
    .end local v2           #i:I
    :cond_7
    iget-object v7, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->minContext:Lde/innosystec/unrar/unpack/ppm/PPMContext;

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/ppm/PPMContext;->getAddress()I

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    goto :goto_1

    .line 222
    .restart local v2       #i:I
    :cond_8
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    if-lt v3, v9, :cond_9

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 223
    :cond_9
    iget-object v7, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lde/innosystec/unrar/unpack/ppm/SEE2Context;

    aget-object v7, v7, v2

    new-instance v8, Lde/innosystec/unrar/unpack/ppm/SEE2Context;

    invoke-direct {v8}, Lde/innosystec/unrar/unpack/ppm/SEE2Context;-><init>()V

    aput-object v8, v7, v3

    .line 222
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public getBinSumm()[[I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->binSumm:[[I

    return-object v0
.end method

.method public getCharMask()[I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->charMask:[I

    return-object v0
.end method

.method public getCoder()Lde/innosystec/unrar/unpack/ppm/RangeCoder;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->coder:Lde/innosystec/unrar/unpack/ppm/RangeCoder;

    return-object v0
.end method

.method public getDummySEE2Cont()Lde/innosystec/unrar/unpack/ppm/SEE2Context;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->dummySEE2Cont:Lde/innosystec/unrar/unpack/ppm/SEE2Context;

    return-object v0
.end method

.method public getEscCount()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->escCount:I

    return v0
.end method

.method public getFoundState()Lde/innosystec/unrar/unpack/ppm/State;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->foundState:Lde/innosystec/unrar/unpack/ppm/State;

    return-object v0
.end method

.method public getHB2Flag()[I
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->HB2Flag:[I

    return-object v0
.end method

.method public getHeap()[B
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getHeap()[B

    move-result-object v0

    return-object v0
.end method

.method public getHiBitsFlag()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->hiBitsFlag:I

    return v0
.end method

.method public getInitEsc()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->initEsc:I

    return v0
.end method

.method public getInitRL()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->initRL:I

    return v0
.end method

.method public getNS2BSIndx()[I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->NS2BSIndx:[I

    return-object v0
.end method

.method public getNS2Indx()[I
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->NS2Indx:[I

    return-object v0
.end method

.method public getNumMasked()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->numMasked:I

    return v0
.end method

.method public getOrderFall()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->orderFall:I

    return v0
.end method

.method public getPrevSuccess()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->prevSuccess:I

    return v0
.end method

.method public getRunLength()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->runLength:I

    return v0
.end method

.method public getSEE2Cont()[[Lde/innosystec/unrar/unpack/ppm/SEE2Context;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->SEE2Cont:[[Lde/innosystec/unrar/unpack/ppm/SEE2Context;

    return-object v0
.end method

.method public getSubAlloc()Lde/innosystec/unrar/unpack/ppm/SubAllocator;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    return-object v0
.end method

.method public incEscCount(I)V
    .locals 1
    .parameter "dEscCount"

    .prologue
    .line 311
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getEscCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->setEscCount(I)V

    .line 312
    return-void
.end method

.method public incRunLength(I)V
    .locals 1
    .parameter "dRunLength"

    .prologue
    .line 355
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getRunLength()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->setRunLength(I)V

    .line 356
    return-void
.end method

.method public setEscCount(I)V
    .locals 1
    .parameter "escCount"

    .prologue
    .line 302
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->escCount:I

    .line 303
    return-void
.end method

.method public setHiBitsFlag(I)V
    .locals 1
    .parameter "hiBitsFlag"

    .prologue
    .line 370
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->hiBitsFlag:I

    .line 371
    return-void
.end method

.method public setInitEsc(I)V
    .locals 0
    .parameter "initEsc"

    .prologue
    .line 341
    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->initEsc:I

    .line 342
    return-void
.end method

.method public setNumMasked(I)V
    .locals 0
    .parameter "numMasked"

    .prologue
    .line 326
    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->numMasked:I

    .line 327
    return-void
.end method

.method public setPrevSuccess(I)V
    .locals 1
    .parameter "prevSuccess"

    .prologue
    .line 331
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->prevSuccess:I

    .line 332
    return-void
.end method

.method public setRunLength(I)V
    .locals 0
    .parameter "runLength"

    .prologue
    .line 346
    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->runLength:I

    .line 347
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v1, "ModelPPM["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    const-string v1, "\n  numMasked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->numMasked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 667
    const-string v1, "\n  initEsc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->initEsc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 669
    const-string v1, "\n  orderFall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->orderFall:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 671
    const-string v1, "\n  maxOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->maxOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 673
    const-string v1, "\n  runLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->runLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 675
    const-string v1, "\n  initRL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->initRL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 677
    const-string v1, "\n  escCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->escCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 679
    const-string v1, "\n  prevSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->prevSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 681
    const-string v1, "\n  foundState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->foundState:Lde/innosystec/unrar/unpack/ppm/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 683
    const-string v1, "\n  coder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->coder:Lde/innosystec/unrar/unpack/ppm/RangeCoder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 685
    const-string v1, "\n  subAlloc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->subAlloc:Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 687
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
