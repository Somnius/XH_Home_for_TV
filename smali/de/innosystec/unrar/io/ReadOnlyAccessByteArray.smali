.class public Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;
.super Ljava/lang/Object;
.source "ReadOnlyAccessByteArray.java"

# interfaces
.implements Lde/innosystec/unrar/io/IReadOnlyAccess;


# instance fields
.field private file:[B

.field private positionInFile:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .parameter "file"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file must not be null!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->file:[B

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    .line 45
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    return-void
.end method

.method public getPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->file:[B

    iget v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public read([BII)I
    .locals 3
    .parameter "buffer"
    .parameter "off"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->file:[B

    array-length v1, v1

    iget v2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 70
    .local v0, read:I
    iget-object v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->file:[B

    iget v2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    add-int/2addr v1, v0

    iput v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    .line 72
    return v0
.end method

.method public readFully([BI)I
    .locals 4
    .parameter "buffer"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "buffer must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_0
    if-nez p2, :cond_1

    .line 80
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot read 0 bytes ;-)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_1
    iget-object v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->file:[B

    array-length v1, v1

    iget v2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 83
    .local v0, read:I
    iget-object v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->file:[B

    iget v2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    add-int/2addr v1, v0

    iput v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    .line 85
    return v0
.end method

.method public setPosition(J)V
    .locals 2
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->file:[B

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 53
    long-to-int v0, p1

    iput v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessByteArray;->positionInFile:I

    .line 58
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method
