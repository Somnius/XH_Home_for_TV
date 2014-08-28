.class public final Lde/innosystec/unrar/unpack/Unpack;
.super Lde/innosystec/unrar/unpack/Unpack20;
.source "Unpack.java"


# static fields
.field public static DBitLengthCounts:[I


# instance fields
.field private externalWindow:Z

.field private fileExtracted:Z

.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/UnpackFilter;",
            ">;"
        }
    .end annotation
.end field

.field private lastFilter:I

.field private lowDistRepCount:I

.field private oldFilterLengths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

.field private ppmError:Z

.field private ppmEscChar:I

.field private prevLowDist:I

.field private prgStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/UnpackFilter;",
            ">;"
        }
    .end annotation
.end field

.field private rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

.field private tablesRead:Z

.field private unpBlockType:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

.field private unpOldTable:[B

.field private writtenFileSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xe

    const/16 v4, 0xc

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 82
    const/16 v0, 0x13

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    aput v2, v0, v2

    const/4 v1, 0x3

    aput v2, v0, v1

    aput v2, v0, v3

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 83
    aput v2, v0, v1

    aput v2, v0, v4

    const/16 v1, 0xd

    aput v2, v0, v1

    aput v2, v0, v5

    const/16 v1, 0xf

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v5, v0, v1

    const/16 v1, 0x12

    aput v4, v0, v1

    .line 82
    sput-object v0, Lde/innosystec/unrar/unpack/Unpack;->DBitLengthCounts:[I

    .line 41
    return-void
.end method

.method public constructor <init>(Lde/innosystec/unrar/unpack/ComprDataIO;)V
    .locals 2
    .parameter "DataIO"

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/Unpack20;-><init>()V

    .line 44
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    .line 48
    new-instance v0, Lde/innosystec/unrar/unpack/vm/RarVM;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/vm/RarVM;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->filters:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    .line 66
    const/16 v0, 0x194

    new-array v0, v0, [B

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->unpOldTable:[B

    .line 87
    iput-object p1, p0, Lde/innosystec/unrar/unpack/Unpack;->unpIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    .line 89
    iput-boolean v1, p0, Lde/innosystec/unrar/unpack/Unpack;->externalWindow:Z

    .line 90
    iput-boolean v1, p0, Lde/innosystec/unrar/unpack/Unpack;->suspended:Z

    .line 91
    iput-boolean v1, p0, Lde/innosystec/unrar/unpack/Unpack;->unpAllBuf:Z

    .line 92
    iput-boolean v1, p0, Lde/innosystec/unrar/unpack/Unpack;->unpSomeRead:Z

    .line 93
    return-void
.end method

.method private ExecuteCode(Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;)V
    .locals 6
    .parameter "Prg"

    .prologue
    .line 998
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1000
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v0

    const/4 v1, 0x6

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    long-to-int v2, v2

    aput v2, v0, v1

    .line 1003
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v1

    const/16 v2, 0x24

    .line 1004
    iget-wide v3, p0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    long-to-int v3, v3

    .line 1003
    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 1007
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v1

    const/16 v2, 0x28

    .line 1008
    iget-wide v3, p0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    .line 1007
    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 1009
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    invoke-virtual {v0, p1}, Lde/innosystec/unrar/unpack/vm/RarVM;->execute(Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;)V

    .line 1011
    :cond_0
    return-void
.end method

.method private UnpWriteArea(II)V
    .locals 4
    .parameter "startPtr"
    .parameter "endPtr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 536
    if-eq p2, p1, :cond_0

    .line 537
    iput-boolean v3, p0, Lde/innosystec/unrar/unpack/Unpack;->unpSomeRead:Z

    .line 539
    :cond_0
    if-ge p2, p1, :cond_1

    .line 540
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    neg-int v1, p1

    const v2, 0x3fffff

    and-int/2addr v1, v2

    invoke-direct {p0, v0, p1, v1}, Lde/innosystec/unrar/unpack/Unpack;->UnpWriteData([BII)V

    .line 541
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lde/innosystec/unrar/unpack/Unpack;->UnpWriteData([BII)V

    .line 542
    iput-boolean v3, p0, Lde/innosystec/unrar/unpack/Unpack;->unpAllBuf:Z

    .line 546
    :goto_0
    return-void

    .line 544
    :cond_1
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    sub-int v1, p2, p1

    invoke-direct {p0, v0, p1, v1}, Lde/innosystec/unrar/unpack/Unpack;->UnpWriteData([BII)V

    goto :goto_0
.end method

.method private UnpWriteBuf()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->wrPtr:I

    move/from16 v17, v0

    .line 364
    .local v17, WrittenBorder:I
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v22, v0

    sub-int v22, v22, v17

    const v23, 0x3fffff

    and-int v16, v22, v23

    .line 365
    .local v16, WriteSize:I
    const/4 v10, 0x0

    .local v10, I:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v10, v0, :cond_0

    .line 529
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lde/innosystec/unrar/unpack/Unpack;->UnpWriteArea(II)V

    .line 530
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->wrPtr:I

    .line 532
    :goto_1
    return-void

    .line 366
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lde/innosystec/unrar/unpack/UnpackFilter;

    .line 367
    .local v19, flt:Lde/innosystec/unrar/unpack/UnpackFilter;
    if-nez v19, :cond_2

    .line 365
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 370
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lde/innosystec/unrar/unpack/UnpackFilter;->isNextWindow()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 371
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/UnpackFilter;->setNextWindow(Z)V

    goto :goto_2

    .line 374
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lde/innosystec/unrar/unpack/UnpackFilter;->getBlockStart()I

    move-result v5

    .line 375
    .local v5, BlockStart:I
    invoke-virtual/range {v19 .. v19}, Lde/innosystec/unrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v4

    .line 376
    .local v4, BlockLength:I
    sub-int v22, v5, v17

    const v23, 0x3fffff

    and-int v22, v22, v23

    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 377
    move/from16 v0, v17

    if-eq v0, v5, :cond_4

    .line 378
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v5}, Lde/innosystec/unrar/unpack/Unpack;->UnpWriteArea(II)V

    .line 379
    move/from16 v17, v5

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v22, v0

    sub-int v22, v22, v17

    const v23, 0x3fffff

    and-int v16, v22, v23

    .line 382
    :cond_4
    move/from16 v0, v16

    if-gt v4, v0, :cond_15

    .line 383
    add-int v22, v5, v4

    .line 384
    const v23, 0x3fffff

    .line 383
    and-int v3, v22, v23

    .line 385
    .local v3, BlockEnd:I
    if-lt v5, v3, :cond_5

    if-nez v3, :cond_9

    .line 387
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v5, v4}, Lde/innosystec/unrar/unpack/vm/RarVM;->setMemory(I[BII)V

    .line 397
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->filters:Ljava/util/List;

    move-object/from16 v22, v0

    .line 398
    invoke-virtual/range {v19 .. v19}, Lde/innosystec/unrar/unpack/UnpackFilter;->getParentFilter()I

    move-result v23

    .line 397
    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lde/innosystec/unrar/unpack/UnpackFilter;

    .line 398
    invoke-virtual/range {v22 .. v22}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v14

    .line 399
    .local v14, ParentPrg:Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    invoke-virtual/range {v19 .. v19}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v15

    .line 401
    .local v15, Prg:Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    .line 406
    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    .line 407
    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    .line 406
    invoke-virtual/range {v22 .. v23}, Ljava/util/Vector;->setSize(I)V

    .line 408
    const/16 v20, 0x0

    .local v20, i:I
    :goto_4
    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    .line 409
    add-int/lit8 v22, v22, -0x40

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_a

    .line 417
    .end local v20           #i:I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lde/innosystec/unrar/unpack/Unpack;->ExecuteCode(Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;)V

    .line 419
    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_c

    .line 421
    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    .line 422
    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 423
    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    .line 424
    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    .line 423
    invoke-virtual/range {v22 .. v23}, Ljava/util/Vector;->setSize(I)V

    .line 427
    :cond_7
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_5
    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    .line 428
    add-int/lit8 v22, v22, -0x40

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_b

    .line 438
    .end local v20           #i:I
    :goto_6
    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getFilteredDataOffset()I

    move-result v7

    .line 439
    .local v7, FilteredDataOffset:I
    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getFilteredDataSize()I

    move-result v8

    .line 440
    .local v8, FilteredDataSize:I
    new-array v6, v8, [B

    .line 442
    .local v6, FilteredData:[B
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_7
    move/from16 v0, v20

    if-lt v0, v8, :cond_d

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v10, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 447
    :goto_8
    add-int/lit8 v22, v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_e

    .line 511
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1, v8}, Lde/innosystec/unrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 512
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/innosystec/unrar/unpack/Unpack;->unpSomeRead:Z

    .line 513
    move-object/from16 v0, p0

    iget-wide v0, v0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    move-wide/from16 v22, v0

    int-to-long v0, v8

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    .line 514
    move/from16 v17, v3

    .line 515
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v22, v0

    sub-int v22, v22, v17

    const v23, 0x3fffff

    and-int v16, v22, v23

    goto/16 :goto_2

    .line 389
    .end local v6           #FilteredData:[B
    .end local v7           #FilteredDataOffset:I
    .end local v8           #FilteredDataSize:I
    .end local v14           #ParentPrg:Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    .end local v15           #Prg:Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    .end local v20           #i:I
    :cond_9
    const/high16 v22, 0x40

    sub-int v9, v22, v5

    .line 391
    .local v9, FirstPartLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v5, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->setMemory(I[BII)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v9, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->setMemory(I[BII)V

    goto/16 :goto_3

    .line 410
    .end local v9           #FirstPartLength:I
    .restart local v14       #ParentPrg:Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    .restart local v15       #Prg:Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    .restart local v20       #i:I
    :cond_a
    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    .line 411
    add-int/lit8 v24, v20, 0x40

    .line 412
    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    .line 413
    add-int/lit8 v25, v20, 0x40

    .line 412
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Byte;

    .line 410
    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 409
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 429
    :cond_b
    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    .line 430
    add-int/lit8 v24, v20, 0x40

    .line 431
    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    .line 432
    add-int/lit8 v25, v20, 0x40

    .line 431
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Byte;

    .line 429
    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 428
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_5

    .line 435
    .end local v20           #i:I
    :cond_c
    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->clear()V

    goto/16 :goto_6

    .line 443
    .restart local v6       #FilteredData:[B
    .restart local v7       #FilteredDataOffset:I
    .restart local v8       #FilteredDataSize:I
    .restart local v20       #i:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lde/innosystec/unrar/unpack/vm/RarVM;->getMem()[B

    move-result-object v22

    add-int v23, v7, v20

    aget-byte v22, v22, v23

    aput-byte v22, v6, v20

    .line 442
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_7

    .line 448
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    move-object/from16 v22, v0

    add-int/lit8 v23, v10, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lde/innosystec/unrar/unpack/UnpackFilter;

    .line 449
    .local v12, NextFilter:Lde/innosystec/unrar/unpack/UnpackFilter;
    if-eqz v12, :cond_8

    .line 450
    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/UnpackFilter;->getBlockStart()I

    move-result v22

    move/from16 v0, v22

    if-ne v0, v5, :cond_8

    .line 451
    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v22

    move/from16 v0, v22

    if-ne v0, v8, :cond_8

    .line 452
    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/UnpackFilter;->isNextWindow()Z

    move-result v22

    if-nez v22, :cond_8

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v6, v2, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->setMemory(I[BII)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->filters:Ljava/util/List;

    move-object/from16 v22, v0

    .line 460
    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/UnpackFilter;->getParentFilter()I

    move-result v23

    .line 459
    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lde/innosystec/unrar/unpack/UnpackFilter;

    .line 460
    invoke-virtual/range {v22 .. v22}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v21

    .line 461
    .local v21, pPrg:Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v13

    .line 463
    .local v13, NextPrg:Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_f

    .line 467
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    .line 468
    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    .line 467
    invoke-virtual/range {v22 .. v23}, Ljava/util/Vector;->setSize(I)V

    .line 470
    const/16 v20, 0x0

    :goto_9
    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    .line 471
    add-int/lit8 v22, v22, -0x40

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_11

    .line 479
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lde/innosystec/unrar/unpack/Unpack;->ExecuteCode(Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;)V

    .line 481
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_13

    .line 483
    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    .line 484
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    .line 485
    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    .line 486
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    .line 485
    invoke-virtual/range {v22 .. v23}, Ljava/util/Vector;->setSize(I)V

    .line 489
    :cond_10
    const/16 v20, 0x0

    :goto_a
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    .line 490
    add-int/lit8 v22, v22, -0x40

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_12

    .line 499
    :goto_b
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getFilteredDataOffset()I

    move-result v7

    .line 500
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getFilteredDataSize()I

    move-result v8

    .line 502
    new-array v6, v8, [B

    .line 503
    const/16 v20, 0x0

    :goto_c
    move/from16 v0, v20

    if-lt v0, v8, :cond_14

    .line 508
    add-int/lit8 v10, v10, 0x1

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v10, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 472
    :cond_11
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    .line 473
    add-int/lit8 v24, v20, 0x40

    .line 474
    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    .line 475
    add-int/lit8 v25, v20, 0x40

    .line 474
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Byte;

    .line 472
    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 471
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_9

    .line 491
    :cond_12
    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    .line 492
    add-int/lit8 v24, v20, 0x40

    .line 493
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    .line 494
    add-int/lit8 v25, v20, 0x40

    .line 493
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Byte;

    .line 491
    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 490
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 497
    :cond_13
    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->clear()V

    goto :goto_b

    .line 504
    :cond_14
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    .line 505
    add-int v23, v7, v20

    invoke-virtual/range {v22 .. v23}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Byte;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Byte;->byteValue()B

    move-result v22

    .line 504
    aput-byte v22, v6, v20

    .line 503
    add-int/lit8 v20, v20, 0x1

    goto :goto_c

    .line 517
    .end local v3           #BlockEnd:I
    .end local v6           #FilteredData:[B
    .end local v7           #FilteredDataOffset:I
    .end local v8           #FilteredDataSize:I
    .end local v12           #NextFilter:Lde/innosystec/unrar/unpack/UnpackFilter;
    .end local v13           #NextPrg:Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    .end local v14           #ParentPrg:Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    .end local v15           #Prg:Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    .end local v20           #i:I
    .end local v21           #pPrg:Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    :cond_15
    move v11, v10

    .local v11, J:I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v11, v0, :cond_16

    .line 523
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->wrPtr:I

    goto/16 :goto_1

    .line 518
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lde/innosystec/unrar/unpack/UnpackFilter;

    .line 519
    .local v18, filt:Lde/innosystec/unrar/unpack/UnpackFilter;
    if-eqz v18, :cond_17

    invoke-virtual/range {v18 .. v18}, Lde/innosystec/unrar/unpack/UnpackFilter;->isNextWindow()Z

    move-result v22

    if-eqz v22, :cond_17

    .line 520
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/UnpackFilter;->setNextWindow(Z)V

    .line 517
    :cond_17
    add-int/lit8 v11, v11, 0x1

    goto :goto_d
.end method

.method private UnpWriteData([BII)V
    .locals 7
    .parameter "data"
    .parameter "offset"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    iget-wide v3, p0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    iget-wide v5, p0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 563
    :goto_0
    return-void

    .line 554
    :cond_0
    move v2, p3

    .line 555
    .local v2, writeSize:I
    iget-wide v3, p0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    iget-wide v5, p0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    sub-long v0, v3, v5

    .line 556
    .local v0, leftToWrite:J
    int-to-long v3, v2

    cmp-long v3, v3, v0

    if-lez v3, :cond_1

    .line 557
    long-to-int v2, v0

    .line 559
    :cond_1
    iget-object v3, p0, Lde/innosystec/unrar/unpack/Unpack;->unpIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-virtual {v3, p1, p2, v2}, Lde/innosystec/unrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 561
    iget-wide v3, p0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    int-to-long v5, p3

    add-long/2addr v3, v5

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    goto :goto_0
.end method

.method private addVMCode(ILjava/util/List;I)Z
    .locals 23
    .parameter "firstByte"
    .parameter
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 818
    .local p2, vmCode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Byte;>;"
    new-instance v11, Lde/innosystec/unrar/unpack/vm/BitInput;

    invoke-direct {v11}, Lde/innosystec/unrar/unpack/vm/BitInput;-><init>()V

    .line 819
    .local v11, Inp:Lde/innosystec/unrar/unpack/vm/BitInput;
    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/vm/BitInput;->InitBitInput()V

    .line 821
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    const v20, 0x8000

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/RarVM;->init()V

    .line 827
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 828
    invoke-static {v11}, Lde/innosystec/unrar/unpack/vm/RarVM;->ReadData(Lde/innosystec/unrar/unpack/vm/BitInput;)I

    move-result v7

    .line 829
    .local v7, FiltPos:I
    if-nez v7, :cond_2

    .line 830
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->initFilters()V

    .line 837
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->filters:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-gt v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-le v7, v0, :cond_4

    .line 838
    :cond_0
    const/16 v20, 0x0

    .line 993
    :goto_2
    return v20

    .line 822
    .end local v7           #FiltPos:I
    :cond_1
    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/vm/BitInput;->getInBuf()[B

    move-result-object v21

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Byte;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Byte;->byteValue()B

    move-result v20

    aput-byte v20, v21, v18

    .line 821
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 832
    .restart local v7       #FiltPos:I
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 835
    .end local v7           #FiltPos:I
    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Lde/innosystec/unrar/unpack/Unpack;->lastFilter:I

    .restart local v7       #FiltPos:I
    goto :goto_1

    .line 840
    :cond_4
    move-object/from16 v0, p0

    iput v7, v0, Lde/innosystec/unrar/unpack/Unpack;->lastFilter:I

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->filters:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ne v7, v0, :cond_5

    const/4 v12, 0x1

    .line 843
    .local v12, NewFilter:Z
    :goto_3
    new-instance v13, Lde/innosystec/unrar/unpack/UnpackFilter;

    invoke-direct {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;-><init>()V

    .line 847
    .local v13, StackFilter:Lde/innosystec/unrar/unpack/UnpackFilter;
    if-eqz v12, :cond_a

    .line 850
    const/16 v20, 0x400

    move/from16 v0, v20

    if-le v7, v0, :cond_6

    .line 851
    const/16 v20, 0x0

    goto :goto_2

    .line 841
    .end local v12           #NewFilter:Z
    .end local v13           #StackFilter:Lde/innosystec/unrar/unpack/UnpackFilter;
    :cond_5
    const/4 v12, 0x0

    goto :goto_3

    .line 855
    .restart local v12       #NewFilter:Z
    .restart local v13       #StackFilter:Lde/innosystec/unrar/unpack/UnpackFilter;
    :cond_6
    new-instance v8, Lde/innosystec/unrar/unpack/UnpackFilter;

    invoke-direct {v8}, Lde/innosystec/unrar/unpack/UnpackFilter;-><init>()V

    .line 856
    .local v8, Filter:Lde/innosystec/unrar/unpack/UnpackFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->filters:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->filters:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lde/innosystec/unrar/unpack/UnpackFilter;->setParentFilter(I)V

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lde/innosystec/unrar/unpack/UnpackFilter;->setExecCount(I)V

    .line 867
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/UnpackFilter;->getExecCount()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lde/innosystec/unrar/unpack/UnpackFilter;->setExecCount(I)V

    .line 870
    invoke-static {v11}, Lde/innosystec/unrar/unpack/vm/RarVM;->ReadData(Lde/innosystec/unrar/unpack/vm/BitInput;)I

    move-result v4

    .line 871
    .local v4, BlockStart:I
    and-int/lit8 v20, p1, 0x40

    if-eqz v20, :cond_7

    .line 872
    add-int/lit16 v4, v4, 0x102

    .line 874
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v20, v0

    add-int v20, v20, v4

    const v21, 0x3fffff

    and-int v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lde/innosystec/unrar/unpack/UnpackFilter;->setBlockStart(I)V

    .line 875
    and-int/lit8 v20, p1, 0x20

    if-eqz v20, :cond_b

    .line 876
    invoke-static {v11}, Lde/innosystec/unrar/unpack/vm/RarVM;->ReadData(Lde/innosystec/unrar/unpack/vm/BitInput;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lde/innosystec/unrar/unpack/UnpackFilter;->setBlockLength(I)V

    .line 883
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->wrPtr:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    .line 884
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->wrPtr:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    const v21, 0x3fffff

    and-int v20, v20, v21

    move/from16 v0, v20

    if-gt v0, v4, :cond_d

    const/16 v20, 0x1

    .line 883
    :goto_6
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lde/innosystec/unrar/unpack/UnpackFilter;->setNextWindow(Z)V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v7, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 892
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->fill([II)V

    .line 893
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v20

    const/16 v21, 0x3

    const v22, 0x3c000

    aput v22, v20, v21

    .line 894
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v22

    aput v22, v20, v21

    .line 895
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v20

    const/16 v21, 0x5

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getExecCount()I

    move-result v22

    aput v22, v20, v21

    .line 897
    and-int/lit8 v20, p1, 0x10

    if-eqz v20, :cond_8

    .line 900
    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/vm/BitInput;->fgetbits()I

    move-result v20

    ushr-int/lit8 v10, v20, 0x9

    .line 901
    .local v10, InitMask:I
    const/16 v20, 0x7

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lde/innosystec/unrar/unpack/vm/BitInput;->faddbits(I)V

    .line 902
    const/4 v9, 0x0

    .local v9, I:I
    :goto_7
    const/16 v20, 0x7

    move/from16 v0, v20

    if-lt v9, v0, :cond_e

    .line 910
    .end local v9           #I:I
    .end local v10           #InitMask:I
    :cond_8
    if-eqz v12, :cond_11

    .line 911
    invoke-static {v11}, Lde/innosystec/unrar/unpack/vm/RarVM;->ReadData(Lde/innosystec/unrar/unpack/vm/BitInput;)I

    move-result v16

    .line 912
    .local v16, VMCodeSize:I
    const/high16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    if-nez v16, :cond_10

    .line 913
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 862
    .end local v4           #BlockStart:I
    .end local v8           #Filter:Lde/innosystec/unrar/unpack/UnpackFilter;
    .end local v16           #VMCodeSize:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->filters:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lde/innosystec/unrar/unpack/UnpackFilter;

    .line 863
    .restart local v8       #Filter:Lde/innosystec/unrar/unpack/UnpackFilter;
    invoke-virtual {v13, v7}, Lde/innosystec/unrar/unpack/UnpackFilter;->setParentFilter(I)V

    .line 864
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/UnpackFilter;->getExecCount()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lde/innosystec/unrar/unpack/UnpackFilter;->setExecCount(I)V

    goto/16 :goto_4

    .line 879
    .restart local v4       #BlockStart:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_c

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 879
    :goto_8
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lde/innosystec/unrar/unpack/UnpackFilter;->setBlockLength(I)V

    goto/16 :goto_5

    .line 881
    :cond_c
    const/16 v20, 0x0

    goto :goto_8

    .line 884
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 903
    .restart local v9       #I:I
    .restart local v10       #InitMask:I
    :cond_e
    const/16 v20, 0x1

    shl-int v20, v20, v9

    and-int v20, v20, v10

    if-eqz v20, :cond_f

    .line 905
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v20

    invoke-static {v11}, Lde/innosystec/unrar/unpack/vm/RarVM;->ReadData(Lde/innosystec/unrar/unpack/vm/BitInput;)I

    move-result v21

    aput v21, v20, v9

    .line 902
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 915
    .end local v9           #I:I
    .end local v10           #InitMask:I
    .restart local v16       #VMCodeSize:I
    :cond_10
    move/from16 v0, v16

    new-array v15, v0, [B

    .line 916
    .local v15, VMCode:[B
    const/4 v9, 0x0

    .restart local v9       #I:I
    :goto_9
    move/from16 v0, v16

    if-lt v9, v0, :cond_14

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v21

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v15, v1, v2}, Lde/innosystec/unrar/unpack/vm/RarVM;->prepare([BILde/innosystec/unrar/unpack/vm/VMPreparedProgram;)V

    .line 926
    .end local v9           #I:I
    .end local v15           #VMCode:[B
    .end local v16           #VMCodeSize:I
    :cond_11
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->setAltCmd(Ljava/util/List;)V

    .line 927
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 929
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v14

    .line 930
    .local v14, StaticDataSize:I
    if-lez v14, :cond_12

    const/16 v20, 0x2000

    move/from16 v0, v20

    if-ge v14, v0, :cond_12

    .line 933
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->setStaticData(Ljava/util/Vector;)V

    .line 937
    :cond_12
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v20

    const/16 v21, 0x40

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_13

    .line 940
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->clear()V

    .line 941
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v20

    .line 942
    const/16 v21, 0x40

    .line 941
    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->setSize(I)V

    .line 946
    :cond_13
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v17

    .line 947
    .local v17, globalData:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Byte;>;"
    const/4 v9, 0x0

    .restart local v9       #I:I
    :goto_a
    const/16 v20, 0x7

    move/from16 v0, v20

    if-lt v9, v0, :cond_16

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v20, v0

    const/16 v21, 0x1c

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v22

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v20, v0

    const/16 v21, 0x20

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v20, v0

    const/16 v21, 0x24

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v20, v0

    const/16 v21, 0x28

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v20, v0

    const/16 v21, 0x2c

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getExecCount()I

    move-result v22

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 964
    const/16 v18, 0x0

    :goto_b
    const/16 v20, 0x10

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_17

    .line 967
    and-int/lit8 v20, p1, 0x8

    if-eqz v20, :cond_1b

    .line 969
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lde/innosystec/unrar/unpack/vm/BitInput;->Overflow(I)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 970
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 917
    .end local v14           #StaticDataSize:I
    .end local v17           #globalData:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Byte;>;"
    .restart local v15       #VMCode:[B
    .restart local v16       #VMCodeSize:I
    :cond_14
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lde/innosystec/unrar/unpack/vm/BitInput;->Overflow(I)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 918
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 920
    :cond_15
    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/vm/BitInput;->fgetbits()I

    move-result v20

    shr-int/lit8 v20, v20, 0x8

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v15, v9

    .line 921
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lde/innosystec/unrar/unpack/vm/BitInput;->faddbits(I)V

    .line 916
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_9

    .line 948
    .end local v15           #VMCode:[B
    .end local v16           #VMCodeSize:I
    .restart local v14       #StaticDataSize:I
    .restart local v17       #globalData:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Byte;>;"
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v20, v0

    mul-int/lit8 v21, v9, 0x4

    .line 949
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v22

    .line 948
    aget v22, v22, v9

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 947
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_a

    .line 965
    :cond_17
    add-int/lit8 v20, v18, 0x30

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 964
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 972
    :cond_18
    invoke-static {v11}, Lde/innosystec/unrar/unpack/vm/RarVM;->ReadData(Lde/innosystec/unrar/unpack/vm/BitInput;)I

    move-result v6

    .line 973
    .local v6, DataSize:I
    const/16 v20, 0x1fc0

    move/from16 v0, v20

    if-le v6, v0, :cond_19

    .line 974
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 976
    :cond_19
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v5

    .line 977
    .local v5, CurSize:I
    add-int/lit8 v20, v6, 0x40

    move/from16 v0, v20

    if-ge v5, v0, :cond_1a

    .line 979
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v20

    .line 980
    add-int/lit8 v21, v6, 0x40

    sub-int v21, v21, v5

    .line 979
    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->setSize(I)V

    .line 982
    :cond_1a
    const/16 v19, 0x40

    .line 983
    .local v19, offset:I
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v17

    .line 984
    const/4 v9, 0x0

    :goto_c
    if-lt v9, v6, :cond_1c

    .line 993
    .end local v5           #CurSize:I
    .end local v6           #DataSize:I
    .end local v19           #offset:I
    :cond_1b
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 985
    .restart local v5       #CurSize:I
    .restart local v6       #DataSize:I
    .restart local v19       #offset:I
    :cond_1c
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lde/innosystec/unrar/unpack/vm/BitInput;->Overflow(I)Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 986
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 988
    :cond_1d
    add-int v20, v19, v9

    .line 989
    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/vm/BitInput;->fgetbits()I

    move-result v21

    ushr-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    .line 988
    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 990
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lde/innosystec/unrar/unpack/vm/BitInput;->faddbits(I)V

    .line 984
    add-int/lit8 v9, v9, 0x1

    goto :goto_c
.end method

.method private copyString(II)V
    .locals 8
    .parameter "length"
    .parameter "distance"

    .prologue
    const v7, 0x3fffff

    const v4, 0x3ffefc

    .line 583
    iget v3, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    sub-int v0, v3, p2

    .line 585
    .local v0, destPtr:I
    if-ltz v0, :cond_2

    if-ge v0, v4, :cond_2

    .line 586
    iget v3, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    if-ge v3, v4, :cond_2

    .line 589
    iget-object v3, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    iget v4, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    iget-object v5, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0           #destPtr:I
    .local v1, destPtr:I
    aget-byte v5, v5, v0

    aput-byte v5, v3, v4

    .line 591
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-gtz p1, :cond_0

    move v0, v1

    .line 599
    .end local v1           #destPtr:I
    .restart local v0       #destPtr:I
    :goto_1
    return-void

    .line 593
    .end local v0           #destPtr:I
    .restart local v1       #destPtr:I
    :cond_0
    iget-object v3, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    iget v4, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    iget-object v5, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1           #destPtr:I
    .restart local v0       #destPtr:I
    aget-byte v5, v5, v1

    aput-byte v5, v3, v4

    move v1, v0

    .end local v0           #destPtr:I
    .restart local v1       #destPtr:I
    goto :goto_0

    .line 596
    :cond_1
    iget-object v3, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    iget v4, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    iget-object v5, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1           #destPtr:I
    .restart local v0       #destPtr:I
    and-int v6, v1, v7

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 597
    iget v3, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v7

    iput v3, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    :cond_2
    move v1, v0

    .end local v0           #destPtr:I
    .restart local v1       #destPtr:I
    move v2, p1

    .line 595
    .end local p1
    .local v2, length:I
    add-int/lit8 p1, v2, -0x1

    .end local v2           #length:I
    .restart local p1
    if-nez v2, :cond_1

    move v0, v1

    .end local v1           #destPtr:I
    .restart local v0       #destPtr:I
    goto :goto_1
.end method

.method private initFilters()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 630
    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack;->lastFilter:I

    .line 632
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 634
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 635
    return-void
.end method

.method private insertLastMatch(II)V
    .locals 0
    .parameter "length"
    .parameter "distance"

    .prologue
    .line 575
    iput p2, p0, Lde/innosystec/unrar/unpack/Unpack;->lastDist:I

    .line 576
    iput p1, p0, Lde/innosystec/unrar/unpack/Unpack;->lastLength:I

    .line 577
    return-void
.end method

.method private insertOldDist(I)V
    .locals 6
    .parameter "distance"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 567
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    const/4 v1, 0x3

    iget-object v2, p0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    aget v2, v2, v5

    aput v2, v0, v1

    .line 568
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    aget v1, v1, v4

    aput v1, v0, v5

    .line 569
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    aget v1, v1, v3

    aput v1, v0, v4

    .line 570
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    aput p1, v0, v3

    .line 571
    return-void
.end method

.method private readEndOfBlock()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 639
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v0

    .line 640
    .local v0, BitField:I
    const/4 v1, 0x0

    .line 641
    .local v1, NewFile:Z
    const v5, 0x8000

    and-int/2addr v5, v0

    if-eqz v5, :cond_2

    .line 642
    const/4 v2, 0x1

    .line 643
    .local v2, NewTable:Z
    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    .line 649
    :goto_0
    if-eqz v2, :cond_4

    move v5, v4

    :goto_1
    iput-boolean v5, p0, Lde/innosystec/unrar/unpack/Unpack;->tablesRead:Z

    .line 650
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/Unpack;->readTables()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    return v3

    .line 645
    .end local v2           #NewTable:Z
    :cond_2
    const/4 v1, 0x1

    .line 646
    and-int/lit16 v5, v0, 0x4000

    if-eqz v5, :cond_3

    move v2, v3

    .line 647
    .restart local v2       #NewTable:Z
    :goto_2
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    goto :goto_0

    .end local v2           #NewTable:Z
    :cond_3
    move v2, v4

    .line 646
    goto :goto_2

    .restart local v2       #NewTable:Z
    :cond_4
    move v5, v3

    .line 649
    goto :goto_1
.end method

.method private readTables()Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    .line 655
    const/16 v17, 0x14

    move/from16 v0, v17

    new-array v10, v0, [B

    .line 657
    .local v10, bitLength:[B
    const/16 v17, 0x194

    move/from16 v0, v17

    new-array v14, v0, [B

    .line 658
    .local v14, table:[B
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->inAddr:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->readTop:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x19

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 659
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->unpReadBuf()Z

    move-result v17

    if-nez v17, :cond_0

    .line 660
    const/16 v17, 0x0

    .line 754
    :goto_0
    return v17

    .line 663
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->inBit:I

    move/from16 v17, v0

    rsub-int/lit8 v17, v17, 0x8

    and-int/lit8 v17, v17, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->faddbits(I)V

    .line 664
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->fgetbits()I

    move-result v17

    and-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    int-to-long v8, v0

    .line 665
    .local v8, bitField:J
    const-wide/32 v17, 0x8000

    and-long v17, v17, v8

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_1

    .line 666
    sget-object v17, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/innosystec/unrar/unpack/Unpack;->unpBlockType:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->ppmEscChar:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeInit(Lde/innosystec/unrar/unpack/Unpack;I)Z

    move-result v17

    goto :goto_0

    .line 669
    :cond_1
    sget-object v17, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_LZ:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/innosystec/unrar/unpack/Unpack;->unpBlockType:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    .line 671
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->prevLowDist:I

    .line 672
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->lowDistRepCount:I

    .line 674
    const-wide/16 v17, 0x4000

    and-long v17, v17, v8

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_2

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpOldTable:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->fill([BB)V

    .line 677
    :cond_2
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->faddbits(I)V

    .line 679
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    const/16 v17, 0x14

    move/from16 v0, v17

    if-lt v11, v0, :cond_4

    .line 699
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->BD:Lde/innosystec/unrar/unpack/decode/BitDecode;

    move-object/from16 v18, v0

    const/16 v19, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v10, v1, v2, v3}, Lde/innosystec/unrar/unpack/Unpack;->makeDecodeTables([BILde/innosystec/unrar/unpack/decode/Decode;I)V

    .line 701
    const/16 v7, 0x194

    .line 703
    .local v7, TableSize:I
    const/4 v11, 0x0

    :cond_3
    :goto_2
    if-lt v11, v7, :cond_9

    .line 740
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/innosystec/unrar/unpack/Unpack;->tablesRead:Z

    .line 741
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->inAddr:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->readTop:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_11

    .line 742
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 680
    .end local v7           #TableSize:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->fgetbits()I

    move-result v17

    ushr-int/lit8 v17, v17, 0xc

    move/from16 v0, v17

    and-int/lit16 v13, v0, 0xff

    .line 681
    .local v13, length:I
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->faddbits(I)V

    .line 682
    const/16 v17, 0xf

    move/from16 v0, v17

    if-ne v13, v0, :cond_8

    .line 683
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->fgetbits()I

    move-result v17

    ushr-int/lit8 v17, v17, 0xc

    move/from16 v0, v17

    and-int/lit16 v15, v0, 0xff

    .line 684
    .local v15, zeroCount:I
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->faddbits(I)V

    .line 685
    if-nez v15, :cond_5

    .line 686
    const/16 v17, 0xf

    aput-byte v17, v10, v11

    .line 679
    .end local v15           #zeroCount:I
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 688
    .restart local v15       #zeroCount:I
    :cond_5
    add-int/lit8 v15, v15, 0x2

    move/from16 v16, v15

    .end local v15           #zeroCount:I
    .local v16, zeroCount:I
    move v12, v11

    .line 689
    .end local v11           #i:I
    .local v12, i:I
    :goto_4
    add-int/lit8 v15, v16, -0x1

    .end local v16           #zeroCount:I
    .restart local v15       #zeroCount:I
    if-lez v16, :cond_6

    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v12, v0, :cond_7

    .line 692
    :cond_6
    add-int/lit8 v11, v12, -0x1

    .end local v12           #i:I
    .restart local v11       #i:I
    goto :goto_3

    .line 690
    .end local v11           #i:I
    .restart local v12       #i:I
    :cond_7
    add-int/lit8 v11, v12, 0x1

    .end local v12           #i:I
    .restart local v11       #i:I
    const/16 v17, 0x0

    aput-byte v17, v10, v12

    move/from16 v16, v15

    .end local v15           #zeroCount:I
    .restart local v16       #zeroCount:I
    move v12, v11

    .end local v11           #i:I
    .restart local v12       #i:I
    goto :goto_4

    .line 695
    .end local v12           #i:I
    .end local v16           #zeroCount:I
    .restart local v11       #i:I
    :cond_8
    int-to-byte v0, v13

    move/from16 v17, v0

    aput-byte v17, v10, v11

    goto :goto_3

    .line 704
    .end local v13           #length:I
    .restart local v7       #TableSize:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->inAddr:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->readTop:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 705
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->unpReadBuf()Z

    move-result v17

    if-nez v17, :cond_a

    .line 706
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 709
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->BD:Lde/innosystec/unrar/unpack/decode/BitDecode;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->decodeNumber(Lde/innosystec/unrar/unpack/decode/Decode;)I

    move-result v6

    .line 710
    .local v6, Number:I
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ge v6, v0, :cond_b

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpOldTable:[B

    move-object/from16 v17, v0

    aget-byte v17, v17, v11

    add-int v17, v17, v6

    and-int/lit8 v17, v17, 0xf

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v14, v11

    .line 712
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 713
    :cond_b
    const/16 v17, 0x12

    move/from16 v0, v17

    if-ge v6, v0, :cond_d

    .line 715
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ne v6, v0, :cond_c

    .line 716
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->fgetbits()I

    move-result v17

    ushr-int/lit8 v17, v17, 0xd

    add-int/lit8 v4, v17, 0x3

    .line 717
    .local v4, N:I
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->faddbits(I)V

    move v5, v4

    .line 722
    .end local v4           #N:I
    .local v5, N:I
    :goto_5
    add-int/lit8 v4, v5, -0x1

    .end local v5           #N:I
    .restart local v4       #N:I
    if-lez v5, :cond_3

    if-ge v11, v7, :cond_3

    .line 723
    add-int/lit8 v17, v11, -0x1

    aget-byte v17, v14, v17

    aput-byte v17, v14, v11

    .line 724
    add-int/lit8 v11, v11, 0x1

    move v5, v4

    .end local v4           #N:I
    .restart local v5       #N:I
    goto :goto_5

    .line 719
    .end local v5           #N:I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->fgetbits()I

    move-result v17

    ushr-int/lit8 v17, v17, 0x9

    add-int/lit8 v4, v17, 0xb

    .line 720
    .restart local v4       #N:I
    const/16 v17, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->faddbits(I)V

    move v5, v4

    .line 722
    .end local v4           #N:I
    .restart local v5       #N:I
    goto :goto_5

    .line 728
    .end local v5           #N:I
    :cond_d
    const/16 v17, 0x12

    move/from16 v0, v17

    if-ne v6, v0, :cond_f

    .line 729
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->fgetbits()I

    move-result v17

    ushr-int/lit8 v17, v17, 0xd

    add-int/lit8 v4, v17, 0x3

    .line 730
    .restart local v4       #N:I
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->faddbits(I)V

    move v5, v4

    .end local v4           #N:I
    .restart local v5       #N:I
    move v12, v11

    .line 735
    .end local v11           #i:I
    .restart local v12       #i:I
    :goto_6
    add-int/lit8 v4, v5, -0x1

    .end local v5           #N:I
    .restart local v4       #N:I
    if-lez v5, :cond_e

    if-lt v12, v7, :cond_10

    :cond_e
    move v11, v12

    .end local v12           #i:I
    .restart local v11       #i:I
    goto/16 :goto_2

    .line 732
    .end local v4           #N:I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->fgetbits()I

    move-result v17

    ushr-int/lit8 v17, v17, 0x9

    add-int/lit8 v4, v17, 0xb

    .line 733
    .restart local v4       #N:I
    const/16 v17, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->faddbits(I)V

    move v5, v4

    .end local v4           #N:I
    .restart local v5       #N:I
    move v12, v11

    .line 735
    .end local v11           #i:I
    .restart local v12       #i:I
    goto :goto_6

    .line 736
    .end local v5           #N:I
    .restart local v4       #N:I
    :cond_10
    add-int/lit8 v11, v12, 0x1

    .end local v12           #i:I
    .restart local v11       #i:I
    const/16 v17, 0x0

    aput-byte v17, v14, v12

    move v5, v4

    .end local v4           #N:I
    .restart local v5       #N:I
    move v12, v11

    .end local v11           #i:I
    .restart local v12       #i:I
    goto :goto_6

    .line 744
    .end local v5           #N:I
    .end local v6           #Number:I
    .end local v12           #i:I
    .restart local v11       #i:I
    :cond_11
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->LD:Lde/innosystec/unrar/unpack/decode/LitDecode;

    move-object/from16 v18, v0

    const/16 v19, 0x12b

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v14, v1, v2, v3}, Lde/innosystec/unrar/unpack/Unpack;->makeDecodeTables([BILde/innosystec/unrar/unpack/decode/Decode;I)V

    .line 745
    const/16 v17, 0x12b

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->DD:Lde/innosystec/unrar/unpack/decode/DistDecode;

    move-object/from16 v18, v0

    const/16 v19, 0x3c

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v14, v1, v2, v3}, Lde/innosystec/unrar/unpack/Unpack;->makeDecodeTables([BILde/innosystec/unrar/unpack/decode/Decode;I)V

    .line 746
    const/16 v17, 0x167

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->LDD:Lde/innosystec/unrar/unpack/decode/LowDistDecode;

    move-object/from16 v18, v0

    const/16 v19, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v14, v1, v2, v3}, Lde/innosystec/unrar/unpack/Unpack;->makeDecodeTables([BILde/innosystec/unrar/unpack/decode/Decode;I)V

    .line 747
    const/16 v17, 0x178

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->RD:Lde/innosystec/unrar/unpack/decode/RepDecode;

    move-object/from16 v18, v0

    .line 748
    const/16 v19, 0x1c

    .line 747
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v14, v1, v2, v3}, Lde/innosystec/unrar/unpack/Unpack;->makeDecodeTables([BILde/innosystec/unrar/unpack/decode/Decode;I)V

    .line 751
    const/4 v11, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpOldTable:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v11, v0, :cond_12

    .line 754
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 752
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpOldTable:[B

    move-object/from16 v17, v0

    aget-byte v18, v14, v11

    aput-byte v18, v17, v11

    .line 751
    add-int/lit8 v11, v11, 0x1

    goto :goto_7
.end method

.method private readVMCode()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 760
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v4

    shr-int/lit8 v0, v4, 0x8

    .line 761
    .local v0, FirstByte:I
    invoke-virtual {p0, v6}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    .line 762
    and-int/lit8 v4, v0, 0x7

    add-int/lit8 v2, v4, 0x1

    .line 763
    .local v2, Length:I
    const/4 v4, 0x7

    if-ne v2, v4, :cond_1

    .line 764
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    add-int/lit8 v2, v4, 0x7

    .line 765
    invoke-virtual {p0, v6}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    .line 770
    :cond_0
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 771
    .local v3, vmCode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, I:I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 778
    invoke-direct {p0, v0, v3, v2}, Lde/innosystec/unrar/unpack/Unpack;->addVMCode(ILjava/util/List;I)Z

    move-result v4

    :goto_2
    return v4

    .line 766
    .end local v1           #I:I
    .end local v3           #vmCode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_1
    if-ne v2, v6, :cond_0

    .line 767
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v2

    .line 768
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    goto :goto_0

    .line 772
    .restart local v1       #I:I
    .restart local v3       #vmCode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_2
    iget v4, p0, Lde/innosystec/unrar/unpack/Unpack;->inAddr:I

    iget v5, p0, Lde/innosystec/unrar/unpack/Unpack;->readTop:I

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_3

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack;->unpReadBuf()Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_3

    .line 773
    const/4 v4, 0x0

    goto :goto_2

    .line 775
    :cond_3
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    invoke-virtual {p0, v6}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    .line 771
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private readVMCodePPM()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 783
    iget-object v8, p0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v3

    .line 784
    .local v3, FirstByte:I
    if-ne v3, v9, :cond_1

    .line 813
    :cond_0
    :goto_0
    return v7

    .line 787
    :cond_1
    and-int/lit8 v8, v3, 0x7

    add-int/lit8 v5, v8, 0x1

    .line 788
    .local v5, Length:I
    const/4 v8, 0x7

    if-ne v5, v8, :cond_3

    .line 789
    iget-object v8, p0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v0

    .line 790
    .local v0, B1:I
    if-eq v0, v9, :cond_0

    .line 793
    add-int/lit8 v5, v0, 0x7

    .line 805
    .end local v0           #B1:I
    :cond_2
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 806
    .local v6, vmCode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v4, 0x0

    .local v4, I:I
    :goto_2
    if-lt v4, v5, :cond_4

    .line 813
    invoke-direct {p0, v3, v6, v5}, Lde/innosystec/unrar/unpack/Unpack;->addVMCode(ILjava/util/List;I)Z

    move-result v7

    goto :goto_0

    .line 794
    .end local v4           #I:I
    .end local v6           #vmCode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_3
    const/16 v8, 0x8

    if-ne v5, v8, :cond_2

    .line 795
    iget-object v8, p0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v0

    .line 796
    .restart local v0       #B1:I
    if-eq v0, v9, :cond_0

    .line 799
    iget-object v8, p0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v1

    .line 800
    .local v1, B2:I
    if-eq v1, v9, :cond_0

    .line 803
    mul-int/lit16 v8, v0, 0x100

    add-int v5, v8, v1

    goto :goto_1

    .line 807
    .end local v0           #B1:I
    .end local v1           #B2:I
    .restart local v4       #I:I
    .restart local v6       #vmCode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_4
    iget-object v8, p0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v2

    .line 808
    .local v2, Ch:I
    if-eq v2, v9, :cond_0

    .line 811
    int-to-byte v8, v2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private unpack29(Z)V
    .locals 27
    .parameter "solid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    .line 145
    const/16 v23, 0x3c

    move/from16 v0, v23

    new-array v7, v0, [I

    .line 146
    .local v7, DDecode:[I
    const/16 v23, 0x3c

    move/from16 v0, v23

    new-array v6, v0, [B

    .line 150
    .local v6, DBits:[B
    const/16 v23, 0x1

    aget v23, v7, v23

    if-nez v23, :cond_0

    .line 151
    const/4 v8, 0x0

    .local v8, Dist:I
    const/4 v3, 0x0

    .local v3, BitLength:I
    const/16 v19, 0x0

    .line 152
    .local v19, Slot:I
    const/4 v12, 0x0

    .local v12, I:I
    :goto_0
    sget-object v23, Lde/innosystec/unrar/unpack/Unpack;->DBitLengthCounts:[I

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v12, v0, :cond_2

    .line 161
    .end local v3           #BitLength:I
    .end local v8           #Dist:I
    .end local v12           #I:I
    .end local v19           #Slot:I
    :cond_0
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/innosystec/unrar/unpack/Unpack;->fileExtracted:Z

    .line 163
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/innosystec/unrar/unpack/Unpack;->suspended:Z

    move/from16 v23, v0

    if-nez v23, :cond_6

    .line 164
    invoke-virtual/range {p0 .. p1}, Lde/innosystec/unrar/unpack/Unpack;->unpInitData(Z)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->unpReadBuf()Z

    move-result v23

    if-nez v23, :cond_4

    .line 359
    :cond_1
    :goto_1
    return-void

    .line 153
    .restart local v3       #BitLength:I
    .restart local v8       #Dist:I
    .restart local v12       #I:I
    .restart local v19       #Slot:I
    :cond_2
    sget-object v23, Lde/innosystec/unrar/unpack/Unpack;->DBitLengthCounts:[I

    aget v21, v23, v12

    .line 154
    .local v21, count:I
    const/4 v13, 0x0

    .local v13, J:I
    :goto_2
    move/from16 v0, v21

    if-lt v13, v0, :cond_3

    .line 152
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    :cond_3
    aput v8, v7, v19

    .line 156
    int-to-byte v0, v3

    move/from16 v23, v0

    aput-byte v23, v6, v19

    .line 154
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v19, v19, 0x1

    const/16 v23, 0x1

    shl-int v23, v23, v3

    add-int v8, v8, v23

    goto :goto_2

    .line 168
    .end local v3           #BitLength:I
    .end local v8           #Dist:I
    .end local v12           #I:I
    .end local v13           #J:I
    .end local v19           #Slot:I
    .end local v21           #count:I
    :cond_4
    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/innosystec/unrar/unpack/Unpack;->tablesRead:Z

    move/from16 v23, v0

    if-nez v23, :cond_6

    :cond_5
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->readTables()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 173
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/innosystec/unrar/unpack/Unpack;->ppmError:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 178
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v23, v0

    const v24, 0x3fffff

    and-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    .line 180
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->inAddr:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->readBorder:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_9

    .line 181
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->unpReadBuf()Z

    move-result v23

    if-nez v23, :cond_9

    .line 357
    :cond_8
    :goto_4
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->UnpWriteBuf()V

    goto :goto_1

    .line 186
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->wrPtr:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    const v24, 0x3fffff

    and-int v23, v23, v24

    const/16 v24, 0x104

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    .line 187
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->wrPtr:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    .line 189
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->UnpWriteBuf()V

    .line 190
    move-object/from16 v0, p0

    iget-wide v0, v0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    move-wide/from16 v25, v0

    cmp-long v23, v23, v25

    if-gtz v23, :cond_1

    .line 193
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/innosystec/unrar/unpack/Unpack;->suspended:Z

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 194
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/innosystec/unrar/unpack/Unpack;->fileExtracted:Z

    goto/16 :goto_1

    .line 198
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpBlockType:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    move-object/from16 v23, v0

    sget-object v24, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v5

    .line 200
    .local v5, Ch:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v5, v0, :cond_b

    .line 201
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/innosystec/unrar/unpack/Unpack;->ppmError:Z

    goto :goto_4

    .line 204
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->ppmEscChar:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v5, v0, :cond_13

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v17

    .line 206
    .local v17, NextCh:I
    if-nez v17, :cond_c

    .line 207
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->readTables()Z

    move-result v23

    if-nez v23, :cond_7

    goto/16 :goto_4

    .line 212
    :cond_c
    const/16 v23, 0x2

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    const/16 v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 215
    const/16 v23, 0x3

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 216
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->readVMCodePPM()Z

    move-result v23

    if-nez v23, :cond_7

    goto/16 :goto_4

    .line 221
    :cond_d
    const/16 v23, 0x4

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 222
    const/4 v11, 0x0

    .local v11, Distance:I
    const/4 v14, 0x0

    .line 223
    .local v14, Length:I
    const/16 v22, 0x0

    .line 224
    .local v22, failed:Z
    const/4 v12, 0x0

    .restart local v12       #I:I
    :goto_5
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ge v12, v0, :cond_e

    if-eqz v22, :cond_f

    .line 238
    :cond_e
    if-nez v22, :cond_8

    .line 241
    add-int/lit8 v23, v14, 0x20

    add-int/lit8 v24, v11, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lde/innosystec/unrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_3

    .line 225
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v20

    .line 226
    .local v20, ch:I
    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 227
    const/16 v22, 0x1

    .line 224
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 229
    :cond_10
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v12, v0, :cond_11

    .line 231
    move/from16 v0, v20

    and-int/lit16 v14, v0, 0xff

    goto :goto_6

    .line 234
    :cond_11
    shl-int/lit8 v23, v11, 0x8

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int v11, v23, v24

    goto :goto_6

    .line 244
    .end local v11           #Distance:I
    .end local v12           #I:I
    .end local v14           #Length:I
    .end local v20           #ch:I
    .end local v22           #failed:Z
    :cond_12
    const/16 v23, 0x5

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v14

    .line 246
    .restart local v14       #Length:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v14, v0, :cond_8

    .line 249
    add-int/lit8 v23, v14, 0x4

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lde/innosystec/unrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_3

    .line 253
    .end local v14           #Length:I
    .end local v17           #NextCh:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v24, v0

    add-int/lit8 v25, v24, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    goto/16 :goto_3

    .line 257
    .end local v5           #Ch:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->LD:Lde/innosystec/unrar/unpack/decode/LitDecode;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->decodeNumber(Lde/innosystec/unrar/unpack/decode/Decode;)I

    move-result v18

    .line 258
    .local v18, Number:I
    const/16 v23, 0x100

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_15

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v24, v0

    add-int/lit8 v25, v24, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    goto/16 :goto_3

    .line 262
    :cond_15
    const/16 v23, 0x10f

    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_1d

    .line 263
    sget-object v23, Lde/innosystec/unrar/unpack/Unpack;->LDecode:[I

    move/from16 v0, v18

    add-int/lit16 v0, v0, -0x10f

    move/from16 v18, v0

    aget v23, v23, v18

    add-int/lit8 v14, v23, 0x3

    .line 264
    .restart local v14       #Length:I
    sget-object v23, Lde/innosystec/unrar/unpack/Unpack;->LBits:[B

    aget-byte v4, v23, v18

    .local v4, Bits:I
    if-lez v4, :cond_16

    .line 265
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v23

    rsub-int/lit8 v24, v4, 0x10

    ushr-int v23, v23, v24

    add-int v14, v14, v23

    .line 266
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    .line 269
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->DD:Lde/innosystec/unrar/unpack/decode/DistDecode;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->decodeNumber(Lde/innosystec/unrar/unpack/decode/Decode;)I

    move-result v10

    .line 270
    .local v10, DistNumber:I
    aget v23, v7, v10

    add-int/lit8 v11, v23, 0x1

    .line 271
    .restart local v11       #Distance:I
    aget-byte v4, v6, v10

    if-lez v4, :cond_18

    .line 272
    const/16 v23, 0x9

    move/from16 v0, v23

    if-le v10, v0, :cond_1c

    .line 273
    const/16 v23, 0x4

    move/from16 v0, v23

    if-le v4, v0, :cond_17

    .line 274
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v23

    rsub-int/lit8 v24, v4, 0x14

    ushr-int v23, v23, v24

    shl-int/lit8 v23, v23, 0x4

    add-int v11, v11, v23

    .line 275
    add-int/lit8 v23, v4, -0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    .line 277
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->lowDistRepCount:I

    move/from16 v23, v0

    if-lez v23, :cond_1a

    .line 278
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->lowDistRepCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->lowDistRepCount:I

    .line 279
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prevLowDist:I

    move/from16 v23, v0

    add-int v11, v11, v23

    .line 296
    :cond_18
    :goto_7
    const/16 v23, 0x2000

    move/from16 v0, v23

    if-lt v11, v0, :cond_19

    .line 297
    add-int/lit8 v14, v14, 0x1

    .line 298
    int-to-long v0, v11

    move-wide/from16 v23, v0

    const-wide/32 v25, 0x40000

    cmp-long v23, v23, v25

    if-ltz v23, :cond_19

    .line 299
    add-int/lit8 v14, v14, 0x1

    .line 303
    :cond_19
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lde/innosystec/unrar/unpack/Unpack;->insertOldDist(I)V

    .line 304
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lde/innosystec/unrar/unpack/Unpack;->insertLastMatch(II)V

    .line 306
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lde/innosystec/unrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_3

    .line 281
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->LDD:Lde/innosystec/unrar/unpack/decode/LowDistDecode;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->decodeNumber(Lde/innosystec/unrar/unpack/decode/Decode;)I

    move-result v16

    .line 282
    .local v16, LowDist:I
    const/16 v23, 0x10

    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_1b

    .line 283
    const/16 v23, 0xf

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->lowDistRepCount:I

    .line 284
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prevLowDist:I

    move/from16 v23, v0

    add-int v11, v11, v23

    goto :goto_7

    .line 286
    :cond_1b
    add-int v11, v11, v16

    .line 287
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->prevLowDist:I

    goto :goto_7

    .line 291
    .end local v16           #LowDist:I
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v23

    rsub-int/lit8 v24, v4, 0x10

    ushr-int v23, v23, v24

    add-int v11, v11, v23

    .line 292
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    goto :goto_7

    .line 309
    .end local v4           #Bits:I
    .end local v10           #DistNumber:I
    .end local v11           #Distance:I
    .end local v14           #Length:I
    :cond_1d
    const/16 v23, 0x100

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_1e

    .line 310
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->readEndOfBlock()Z

    move-result v23

    if-nez v23, :cond_7

    goto/16 :goto_4

    .line 315
    :cond_1e
    const/16 v23, 0x101

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f

    .line 316
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->readVMCode()Z

    move-result v23

    if-nez v23, :cond_7

    goto/16 :goto_4

    .line 321
    :cond_1f
    const/16 v23, 0x102

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_20

    .line 322
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->lastLength:I

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 323
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->lastLength:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->lastDist:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lde/innosystec/unrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_3

    .line 327
    :cond_20
    const/16 v23, 0x107

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_23

    .line 328
    move/from16 v0, v18

    add-int/lit16 v9, v0, -0x103

    .line 329
    .local v9, DistNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    move-object/from16 v23, v0

    aget v11, v23, v9

    .line 330
    .restart local v11       #Distance:I
    move v12, v9

    .restart local v12       #I:I
    :goto_8
    if-gtz v12, :cond_22

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v11, v23, v24

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->RD:Lde/innosystec/unrar/unpack/decode/RepDecode;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->decodeNumber(Lde/innosystec/unrar/unpack/decode/Decode;)I

    move-result v15

    .line 336
    .local v15, LengthNumber:I
    sget-object v23, Lde/innosystec/unrar/unpack/Unpack;->LDecode:[I

    aget v23, v23, v15

    add-int/lit8 v14, v23, 0x2

    .line 337
    .restart local v14       #Length:I
    sget-object v23, Lde/innosystec/unrar/unpack/Unpack;->LBits:[B

    aget-byte v4, v23, v15

    .restart local v4       #Bits:I
    if-lez v4, :cond_21

    .line 338
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v23

    rsub-int/lit8 v24, v4, 0x10

    ushr-int v23, v23, v24

    add-int v14, v14, v23

    .line 339
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    .line 341
    :cond_21
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lde/innosystec/unrar/unpack/Unpack;->insertLastMatch(II)V

    .line 342
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lde/innosystec/unrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_3

    .line 331
    .end local v4           #Bits:I
    .end local v14           #Length:I
    .end local v15           #LengthNumber:I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    move-object/from16 v24, v0

    add-int/lit8 v25, v12, -0x1

    aget v24, v24, v25

    aput v24, v23, v12

    .line 330
    add-int/lit8 v12, v12, -0x1

    goto :goto_8

    .line 345
    .end local v9           #DistNum:I
    .end local v11           #Distance:I
    .end local v12           #I:I
    :cond_23
    const/16 v23, 0x110

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 346
    sget-object v23, Lde/innosystec/unrar/unpack/Unpack;->SDDecode:[I

    move/from16 v0, v18

    add-int/lit16 v0, v0, -0x107

    move/from16 v18, v0

    aget v23, v23, v18

    add-int/lit8 v11, v23, 0x1

    .line 347
    .restart local v11       #Distance:I
    sget-object v23, Lde/innosystec/unrar/unpack/Unpack;->SDBits:[I

    aget v4, v23, v18

    .restart local v4       #Bits:I
    if-lez v4, :cond_24

    .line 348
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v23

    rsub-int/lit8 v24, v4, 0x10

    ushr-int v23, v23, v24

    add-int v11, v11, v23

    .line 349
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    .line 351
    :cond_24
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lde/innosystec/unrar/unpack/Unpack;->insertOldDist(I)V

    .line 352
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v11}, Lde/innosystec/unrar/unpack/Unpack;->insertLastMatch(II)V

    .line 353
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v11}, Lde/innosystec/unrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_3
.end method

.method private unstoreFile()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 129
    const/high16 v2, 0x1

    new-array v0, v2, [B

    .line 131
    .local v0, buffer:[B
    :cond_0
    :goto_0
    iget-object v2, p0, Lde/innosystec/unrar/unpack/Unpack;->unpIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    array-length v3, v0

    int-to-long v3, v3

    iget-wide v5, p0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v0, v7, v3}, Lde/innosystec/unrar/unpack/ComprDataIO;->unpRead([BII)I

    move-result v1

    .line 132
    .local v1, code:I
    if-eqz v1, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 140
    :cond_1
    return-void

    .line 134
    :cond_2
    int-to-long v2, v1

    iget-wide v4, p0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 135
    :goto_1
    iget-object v2, p0, Lde/innosystec/unrar/unpack/Unpack;->unpIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-virtual {v2, v0, v7, v1}, Lde/innosystec/unrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 136
    iget-wide v2, p0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 137
    iget-wide v2, p0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    goto :goto_0

    .line 134
    :cond_3
    iget-wide v2, p0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    long-to-int v1, v2

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 1065
    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    if-eqz v1, :cond_0

    .line 1066
    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getSubAlloc()Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    move-result-object v0

    .line 1067
    .local v0, allocator:Lde/innosystec/unrar/unpack/ppm/SubAllocator;
    if-eqz v0, :cond_0

    .line 1068
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->stopSubAllocator()V

    .line 1071
    .end local v0           #allocator:Lde/innosystec/unrar/unpack/ppm/SubAllocator;
    :cond_0
    return-void
.end method

.method public doUnpack(IZ)V
    .locals 2
    .parameter "method"
    .parameter "solid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->unpIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ComprDataIO;->getSubHeader()Lde/innosystec/unrar/rarfile/FileHeader;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/FileHeader;->getUnpMethod()B

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 110
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/Unpack;->unstoreFile()V

    .line 112
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 114
    :sswitch_0
    invoke-virtual {p0, p2}, Lde/innosystec/unrar/unpack/Unpack;->unpack15(Z)V

    goto :goto_0

    .line 118
    :sswitch_1
    invoke-virtual {p0, p2}, Lde/innosystec/unrar/unpack/Unpack;->unpack20(Z)V

    goto :goto_0

    .line 122
    :sswitch_2
    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/Unpack;->unpack29(Z)V

    goto :goto_0

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x14 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1d -> :sswitch_2
        0x24 -> :sswitch_2
    .end sparse-switch
.end method

.method public getChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    .line 1048
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack;->inAddr:I

    const/16 v1, 0x7fe2

    if-le v0, v1, :cond_0

    .line 1049
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack;->unpReadBuf()Z

    .line 1051
    :cond_0
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->inBuf:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/Unpack;->inAddr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack;->inAddr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getPpmEscChar()I
    .locals 1

    .prologue
    .line 1056
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack;->ppmEscChar:I

    return v0
.end method

.method public init([B)V
    .locals 2
    .parameter "window"

    .prologue
    const/4 v1, 0x0

    .line 97
    if-nez p1, :cond_0

    .line 98
    const/high16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    .line 103
    :goto_0
    iput v1, p0, Lde/innosystec/unrar/unpack/Unpack;->inAddr:I

    .line 104
    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/Unpack;->unpInitData(Z)V

    .line 105
    return-void

    .line 100
    :cond_0
    iput-object p1, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/innosystec/unrar/unpack/Unpack;->externalWindow:Z

    goto :goto_0
.end method

.method public isFileExtracted()Z
    .locals 1

    .prologue
    .line 1032
    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/Unpack;->fileExtracted:Z

    return v0
.end method

.method public setDestSize(J)V
    .locals 1
    .parameter "destSize"

    .prologue
    .line 1037
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    .line 1038
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/innosystec/unrar/unpack/Unpack;->fileExtracted:Z

    .line 1039
    return-void
.end method

.method public setPpmEscChar(I)V
    .locals 0
    .parameter "ppmEscChar"

    .prologue
    .line 1061
    iput p1, p0, Lde/innosystec/unrar/unpack/Unpack;->ppmEscChar:I

    .line 1062
    return-void
.end method

.method public setSuspended(Z)V
    .locals 0
    .parameter "suspended"

    .prologue
    .line 1043
    iput-boolean p1, p0, Lde/innosystec/unrar/unpack/Unpack;->suspended:Z

    .line 1044
    return-void
.end method

.method protected unpInitData(Z)V
    .locals 3
    .parameter "solid"

    .prologue
    const/4 v2, 0x0

    .line 603
    if-nez p1, :cond_0

    .line 604
    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/Unpack;->tablesRead:Z

    .line 605
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 607
    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack;->oldDistPtr:I

    .line 608
    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack;->lastDist:I

    .line 609
    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack;->lastLength:I

    .line 611
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->unpOldTable:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 613
    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    .line 614
    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack;->wrPtr:I

    .line 615
    const/4 v0, 0x2

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack;->ppmEscChar:I

    .line 617
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/Unpack;->initFilters()V

    .line 619
    :cond_0
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack;->InitBitInput()V

    .line 620
    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/Unpack;->ppmError:Z

    .line 621
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    .line 622
    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack;->readTop:I

    .line 623
    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack;->readBorder:I

    .line 624
    invoke-virtual {p0, p1}, Lde/innosystec/unrar/unpack/Unpack;->unpInitData20(Z)V

    .line 625
    return-void
.end method
