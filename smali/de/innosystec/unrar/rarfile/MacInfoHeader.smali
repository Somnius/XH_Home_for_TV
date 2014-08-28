.class public Lde/innosystec/unrar/rarfile/MacInfoHeader;
.super Lde/innosystec/unrar/rarfile/SubBlockHeader;
.source "MacInfoHeader.java"


# static fields
.field public static final MacInfoHeaderSize:S = 0x8s


# instance fields
.field private fileCreator:I

.field private fileType:I

.field private logger:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;[B)V
    .locals 2
    .parameter "sb"
    .parameter "macHeader"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/SubBlockHeader;-><init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;)V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    iput-object v1, p0, Lde/innosystec/unrar/rarfile/MacInfoHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, pos:I
    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lde/innosystec/unrar/rarfile/MacInfoHeader;->fileType:I

    .line 45
    add-int/lit8 v0, v0, 0x4

    .line 46
    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lde/innosystec/unrar/rarfile/MacInfoHeader;->fileCreator:I

    .line 47
    return-void
.end method


# virtual methods
.method public getFileCreator()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lde/innosystec/unrar/rarfile/MacInfoHeader;->fileCreator:I

    return v0
.end method

.method public getFileType()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lde/innosystec/unrar/rarfile/MacInfoHeader;->fileType:I

    return v0
.end method

.method public print()V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Lde/innosystec/unrar/rarfile/SubBlockHeader;->print()V

    .line 79
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/MacInfoHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "filetype: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lde/innosystec/unrar/rarfile/MacInfoHeader;->fileType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/MacInfoHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "creator :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lde/innosystec/unrar/rarfile/MacInfoHeader;->fileCreator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public setFileCreator(I)V
    .locals 0
    .parameter "fileCreator"

    .prologue
    .line 60
    iput p1, p0, Lde/innosystec/unrar/rarfile/MacInfoHeader;->fileCreator:I

    .line 61
    return-void
.end method

.method public setFileType(I)V
    .locals 0
    .parameter "fileType"

    .prologue
    .line 74
    iput p1, p0, Lde/innosystec/unrar/rarfile/MacInfoHeader;->fileType:I

    .line 75
    return-void
.end method
