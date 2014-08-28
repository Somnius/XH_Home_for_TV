.class public Lde/innosystec/unrar/rarfile/SubBlockHeader;
.super Lde/innosystec/unrar/rarfile/BlockHeader;
.source "SubBlockHeader.java"


# static fields
.field public static final SubBlockHeaderSize:S = 0x3s


# instance fields
.field private level:B

.field private logger:Lorg/apache/commons/logging/Log;

.field private subType:S


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/BlockHeader;[B)V
    .locals 3
    .parameter "bh"
    .parameter "subblock"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/BlockHeader;-><init>(Lde/innosystec/unrar/rarfile/BlockHeader;)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    iput-object v1, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, position:I
    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->subType:S

    .line 48
    add-int/lit8 v0, v0, 0x2

    .line 49
    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->level:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->level:B

    .line 50
    return-void
.end method

.method public constructor <init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/BlockHeader;-><init>(Lde/innosystec/unrar/rarfile/BlockHeader;)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 39
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/SubBlockHeader;->getSubType()Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->getSubblocktype()S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->subType:S

    .line 40
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/SubBlockHeader;->getLevel()B

    move-result v0

    iput-byte v0, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->level:B

    .line 41
    return-void
.end method


# virtual methods
.method public getLevel()B
    .locals 1

    .prologue
    .line 56
    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->level:B

    return v0
.end method

.method public getSubType()Lde/innosystec/unrar/rarfile/SubBlockHeaderType;
    .locals 1

    .prologue
    .line 63
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->subType:S

    invoke-static {v0}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->findSubblockHeaderType(S)Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    move-result-object v0

    return-object v0
.end method

.method public print()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lde/innosystec/unrar/rarfile/BlockHeader;->print()V

    .line 69
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subtype: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/SubBlockHeader;->getSubType()Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->level:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 71
    return-void
.end method
