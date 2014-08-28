.class Lcom/uprui/executor/SimpleMultipartEntity;
.super Ljava/lang/Object;
.source "SimpleMultipartEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final MULTIPART_CHARS:[C


# instance fields
.field private boundary:Ljava/lang/String;

.field isSetFirst:Z

.field isSetLast:Z

.field out:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/uprui/executor/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/uprui/executor/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    .line 45
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v3, p0, Lcom/uprui/executor/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    .line 46
    iput-boolean v4, p0, Lcom/uprui/executor/SimpleMultipartEntity;->isSetLast:Z

    .line 47
    iput-boolean v4, p0, Lcom/uprui/executor/SimpleMultipartEntity;->isSetFirst:Z

    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    .local v0, buf:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 52
    .local v2, rand:Ljava/util/Random;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x1e

    if-lt v1, v3, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uprui/executor/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    .line 57
    return-void

    .line 53
    :cond_0
    sget-object v3, Lcom/uprui/executor/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    sget-object v4, Lcom/uprui/executor/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/io/File;Z)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "isLast"

    .prologue
    .line 129
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1, v1, v2, p3}, Lcom/uprui/executor/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/uprui/executor/SimpleMultipartEntity;->writeFirstBoundaryIfNeeds()V

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/uprui/executor/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content-Disposition: form-data; name=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"\r\n\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 89
    iget-object v1, p0, Lcom/uprui/executor/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 90
    iget-object v1, p0, Lcom/uprui/executor/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\r\n--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/uprui/executor/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Z)V
    .locals 6
    .parameter "key"
    .parameter "fileName"
    .parameter "fin"
    .parameter "type"
    .parameter "isLast"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/uprui/executor/SimpleMultipartEntity;->writeFirstBoundaryIfNeeds()V

    .line 103
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Content-Type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 104
    iget-object v3, p0, Lcom/uprui/executor/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Content-Disposition: form-data; name=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"; filename=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 105
    iget-object v3, p0, Lcom/uprui/executor/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 106
    iget-object v3, p0, Lcom/uprui/executor/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    const-string v4, "Content-Transfer-Encoding: binary\r\n\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 108
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 109
    .local v2, tmp:[B
    const/4 v1, 0x0

    .line 110
    .local v1, l:I
    :goto_0
    invoke-virtual {p3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 113
    if-nez p5, :cond_0

    .line 114
    iget-object v3, p0, Lcom/uprui/executor/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\r\n--"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/uprui/executor/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/uprui/executor/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :try_start_1
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 125
    .end local v1           #l:I
    .end local v2           #tmp:[B
    :goto_1
    return-void

    .line 111
    .restart local v1       #l:I
    .restart local v2       #tmp:[B
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/uprui/executor/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 116
    .end local v1           #l:I
    .end local v2           #tmp:[B
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    :try_start_4
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 121
    :catch_1
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 118
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 120
    :try_start_5
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 124
    :goto_2
    throw v3

    .line 121
    :catch_2
    move-exception v0

    .line 122
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 121
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #l:I
    .restart local v2       #tmp:[B
    :catch_3
    move-exception v0

    .line 122
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V
    .locals 6
    .parameter "key"
    .parameter "fileName"
    .parameter "fin"
    .parameter "isLast"

    .prologue
    .line 97
    const-string v4, "application/octet-stream"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/uprui/executor/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 98
    return-void
.end method

.method public consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/uprui/executor/SimpleMultipartEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 176
    const-string v1, "Streaming entity does not implement #consumeContent()"

    .line 175
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/uprui/executor/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/uprui/executor/SimpleMultipartEntity;->writeLastBoundaryIfNeeds()V

    .line 138
    iget-object v0, p0, Lcom/uprui/executor/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 4

    .prologue
    .line 143
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "multipart/form-data; boundary="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/uprui/executor/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public writeFirstBoundaryIfNeeds()V
    .locals 4

    .prologue
    .line 60
    iget-boolean v1, p0, Lcom/uprui/executor/SimpleMultipartEntity;->isSetFirst:Z

    if-nez v1, :cond_0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/uprui/executor/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/uprui/executor/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/uprui/executor/SimpleMultipartEntity;->isSetFirst:Z

    .line 69
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public writeLastBoundaryIfNeeds()V
    .locals 4

    .prologue
    .line 72
    iget-boolean v1, p0, Lcom/uprui/executor/SimpleMultipartEntity;->isSetLast:Z

    if-eqz v1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 77
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/uprui/executor/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\r\n--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/uprui/executor/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/uprui/executor/SimpleMultipartEntity;->isSetLast:Z

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/uprui/executor/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 164
    return-void
.end method
