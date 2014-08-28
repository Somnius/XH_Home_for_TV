.class public Lde/innosystec/unrar/Archive;
.super Ljava/lang/Object;
.source "Archive.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static synthetic $SWITCH_TABLE$de$innosystec$unrar$rarfile$SubBlockHeaderType:[I

.field private static synthetic $SWITCH_TABLE$de$innosystec$unrar$rarfile$UnrarHeadertype:[I

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private arcDataCRC:J

.field private currentHeaderIndex:I

.field private final dataIO:Lde/innosystec/unrar/unpack/ComprDataIO;

.field private encrypted:Z

.field private endHeader:Lde/innosystec/unrar/rarfile/EndArcHeader;

.field private file:Ljava/io/File;

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/rarfile/BaseBlock;",
            ">;"
        }
    .end annotation
.end field

.field private markHead:Lde/innosystec/unrar/rarfile/MarkHeader;

.field private newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

.field private rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

.field private sfxSize:I

.field private totalPackedRead:J

.field private totalPackedSize:J

.field private unpack:Lde/innosystec/unrar/unpack/Unpack;

.field private final unrarCallback:Lde/innosystec/unrar/UnrarCallback;


# direct methods
.method static synthetic $SWITCH_TABLE$de$innosystec$unrar$rarfile$SubBlockHeaderType()[I
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lde/innosystec/unrar/Archive;->$SWITCH_TABLE$de$innosystec$unrar$rarfile$SubBlockHeaderType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->values()[Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->BEEA_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->EA_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->MAC_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->NTACL_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->STREAM_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->UO_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lde/innosystec/unrar/Archive;->$SWITCH_TABLE$de$innosystec$unrar$rarfile$SubBlockHeaderType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$de$innosystec$unrar$rarfile$UnrarHeadertype()[I
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lde/innosystec/unrar/Archive;->$SWITCH_TABLE$de$innosystec$unrar$rarfile$UnrarHeadertype:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->values()[Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->AvHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->CommHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->EndArcHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MainHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MarkHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->NewSubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ProtectHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->SignHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->SubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lde/innosystec/unrar/Archive;->$SWITCH_TABLE$de$innosystec$unrar$rarfile$UnrarHeadertype:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lde/innosystec/unrar/Archive;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lde/innosystec/unrar/Archive;->logger:Ljava/util/logging/Logger;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/innosystec/unrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lde/innosystec/unrar/Archive;-><init>(Ljava/io/File;Lde/innosystec/unrar/UnrarCallback;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lde/innosystec/unrar/UnrarCallback;)V
    .locals 5
    .parameter "file"
    .parameter "unrarCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/innosystec/unrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    .line 72
    iput-object v1, p0, Lde/innosystec/unrar/Archive;->markHead:Lde/innosystec/unrar/rarfile/MarkHeader;

    .line 74
    iput-object v1, p0, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    .line 76
    iput-object v1, p0, Lde/innosystec/unrar/Archive;->endHeader:Lde/innosystec/unrar/rarfile/EndArcHeader;

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lde/innosystec/unrar/Archive;->arcDataCRC:J

    .line 85
    iput-boolean v2, p0, Lde/innosystec/unrar/Archive;->encrypted:Z

    .line 87
    iput v2, p0, Lde/innosystec/unrar/Archive;->sfxSize:I

    .line 90
    iput-wide v3, p0, Lde/innosystec/unrar/Archive;->totalPackedSize:J

    .line 93
    iput-wide v3, p0, Lde/innosystec/unrar/Archive;->totalPackedRead:J

    .line 106
    invoke-virtual {p0, p1}, Lde/innosystec/unrar/Archive;->setFile(Ljava/io/File;)V

    .line 107
    iput-object p2, p0, Lde/innosystec/unrar/Archive;->unrarCallback:Lde/innosystec/unrar/UnrarCallback;

    .line 108
    new-instance v0, Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-direct {v0, p0}, Lde/innosystec/unrar/unpack/ComprDataIO;-><init>(Lde/innosystec/unrar/Archive;)V

    iput-object v0, p0, Lde/innosystec/unrar/Archive;->dataIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    .line 109
    return-void
.end method

.method private doExtractFile(Lde/innosystec/unrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    .locals 10
    .parameter "hd"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/innosystec/unrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 457
    iget-object v4, p0, Lde/innosystec/unrar/Archive;->dataIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-virtual {v4, p2}, Lde/innosystec/unrar/unpack/ComprDataIO;->init(Ljava/io/OutputStream;)V

    .line 458
    iget-object v4, p0, Lde/innosystec/unrar/Archive;->dataIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-virtual {v4, p1}, Lde/innosystec/unrar/unpack/ComprDataIO;->init(Lde/innosystec/unrar/rarfile/FileHeader;)V

    .line 459
    iget-object v5, p0, Lde/innosystec/unrar/Archive;->dataIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-virtual {p0}, Lde/innosystec/unrar/Archive;->isOldFormat()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_0
    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Lde/innosystec/unrar/unpack/ComprDataIO;->setUnpFileCRC(J)V

    .line 460
    iget-object v4, p0, Lde/innosystec/unrar/Archive;->unpack:Lde/innosystec/unrar/unpack/Unpack;

    if-nez v4, :cond_0

    .line 461
    new-instance v4, Lde/innosystec/unrar/unpack/Unpack;

    iget-object v5, p0, Lde/innosystec/unrar/Archive;->dataIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-direct {v4, v5}, Lde/innosystec/unrar/unpack/Unpack;-><init>(Lde/innosystec/unrar/unpack/ComprDataIO;)V

    iput-object v4, p0, Lde/innosystec/unrar/Archive;->unpack:Lde/innosystec/unrar/unpack/Unpack;

    .line 463
    :cond_0
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/FileHeader;->isSolid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 464
    iget-object v4, p0, Lde/innosystec/unrar/Archive;->unpack:Lde/innosystec/unrar/unpack/Unpack;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lde/innosystec/unrar/unpack/Unpack;->init([B)V

    .line 466
    :cond_1
    iget-object v4, p0, Lde/innosystec/unrar/Archive;->unpack:Lde/innosystec/unrar/unpack/Unpack;

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/FileHeader;->getFullUnpackSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lde/innosystec/unrar/unpack/Unpack;->setDestSize(J)V

    .line 468
    :try_start_0
    iget-object v4, p0, Lde/innosystec/unrar/Archive;->unpack:Lde/innosystec/unrar/unpack/Unpack;

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/FileHeader;->getUnpVersion()B

    move-result v5

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/FileHeader;->isSolid()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lde/innosystec/unrar/unpack/Unpack;->doUnpack(IZ)V

    .line 470
    iget-object v4, p0, Lde/innosystec/unrar/Archive;->dataIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ComprDataIO;->getSubHeader()Lde/innosystec/unrar/rarfile/FileHeader;

    move-result-object p1

    .line 471
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/FileHeader;->isSplitAfter()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 472
    iget-object v4, p0, Lde/innosystec/unrar/Archive;->dataIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ComprDataIO;->getPackedCRC()J

    move-result-wide v4

    xor-long v0, v4, v8

    .line 473
    .local v0, actualCRC:J
    :goto_1
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/FileHeader;->getFileCRC()I

    move-result v3

    .line 474
    .local v3, expectedCRC:I
    int-to-long v4, v3

    cmp-long v4, v0, v4

    if-eqz v4, :cond_5

    .line 475
    new-instance v4, Lde/innosystec/unrar/exception/RarException;

    sget-object v5, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->crcError:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v4, v5}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v0           #actualCRC:J
    .end local v3           #expectedCRC:I
    :catch_0
    move-exception v2

    .line 485
    .local v2, e:Ljava/lang/Exception;
    iget-object v4, p0, Lde/innosystec/unrar/Archive;->unpack:Lde/innosystec/unrar/unpack/Unpack;

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/Unpack;->cleanUp()V

    .line 486
    instance-of v4, v2, Lde/innosystec/unrar/exception/RarException;

    if-eqz v4, :cond_4

    .line 488
    check-cast v2, Lde/innosystec/unrar/exception/RarException;

    .end local v2           #e:Ljava/lang/Exception;
    throw v2

    .line 459
    :cond_2
    const/4 v4, -0x1

    goto :goto_0

    .line 472
    :cond_3
    :try_start_1
    iget-object v4, p0, Lde/innosystec/unrar/Archive;->dataIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ComprDataIO;->getUnpFileCRC()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    xor-long v0, v4, v8

    goto :goto_1

    .line 491
    .restart local v2       #e:Ljava/lang/Exception;
    :cond_4
    new-instance v4, Lde/innosystec/unrar/exception/RarException;

    invoke-direct {v4, v2}, Lde/innosystec/unrar/exception/RarException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 494
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #actualCRC:J
    .restart local v3       #expectedCRC:I
    :cond_5
    return-void
.end method

.method private readHeaders()V
    .locals 53
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    .line 202
    const/16 v49, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/innosystec/unrar/Archive;->markHead:Lde/innosystec/unrar/rarfile/MarkHeader;

    .line 203
    const/16 v49, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    .line 204
    const/16 v49, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/innosystec/unrar/Archive;->endHeader:Lde/innosystec/unrar/rarfile/EndArcHeader;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Ljava/util/List;->clear()V

    .line 206
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/Archive;->currentHeaderIndex:I

    .line 207
    const/16 v45, 0x0

    .line 209
    .local v45, toRead:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->file:Ljava/io/File;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/io/File;->length()J

    move-result-wide v23

    .line 212
    .local v23, fileLength:J
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v41, 0x0

    .line 213
    .local v41, size:I
    const-wide/16 v31, 0x0

    .line 214
    .local v31, newpos:J
    const/16 v49, 0x7

    move/from16 v0, v49

    new-array v6, v0, [B

    .line 216
    .local v6, baseBlockBuffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lde/innosystec/unrar/io/IReadOnlyAccess;->getPosition()J

    move-result-wide v35

    .line 219
    .local v35, position:J
    cmp-long v49, v35, v23

    if-ltz v49, :cond_2

    .line 428
    :cond_1
    :goto_1
    return-void

    .line 224
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v49, v0

    const/16 v50, 0x7

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v0, v6, v1}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v41

    .line 225
    if-eqz v41, :cond_1

    .line 228
    new-instance v8, Lde/innosystec/unrar/rarfile/BaseBlock;

    invoke-direct {v8, v6}, Lde/innosystec/unrar/rarfile/BaseBlock;-><init>([B)V

    .line 230
    .local v8, block:Lde/innosystec/unrar/rarfile/BaseBlock;
    move-wide/from16 v0, v35

    invoke-virtual {v8, v0, v1}, Lde/innosystec/unrar/rarfile/BaseBlock;->setPositionInFile(J)V

    .line 233
    invoke-static {}, Lde/innosystec/unrar/Archive;->$SWITCH_TABLE$de$innosystec$unrar$rarfile$UnrarHeadertype()[I

    move-result-object v49

    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/BaseBlock;->getHeaderType()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v50

    aget v49, v49, v50

    packed-switch v49, :pswitch_data_0

    .line 325
    :pswitch_1
    const/16 v49, 0x4

    move/from16 v0, v49

    new-array v10, v0, [B

    .line 326
    .local v10, blockHeaderBuffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v49, v0

    .line 327
    const/16 v50, 0x4

    .line 326
    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v0, v10, v1}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v7

    .line 328
    .local v7, bhsize:I
    new-instance v9, Lde/innosystec/unrar/rarfile/BlockHeader;

    invoke-direct {v9, v8, v10}, Lde/innosystec/unrar/rarfile/BlockHeader;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V

    .line 331
    .local v9, blockHead:Lde/innosystec/unrar/rarfile/BlockHeader;
    invoke-static {}, Lde/innosystec/unrar/Archive;->$SWITCH_TABLE$de$innosystec$unrar$rarfile$UnrarHeadertype()[I

    move-result-object v49

    invoke-virtual {v9}, Lde/innosystec/unrar/rarfile/BlockHeader;->getHeaderType()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v50

    aget v49, v49, v50

    packed-switch v49, :pswitch_data_1

    .line 420
    :pswitch_2
    sget-object v49, Lde/innosystec/unrar/Archive;->logger:Ljava/util/logging/Logger;

    const-string v50, "Unknown Header"

    invoke-virtual/range {v49 .. v50}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 421
    new-instance v49, Lde/innosystec/unrar/exception/RarException;

    .line 422
    sget-object v50, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->notRarArchive:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    .line 421
    invoke-direct/range {v49 .. v50}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v49

    .line 236
    .end local v7           #bhsize:I
    .end local v9           #blockHead:Lde/innosystec/unrar/rarfile/BlockHeader;
    .end local v10           #blockHeaderBuffer:[B
    :pswitch_3
    new-instance v49, Lde/innosystec/unrar/rarfile/MarkHeader;

    move-object/from16 v0, v49

    invoke-direct {v0, v8}, Lde/innosystec/unrar/rarfile/MarkHeader;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;)V

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/innosystec/unrar/Archive;->markHead:Lde/innosystec/unrar/rarfile/MarkHeader;

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->markHead:Lde/innosystec/unrar/rarfile/MarkHeader;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lde/innosystec/unrar/rarfile/MarkHeader;->isSignature()Z

    move-result v49

    if-nez v49, :cond_3

    .line 238
    new-instance v49, Lde/innosystec/unrar/exception/RarException;

    .line 239
    sget-object v50, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->badRarArchive:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    .line 238
    invoke-direct/range {v49 .. v50}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v49

    .line 241
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->markHead:Lde/innosystec/unrar/rarfile/MarkHeader;

    move-object/from16 v50, v0

    invoke-interface/range {v49 .. v50}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 246
    :pswitch_4
    const/16 v28, 0x0

    .line 247
    .local v28, mainHeaderSize:I
    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/BaseBlock;->hasEncryptVersion()Z

    move-result v49

    if-eqz v49, :cond_4

    .line 248
    const/16 v45, 0x7

    .line 250
    :goto_2
    move/from16 v0, v45

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 251
    .local v29, mainbuff:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v29

    move/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v28

    .line 252
    new-instance v30, Lde/innosystec/unrar/rarfile/MainHeader;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v8, v1}, Lde/innosystec/unrar/rarfile/MainHeader;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V

    .line 253
    .local v30, mainhead:Lde/innosystec/unrar/rarfile/MainHeader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lde/innosystec/unrar/rarfile/MainHeader;->isEncrypted()Z

    move-result v49

    if-eqz v49, :cond_0

    .line 256
    new-instance v49, Lde/innosystec/unrar/exception/RarException;

    .line 257
    sget-object v50, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->rarEncryptedException:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    .line 256
    invoke-direct/range {v49 .. v50}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v49

    .line 249
    .end local v29           #mainbuff:[B
    .end local v30           #mainhead:Lde/innosystec/unrar/rarfile/MainHeader;
    :cond_4
    const/16 v45, 0x6

    goto :goto_2

    .line 263
    .end local v28           #mainHeaderSize:I
    :pswitch_5
    const/16 v40, 0x0

    .line 264
    .local v40, signHeaderSize:I
    const/16 v45, 0x8

    .line 265
    move/from16 v0, v45

    new-array v0, v0, [B

    move-object/from16 v38, v0

    .line 266
    .local v38, signBuff:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v38

    move/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v40

    .line 267
    new-instance v39, Lde/innosystec/unrar/rarfile/SignHeader;

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-direct {v0, v8, v1}, Lde/innosystec/unrar/rarfile/SignHeader;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V

    .line 268
    .local v39, signHead:Lde/innosystec/unrar/rarfile/SignHeader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 274
    .end local v38           #signBuff:[B
    .end local v39           #signHead:Lde/innosystec/unrar/rarfile/SignHeader;
    .end local v40           #signHeaderSize:I
    :pswitch_6
    const/4 v5, 0x0

    .line 275
    .local v5, avHeaderSize:I
    const/16 v45, 0x7

    .line 276
    move/from16 v0, v45

    new-array v3, v0, [B

    .line 277
    .local v3, avBuff:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v45

    invoke-interface {v0, v3, v1}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v5

    .line 278
    new-instance v4, Lde/innosystec/unrar/rarfile/AVHeader;

    invoke-direct {v4, v8, v3}, Lde/innosystec/unrar/rarfile/AVHeader;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V

    .line 279
    .local v4, avHead:Lde/innosystec/unrar/rarfile/AVHeader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 284
    .end local v3           #avBuff:[B
    .end local v4           #avHead:Lde/innosystec/unrar/rarfile/AVHeader;
    .end local v5           #avHeaderSize:I
    :pswitch_7
    const/4 v13, 0x0

    .line 285
    .local v13, commHeaderSize:I
    const/16 v45, 0x6

    .line 286
    move/from16 v0, v45

    new-array v11, v0, [B

    .line 287
    .local v11, commBuff:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v45

    invoke-interface {v0, v11, v1}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v13

    .line 288
    new-instance v12, Lde/innosystec/unrar/rarfile/CommentHeader;

    invoke-direct {v12, v8, v11}, Lde/innosystec/unrar/rarfile/CommentHeader;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V

    .line 289
    .local v12, commHead:Lde/innosystec/unrar/rarfile/CommentHeader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {v12}, Lde/innosystec/unrar/rarfile/CommentHeader;->getPositionInFile()J

    move-result-wide v49

    .line 293
    invoke-virtual {v12}, Lde/innosystec/unrar/rarfile/CommentHeader;->getHeaderSize()S

    move-result v51

    move/from16 v0, v51

    int-to-long v0, v0

    move-wide/from16 v51, v0

    .line 292
    add-long v31, v49, v51

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-wide/from16 v1, v31

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->setPosition(J)V

    goto/16 :goto_0

    .line 299
    .end local v11           #commBuff:[B
    .end local v12           #commHead:Lde/innosystec/unrar/rarfile/CommentHeader;
    .end local v13           #commHeaderSize:I
    :pswitch_8
    const/16 v45, 0x0

    .line 300
    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/BaseBlock;->hasArchiveDataCRC()Z

    move-result v49

    if-eqz v49, :cond_5

    .line 301
    add-int/lit8 v45, v45, 0x4

    .line 303
    :cond_5
    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/BaseBlock;->hasVolumeNumber()Z

    move-result v49

    if-eqz v49, :cond_6

    .line 304
    add-int/lit8 v45, v45, 0x2

    .line 307
    :cond_6
    if-lez v45, :cond_7

    .line 308
    const/16 v18, 0x0

    .line 309
    .local v18, endArcHeaderSize:I
    move/from16 v0, v45

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 310
    .local v19, endArchBuff:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v19

    move/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v18

    .line 311
    new-instance v17, Lde/innosystec/unrar/rarfile/EndArcHeader;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lde/innosystec/unrar/rarfile/EndArcHeader;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V

    .line 318
    .end local v18           #endArcHeaderSize:I
    .end local v19           #endArchBuff:[B
    .local v17, endArcHead:Lde/innosystec/unrar/rarfile/EndArcHeader;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/innosystec/unrar/Archive;->endHeader:Lde/innosystec/unrar/rarfile/EndArcHeader;

    goto/16 :goto_1

    .line 316
    .end local v17           #endArcHead:Lde/innosystec/unrar/rarfile/EndArcHeader;
    :cond_7
    new-instance v17, Lde/innosystec/unrar/rarfile/EndArcHeader;

    const/16 v49, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-direct {v0, v8, v1}, Lde/innosystec/unrar/rarfile/EndArcHeader;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V

    .restart local v17       #endArcHead:Lde/innosystec/unrar/rarfile/EndArcHeader;
    goto :goto_3

    .line 334
    .end local v17           #endArcHead:Lde/innosystec/unrar/rarfile/EndArcHeader;
    .restart local v7       #bhsize:I
    .restart local v9       #blockHead:Lde/innosystec/unrar/rarfile/BlockHeader;
    .restart local v10       #blockHeaderBuffer:[B
    :pswitch_9
    invoke-virtual {v9}, Lde/innosystec/unrar/rarfile/BlockHeader;->getHeaderSize()S

    move-result v49

    add-int/lit8 v49, v49, -0x7

    add-int/lit8 v45, v49, -0x4

    .line 337
    move/from16 v0, v45

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 338
    .local v22, fileHeaderBuffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v22

    move/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v21

    .line 341
    .local v21, fhsize:I
    new-instance v20, Lde/innosystec/unrar/rarfile/FileHeader;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v9, v1}, Lde/innosystec/unrar/rarfile/FileHeader;-><init>(Lde/innosystec/unrar/rarfile/BlockHeader;[B)V

    .line 346
    .local v20, fh:Lde/innosystec/unrar/rarfile/FileHeader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/rarfile/FileHeader;->getPositionInFile()J

    move-result-wide v49

    .line 348
    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/rarfile/FileHeader;->getHeaderSize()S

    move-result v51

    move/from16 v0, v51

    int-to-long v0, v0

    move-wide/from16 v51, v0

    .line 347
    add-long v49, v49, v51

    .line 348
    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v51

    .line 347
    add-long v31, v49, v51

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-wide/from16 v1, v31

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->setPosition(J)V

    goto/16 :goto_0

    .line 353
    .end local v20           #fh:Lde/innosystec/unrar/rarfile/FileHeader;
    .end local v21           #fhsize:I
    .end local v22           #fileHeaderBuffer:[B
    :pswitch_a
    invoke-virtual {v9}, Lde/innosystec/unrar/rarfile/BlockHeader;->getHeaderSize()S

    move-result v49

    add-int/lit8 v49, v49, -0x7

    add-int/lit8 v45, v49, -0x4

    .line 356
    move/from16 v0, v45

    new-array v0, v0, [B

    move-object/from16 v37, v0

    .line 357
    .local v37, protectHeaderBuffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v37

    move/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v34

    .line 359
    .local v34, phsize:I
    new-instance v33, Lde/innosystec/unrar/rarfile/ProtectHeader;

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-direct {v0, v9, v1}, Lde/innosystec/unrar/rarfile/ProtectHeader;-><init>(Lde/innosystec/unrar/rarfile/BlockHeader;[B)V

    .line 363
    .local v33, ph:Lde/innosystec/unrar/rarfile/ProtectHeader;
    invoke-virtual/range {v33 .. v33}, Lde/innosystec/unrar/rarfile/ProtectHeader;->getPositionInFile()J

    move-result-wide v49

    .line 364
    invoke-virtual/range {v33 .. v33}, Lde/innosystec/unrar/rarfile/ProtectHeader;->getHeaderSize()S

    move-result v51

    move/from16 v0, v51

    int-to-long v0, v0

    move-wide/from16 v51, v0

    .line 363
    add-long v31, v49, v51

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-wide/from16 v1, v31

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->setPosition(J)V

    goto/16 :goto_0

    .line 370
    .end local v33           #ph:Lde/innosystec/unrar/rarfile/ProtectHeader;
    .end local v34           #phsize:I
    .end local v37           #protectHeaderBuffer:[B
    :pswitch_b
    const/16 v49, 0x3

    move/from16 v0, v49

    new-array v0, v0, [B

    move-object/from16 v43, v0

    .line 371
    .local v43, subHeadbuffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v49, v0

    const/16 v50, 0x3

    move-object/from16 v0, v49

    move-object/from16 v1, v43

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v44

    .line 372
    .local v44, subheadersize:I
    new-instance v42, Lde/innosystec/unrar/rarfile/SubBlockHeader;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-direct {v0, v9, v1}, Lde/innosystec/unrar/rarfile/SubBlockHeader;-><init>(Lde/innosystec/unrar/rarfile/BlockHeader;[B)V

    .line 373
    .local v42, subHead:Lde/innosystec/unrar/rarfile/SubBlockHeader;
    invoke-virtual/range {v42 .. v42}, Lde/innosystec/unrar/rarfile/SubBlockHeader;->print()V

    .line 374
    invoke-static {}, Lde/innosystec/unrar/Archive;->$SWITCH_TABLE$de$innosystec$unrar$rarfile$SubBlockHeaderType()[I

    move-result-object v49

    invoke-virtual/range {v42 .. v42}, Lde/innosystec/unrar/rarfile/SubBlockHeader;->getSubType()Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v50

    aget v49, v49, v50

    packed-switch v49, :pswitch_data_2

    goto/16 :goto_0

    .line 390
    :pswitch_c
    const/16 v49, 0xa

    move/from16 v0, v49

    new-array v15, v0, [B

    .line 391
    .local v15, eaHeaderBuffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v49, v0

    const/16 v50, 0xa

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v0, v15, v1}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v16

    .line 392
    .local v16, eaheadersize:I
    new-instance v14, Lde/innosystec/unrar/rarfile/EAHeader;

    move-object/from16 v0, v42

    invoke-direct {v14, v0, v15}, Lde/innosystec/unrar/rarfile/EAHeader;-><init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;[B)V

    .line 393
    .local v14, eaHeader:Lde/innosystec/unrar/rarfile/EAHeader;
    invoke-virtual {v14}, Lde/innosystec/unrar/rarfile/EAHeader;->print()V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 377
    .end local v14           #eaHeader:Lde/innosystec/unrar/rarfile/EAHeader;
    .end local v15           #eaHeaderBuffer:[B
    .end local v16           #eaheadersize:I
    :pswitch_d
    const/16 v49, 0x8

    move/from16 v0, v49

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 378
    .local v26, macHeaderbuffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v49, v0

    const/16 v50, 0x8

    move-object/from16 v0, v49

    move-object/from16 v1, v26

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v27

    .line 379
    .local v27, macheadersize:I
    new-instance v25, Lde/innosystec/unrar/rarfile/MacInfoHeader;

    move-object/from16 v0, v25

    move-object/from16 v1, v42

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lde/innosystec/unrar/rarfile/MacInfoHeader;-><init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;[B)V

    .line 380
    .local v25, macHeader:Lde/innosystec/unrar/rarfile/MacInfoHeader;
    invoke-virtual/range {v25 .. v25}, Lde/innosystec/unrar/rarfile/MacInfoHeader;->print()V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 403
    .end local v25           #macHeader:Lde/innosystec/unrar/rarfile/MacInfoHeader;
    .end local v26           #macHeaderbuffer:[B
    .end local v27           #macheadersize:I
    :pswitch_e
    invoke-virtual/range {v42 .. v42}, Lde/innosystec/unrar/rarfile/SubBlockHeader;->getHeaderSize()S

    move-result v45

    .line 404
    add-int/lit8 v45, v45, -0x7

    .line 405
    add-int/lit8 v45, v45, -0x4

    .line 406
    add-int/lit8 v45, v45, -0x3

    .line 407
    move/from16 v0, v45

    new-array v0, v0, [B

    move-object/from16 v47, v0

    .line 408
    .local v47, uoHeaderBuffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v47

    move/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v48

    .line 409
    .local v48, uoHeaderSize:I
    new-instance v46, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;

    move-object/from16 v0, v46

    move-object/from16 v1, v42

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;-><init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;[B)V

    .line 410
    .local v46, uoHeader:Lde/innosystec/unrar/rarfile/UnixOwnersHeader;
    invoke-virtual/range {v46 .. v46}, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->print()V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_8
    .end packed-switch

    .line 331
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_9
        :pswitch_2
        :pswitch_2
        :pswitch_b
        :pswitch_a
        :pswitch_2
        :pswitch_9
    .end packed-switch

    .line 374
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bytesReadRead(I)V
    .locals 5
    .parameter "count"

    .prologue
    .line 144
    if-lez p1, :cond_0

    .line 145
    iget-wide v0, p0, Lde/innosystec/unrar/Archive;->totalPackedRead:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lde/innosystec/unrar/Archive;->totalPackedRead:J

    .line 146
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->unrarCallback:Lde/innosystec/unrar/UnrarCallback;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->unrarCallback:Lde/innosystec/unrar/UnrarCallback;

    iget-wide v1, p0, Lde/innosystec/unrar/Archive;->totalPackedRead:J

    .line 148
    iget-wide v3, p0, Lde/innosystec/unrar/Archive;->totalPackedSize:J

    .line 147
    invoke-interface {v0, v1, v2, v3, v4}, Lde/innosystec/unrar/UnrarCallback;->volumeProgressChanged(JJ)V

    .line 151
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    invoke-interface {v0}, Lde/innosystec/unrar/io/IReadOnlyAccess;->close()V

    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    .line 516
    :cond_0
    return-void
.end method

.method public extractFile(Lde/innosystec/unrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "hd"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    .line 440
    iget-object v1, p0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    new-instance v1, Lde/innosystec/unrar/exception/RarException;

    sget-object v2, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->headerNotInArchive:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v1, v2}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v1

    .line 444
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lde/innosystec/unrar/Archive;->doExtractFile(Lde/innosystec/unrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Ljava/lang/Exception;
    instance-of v1, v0, Lde/innosystec/unrar/exception/RarException;

    if-eqz v1, :cond_1

    .line 448
    check-cast v0, Lde/innosystec/unrar/exception/RarException;

    .end local v0           #e:Ljava/lang/Exception;
    throw v0

    .line 450
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lde/innosystec/unrar/exception/RarException;

    invoke-direct {v1, v0}, Lde/innosystec/unrar/exception/RarException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileHeaders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/rarfile/FileHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lde/innosystec/unrar/rarfile/FileHeader;>;"
    iget-object v2, p0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 167
    return-object v1

    .line 162
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/rarfile/BaseBlock;

    .line 163
    .local v0, block:Lde/innosystec/unrar/rarfile/BaseBlock;
    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/BaseBlock;->getHeaderType()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v3

    sget-object v4, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v3, v4}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    check-cast v0, Lde/innosystec/unrar/rarfile/FileHeader;

    .end local v0           #block:Lde/innosystec/unrar/rarfile/BaseBlock;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getMainHeader()Lde/innosystec/unrar/rarfile/MainHeader;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    return-object v0
.end method

.method public getRof()Lde/innosystec/unrar/io/IReadOnlyAccess;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    return-object v0
.end method

.method public getUnrarCallback()Lde/innosystec/unrar/UnrarCallback;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->unrarCallback:Lde/innosystec/unrar/UnrarCallback;

    return-object v0
.end method

.method public isEncrypted()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/MainHeader;->isEncrypted()Z

    move-result v0

    return v0

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mainheader is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOldFormat()Z
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->markHead:Lde/innosystec/unrar/rarfile/MarkHeader;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/MarkHeader;->isOldFormat()Z

    move-result v0

    return v0
.end method

.method public nextFileHeader()Lde/innosystec/unrar/rarfile/FileHeader;
    .locals 5

    .prologue
    .line 171
    iget-object v2, p0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 172
    .local v1, n:I
    :cond_0
    iget v2, p0, Lde/innosystec/unrar/Archive;->currentHeaderIndex:I

    if-lt v2, v1, :cond_1

    .line 178
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 173
    :cond_1
    iget-object v2, p0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    iget v3, p0, Lde/innosystec/unrar/Archive;->currentHeaderIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lde/innosystec/unrar/Archive;->currentHeaderIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/rarfile/BaseBlock;

    .line 174
    .local v0, block:Lde/innosystec/unrar/rarfile/BaseBlock;
    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/BaseBlock;->getHeaderType()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v2

    sget-object v3, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    if-ne v2, v3, :cond_0

    .line 175
    check-cast v0, Lde/innosystec/unrar/rarfile/FileHeader;

    goto :goto_0
.end method

.method setFile(Ljava/io/File;)V
    .locals 7
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 116
    iput-object p1, p0, Lde/innosystec/unrar/Archive;->file:Ljava/io/File;

    .line 117
    iput-wide v2, p0, Lde/innosystec/unrar/Archive;->totalPackedSize:J

    .line 118
    iput-wide v2, p0, Lde/innosystec/unrar/Archive;->totalPackedRead:J

    .line 119
    invoke-virtual {p0}, Lde/innosystec/unrar/Archive;->close()V

    .line 120
    new-instance v2, Lde/innosystec/unrar/io/ReadOnlyAccessFile;

    invoke-direct {v2, p1}, Lde/innosystec/unrar/io/ReadOnlyAccessFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    .line 122
    :try_start_0
    invoke-direct {p0}, Lde/innosystec/unrar/Archive;->readHeaders()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    iget-object v2, p0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 137
    iget-object v2, p0, Lde/innosystec/unrar/Archive;->unrarCallback:Lde/innosystec/unrar/UnrarCallback;

    if-eqz v2, :cond_1

    .line 138
    iget-object v2, p0, Lde/innosystec/unrar/Archive;->unrarCallback:Lde/innosystec/unrar/UnrarCallback;

    iget-wide v3, p0, Lde/innosystec/unrar/Archive;->totalPackedRead:J

    .line 139
    iget-wide v5, p0, Lde/innosystec/unrar/Archive;->totalPackedSize:J

    .line 138
    invoke-interface {v2, v3, v4, v5, v6}, Lde/innosystec/unrar/UnrarCallback;->volumeProgressChanged(JJ)V

    .line 141
    :cond_1
    return-void

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lde/innosystec/unrar/Archive;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 126
    const-string v4, "exception in archive constructor maybe file is encrypted or currupt"

    .line 125
    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 132
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/rarfile/BaseBlock;

    .line 133
    .local v0, block:Lde/innosystec/unrar/rarfile/BaseBlock;
    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/BaseBlock;->getHeaderType()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v3

    sget-object v4, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    if-ne v3, v4, :cond_0

    .line 134
    iget-wide v3, p0, Lde/innosystec/unrar/Archive;->totalPackedSize:J

    check-cast v0, Lde/innosystec/unrar/rarfile/FileHeader;

    .end local v0           #block:Lde/innosystec/unrar/rarfile/BaseBlock;
    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lde/innosystec/unrar/Archive;->totalPackedSize:J

    goto :goto_1
.end method
