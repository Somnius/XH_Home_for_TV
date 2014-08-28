.class public Lde/innosystec/unrar/unpack/ppm/SubAllocator;
.super Ljava/lang/Object;
.source "SubAllocator.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final FIXED_UNIT_SIZE:I = 0xc

.field public static final N1:I = 0x4

.field public static final N2:I = 0x4

.field public static final N3:I = 0x4

.field public static final N4:I = 0x1a

.field public static final N_INDEXES:I = 0x26

.field public static final UNIT_SIZE:I


# instance fields
.field private fakeUnitsStart:I

.field private final freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

.field private freeListPos:I

.field private glueCount:I

.field private heap:[B

.field private heapEnd:I

.field private heapStart:I

.field private hiUnit:I

.field private indx2Units:[I

.field private loUnit:I

.field private pText:I

.field private subAllocatorSize:I

.field private tempMemBlockPos:I

.field private tempRarMemBlock1:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

.field private tempRarMemBlock2:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

.field private tempRarMemBlock3:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

.field private tempRarNode:Lde/innosystec/unrar/unpack/ppm/RarNode;

.field private units2Indx:[I

.field private unitsStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-class v0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->$assertionsDisabled:Z

    .line 35
    sget v0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->size:I

    .line 36
    const/16 v1, 0xc

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x26

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-array v0, v2, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    .line 44
    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    .line 50
    new-array v0, v2, [Lde/innosystec/unrar/unpack/ppm/RarNode;

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    .line 62
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarNode:Lde/innosystec/unrar/unpack/ppm/RarNode;

    .line 63
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock1:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 64
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock2:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 65
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock3:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 69
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->clean()V

    .line 70
    return-void
.end method

.method private MBPtr(II)I
    .locals 1
    .parameter "BasePtr"
    .parameter "Items"

    .prologue
    .line 106
    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private U2B(I)I
    .locals 1
    .parameter "NU"

    .prologue
    .line 100
    sget v0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    mul-int/2addr v0, p1

    return v0
.end method

.method private allocUnitsRare(I)I
    .locals 5
    .parameter "indx"

    .prologue
    .line 230
    iget v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->glueCount:I

    if-nez v3, :cond_0

    .line 231
    const/16 v3, 0xff

    iput v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->glueCount:I

    .line 232
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->glueFreeBlocks()V

    .line 233
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/RarNode;->getNext()I

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    invoke-direct {p0, p1}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v2

    .line 253
    :goto_0
    return v2

    .line 237
    :cond_0
    move v0, p1

    .line 239
    .local v0, i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x26

    if-ne v0, v3, :cond_3

    .line 240
    iget v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->glueCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->glueCount:I

    .line 241
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v3, v3, p1

    invoke-direct {p0, v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v0

    .line 242
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v3, v3, p1

    mul-int/lit8 v1, v3, 0xc

    .line 243
    .local v1, j:I
    iget v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    iget v4, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->pText:I

    sub-int/2addr v3, v4

    if-le v3, v1, :cond_2

    .line 244
    iget v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    sub-int/2addr v3, v1

    iput v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    .line 245
    iget v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->unitsStart:I

    sub-int/2addr v3, v0

    iput v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->unitsStart:I

    .line 246
    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->unitsStart:I

    goto :goto_0

    .line 248
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 250
    .end local v1           #j:I
    :cond_3
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/RarNode;->getNext()I

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v2

    .line 252
    .local v2, retVal:I
    invoke-direct {p0, v2, v0, p1}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->splitBlock(III)V

    goto :goto_0
.end method

.method private glueFreeBlocks()V
    .locals 11

    .prologue
    const v10, 0xffff

    const/16 v9, 0x80

    .line 183
    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock1:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 184
    .local v4, s0:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempMemBlockPos:I

    invoke-virtual {v4, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 185
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock2:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 186
    .local v2, p:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock3:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 188
    .local v3, p1:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    iget v7, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->hiUnit:I

    if-eq v6, v7, :cond_0

    .line 189
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    iget v7, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    const/4 v8, 0x0

    aput-byte v8, v6, v7

    .line 191
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v4, v4}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setPrev(Lde/innosystec/unrar/unpack/ppm/RarMemBlock;)V

    invoke-virtual {v4, v4}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setNext(Lde/innosystec/unrar/unpack/ppm/RarMemBlock;)V

    :goto_0
    const/16 v6, 0x26

    if-lt v0, v6, :cond_2

    .line 199
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v6

    invoke-virtual {v2, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    :goto_1
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 213
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v6

    invoke-virtual {v2, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 214
    :goto_2
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 226
    return-void

    .line 193
    :cond_1
    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 194
    invoke-virtual {v2, v4}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->insertAt(Lde/innosystec/unrar/unpack/ppm/RarMemBlock;)V

    .line 195
    invoke-virtual {v2, v10}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setStamp(I)V

    .line 196
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v6, v6, v0

    invoke-virtual {v2, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setNU(I)V

    .line 192
    :cond_2
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/RarNode;->getNext()I

    move-result v6

    if-nez v6, :cond_1

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_3
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    move-result v6

    invoke-virtual {v3, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 205
    :goto_3
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getStamp()I

    move-result v6

    if-ne v6, v10, :cond_4

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v6

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v7

    add-int/2addr v6, v7

    const/high16 v7, 0x1

    if-lt v6, v7, :cond_5

    .line 200
    :cond_4
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v6

    invoke-virtual {v2, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    goto :goto_1

    .line 206
    :cond_5
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->remove()V

    .line 207
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v6

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setNU(I)V

    .line 208
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    move-result v6

    invoke-virtual {v3, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    goto :goto_3

    .line 215
    :cond_6
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->remove()V

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v5

    .local v5, sz:I
    :goto_4
    if-gt v5, v9, :cond_8

    .line 219
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    iget-object v7, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v8, v5, -0x1

    aget v0, v7, v8

    aget v6, v6, v0

    if-eq v6, v5, :cond_7

    .line 220
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    sub-int v1, v5, v6

    .line 221
    .local v1, k:I
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    sub-int v7, v5, v1

    invoke-direct {p0, v6, v7}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    move-result v6

    add-int/lit8 v7, v1, -0x1

    invoke-direct {p0, v6, v7}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 223
    .end local v1           #k:I
    :cond_7
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    invoke-direct {p0, v6, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 224
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v6

    invoke-virtual {v2, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    goto/16 :goto_2

    .line 217
    :cond_8
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    const/16 v7, 0x25

    invoke-direct {p0, v6, v7}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 216
    add-int/lit8 v5, v5, -0x80

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    invoke-direct {p0, v6, v9}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    move-result v6

    invoke-virtual {v2, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    goto :goto_4
.end method

.method private insertNode(II)V
    .locals 2
    .parameter "p"
    .parameter "indx"

    .prologue
    .line 79
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarNode:Lde/innosystec/unrar/unpack/ppm/RarNode;

    .line 80
    .local v0, temp:Lde/innosystec/unrar/unpack/ppm/RarNode;
    invoke-virtual {v0, p1}, Lde/innosystec/unrar/unpack/ppm/RarNode;->setAddress(I)V

    .line 81
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/RarNode;->getNext()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/RarNode;->setNext(I)V

    .line 82
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Lde/innosystec/unrar/unpack/ppm/RarNode;->setNext(Lde/innosystec/unrar/unpack/ppm/RarNode;)V

    .line 83
    return-void
.end method

.method private removeNode(I)I
    .locals 4
    .parameter "indx"

    .prologue
    .line 91
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarNode;->getNext()I

    move-result v0

    .line 92
    .local v0, retVal:I
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarNode:Lde/innosystec/unrar/unpack/ppm/RarNode;

    .line 93
    .local v1, temp:Lde/innosystec/unrar/unpack/ppm/RarNode;
    invoke-virtual {v1, v0}, Lde/innosystec/unrar/unpack/ppm/RarNode;->setAddress(I)V

    .line 94
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v2, v2, p1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/RarNode;->getNext()I

    move-result v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/RarNode;->setNext(I)V

    .line 95
    return v0
.end method

.method private sizeOfFreeList()I
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private splitBlock(III)V
    .locals 6
    .parameter "pv"
    .parameter "oldIndx"
    .parameter "newIndx"

    .prologue
    .line 111
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v3, v3, p2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v4, v4, p3

    sub-int v2, v3, v4

    .line 112
    .local v2, uDiff:I
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v3, v3, p3

    invoke-direct {p0, v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v3

    add-int v1, p1, v3

    .line 113
    .local v1, p:I
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v5, v2, -0x1

    aget v0, v4, v5

    .local v0, i:I
    aget v3, v3, v0

    if-eq v3, v2, :cond_0

    .line 114
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v1, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 115
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v0, v3, v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 116
    sub-int/2addr v2, v0

    .line 118
    :cond_0
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    invoke-direct {p0, v1, v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 119
    return-void
.end method


# virtual methods
.method public GetAllocatedMemory()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    return v0
.end method

.method public allocContext()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->hiUnit:I

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    if-eq v0, v1, :cond_0

    .line 274
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->hiUnit:I

    sget v1, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    sub-int/2addr v0, v1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->hiUnit:I

    .line 278
    :goto_0
    return v0

    .line 275
    :cond_0
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/RarNode;->getNext()I

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-direct {p0, v2}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v0

    goto :goto_0

    .line 278
    :cond_1
    invoke-direct {p0, v2}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->allocUnitsRare(I)I

    move-result v0

    goto :goto_0
.end method

.method public allocUnits(I)I
    .locals 4
    .parameter "NU"

    .prologue
    .line 258
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v3, p1, -0x1

    aget v0, v2, v3

    .line 259
    .local v0, indx:I
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarNode;->getNext()I

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v1

    .line 268
    :cond_0
    :goto_0
    return v1

    .line 262
    :cond_1
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 263
    .local v1, retVal:I
    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v3, v3, v0

    invoke-direct {p0, v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 264
    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    iget v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->hiUnit:I

    if-le v2, v3, :cond_0

    .line 267
    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v3, v3, v0

    invoke-direct {p0, v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 268
    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->allocUnitsRare(I)I

    move-result v1

    goto :goto_0
.end method

.method public clean()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    .line 75
    return-void
.end method

.method public decPText(I)V
    .locals 1
    .parameter "dPText"

    .prologue
    .line 352
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->setPText(I)V

    .line 353
    return-void
.end method

.method public expandUnits(II)I
    .locals 6
    .parameter "oldPtr"
    .parameter "OldNU"

    .prologue
    .line 283
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v4, p2, -0x1

    aget v0, v3, v4

    .line 284
    .local v0, i0:I
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v4, v4, 0x1

    aget v1, v3, v4

    .line 285
    .local v1, i1:I
    if-ne v0, v1, :cond_0

    .line 294
    .end local p1
    :goto_0
    return p1

    .line 288
    .restart local p1
    :cond_0
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->allocUnits(I)I

    move-result v2

    .line 289
    .local v2, ptr:I
    if-eqz v2, :cond_1

    .line 291
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v5

    invoke-static {v3, p1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    invoke-direct {p0, p1, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->insertNode(II)V

    :cond_1
    move p1, v2

    .line 294
    goto :goto_0
.end method

.method public freeUnits(II)V
    .locals 2
    .parameter "ptr"
    .parameter "OldNU"

    .prologue
    .line 322
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    invoke-direct {p0, p1, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 323
    return-void
.end method

.method public getFakeUnitsStart()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    return v0
.end method

.method public getHeap()[B
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    return-object v0
.end method

.method public getHeapEnd()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapEnd:I

    return v0
.end method

.method public getPText()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->pText:I

    return v0
.end method

.method public getUnitsStart()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->unitsStart:I

    return v0
.end method

.method public incPText()V
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->pText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->pText:I

    .line 87
    return-void
.end method

.method public initSubAllocator()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 368
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    iget v8, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeListPos:I

    iget v9, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeListPos:I

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->sizeOfFreeList()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v6, v8, v9, v7}, Ljava/util/Arrays;->fill([BIIB)V

    .line 370
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapStart:I

    iput v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->pText:I

    .line 373
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    div-int/lit8 v6, v6, 0x8

    div-int/lit8 v6, v6, 0xc

    mul-int/lit8 v6, v6, 0x7

    .line 372
    mul-int/lit8 v5, v6, 0xc

    .line 374
    .local v5, size2:I
    div-int/lit8 v6, v5, 0xc

    sget v8, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    mul-int v3, v6, v8

    .line 375
    .local v3, realSize2:I
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    sub-int v4, v6, v5

    .line 376
    .local v4, size1:I
    div-int/lit8 v6, v4, 0xc

    sget v8, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    mul-int/2addr v6, v8

    .line 377
    rem-int/lit8 v8, v4, 0xc

    .line 376
    add-int v2, v6, v8

    .line 378
    .local v2, realSize1:I
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapStart:I

    iget v8, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    add-int/2addr v6, v8

    iput v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->hiUnit:I

    .line 379
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapStart:I

    add-int/2addr v6, v2

    iput v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->unitsStart:I

    iput v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 380
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapStart:I

    add-int/2addr v6, v4

    iput v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    .line 381
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    add-int/2addr v6, v3

    iput v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->hiUnit:I

    .line 383
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x1

    .local v1, k:I
    :goto_0
    const/4 v6, 0x4

    if-lt v0, v6, :cond_0

    .line 386
    add-int/lit8 v1, v1, 0x1

    :goto_1
    const/16 v6, 0x8

    if-lt v0, v6, :cond_1

    .line 389
    add-int/lit8 v1, v1, 0x1

    :goto_2
    const/16 v6, 0xc

    if-lt v0, v6, :cond_2

    .line 392
    add-int/lit8 v1, v1, 0x1

    :goto_3
    const/16 v6, 0x26

    if-lt v0, v6, :cond_3

    .line 396
    iput v7, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->glueCount:I

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_4
    const/16 v6, 0x80

    if-lt v1, v6, :cond_4

    .line 401
    return-void

    .line 384
    :cond_0
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    and-int/lit16 v8, v1, 0xff

    aput v8, v6, v0

    .line 383
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    :cond_1
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    and-int/lit16 v8, v1, 0xff

    aput v8, v6, v0

    .line 386
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 390
    :cond_2
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    and-int/lit16 v8, v1, 0xff

    aput v8, v6, v0

    .line 389
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x3

    goto :goto_2

    .line 393
    :cond_3
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    and-int/lit16 v8, v1, 0xff

    aput v8, v6, v0

    .line 392
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_3

    .line 397
    :cond_4
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v6, v6, v0

    add-int/lit8 v8, v1, 0x1

    if-ge v6, v8, :cond_5

    const/4 v6, 0x1

    :goto_5
    add-int/2addr v0, v6

    .line 398
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    and-int/lit16 v8, v0, 0xff

    aput v8, v6, v1

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    move v6, v7

    .line 397
    goto :goto_5
.end method

.method public setFakeUnitsStart(I)V
    .locals 0
    .parameter "fakeUnitsStart"

    .prologue
    .line 333
    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    .line 334
    return-void
.end method

.method public setPText(I)V
    .locals 0
    .parameter "text"

    .prologue
    .line 348
    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->pText:I

    .line 349
    return-void
.end method

.method public setUnitsStart(I)V
    .locals 0
    .parameter "unitsStart"

    .prologue
    .line 362
    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->unitsStart:I

    .line 363
    return-void
.end method

.method public shrinkUnits(III)I
    .locals 6
    .parameter "oldPtr"
    .parameter "oldNU"
    .parameter "newNU"

    .prologue
    .line 300
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v4, p2, -0x1

    aget v0, v3, v4

    .line 301
    .local v0, i0:I
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v4, p3, -0x1

    aget v1, v3, v4

    .line 302
    .local v1, i1:I
    if-ne v0, v1, :cond_0

    .line 316
    .end local p1
    :goto_0
    return p1

    .line 305
    .restart local p1
    :cond_0
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/RarNode;->getNext()I

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    invoke-direct {p0, v1}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v2

    .line 311
    .local v2, ptr:I
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {p0, p3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v5

    invoke-static {v3, p1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    invoke-direct {p0, p1, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->insertNode(II)V

    move p1, v2

    .line 313
    goto :goto_0

    .line 315
    .end local v2           #ptr:I
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->splitBlock(III)V

    goto :goto_0
.end method

.method public startSubAllocator(I)Z
    .locals 10
    .parameter "SASize"

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x1

    .line 143
    shl-int/lit8 v4, p1, 0x14

    .line 144
    .local v4, t:I
    iget v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    if-ne v5, v4, :cond_0

    .line 178
    :goto_0
    return v8

    .line 147
    :cond_0
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->stopSubAllocator()V

    .line 148
    div-int/lit8 v5, v4, 0xc

    sget v6, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    mul-int/2addr v5, v6

    sget v6, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    add-int v0, v5, v6

    .line 152
    .local v0, allocSize:I
    add-int/lit8 v5, v0, 0x1

    add-int/lit16 v3, v5, 0x98

    .line 154
    .local v3, realAllocSize:I
    iput v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempMemBlockPos:I

    .line 155
    add-int/lit8 v3, v3, 0xc

    .line 157
    new-array v5, v3, [B

    iput-object v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    .line 158
    iput v8, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapStart:I

    .line 159
    iget v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapStart:I

    add-int/2addr v5, v0

    sget v6, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    sub-int/2addr v5, v6

    iput v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapEnd:I

    .line 160
    iput v4, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    .line 162
    iget v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapStart:I

    add-int/2addr v5, v0

    iput v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeListPos:I

    .line 163
    sget-boolean v5, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    iget v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempMemBlockPos:I

    sub-int v5, v3, v5

    if-eq v5, v9, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempMemBlockPos:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 167
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeListPos:I

    .local v2, pos:I
    :goto_1
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    array-length v5, v5

    if-lt v1, v5, :cond_2

    .line 173
    new-instance v5, Lde/innosystec/unrar/unpack/ppm/RarNode;

    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {v5, v6}, Lde/innosystec/unrar/unpack/ppm/RarNode;-><init>([B)V

    iput-object v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarNode:Lde/innosystec/unrar/unpack/ppm/RarNode;

    .line 174
    new-instance v5, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {v5, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;-><init>([B)V

    iput-object v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock1:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 175
    new-instance v5, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {v5, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;-><init>([B)V

    iput-object v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock2:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 176
    new-instance v5, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {v5, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;-><init>([B)V

    iput-object v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock3:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    goto/16 :goto_0

    .line 168
    :cond_2
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    new-instance v6, Lde/innosystec/unrar/unpack/ppm/RarNode;

    iget-object v7, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {v6, v7}, Lde/innosystec/unrar/unpack/ppm/RarNode;-><init>([B)V

    aput-object v6, v5, v1

    .line 169
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2}, Lde/innosystec/unrar/unpack/ppm/RarNode;->setAddress(I)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_1
.end method

.method public stopSubAllocator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    .line 125
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    .line 126
    const/4 v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapStart:I

    .line 129
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarNode:Lde/innosystec/unrar/unpack/ppm/RarNode;

    .line 130
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock1:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 131
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock2:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 132
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock3:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 134
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v1, "SubAllocator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v1, "\n  subAllocatorSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    const-string v1, "\n  glueCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->glueCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    const-string v1, "\n  heapStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 440
    const-string v1, "\n  loUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    const-string v1, "\n  hiUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->hiUnit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 444
    const-string v1, "\n  pText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->pText:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    const-string v1, "\n  unitsStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->unitsStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 448
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
