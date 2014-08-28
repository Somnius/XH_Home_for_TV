.class public Lde/innosystec/unrar/rarfile/EAHeader;
.super Lde/innosystec/unrar/rarfile/SubBlockHeader;
.source "EAHeader.java"


# static fields
.field public static final EAHeaderSize:S = 0xas


# instance fields
.field private EACRC:I

.field private logger:Lorg/apache/commons/logging/Log;

.field private method:B

.field private unpSize:I

.field private unpVer:B


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;[B)V
    .locals 3
    .parameter "sb"
    .parameter "eahead"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/SubBlockHeader;-><init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;)V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    iput-object v1, p0, Lde/innosystec/unrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, pos:I
    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lde/innosystec/unrar/rarfile/EAHeader;->unpSize:I

    .line 47
    add-int/lit8 v0, v0, 0x4

    .line 48
    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/EAHeader;->unpVer:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lde/innosystec/unrar/rarfile/EAHeader;->unpVer:B

    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/EAHeader;->method:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lde/innosystec/unrar/rarfile/EAHeader;->method:B

    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lde/innosystec/unrar/rarfile/EAHeader;->EACRC:I

    .line 53
    return-void
.end method


# virtual methods
.method public getEACRC()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lde/innosystec/unrar/rarfile/EAHeader;->EACRC:I

    return v0
.end method

.method public getMethod()B
    .locals 1

    .prologue
    .line 66
    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/EAHeader;->method:B

    return v0
.end method

.method public getUnpSize()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lde/innosystec/unrar/rarfile/EAHeader;->unpSize:I

    return v0
.end method

.method public getUnpVer()B
    .locals 1

    .prologue
    .line 80
    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/EAHeader;->unpVer:B

    return v0
.end method

.method public print()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Lde/innosystec/unrar/rarfile/SubBlockHeader;->print()V

    .line 86
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unpSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lde/innosystec/unrar/rarfile/EAHeader;->unpSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unpVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lde/innosystec/unrar/rarfile/EAHeader;->unpVer:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lde/innosystec/unrar/rarfile/EAHeader;->method:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/EAHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EACRC:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lde/innosystec/unrar/rarfile/EAHeader;->EACRC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 90
    return-void
.end method
