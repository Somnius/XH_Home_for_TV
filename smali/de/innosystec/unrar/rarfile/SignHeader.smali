.class public Lde/innosystec/unrar/rarfile/SignHeader;
.super Lde/innosystec/unrar/rarfile/BaseBlock;
.source "SignHeader.java"


# static fields
.field public static final signHeaderSize:S = 0x8s


# instance fields
.field private arcNameSize:S

.field private creationTime:I

.field private userNameSize:S


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V
    .locals 2
    .parameter "bb"
    .parameter "signHeader"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/BaseBlock;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;)V

    .line 33
    iput v1, p0, Lde/innosystec/unrar/rarfile/SignHeader;->creationTime:I

    .line 34
    iput-short v1, p0, Lde/innosystec/unrar/rarfile/SignHeader;->arcNameSize:S

    .line 35
    iput-short v1, p0, Lde/innosystec/unrar/rarfile/SignHeader;->userNameSize:S

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, pos:I
    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lde/innosystec/unrar/rarfile/SignHeader;->creationTime:I

    .line 43
    add-int/lit8 v0, v0, 0x4

    .line 44
    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lde/innosystec/unrar/rarfile/SignHeader;->arcNameSize:S

    .line 45
    add-int/lit8 v0, v0, 0x2

    .line 46
    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lde/innosystec/unrar/rarfile/SignHeader;->userNameSize:S

    .line 47
    return-void
.end method


# virtual methods
.method public getArcNameSize()S
    .locals 1

    .prologue
    .line 50
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/SignHeader;->arcNameSize:S

    return v0
.end method

.method public getCreationTime()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lde/innosystec/unrar/rarfile/SignHeader;->creationTime:I

    return v0
.end method

.method public getUserNameSize()S
    .locals 1

    .prologue
    .line 58
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/SignHeader;->userNameSize:S

    return v0
.end method
