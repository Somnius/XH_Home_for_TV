.class public Lde/innosystec/unrar/rarfile/MainHeader;
.super Lde/innosystec/unrar/rarfile/BaseBlock;
.source "MainHeader.java"


# static fields
.field public static final mainHeaderSize:S = 0x6s

.field public static final mainHeaderSizeWithEnc:S = 0x7s


# instance fields
.field private encryptVersion:B

.field private highPosAv:S

.field private logger:Lorg/apache/commons/logging/Log;

.field private posAv:I


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V
    .locals 3
    .parameter "bb"
    .parameter "mainHeader"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/BaseBlock;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;)V

    .line 33
    const-class v1, Lde/innosystec/unrar/rarfile/MainHeader;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    iput-object v1, p0, Lde/innosystec/unrar/rarfile/MainHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, pos:I
    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lde/innosystec/unrar/rarfile/MainHeader;->highPosAv:S

    .line 44
    add-int/lit8 v0, v0, 0x2

    .line 45
    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lde/innosystec/unrar/rarfile/MainHeader;->posAv:I

    .line 46
    add-int/lit8 v0, v0, 0x4

    .line 48
    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/MainHeader;->hasEncryptVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/MainHeader;->encryptVersion:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lde/innosystec/unrar/rarfile/MainHeader;->encryptVersion:B

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public getEncryptVersion()B
    .locals 1

    .prologue
    .line 65
    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/MainHeader;->encryptVersion:B

    return v0
.end method

.method public getHighPosAv()S
    .locals 1

    .prologue
    .line 69
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/MainHeader;->highPosAv:S

    return v0
.end method

.method public getPosAv()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lde/innosystec/unrar/rarfile/MainHeader;->posAv:I

    return v0
.end method

.method public hasArchCmt()Z
    .locals 1

    .prologue
    .line 58
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/MainHeader;->flags:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAV()Z
    .locals 1

    .prologue
    .line 134
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/MainHeader;->flags:S

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 81
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/MainHeader;->flags:S

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstVolume()Z
    .locals 1

    .prologue
    .line 97
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/MainHeader;->flags:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 126
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/MainHeader;->flags:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiVolume()Z
    .locals 1

    .prologue
    .line 89
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/MainHeader;->flags:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewNumbering()Z
    .locals 1

    .prologue
    .line 141
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/MainHeader;->flags:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProtected()Z
    .locals 1

    .prologue
    .line 130
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/MainHeader;->flags:S

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSolid()Z
    .locals 1

    .prologue
    .line 122
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/MainHeader;->flags:S

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public print()V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Lde/innosystec/unrar/rarfile/BaseBlock;->print()V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, str:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "posav: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/MainHeader;->getPosAv()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nhighposav: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/MainHeader;->getHighPosAv()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nhasencversion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/MainHeader;->hasEncryptVersion()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/MainHeader;->hasEncryptVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/MainHeader;->getEncryptVersion()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nhasarchcmt: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/MainHeader;->hasArchCmt()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nisEncrypted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/MainHeader;->isEncrypted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nisMultivolume: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/MainHeader;->isMultiVolume()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nisFirstvolume: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/MainHeader;->isFirstVolume()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nisSolid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/MainHeader;->isSolid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nisLocked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/MainHeader;->isLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nisProtected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/MainHeader;->isProtected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nisAV: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/MainHeader;->isAV()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v1, p0, Lde/innosystec/unrar/rarfile/MainHeader;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 115
    return-void

    .line 105
    :cond_0
    const-string v1, ""

    goto/16 :goto_0
.end method
