.class public Lde/innosystec/unrar/unsigned/UnsignedByte;
.super Ljava/lang/Object;
.source "UnsignedByte.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(BB)S
    .locals 1
    .parameter "unsignedByte1"
    .parameter "unsignedByte2"

    .prologue
    .line 43
    add-int v0, p0, p1

    int-to-short v0, v0

    return v0
.end method

.method public static intToByte(I)B
    .locals 1
    .parameter "unsignedByte1"

    .prologue
    .line 35
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public static longToByte(J)B
    .locals 2
    .parameter "unsignedByte1"

    .prologue
    .line 32
    const-wide/16 v0, 0xff

    and-long/2addr v0, p0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, -0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 56
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v4, v2}, Lde/innosystec/unrar/unsigned/UnsignedByte;->add(BB)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 57
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3, v2}, Lde/innosystec/unrar/unsigned/UnsignedByte;->add(BB)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 58
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0x7f

    invoke-static {v1, v2}, Lde/innosystec/unrar/unsigned/UnsignedByte;->add(BB)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 59
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3, v3}, Lde/innosystec/unrar/unsigned/UnsignedByte;->add(BB)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 62
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v4, v2}, Lde/innosystec/unrar/unsigned/UnsignedByte;->sub(BB)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 63
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-static {v1, v2}, Lde/innosystec/unrar/unsigned/UnsignedByte;->sub(BB)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 64
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, -0x80

    invoke-static {v1, v2}, Lde/innosystec/unrar/unsigned/UnsignedByte;->sub(BB)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 66
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(I)V

    .line 67
    return-void
.end method

.method public static shortToByte(S)B
    .locals 1
    .parameter "unsignedByte1"

    .prologue
    .line 38
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public static sub(BB)S
    .locals 1
    .parameter "unsignedByte1"
    .parameter "unsignedByte2"

    .prologue
    .line 48
    sub-int v0, p0, p1

    int-to-short v0, v0

    return v0
.end method
