.class public Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;
.super Ljava/io/InputStream;
.source "ReadOnlyAccessInputStream.java"


# instance fields
.field private curPos:J

.field private final endPos:J

.field private file:Lde/innosystec/unrar/io/IReadOnlyAccess;

.field private final startPos:J


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/io/IReadOnlyAccess;JJ)V
    .locals 2
    .parameter "file"
    .parameter "startPos"
    .parameter "endPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 41
    iput-object p1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->file:Lde/innosystec/unrar/io/IReadOnlyAccess;

    .line 42
    iput-wide p2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->startPos:J

    .line 43
    iput-wide p2, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    .line 44
    iput-wide p4, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->endPos:J

    .line 45
    iget-wide v0, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    invoke-interface {p1, v0, v1}, Lde/innosystec/unrar/io/IReadOnlyAccess;->setPosition(J)V

    .line 46
    return-void
.end method


# virtual methods
.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-wide v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    iget-wide v3, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->endPos:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 51
    const/4 v0, -0x1

    .line 56
    :goto_0
    return v0

    .line 54
    :cond_0
    iget-object v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->file:Lde/innosystec/unrar/io/IReadOnlyAccess;

    invoke-interface {v1}, Lde/innosystec/unrar/io/IReadOnlyAccess;->read()I

    move-result v0

    .line 55
    .local v0, b:I
    iget-wide v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    if-nez p3, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    .line 65
    :cond_0
    iget-wide v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    iget-wide v3, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->endPos:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 66
    const/4 v0, -0x1

    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->file:Lde/innosystec/unrar/io/IReadOnlyAccess;

    .line 69
    int-to-long v2, p3

    iget-wide v4, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->endPos:J

    iget-wide v6, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 68
    invoke-interface {v1, p1, p2, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->read([BII)I

    move-result v0

    .line 70
    .local v0, bytesRead:I
    iget-wide v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;->curPos:J

    goto :goto_0
.end method
