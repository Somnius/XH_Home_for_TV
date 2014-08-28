.class public Lcom/rui/launcher/common/utils/FastXmlSerializer;
.super Ljava/lang/Object;
.source "FastXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final BUFFER_LEN:I = 0x2000

.field private static final ESCAPE_TABLE:[Ljava/lang/String;


# instance fields
.field private mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mInTag:Z

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mText:[C

.field private mWriter:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x22

    .line 44
    const-string v2, "&quot;"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "&amp;"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 47
    const-string v2, "&lt;"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    aput-object v2, v0, v1

    .line 39
    sput-object v0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x2000

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mText:[C

    .line 59
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    .line 38
    return-void
.end method

.method private append(C)V
    .locals 2
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget v0, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mPos:I

    .line 65
    .local v0, pos:I
    const/16 v1, 0x1fff

    if-lt v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->flush()V

    .line 67
    iget v0, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mPos:I

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mText:[C

    aput-char p1, v1, v0

    .line 70
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mPos:I

    .line 71
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 2
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 113
    return-void
.end method

.method private append(Ljava/lang/String;II)V
    .locals 5
    .parameter "str"
    .parameter "i"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2000

    .line 74
    if-le p3, v4, :cond_2

    .line 75
    add-int v0, p2, p3

    .line 76
    .local v0, end:I
    :goto_0
    if-lt p2, v0, :cond_0

    .line 90
    .end local v0           #end:I
    :goto_1
    return-void

    .line 77
    .restart local v0       #end:I
    :cond_0
    add-int/lit16 v1, p2, 0x2000

    .line 78
    .local v1, next:I
    if-ge v1, v0, :cond_1

    move v3, v4

    :goto_2
    invoke-direct {p0, p1, p2, v3}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 79
    move p2, v1

    goto :goto_0

    .line 78
    :cond_1
    sub-int v3, v0, p2

    goto :goto_2

    .line 83
    .end local v0           #end:I
    .end local v1           #next:I
    :cond_2
    iget v2, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mPos:I

    .line 84
    .local v2, pos:I
    add-int v3, v2, p3

    if-le v3, v4, :cond_3

    .line 85
    invoke-virtual {p0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->flush()V

    .line 86
    iget v2, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mPos:I

    .line 88
    :cond_3
    add-int v3, p2, p3

    iget-object v4, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mText:[C

    invoke-virtual {p1, p2, v3, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 89
    add-int v3, v2, p3

    iput v3, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mPos:I

    goto :goto_1
.end method

.method private append([CII)V
    .locals 5
    .parameter "buf"
    .parameter "i"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2000

    .line 93
    if-le p3, v4, :cond_2

    .line 94
    add-int v0, p2, p3

    .line 95
    .local v0, end:I
    :goto_0
    if-lt p2, v0, :cond_0

    .line 109
    .end local v0           #end:I
    :goto_1
    return-void

    .line 96
    .restart local v0       #end:I
    :cond_0
    add-int/lit16 v1, p2, 0x2000

    .line 97
    .local v1, next:I
    if-ge v1, v0, :cond_1

    move v3, v4

    :goto_2
    invoke-direct {p0, p1, p2, v3}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append([CII)V

    .line 98
    move p2, v1

    goto :goto_0

    .line 97
    :cond_1
    sub-int v3, v0, p2

    goto :goto_2

    .line 102
    .end local v0           #end:I
    .end local v1           #next:I
    :cond_2
    iget v2, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mPos:I

    .line 103
    .local v2, pos:I
    add-int v3, v2, p3

    if-le v3, v4, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->flush()V

    .line 105
    iget v2, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mPos:I

    .line 107
    :cond_3
    iget-object v3, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mText:[C

    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    add-int v3, v2, p3

    iput v3, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mPos:I

    goto :goto_1
.end method

.method private escapeAndAppendString(Ljava/lang/String;)V
    .locals 8
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 117
    .local v0, N:I
    sget-object v7, Lcom/rui/launcher/common/utils/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v7, v7

    int-to-char v1, v7

    .line 118
    .local v1, NE:C
    sget-object v4, Lcom/rui/launcher/common/utils/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 119
    .local v4, escapes:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 121
    .local v5, lastPos:I
    const/4 v6, 0x0

    .local v6, pos:I
    :goto_0
    if-lt v6, v0, :cond_1

    .line 130
    if-ge v5, v6, :cond_0

    sub-int v7, v6, v5

    invoke-direct {p0, p1, v5, v7}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 131
    :cond_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 123
    .local v2, c:C
    if-lt v2, v1, :cond_3

    .line 121
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 124
    :cond_3
    aget-object v3, v4, v2

    .line 125
    .local v3, escape:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 126
    if-ge v5, v6, :cond_4

    sub-int v7, v6, v5

    invoke-direct {p0, p1, v5, v7}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 127
    :cond_4
    add-int/lit8 v5, v6, 0x1

    .line 128
    invoke-direct {p0, v3}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private escapeAndAppendString([CII)V
    .locals 8
    .parameter "buf"
    .parameter "start"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    sget-object v7, Lcom/rui/launcher/common/utils/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v7, v7

    int-to-char v0, v7

    .line 135
    .local v0, NE:C
    sget-object v4, Lcom/rui/launcher/common/utils/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 136
    .local v4, escapes:[Ljava/lang/String;
    add-int v2, p2, p3

    .line 137
    .local v2, end:I
    move v5, p2

    .line 139
    .local v5, lastPos:I
    move v6, p2

    .local v6, pos:I
    :goto_0
    if-lt v6, v2, :cond_1

    .line 148
    if-ge v5, v6, :cond_0

    sub-int v7, v6, v5

    invoke-direct {p0, p1, v5, v7}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append([CII)V

    .line 149
    :cond_0
    return-void

    .line 140
    :cond_1
    aget-char v1, p1, v6

    .line 141
    .local v1, c:C
    if-lt v1, v0, :cond_3

    .line 139
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 142
    :cond_3
    aget-object v3, v4, v1

    .line 143
    .local v3, escape:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 144
    if-ge v5, v6, :cond_4

    sub-int v7, v6, v5

    invoke-direct {p0, p1, v5, v7}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append([CII)V

    .line 145
    :cond_4
    add-int/lit8 v5, v6, 0x1

    .line 146
    invoke-direct {p0, v3}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private flushBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v1, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .local v0, position:I
    if-lez v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 211
    iget-object v1, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 212
    iget-object v1, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 214
    :cond_0
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "namespace"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 153
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(C)V

    .line 154
    if-eqz p1, :cond_0

    .line 155
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 156
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(C)V

    .line 158
    :cond_0
    invoke-direct {p0, p2}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 159
    const-string v0, "=\""

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p3}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 162
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(C)V

    .line 163
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->flush()V

    .line 183
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 188
    const-string v0, " />\n"

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 198
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mInTag:Z

    .line 199
    return-object p0

    .line 190
    :cond_0
    const-string v0, "</"

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 191
    if-eqz p1, :cond_1

    .line 192
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 193
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(C)V

    .line 195
    :cond_1
    invoke-direct {p0, p2}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 196
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 217
    iget v2, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mPos:I

    if-lez v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_3

    .line 219
    iget-object v2, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mText:[C

    iget v3, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mPos:I

    invoke-static {v2, v5, v3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 220
    .local v0, charBuffer:Ljava/nio/CharBuffer;
    iget-object v2, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 222
    .local v1, result:Ljava/nio/charset/CoderResult;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    :cond_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->flushBytes()V

    .line 226
    iget-object v2, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 221
    goto :goto_0

    .line 231
    :cond_1
    invoke-direct {p0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->flushBytes()V

    .line 232
    iget-object v2, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 237
    .end local v0           #charBuffer:Ljava/nio/CharBuffer;
    .end local v1           #result:Ljava/nio/charset/CoderResult;
    :goto_1
    iput v5, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mPos:I

    .line 239
    :cond_2
    return-void

    .line 234
    :cond_3
    iget-object v2, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    iget-object v3, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mText:[C

    iget v4, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mPos:I

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/Writer;->write([CII)V

    .line 235
    iget-object v2, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "namespace"
    .parameter "generatePrefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 278
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    return-void

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "os"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 287
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 290
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    iput-object v1, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 298
    iput-object p1, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    .line 306
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 292
    check-cast v1, Ljava/io/UnsupportedEncodingException;

    throw v1

    .line 294
    .end local v0           #e:Ljava/nio/charset/IllegalCharsetNameException;
    :catch_1
    move-exception v0

    .line 295
    .local v0, e:Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 295
    check-cast v1, Ljava/io/UnsupportedEncodingException;

    throw v1
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 310
    iput-object p1, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    .line 311
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "namespace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "encoding"
    .parameter "standalone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-direct {p0, v0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 327
    return-void

    .line 326
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 332
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 334
    :cond_0
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(C)V

    .line 335
    if-eqz p1, :cond_1

    .line 336
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 337
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(C)V

    .line 339
    :cond_1
    invoke-direct {p0, p2}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mInTag:Z

    .line 341
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 357
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mInTag:Z

    .line 360
    :cond_0
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 361
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "buf"
    .parameter "start"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 347
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rui/launcher/common/utils/FastXmlSerializer;->mInTag:Z

    .line 350
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/rui/launcher/common/utils/FastXmlSerializer;->escapeAndAppendString([CII)V

    .line 351
    return-object p0
.end method
