.class public Lde/innosystec/unrar/unpack/decode/LowDistDecode;
.super Lde/innosystec/unrar/unpack/decode/Decode;
.source "LowDistDecode.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/decode/Decode;-><init>()V

    .line 34
    const/16 v0, 0x11

    new-array v0, v0, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/decode/LowDistDecode;->decodeNum:[I

    .line 35
    return-void
.end method
