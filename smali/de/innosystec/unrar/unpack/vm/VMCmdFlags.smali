.class public Lde/innosystec/unrar/unpack/vm/VMCmdFlags;
.super Ljava/lang/Object;
.source "VMCmdFlags.java"


# static fields
.field public static final VMCF_BYTEMODE:B = 0x4t

.field public static final VMCF_CHFLAGS:B = 0x40t

.field public static final VMCF_JUMP:B = 0x8t

.field public static final VMCF_OP0:B = 0x0t

.field public static final VMCF_OP1:B = 0x1t

.field public static final VMCF_OP2:B = 0x2t

.field public static final VMCF_OPMASK:B = 0x3t

.field public static final VMCF_PROC:B = 0x10t

.field public static final VMCF_USEFLAGS:B = 0x20t

.field public static VM_CmdFlags:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x6

    const/16 v4, 0x29

    const/16 v3, 0x46

    .line 38
    const/16 v0, 0x28

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 39
    aput-byte v5, v0, v1

    .line 40
    aput-byte v3, v0, v6

    .line 41
    aput-byte v3, v0, v7

    const/4 v1, 0x3

    .line 42
    aput-byte v3, v0, v1

    const/4 v1, 0x4

    .line 43
    aput-byte v4, v0, v1

    const/4 v1, 0x5

    .line 44
    aput-byte v4, v0, v1

    .line 45
    const/16 v1, 0x45

    aput-byte v1, v0, v5

    const/4 v1, 0x7

    .line 46
    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    .line 47
    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    .line 48
    aput-byte v3, v0, v1

    const/16 v1, 0xa

    .line 49
    aput-byte v3, v0, v1

    const/16 v1, 0xb

    .line 50
    aput-byte v3, v0, v1

    const/16 v1, 0xc

    .line 51
    aput-byte v3, v0, v1

    const/16 v1, 0xd

    .line 52
    aput-byte v4, v0, v1

    const/16 v1, 0xe

    .line 53
    aput-byte v4, v0, v1

    const/16 v1, 0xf

    .line 54
    aput-byte v4, v0, v1

    const/16 v1, 0x10

    .line 55
    aput-byte v4, v0, v1

    const/16 v1, 0x11

    .line 56
    aput-byte v4, v0, v1

    const/16 v1, 0x12

    .line 57
    aput-byte v4, v0, v1

    const/16 v1, 0x13

    .line 58
    aput-byte v6, v0, v1

    const/16 v1, 0x14

    .line 59
    aput-byte v6, v0, v1

    const/16 v1, 0x15

    .line 60
    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    .line 61
    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    .line 62
    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    .line 63
    aput-byte v3, v0, v1

    const/16 v1, 0x19

    .line 64
    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    .line 65
    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    .line 66
    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    .line 69
    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    .line 70
    const/16 v2, 0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    .line 71
    aput-byte v7, v0, v1

    const/16 v1, 0x21

    .line 72
    aput-byte v7, v0, v1

    const/16 v1, 0x22

    .line 73
    aput-byte v5, v0, v1

    const/16 v1, 0x23

    .line 74
    aput-byte v5, v0, v1

    const/16 v1, 0x24

    .line 75
    aput-byte v5, v0, v1

    const/16 v1, 0x25

    .line 76
    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    .line 77
    const/16 v2, 0x66

    aput-byte v2, v0, v1

    .line 37
    sput-object v0, Lde/innosystec/unrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
