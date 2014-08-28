.class public Lde/innosystec/unrar/rarfile/UnixOwnersHeader;
.super Lde/innosystec/unrar/rarfile/SubBlockHeader;
.source "UnixOwnersHeader.java"


# instance fields
.field private group:Ljava/lang/String;

.field private groupNameSize:I

.field private logger:Lorg/apache/commons/logging/Log;

.field private owner:Ljava/lang/String;

.field private ownerNameSize:I


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;[B)V
    .locals 6
    .parameter "sb"
    .parameter "uoHeader"

    .prologue
    const v4, 0xffff

    const/4 v5, 0x0

    .line 18
    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/SubBlockHeader;-><init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;)V

    .line 11
    const-class v3, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v3

    iput-object v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 19
    const/4 v2, 0x0

    .line 20
    .local v2, pos:I
    invoke-static {p2, v2}, Lde/innosystec/unrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v3

    and-int/2addr v3, v4

    iput v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    .line 21
    add-int/lit8 v2, v2, 0x2

    .line 22
    invoke-static {p2, v2}, Lde/innosystec/unrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v3

    and-int/2addr v3, v4

    iput v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    .line 23
    add-int/lit8 v2, v2, 0x2

    .line 24
    iget v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    add-int/lit8 v3, v3, 0x4

    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 25
    iget v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    new-array v1, v3, [B

    .line 26
    .local v1, ownerBuffer:[B
    iget v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    invoke-static {p2, v2, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    .line 29
    .end local v1           #ownerBuffer:[B
    :cond_0
    iget v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    add-int/lit8 v2, v3, 0x4

    .line 30
    iget v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    add-int/2addr v3, v2

    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 31
    iget v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    new-array v0, v3, [B

    .line 32
    .local v0, groupBuffer:[B
    iget v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    invoke-static {p2, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    .line 35
    .end local v0           #groupBuffer:[B
    :cond_1
    return-void
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupNameSize()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    return v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerNameSize()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    return v0
.end method

.method public print()V
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Lde/innosystec/unrar/rarfile/SubBlockHeader;->print()V

    .line 90
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ownerNameSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "owner: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "groupNameSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->logger:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "group: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 46
    iput-object p1, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setGroupNameSize(I)V
    .locals 0
    .parameter "groupNameSize"

    .prologue
    .line 58
    iput p1, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    .line 59
    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 70
    iput-object p1, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setOwnerNameSize(I)V
    .locals 0
    .parameter "ownerNameSize"

    .prologue
    .line 82
    iput p1, p0, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    .line 83
    return-void
.end method
