.class public Lde/innosystec/unrar/unpack/vm/RarVM;
.super Lde/innosystec/unrar/unpack/vm/BitInput;
.source "RarVM.java"


# static fields
.field private static synthetic $SWITCH_TABLE$de$innosystec$unrar$unpack$vm$VMCommands:[I = null

.field private static synthetic $SWITCH_TABLE$de$innosystec$unrar$unpack$vm$VMStandardFilters:[I = null

.field private static final UINT_MASK:J = -0x1L

.field public static final VM_FIXEDGLOBALSIZE:I = 0x40

.field public static final VM_GLOBALMEMADDR:I = 0x3c000

.field public static final VM_GLOBALMEMSIZE:I = 0x2000

.field public static final VM_MEMMASK:I = 0x3ffff

.field public static final VM_MEMSIZE:I = 0x40000

.field private static final regCount:I = 0x8


# instance fields
.field private IP:I

.field private R:[I

.field private codeSize:I

.field private flags:I

.field private maxOpCount:I

.field private mem:[B


# direct methods
.method static synthetic $SWITCH_TABLE$de$innosystec$unrar$unpack$vm$VMCommands()[I
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lde/innosystec/unrar/unpack/vm/RarVM;->$SWITCH_TABLE$de$innosystec$unrar$unpack$vm$VMCommands:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lde/innosystec/unrar/unpack/vm/VMCommands;->values()[Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_ADC:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_36

    :goto_1
    :try_start_1
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_ADD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_35

    :goto_2
    :try_start_2
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_ADDB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_34

    :goto_3
    :try_start_3
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_ADDD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_33

    :goto_4
    :try_start_4
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_AND:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_32

    :goto_5
    :try_start_5
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_CALL:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_31

    :goto_6
    :try_start_6
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_CMP:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_30

    :goto_7
    :try_start_7
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_CMPB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2f

    :goto_8
    :try_start_8
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_CMPD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2e

    :goto_9
    :try_start_9
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_DEC:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2d

    :goto_a
    :try_start_a
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_DECB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2c

    :goto_b
    :try_start_b
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_DECD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2b

    :goto_c
    :try_start_c
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_DIV:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2a

    :goto_d
    :try_start_d
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_INC:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_29

    :goto_e
    :try_start_e
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_INCB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_28

    :goto_f
    :try_start_f
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_INCD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_27

    :goto_10
    :try_start_10
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_JA:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_26

    :goto_11
    :try_start_11
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_JAE:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_25

    :goto_12
    :try_start_12
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_JB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_24

    :goto_13
    :try_start_13
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_JBE:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_23

    :goto_14
    :try_start_14
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_JMP:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_22

    :goto_15
    :try_start_15
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_JNS:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_21

    :goto_16
    :try_start_16
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_JNZ:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_20

    :goto_17
    :try_start_17
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_JS:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_1f

    :goto_18
    :try_start_18
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_JZ:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_1e

    :goto_19
    :try_start_19
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_MOV:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_1d

    :goto_1a
    :try_start_1a
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_MOVB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1c

    :goto_1b
    :try_start_1b
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_MOVD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :goto_1c
    :try_start_1c
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_MOVSX:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1a

    :goto_1d
    :try_start_1d
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_MOVZX:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_19

    :goto_1e
    :try_start_1e
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_MUL:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_18

    :goto_1f
    :try_start_1f
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_NEG:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_17

    :goto_20
    :try_start_20
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_NEGB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_16

    :goto_21
    :try_start_21
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_NEGD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_15

    :goto_22
    :try_start_22
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_NOT:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_14

    :goto_23
    :try_start_23
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_OR:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_13

    :goto_24
    :try_start_24
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_POP:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_12

    :goto_25
    :try_start_25
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_POPA:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_11

    :goto_26
    :try_start_26
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_POPF:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_10

    :goto_27
    :try_start_27
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_PRINT:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_f

    :goto_28
    :try_start_28
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_PUSH:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_e

    :goto_29
    :try_start_29
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_PUSHA:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_d

    :goto_2a
    :try_start_2a
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_PUSHF:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_c

    :goto_2b
    :try_start_2b
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_RET:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_b

    :goto_2c
    :try_start_2c
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SAR:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_a

    :goto_2d
    :try_start_2d
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SBB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_9

    :goto_2e
    :try_start_2e
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SHL:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_8

    :goto_2f
    :try_start_2f
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SHR:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_7

    :goto_30
    :try_start_30
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_STANDARD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_6

    :goto_31
    :try_start_31
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SUB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_5

    :goto_32
    :try_start_32
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SUBB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_4

    :goto_33
    :try_start_33
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SUBD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_3

    :goto_34
    :try_start_34
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_TEST:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_2

    :goto_35
    :try_start_35
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_XCHG:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_1

    :goto_36
    :try_start_36
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_XOR:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_0

    :goto_37
    sput-object v0, Lde/innosystec/unrar/unpack/vm/RarVM;->$SWITCH_TABLE$de$innosystec$unrar$unpack$vm$VMCommands:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_37

    :catch_1
    move-exception v1

    goto :goto_36

    :catch_2
    move-exception v1

    goto :goto_35

    :catch_3
    move-exception v1

    goto :goto_34

    :catch_4
    move-exception v1

    goto :goto_33

    :catch_5
    move-exception v1

    goto :goto_32

    :catch_6
    move-exception v1

    goto :goto_31

    :catch_7
    move-exception v1

    goto :goto_30

    :catch_8
    move-exception v1

    goto :goto_2f

    :catch_9
    move-exception v1

    goto :goto_2e

    :catch_a
    move-exception v1

    goto :goto_2d

    :catch_b
    move-exception v1

    goto/16 :goto_2c

    :catch_c
    move-exception v1

    goto/16 :goto_2b

    :catch_d
    move-exception v1

    goto/16 :goto_2a

    :catch_e
    move-exception v1

    goto/16 :goto_29

    :catch_f
    move-exception v1

    goto/16 :goto_28

    :catch_10
    move-exception v1

    goto/16 :goto_27

    :catch_11
    move-exception v1

    goto/16 :goto_26

    :catch_12
    move-exception v1

    goto/16 :goto_25

    :catch_13
    move-exception v1

    goto/16 :goto_24

    :catch_14
    move-exception v1

    goto/16 :goto_23

    :catch_15
    move-exception v1

    goto/16 :goto_22

    :catch_16
    move-exception v1

    goto/16 :goto_21

    :catch_17
    move-exception v1

    goto/16 :goto_20

    :catch_18
    move-exception v1

    goto/16 :goto_1f

    :catch_19
    move-exception v1

    goto/16 :goto_1e

    :catch_1a
    move-exception v1

    goto/16 :goto_1d

    :catch_1b
    move-exception v1

    goto/16 :goto_1c

    :catch_1c
    move-exception v1

    goto/16 :goto_1b

    :catch_1d
    move-exception v1

    goto/16 :goto_1a

    :catch_1e
    move-exception v1

    goto/16 :goto_19

    :catch_1f
    move-exception v1

    goto/16 :goto_18

    :catch_20
    move-exception v1

    goto/16 :goto_17

    :catch_21
    move-exception v1

    goto/16 :goto_16

    :catch_22
    move-exception v1

    goto/16 :goto_15

    :catch_23
    move-exception v1

    goto/16 :goto_14

    :catch_24
    move-exception v1

    goto/16 :goto_13

    :catch_25
    move-exception v1

    goto/16 :goto_12

    :catch_26
    move-exception v1

    goto/16 :goto_11

    :catch_27
    move-exception v1

    goto/16 :goto_10

    :catch_28
    move-exception v1

    goto/16 :goto_f

    :catch_29
    move-exception v1

    goto/16 :goto_e

    :catch_2a
    move-exception v1

    goto/16 :goto_d

    :catch_2b
    move-exception v1

    goto/16 :goto_c

    :catch_2c
    move-exception v1

    goto/16 :goto_b

    :catch_2d
    move-exception v1

    goto/16 :goto_a

    :catch_2e
    move-exception v1

    goto/16 :goto_9

    :catch_2f
    move-exception v1

    goto/16 :goto_8

    :catch_30
    move-exception v1

    goto/16 :goto_7

    :catch_31
    move-exception v1

    goto/16 :goto_6

    :catch_32
    move-exception v1

    goto/16 :goto_5

    :catch_33
    move-exception v1

    goto/16 :goto_4

    :catch_34
    move-exception v1

    goto/16 :goto_3

    :catch_35
    move-exception v1

    goto/16 :goto_2

    :catch_36
    move-exception v1

    goto/16 :goto_1
.end method

.method static synthetic $SWITCH_TABLE$de$innosystec$unrar$unpack$vm$VMStandardFilters()[I
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lde/innosystec/unrar/unpack/vm/RarVM;->$SWITCH_TABLE$de$innosystec$unrar$unpack$vm$VMStandardFilters:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->values()[Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_UPCASE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lde/innosystec/unrar/unpack/vm/RarVM;->$SWITCH_TABLE$de$innosystec$unrar$unpack$vm$VMStandardFilters:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/vm/BitInput;-><init>()V

    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    .line 54
    const v0, 0x17d7840

    iput v0, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->maxOpCount:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    .line 62
    return-void
.end method

.method private ExecuteCode(Ljava/util/List;I)Z
    .locals 21
    .parameter
    .parameter "cmdCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, preparedCode:Ljava/util/List;,"Ljava/util/List<Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;>;"
    const v13, 0x17d7840

    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->maxOpCount:I

    .line 227
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/vm/RarVM;->codeSize:I

    .line 228
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->IP:I

    .line 231
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->IP:I

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;

    .line 232
    .local v5, cmd:Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOp1()Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->getOperand(Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;)I

    move-result v8

    .line 233
    .local v8, op1:I
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOp2()Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->getOperand(Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;)I

    move-result v9

    .line 234
    .local v9, op2:I
    invoke-static {}, Lde/innosystec/unrar/unpack/vm/RarVM;->$SWITCH_TABLE$de$innosystec$unrar$unpack$vm$VMCommands()[I

    move-result-object v13

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOpCode()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v14

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 627
    :cond_0
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->IP:I

    add-int/lit8 v13, v13, 0x1

    .line 628
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->IP:I

    .line 629
    move-object/from16 v0, p0

    iget v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->maxOpCount:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->maxOpCount:I

    goto :goto_0

    .line 236
    :pswitch_1
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v15

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    .line 236
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto :goto_1

    .line 240
    :pswitch_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto :goto_1

    .line 243
    :pswitch_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto :goto_1

    .line 247
    :pswitch_4
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v11

    .line 248
    .local v11, value1:I
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    sub-int v10, v11, v13

    .line 250
    .local v10, result:I
    if-nez v10, :cond_1

    .line 251
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    goto/16 :goto_1

    .line 253
    :cond_1
    if-le v10, v11, :cond_2

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    goto/16 :goto_1

    .line 254
    :cond_2
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v13, v10

    goto :goto_2

    .line 260
    .end local v10           #result:I
    .end local v11           #value1:I
    :pswitch_5
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v11

    .line 261
    .restart local v11       #value1:I
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    sub-int v10, v11, v13

    .line 262
    .restart local v10       #result:I
    if-nez v10, :cond_3

    .line 263
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    goto/16 :goto_1

    .line 265
    :cond_3
    if-le v10, v11, :cond_4

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    goto/16 :goto_1

    .line 266
    :cond_4
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v13, v10

    goto :goto_3

    .line 271
    .end local v10           #result:I
    .end local v11           #value1:I
    :pswitch_6
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v11

    .line 272
    .restart local v11       #value1:I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    sub-int v10, v11, v13

    .line 273
    .restart local v10       #result:I
    if-nez v10, :cond_5

    .line 274
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    goto/16 :goto_1

    .line 276
    :cond_5
    if-le v10, v11, :cond_6

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    goto/16 :goto_1

    .line 277
    :cond_6
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v13, v10

    goto :goto_4

    .line 283
    .end local v10           #result:I
    .end local v11           #value1:I
    :pswitch_7
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v11

    .line 284
    .restart local v11       #value1:I
    int-to-long v13, v11

    .line 285
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    int-to-long v15, v15

    .line 284
    add-long/2addr v13, v15

    .line 285
    const-wide/16 v15, -0x1

    .line 284
    and-long/2addr v13, v15

    long-to-int v10, v13

    .line 286
    .restart local v10       #result:I
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 287
    and-int/lit16 v10, v10, 0xff

    .line 288
    if-ge v10, v11, :cond_7

    const/4 v13, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    .line 298
    :goto_6
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v10}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 289
    :cond_7
    if-nez v10, :cond_8

    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    goto :goto_5

    .line 290
    :cond_8
    and-int/lit16 v13, v10, 0x80

    if-eqz v13, :cond_9

    .line 291
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    goto :goto_5

    .line 295
    :cond_a
    if-ge v10, v11, :cond_b

    const/4 v13, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    goto :goto_6

    .line 296
    :cond_b
    if-nez v10, :cond_c

    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    goto :goto_7

    .line 297
    :cond_c
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v13, v10

    goto :goto_7

    .line 303
    .end local v10           #result:I
    .end local v11           #value1:I
    :pswitch_8
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    .line 304
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    int-to-long v15, v15

    const-wide/16 v17, -0x1

    .line 305
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    .line 304
    and-long v15, v15, v17

    .line 305
    const-wide/16 v17, -0x1

    .line 304
    and-long v15, v15, v17

    long-to-int v15, v15

    .line 303
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 309
    :pswitch_9
    const/4 v13, 0x0

    .line 310
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    .line 312
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    int-to-long v15, v15

    const-wide/16 v17, -0x1

    .line 313
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    .line 312
    and-long v15, v15, v17

    .line 313
    const-wide/16 v17, -0x1

    .line 312
    and-long v15, v15, v17

    long-to-int v15, v15

    .line 308
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 317
    :pswitch_a
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v11

    .line 318
    .restart local v11       #value1:I
    int-to-long v13, v11

    const-wide/16 v15, -0x1

    .line 319
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    .line 318
    and-long/2addr v13, v15

    .line 319
    const-wide/16 v15, -0x1

    .line 318
    and-long/2addr v13, v15

    long-to-int v10, v13

    .line 320
    .restart local v10       #result:I
    if-nez v10, :cond_d

    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    :goto_8
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    .line 323
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v10}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 321
    :cond_d
    if-le v10, v11, :cond_e

    const/4 v13, 0x1

    goto :goto_8

    .line 322
    :cond_e
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v13, v10

    goto :goto_8

    .line 328
    .end local v10           #result:I
    .end local v11           #value1:I
    :pswitch_b
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    .line 329
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    int-to-long v15, v15

    const-wide/16 v17, -0x1

    .line 330
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    .line 329
    and-long v15, v15, v17

    .line 330
    const-wide/16 v17, -0x1

    .line 329
    and-long v15, v15, v17

    long-to-int v15, v15

    .line 328
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 334
    :pswitch_c
    const/4 v13, 0x0

    .line 335
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    .line 337
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    int-to-long v15, v15

    const-wide/16 v17, -0x1

    .line 338
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    .line 337
    and-long v15, v15, v17

    .line 338
    const-wide/16 v17, -0x1

    .line 337
    and-long v15, v15, v17

    long-to-int v15, v15

    .line 333
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 342
    :pswitch_d
    move-object/from16 v0, p0

    iget v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    sget-object v14, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v14

    and-int/2addr v13, v14

    if-eqz v13, :cond_0

    .line 343
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_0

    .line 348
    :pswitch_e
    move-object/from16 v0, p0

    iget v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    sget-object v14, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v14

    and-int/2addr v13, v14

    if-nez v13, :cond_0

    .line 349
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_0

    .line 354
    :pswitch_f
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    int-to-long v13, v13

    const-wide/16 v15, 0x0

    and-long/2addr v13, v15

    long-to-int v10, v13

    .line 355
    .restart local v10       #result:I
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 356
    and-int/lit16 v10, v10, 0xff

    .line 359
    :cond_f
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v10}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 360
    if-nez v10, :cond_10

    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    :goto_9
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    goto/16 :goto_1

    .line 361
    :cond_10
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v13, v10

    goto :goto_9

    .line 367
    .end local v10           #result:I
    :pswitch_10
    const/4 v13, 0x1

    .line 368
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    .line 370
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    int-to-long v15, v15

    const-wide/16 v17, 0x0

    and-long v15, v15, v17

    long-to-int v15, v15

    .line 366
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 373
    :pswitch_11
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    .line 374
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    int-to-long v15, v15

    const-wide/16 v17, 0x0

    and-long v15, v15, v17

    long-to-int v15, v15

    .line 373
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 378
    :pswitch_12
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    int-to-long v13, v13

    const-wide/16 v15, -0x2

    and-long/2addr v13, v15

    long-to-int v10, v13

    .line 379
    .restart local v10       #result:I
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v10}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 380
    if-nez v10, :cond_11

    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    :goto_a
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    goto/16 :goto_1

    .line 381
    :cond_11
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v13, v10

    goto :goto_a

    .line 387
    .end local v10           #result:I
    :pswitch_13
    const/4 v13, 0x1

    .line 388
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    .line 390
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    int-to-long v15, v15

    const-wide/16 v17, -0x2

    and-long v15, v15, v17

    long-to-int v15, v15

    .line 386
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 393
    :pswitch_14
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    .line 394
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    int-to-long v15, v15

    const-wide/16 v17, -0x2

    and-long v15, v15, v17

    long-to-int v15, v15

    .line 393
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 398
    :pswitch_15
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_0

    .line 401
    :pswitch_16
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    .line 402
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v14

    .line 401
    xor-int v10, v13, v14

    .line 403
    .restart local v10       #result:I
    if-nez v10, :cond_12

    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    :goto_b
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    .line 405
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v10}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 404
    :cond_12
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v13, v10

    goto :goto_b

    .line 409
    .end local v10           #result:I
    :pswitch_17
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    .line 410
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v14

    .line 409
    and-int v10, v13, v14

    .line 411
    .restart local v10       #result:I
    if-nez v10, :cond_13

    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    :goto_c
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    .line 413
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v10}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 412
    :cond_13
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v13, v10

    goto :goto_c

    .line 417
    .end local v10           #result:I
    :pswitch_18
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    .line 418
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v14

    .line 417
    or-int v10, v13, v14

    .line 419
    .restart local v10       #result:I
    if-nez v10, :cond_14

    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    :goto_d
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    .line 421
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v10}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 420
    :cond_14
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v13, v10

    goto :goto_d

    .line 425
    .end local v10           #result:I
    :pswitch_19
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    .line 426
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v14

    .line 425
    and-int v10, v13, v14

    .line 427
    .restart local v10       #result:I
    if-nez v10, :cond_15

    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    :goto_e
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    goto/16 :goto_1

    .line 428
    :cond_15
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v13, v10

    goto :goto_e

    .line 432
    .end local v10           #result:I
    :pswitch_1a
    move-object/from16 v0, p0

    iget v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    sget-object v14, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v14

    and-int/2addr v13, v14

    if-eqz v13, :cond_0

    .line 433
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_0

    .line 438
    :pswitch_1b
    move-object/from16 v0, p0

    iget v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    sget-object v14, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v14

    and-int/2addr v13, v14

    if-nez v13, :cond_0

    .line 439
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_0

    .line 444
    :pswitch_1c
    move-object/from16 v0, p0

    iget v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    sget-object v14, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v14

    and-int/2addr v13, v14

    if-eqz v13, :cond_0

    .line 445
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_0

    .line 450
    :pswitch_1d
    move-object/from16 v0, p0

    iget v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    sget-object v14, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v14

    sget-object v15, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v15

    or-int/2addr v14, v15

    and-int/2addr v13, v14

    if-eqz v13, :cond_0

    .line 451
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_0

    .line 456
    :pswitch_1e
    move-object/from16 v0, p0

    iget v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    sget-object v14, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v14

    sget-object v15, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v15

    or-int/2addr v14, v15

    and-int/2addr v13, v14

    if-nez v13, :cond_0

    .line 457
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_0

    .line 462
    :pswitch_1f
    move-object/from16 v0, p0

    iget v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    sget-object v14, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v14

    and-int/2addr v13, v14

    if-nez v13, :cond_0

    .line 463
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_0

    .line 468
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    const/4 v14, 0x7

    aget v15, v13, v14

    add-int/lit8 v15, v15, -0x4

    aput v15, v13, v14

    .line 469
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    const/16 v16, 0x7

    aget v15, v15, v16

    const v16, 0x3ffff

    and-int v15, v15, v16

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v17, v0

    .line 470
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v16

    .line 469
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 473
    :pswitch_21
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    move-object/from16 v17, v0

    const/16 v18, 0x7

    aget v17, v17, v18

    .line 474
    const v18, 0x3ffff

    and-int v17, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v15, v1, v2}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    .line 473
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 475
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    const/4 v14, 0x7

    aget v15, v13, v14

    add-int/lit8 v15, v15, 0x4

    aput v15, v13, v14

    goto/16 :goto_1

    .line 478
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    const/4 v14, 0x7

    aget v15, v13, v14

    add-int/lit8 v15, v15, -0x4

    aput v15, v13, v14

    .line 479
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    const/16 v16, 0x7

    aget v15, v15, v16

    const v16, 0x3ffff

    and-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->IP:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 480
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->setIP(I)Z

    goto/16 :goto_0

    .line 483
    :pswitch_23
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    .line 484
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    xor-int/lit8 v15, v15, -0x1

    .line 483
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 487
    :pswitch_24
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v11

    .line 488
    .restart local v11       #value1:I
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v12

    .line 489
    .local v12, value2:I
    shl-int v10, v11, v12

    .line 490
    .restart local v10       #result:I
    if-nez v10, :cond_16

    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    move v14, v13

    .line 492
    :goto_f
    add-int/lit8 v13, v12, -0x1

    shl-int v13, v11, v13

    const/high16 v15, -0x8000

    and-int/2addr v13, v15

    if-eqz v13, :cond_17

    .line 493
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    .line 494
    :goto_10
    or-int/2addr v13, v14

    .line 490
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    .line 495
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v10}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 491
    :cond_16
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v13, v10

    move v14, v13

    goto :goto_f

    .line 494
    :cond_17
    const/4 v13, 0x0

    goto :goto_10

    .line 499
    .end local v10           #result:I
    .end local v11           #value1:I
    .end local v12           #value2:I
    :pswitch_25
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v11

    .line 500
    .restart local v11       #value1:I
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v12

    .line 501
    .restart local v12       #value2:I
    ushr-int v10, v11, v12

    .line 502
    .restart local v10       #result:I
    if-nez v10, :cond_18

    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    .line 504
    :goto_11
    add-int/lit8 v14, v12, -0x1

    ushr-int v14, v11, v14

    sget-object v15, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v15

    and-int/2addr v14, v15

    or-int/2addr v13, v14

    .line 502
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    .line 505
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v10}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 503
    :cond_18
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v13, v10

    goto :goto_11

    .line 509
    .end local v10           #result:I
    .end local v11           #value1:I
    .end local v12           #value2:I
    :pswitch_26
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v11

    .line 510
    .restart local v11       #value1:I
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v12

    .line 511
    .restart local v12       #value2:I
    shr-int v10, v11, v12

    .line 512
    .restart local v10       #result:I
    if-nez v10, :cond_19

    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    .line 514
    :goto_12
    add-int/lit8 v14, v12, -0x1

    shr-int v14, v11, v14

    sget-object v15, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v15

    and-int/2addr v14, v15

    or-int/2addr v13, v14

    .line 512
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    .line 515
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v10}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 513
    :cond_19
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v13, v10

    goto :goto_12

    .line 519
    .end local v10           #result:I
    .end local v11           #value1:I
    .end local v12           #value2:I
    :pswitch_27
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    neg-int v10, v13

    .line 520
    .restart local v10       #result:I
    if-nez v10, :cond_1a

    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    :goto_13
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    .line 523
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v10}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 521
    :cond_1a
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    .line 522
    sget-object v14, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v14

    and-int/2addr v14, v10

    .line 520
    or-int/2addr v13, v14

    goto :goto_13

    .line 528
    .end local v10           #result:I
    :pswitch_28
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    neg-int v15, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 531
    :pswitch_29
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    neg-int v15, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 534
    :pswitch_2a
    const/4 v7, 0x0

    .local v7, i:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/lit8 v4, v13, -0x4

    .local v4, SP:I
    :goto_14
    const/16 v13, 0x8

    if-lt v7, v13, :cond_1b

    .line 537
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    const/4 v14, 0x7

    aget v15, v13, v14

    add-int/lit8 v15, v15, -0x20

    aput v15, v13, v14

    goto/16 :goto_1

    .line 535
    :cond_1b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    const v15, 0x3ffff

    and-int/2addr v15, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    move-object/from16 v16, v0

    aget v16, v16, v7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 534
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, -0x4

    goto :goto_14

    .line 541
    .end local v4           #SP:I
    .end local v7           #i:I
    :pswitch_2b
    const/4 v7, 0x0

    .restart local v7       #i:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    const/4 v14, 0x7

    aget v4, v13, v14

    .restart local v4       #SP:I
    :goto_15
    const/16 v13, 0x8

    if-ge v7, v13, :cond_0

    .line 542
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    rsub-int/lit8 v14, v7, 0x7

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    const v17, 0x3ffff

    and-int v17, v17, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v15, v1, v2}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    aput v15, v13, v14

    .line 541
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_15

    .line 546
    .end local v4           #SP:I
    .end local v7           #i:I
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    const/4 v14, 0x7

    aget v15, v13, v14

    add-int/lit8 v15, v15, -0x4

    aput v15, v13, v14

    .line 547
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    const/16 v16, 0x7

    aget v15, v15, v16

    const v16, 0x3ffff

    and-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 550
    :pswitch_2d
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    const/16 v16, 0x7

    aget v15, v15, v16

    const v16, 0x3ffff

    and-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    .line 551
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    const/4 v14, 0x7

    aget v15, v13, v14

    add-int/lit8 v15, v15, 0x4

    aput v15, v13, v14

    goto/16 :goto_1

    .line 554
    :pswitch_2e
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 557
    :pswitch_2f
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    int-to-byte v15, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 560
    :pswitch_30
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v11

    .line 561
    .restart local v11       #value1:I
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v15

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v15

    .line 561
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 563
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9, v11}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 567
    .end local v11           #value1:I
    :pswitch_31
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    int-to-long v13, v13

    .line 568
    const-wide/16 v15, -0x1

    .line 569
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    .line 568
    mul-long v15, v15, v17

    .line 567
    and-long/2addr v13, v15

    .line 569
    const-wide/16 v15, -0x1

    .line 567
    and-long/2addr v13, v15

    .line 569
    const-wide/16 v15, -0x1

    .line 567
    and-long/2addr v13, v15

    long-to-int v10, v13

    .line 570
    .restart local v10       #result:I
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v10}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 574
    .end local v10           #result:I
    :pswitch_32
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v6

    .line 575
    .local v6, divider:I
    if-eqz v6, :cond_0

    .line 576
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    div-int v10, v13, v6

    .line 577
    .restart local v10       #result:I
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v10}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 582
    .end local v6           #divider:I
    .end local v10           #result:I
    :pswitch_33
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v11

    .line 583
    .restart local v11       #value1:I
    move-object/from16 v0, p0

    iget v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    sget-object v14, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v14

    and-int v3, v13, v14

    .line 584
    .local v3, FC:I
    int-to-long v13, v11

    const-wide/16 v15, -0x1

    .line 585
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    .line 584
    and-long/2addr v13, v15

    .line 586
    const-wide/16 v15, -0x1

    int-to-long v0, v3

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    .line 584
    and-long/2addr v13, v15

    .line 586
    const-wide/16 v15, -0x1

    .line 584
    and-long/2addr v13, v15

    long-to-int v10, v13

    .line 587
    .restart local v10       #result:I
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 588
    and-int/lit16 v10, v10, 0xff

    .line 591
    :cond_1c
    if-lt v10, v11, :cond_1d

    if-ne v10, v11, :cond_1e

    if-eqz v3, :cond_1e

    :cond_1d
    const/4 v13, 0x1

    :goto_16
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    .line 594
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v10}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 592
    :cond_1e
    if-nez v10, :cond_1f

    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    goto :goto_16

    .line 593
    :cond_1f
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v13, v10

    goto :goto_16

    .line 598
    .end local v3           #FC:I
    .end local v10           #result:I
    .end local v11           #value1:I
    :pswitch_34
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v11

    .line 599
    .restart local v11       #value1:I
    move-object/from16 v0, p0

    iget v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    sget-object v14, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FC:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v14

    and-int v3, v13, v14

    .line 600
    .restart local v3       #FC:I
    int-to-long v13, v11

    const-wide/16 v15, -0x1

    .line 601
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    .line 600
    and-long/2addr v13, v15

    .line 602
    const-wide/16 v15, -0x1

    int-to-long v0, v3

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    .line 600
    and-long/2addr v13, v15

    .line 602
    const-wide/16 v15, -0x1

    .line 600
    and-long/2addr v13, v15

    long-to-int v10, v13

    .line 603
    .restart local v10       #result:I
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    if-eqz v13, :cond_20

    .line 604
    and-int/lit16 v10, v10, 0xff

    .line 606
    :cond_20
    if-gt v10, v11, :cond_21

    if-ne v10, v11, :cond_22

    if-eqz v3, :cond_22

    :cond_21
    const/4 v13, 0x1

    :goto_17
    move-object/from16 v0, p0

    iput v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    .line 609
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v10}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_1

    .line 607
    :cond_22
    if-nez v10, :cond_23

    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FZ:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    goto :goto_17

    .line 608
    :cond_23
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMFlags;->VM_FS:Lde/innosystec/unrar/unpack/vm/VMFlags;

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMFlags;->getFlag()I

    move-result v13

    and-int/2addr v13, v10

    goto :goto_17

    .line 614
    .end local v3           #FC:I
    .end local v10           #result:I
    .end local v11           #value1:I
    :pswitch_35
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    const/high16 v14, 0x4

    if-lt v13, v14, :cond_24

    .line 615
    const/4 v13, 0x1

    return v13

    .line 617
    :cond_24
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    const/16 v16, 0x7

    aget v15, v15, v16

    const v16, 0x3ffff

    and-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->setIP(I)Z

    .line 618
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    const/4 v14, 0x7

    aget v15, v13, v14

    add-int/lit8 v15, v15, 0x4

    aput v15, v13, v14

    goto/16 :goto_0

    .line 623
    :pswitch_36
    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOp1()Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result v13

    .line 622
    invoke-static {v13}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->findFilter(I)Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->ExecuteStandardFilter(Lde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    goto/16 :goto_1

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_35
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_28
        :pswitch_29
        :pswitch_36
    .end packed-switch
.end method

.method private ExecuteStandardFilter(Lde/innosystec/unrar/unpack/vm/VMStandardFilters;)V
    .locals 68
    .parameter "filterType"

    .prologue
    .line 915
    invoke-static {}, Lde/innosystec/unrar/unpack/vm/RarVM;->$SWITCH_TABLE$de$innosystec$unrar$unpack$vm$VMStandardFilters()[I

    move-result-object v63

    invoke-virtual/range {p1 .. p1}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->ordinal()I

    move-result v64

    aget v63, v63, v64

    packed-switch v63, :pswitch_data_0

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 920
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    move-object/from16 v63, v0

    const/16 v64, 0x4

    aget v29, v63, v64

    .line 921
    .local v29, dataSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    move-object/from16 v63, v0

    const/16 v64, 0x6

    aget v63, v63, v64

    and-int/lit8 v63, v63, -0x1

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v33, v0

    .line 923
    .local v33, fileOffset:J
    const v63, 0x3c000

    move/from16 v0, v29

    move/from16 v1, v63

    if-ge v0, v1, :cond_0

    .line 926
    const/high16 v35, 0x100

    .line 927
    .local v35, fileSize:I
    sget-object v63, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    move-object/from16 v0, p1

    move-object/from16 v1, v63

    if-ne v0, v1, :cond_3

    const/16 v63, 0xe9

    :goto_1
    move/from16 v0, v63

    int-to-byte v0, v0

    move/from16 v23, v0

    .line 928
    .local v23, cmpByte2:B
    const/16 v27, 0x0

    .local v27, curPos:I
    move/from16 v28, v27

    .end local v27           #curPos:I
    .local v28, curPos:I
    :goto_2
    add-int/lit8 v63, v29, -0x4

    move/from16 v0, v28

    move/from16 v1, v63

    if-ge v0, v1, :cond_0

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v63, v0

    add-int/lit8 v27, v28, 0x1

    .end local v28           #curPos:I
    .restart local v27       #curPos:I
    aget-byte v24, v63, v28

    .line 931
    .local v24, curByte:B
    const/16 v63, 0xe8

    move/from16 v0, v24

    move/from16 v1, v63

    if-eq v0, v1, :cond_1

    move/from16 v0, v24

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    .line 945
    :cond_1
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v63, v0

    add-long v42, v63, v33

    .line 946
    .local v42, offset:J
    const/16 v63, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    move/from16 v1, v63

    move-object/from16 v2, v64

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v63

    move/from16 v0, v63

    int-to-long v5, v0

    .line 947
    .local v5, Addr:J
    const-wide/32 v63, -0x80000000

    and-long v63, v63, v5

    const-wide/16 v65, 0x0

    cmp-long v63, v63, v65

    if-eqz v63, :cond_4

    .line 949
    add-long v63, v5, v42

    const-wide/32 v65, -0x80000000

    and-long v63, v63, v65

    const-wide/16 v65, 0x0

    cmp-long v63, v63, v65

    if-nez v63, :cond_2

    .line 950
    const/16 v63, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v64, v0

    long-to-int v0, v5

    move/from16 v65, v0

    add-int v65, v65, v35

    move-object/from16 v0, p0

    move/from16 v1, v63

    move-object/from16 v2, v64

    move/from16 v3, v27

    move/from16 v4, v65

    invoke-direct {v0, v1, v2, v3, v4}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 958
    :cond_2
    :goto_3
    add-int/lit8 v27, v27, 0x4

    move/from16 v28, v27

    .end local v27           #curPos:I
    .restart local v28       #curPos:I
    goto :goto_2

    .line 927
    .end local v5           #Addr:J
    .end local v23           #cmpByte2:B
    .end local v24           #curByte:B
    .end local v28           #curPos:I
    .end local v42           #offset:J
    :cond_3
    const/16 v63, 0xe8

    goto :goto_1

    .line 953
    .restart local v5       #Addr:J
    .restart local v23       #cmpByte2:B
    .restart local v24       #curByte:B
    .restart local v27       #curPos:I
    .restart local v42       #offset:J
    :cond_4
    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v63, v0

    sub-long v63, v5, v63

    const-wide/32 v65, -0x80000000

    and-long v63, v63, v65

    const-wide/16 v65, 0x0

    cmp-long v63, v63, v65

    if-eqz v63, :cond_2

    .line 954
    const/16 v63, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v64, v0

    sub-long v65, v5, v42

    move-wide/from16 v0, v65

    long-to-int v0, v0

    move/from16 v65, v0

    move-object/from16 v0, p0

    move/from16 v1, v63

    move-object/from16 v2, v64

    move/from16 v3, v27

    move/from16 v4, v65

    invoke-direct {v0, v1, v2, v3, v4}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto :goto_3

    .line 966
    .end local v5           #Addr:J
    .end local v23           #cmpByte2:B
    .end local v24           #curByte:B
    .end local v27           #curPos:I
    .end local v29           #dataSize:I
    .end local v33           #fileOffset:J
    .end local v35           #fileSize:I
    .end local v42           #offset:J
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    move-object/from16 v63, v0

    const/16 v64, 0x4

    aget v29, v63, v64

    .line 967
    .restart local v29       #dataSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    move-object/from16 v63, v0

    const/16 v64, 0x6

    aget v63, v63, v64

    and-int/lit8 v63, v63, -0x1

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v33, v0

    .line 969
    .restart local v33       #fileOffset:J
    const v63, 0x3c000

    move/from16 v0, v29

    move/from16 v1, v63

    if-ge v0, v1, :cond_0

    .line 972
    const/16 v27, 0x0

    .line 973
    .restart local v27       #curPos:I
    const/16 v63, 0x10

    move/from16 v0, v63

    new-array v0, v0, [B

    move-object/from16 v17, v0

    const/16 v63, 0x0

    const/16 v64, 0x4

    aput-byte v64, v17, v63

    const/16 v63, 0x1

    const/16 v64, 0x4

    aput-byte v64, v17, v63

    const/16 v63, 0x2

    const/16 v64, 0x6

    aput-byte v64, v17, v63

    const/16 v63, 0x3

    const/16 v64, 0x6

    aput-byte v64, v17, v63

    const/16 v63, 0x6

    const/16 v64, 0x7

    aput-byte v64, v17, v63

    const/16 v63, 0x7

    const/16 v64, 0x7

    aput-byte v64, v17, v63

    const/16 v63, 0x8

    const/16 v64, 0x4

    aput-byte v64, v17, v63

    const/16 v63, 0x9

    const/16 v64, 0x4

    aput-byte v64, v17, v63

    const/16 v63, 0xc

    const/16 v64, 0x4

    aput-byte v64, v17, v63

    const/16 v63, 0xd

    const/16 v64, 0x4

    aput-byte v64, v17, v63

    .line 974
    .local v17, Masks:[B
    const/16 v63, 0x4

    ushr-long v33, v33, v63

    .line 976
    :goto_4
    add-int/lit8 v63, v29, -0x15

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_0

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v63, v0

    aget-byte v63, v63, v27

    and-int/lit8 v63, v63, 0x1f

    add-int/lit8 v7, v63, -0x10

    .line 979
    .local v7, Byte:I
    if-ltz v7, :cond_5

    .line 982
    aget-byte v22, v17, v7

    .line 983
    .local v22, cmdMask:B
    if-eqz v22, :cond_5

    .line 984
    const/16 v36, 0x0

    .local v36, i:I
    :goto_5
    const/16 v63, 0x2

    move/from16 v0, v36

    move/from16 v1, v63

    if-le v0, v1, :cond_6

    .line 996
    .end local v22           #cmdMask:B
    .end local v36           #i:I
    :cond_5
    add-int/lit8 v27, v27, 0x10

    .line 997
    const-wide/16 v63, 0x1

    add-long v33, v33, v63

    goto :goto_4

    .line 985
    .restart local v22       #cmdMask:B
    .restart local v36       #i:I
    :cond_6
    const/16 v63, 0x1

    shl-int v63, v63, v36

    and-int v63, v63, v22

    if-eqz v63, :cond_7

    .line 987
    mul-int/lit8 v63, v36, 0x29

    add-int/lit8 v57, v63, 0x5

    .line 988
    .local v57, startPos:I
    add-int/lit8 v63, v57, 0x25

    const/16 v64, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v63

    move/from16 v3, v64

    invoke-direct {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->filterItanium_GetBits(III)I

    move-result v44

    .line 989
    .local v44, opType:I
    const/16 v63, 0x5

    move/from16 v0, v44

    move/from16 v1, v63

    if-ne v0, v1, :cond_7

    .line 991
    add-int/lit8 v63, v57, 0xd

    const/16 v64, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v63

    move/from16 v3, v64

    invoke-direct {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->filterItanium_GetBits(III)I

    move-result v42

    .line 992
    .local v42, offset:I
    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v63, v0

    sub-long v63, v63, v33

    move-wide/from16 v0, v63

    long-to-int v0, v0

    move/from16 v63, v0

    const v64, 0xfffff

    and-int v63, v63, v64

    add-int/lit8 v64, v57, 0xd

    const/16 v65, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v63

    move/from16 v3, v64

    move/from16 v4, v65

    invoke-direct {v0, v1, v2, v3, v4}, Lde/innosystec/unrar/unpack/vm/RarVM;->filterItanium_SetBits(IIII)V

    .line 984
    .end local v42           #offset:I
    .end local v44           #opType:I
    .end local v57           #startPos:I
    :cond_7
    add-int/lit8 v36, v36, 0x1

    goto :goto_5

    .line 1003
    .end local v7           #Byte:I
    .end local v17           #Masks:[B
    .end local v22           #cmdMask:B
    .end local v27           #curPos:I
    .end local v29           #dataSize:I
    .end local v33           #fileOffset:J
    .end local v36           #i:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    move-object/from16 v63, v0

    const/16 v64, 0x4

    aget v63, v63, v64

    and-int/lit8 v29, v63, -0x1

    .line 1004
    .restart local v29       #dataSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aget v63, v63, v64

    and-int/lit8 v21, v63, -0x1

    .line 1005
    .local v21, channels:I
    const/16 v55, 0x0

    .line 1006
    .local v55, srcPos:I
    mul-int/lit8 v63, v29, 0x2

    and-int/lit8 v19, v63, -0x1

    .line 1007
    .local v19, border:I
    const/16 v63, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v64, v0

    const v65, 0x3c020

    move-object/from16 v0, p0

    move/from16 v1, v63

    move-object/from16 v2, v64

    move/from16 v3, v65

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 1008
    const v63, 0x1e000

    move/from16 v0, v29

    move/from16 v1, v63

    if-ge v0, v1, :cond_0

    .line 1014
    const/16 v26, 0x0

    .local v26, curChannel:I
    :goto_6
    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 1016
    const/16 v18, 0x0

    .line 1017
    .local v18, PrevByte:B
    add-int v31, v29, v26

    .local v31, destPos:I
    move/from16 v56, v55

    .end local v55           #srcPos:I
    .local v56, srcPos:I
    :goto_7
    move/from16 v0, v31

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    .line 1014
    add-int/lit8 v26, v26, 0x1

    move/from16 v55, v56

    .end local v56           #srcPos:I
    .restart local v55       #srcPos:I
    goto :goto_6

    .line 1018
    .end local v55           #srcPos:I
    .restart local v56       #srcPos:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v64, v0

    add-int/lit8 v55, v56, 0x1

    .end local v56           #srcPos:I
    .restart local v55       #srcPos:I
    aget-byte v64, v64, v56

    sub-int v64, v18, v64

    move/from16 v0, v64

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v63, v31

    .line 1017
    add-int v31, v31, v21

    move/from16 v56, v55

    .end local v55           #srcPos:I
    .restart local v56       #srcPos:I
    goto :goto_7

    .line 1027
    .end local v18           #PrevByte:B
    .end local v19           #border:I
    .end local v21           #channels:I
    .end local v26           #curChannel:I
    .end local v29           #dataSize:I
    .end local v31           #destPos:I
    .end local v56           #srcPos:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    move-object/from16 v63, v0

    const/16 v64, 0x4

    aget v29, v63, v64

    .restart local v29       #dataSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aget v63, v63, v64

    add-int/lit8 v62, v63, -0x3

    .local v62, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    move-object/from16 v63, v0

    const/16 v64, 0x1

    aget v48, v63, v64

    .line 1028
    .local v48, posR:I
    const/16 v21, 0x3

    .line 1029
    .restart local v21       #channels:I
    const/16 v55, 0x0

    .line 1030
    .restart local v55       #srcPos:I
    move/from16 v30, v29

    .line 1031
    .local v30, destDataPos:I
    const/16 v63, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v64, v0

    const v65, 0x3c020

    move-object/from16 v0, p0

    move/from16 v1, v63

    move-object/from16 v2, v64

    move/from16 v3, v65

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 1032
    const v63, 0x1e000

    move/from16 v0, v29

    move/from16 v1, v63

    if-ge v0, v1, :cond_0

    if-ltz v48, :cond_0

    .line 1035
    const/16 v26, 0x0

    .restart local v26       #curChannel:I
    :goto_8
    move/from16 v0, v26

    move/from16 v1, v21

    if-lt v0, v1, :cond_9

    .line 1073
    move/from16 v36, v48

    .restart local v36       #i:I
    add-int/lit8 v19, v29, -0x2

    .restart local v19       #border:I
    :goto_9
    move/from16 v0, v36

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v63, v0

    add-int v64, v30, v36

    add-int/lit8 v64, v64, 0x1

    aget-byte v13, v63, v64

    .line 1076
    .local v13, G:B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v63, v0

    add-int v64, v30, v36

    aget-byte v65, v63, v64

    add-int v65, v65, v13

    move/from16 v0, v65

    int-to-byte v0, v0

    move/from16 v65, v0

    aput-byte v65, v63, v64

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v63, v0

    add-int v64, v30, v36

    add-int/lit8 v64, v64, 0x2

    aget-byte v65, v63, v64

    add-int v65, v65, v13

    move/from16 v0, v65

    int-to-byte v0, v0

    move/from16 v65, v0

    aput-byte v65, v63, v64

    .line 1073
    add-int/lit8 v36, v36, 0x3

    goto :goto_9

    .line 1037
    .end local v13           #G:B
    .end local v19           #border:I
    .end local v36           #i:I
    :cond_9
    const-wide/16 v51, 0x0

    .line 1039
    .local v51, prevByte:J
    move/from16 v36, v26

    .restart local v36       #i:I
    move/from16 v56, v55

    .end local v55           #srcPos:I
    .restart local v56       #srcPos:I
    :goto_a
    move/from16 v0, v36

    move/from16 v1, v29

    if-lt v0, v1, :cond_a

    .line 1035
    add-int/lit8 v26, v26, 0x1

    move/from16 v55, v56

    .end local v56           #srcPos:I
    .restart local v55       #srcPos:I
    goto :goto_8

    .line 1042
    .end local v55           #srcPos:I
    .restart local v56       #srcPos:I
    :cond_a
    sub-int v61, v36, v62

    .line 1043
    .local v61, upperPos:I
    const/16 v63, 0x3

    move/from16 v0, v61

    move/from16 v1, v63

    if-lt v0, v1, :cond_d

    .line 1045
    add-int v59, v30, v61

    .line 1046
    .local v59, upperDataPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v63, v0

    aget-byte v63, v63, v59

    move/from16 v0, v63

    and-int/lit16 v0, v0, 0xff

    move/from16 v58, v0

    .line 1047
    .local v58, upperByte:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v63, v0

    add-int/lit8 v64, v59, -0x3

    aget-byte v63, v63, v64

    move/from16 v0, v63

    and-int/lit16 v0, v0, 0xff

    move/from16 v60, v0

    .line 1048
    .local v60, upperLeftByte:I
    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v63, v0

    add-long v63, v63, v51

    move/from16 v0, v60

    int-to-long v0, v0

    move-wide/from16 v65, v0

    sub-long v49, v63, v65

    .line 1049
    .local v49, predicted:J
    sub-long v63, v49, v51

    move-wide/from16 v0, v63

    long-to-int v0, v0

    move/from16 v63, v0

    invoke-static/range {v63 .. v63}, Ljava/lang/Math;->abs(I)I

    move-result v45

    .line 1050
    .local v45, pa:I
    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v63, v0

    sub-long v63, v49, v63

    move-wide/from16 v0, v63

    long-to-int v0, v0

    move/from16 v63, v0

    invoke-static/range {v63 .. v63}, Ljava/lang/Math;->abs(I)I

    move-result v46

    .line 1051
    .local v46, pb:I
    move/from16 v0, v60

    int-to-long v0, v0

    move-wide/from16 v63, v0

    sub-long v63, v49, v63

    move-wide/from16 v0, v63

    long-to-int v0, v0

    move/from16 v63, v0

    invoke-static/range {v63 .. v63}, Ljava/lang/Math;->abs(I)I

    move-result v47

    .line 1052
    .local v47, pc:I
    move/from16 v0, v45

    move/from16 v1, v46

    if-gt v0, v1, :cond_b

    move/from16 v0, v45

    move/from16 v1, v47

    if-gt v0, v1, :cond_b

    .line 1053
    move-wide/from16 v49, v51

    .line 1068
    .end local v45           #pa:I
    .end local v46           #pb:I
    .end local v47           #pc:I
    .end local v58           #upperByte:I
    .end local v59           #upperDataPos:I
    .end local v60           #upperLeftByte:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v63, v0

    add-int/lit8 v55, v56, 0x1

    .end local v56           #srcPos:I
    .restart local v55       #srcPos:I
    aget-byte v63, v63, v56

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v63, v0

    sub-long v63, v49, v63

    const-wide/16 v65, 0xff

    and-long v63, v63, v65

    const-wide/16 v65, 0xff

    and-long v51, v63, v65

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v63, v0

    add-int v64, v30, v36

    const-wide/16 v65, 0xff

    and-long v65, v65, v51

    move-wide/from16 v0, v65

    long-to-int v0, v0

    move/from16 v65, v0

    move/from16 v0, v65

    int-to-byte v0, v0

    move/from16 v65, v0

    aput-byte v65, v63, v64

    .line 1039
    add-int v36, v36, v21

    move/from16 v56, v55

    .end local v55           #srcPos:I
    .restart local v56       #srcPos:I
    goto/16 :goto_a

    .line 1056
    .restart local v45       #pa:I
    .restart local v46       #pb:I
    .restart local v47       #pc:I
    .restart local v58       #upperByte:I
    .restart local v59       #upperDataPos:I
    .restart local v60       #upperLeftByte:I
    :cond_b
    move/from16 v0, v46

    move/from16 v1, v47

    if-gt v0, v1, :cond_c

    .line 1057
    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v49, v0

    goto :goto_b

    .line 1060
    :cond_c
    move/from16 v0, v60

    int-to-long v0, v0

    move-wide/from16 v49, v0

    goto :goto_b

    .line 1065
    .end local v45           #pa:I
    .end local v46           #pb:I
    .end local v47           #pc:I
    .end local v49           #predicted:J
    .end local v58           #upperByte:I
    .end local v59           #upperDataPos:I
    .end local v60           #upperLeftByte:I
    :cond_d
    move-wide/from16 v49, v51

    .restart local v49       #predicted:J
    goto :goto_b

    .line 1083
    .end local v21           #channels:I
    .end local v26           #curChannel:I
    .end local v29           #dataSize:I
    .end local v30           #destDataPos:I
    .end local v36           #i:I
    .end local v48           #posR:I
    .end local v49           #predicted:J
    .end local v51           #prevByte:J
    .end local v56           #srcPos:I
    .end local v61           #upperPos:I
    .end local v62           #width:I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    move-object/from16 v63, v0

    const/16 v64, 0x4

    aget v29, v63, v64

    .restart local v29       #dataSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aget v21, v63, v64

    .line 1084
    .restart local v21       #channels:I
    const/16 v55, 0x0

    .line 1085
    .restart local v55       #srcPos:I
    move/from16 v30, v29

    .line 1087
    .restart local v30       #destDataPos:I
    const/16 v63, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v64, v0

    const v65, 0x3c020

    move-object/from16 v0, p0

    move/from16 v1, v63

    move-object/from16 v2, v64

    move/from16 v3, v65

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 1088
    const v63, 0x1e000

    move/from16 v0, v29

    move/from16 v1, v63

    if-ge v0, v1, :cond_0

    .line 1091
    const/16 v26, 0x0

    .restart local v26       #curChannel:I
    :goto_c
    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 1093
    const-wide/16 v51, 0x0

    .line 1094
    .restart local v51       #prevByte:J
    const-wide/16 v53, 0x0

    .line 1095
    .local v53, prevDelta:J
    const/16 v63, 0x7

    move/from16 v0, v63

    new-array v12, v0, [J

    .line 1096
    .local v12, Dif:[J
    const/4 v9, 0x0

    .local v9, D1:I
    const/4 v10, 0x0

    .line 1097
    .local v10, D2:I
    const/4 v14, 0x0

    .local v14, K1:I
    const/4 v15, 0x0

    .local v15, K2:I
    const/16 v16, 0x0

    .line 1099
    .local v16, K3:I
    move/from16 v36, v26

    .restart local v36       #i:I
    const/16 v20, 0x0

    .local v20, byteCount:I
    move/from16 v56, v55

    .end local v55           #srcPos:I
    .restart local v56       #srcPos:I
    :goto_d
    move/from16 v0, v36

    move/from16 v1, v29

    if-lt v0, v1, :cond_e

    .line 1091
    add-int/lit8 v26, v26, 0x1

    move/from16 v55, v56

    .end local v56           #srcPos:I
    .restart local v55       #srcPos:I
    goto :goto_c

    .line 1101
    .end local v55           #srcPos:I
    .restart local v56       #srcPos:I
    :cond_e
    move v11, v10

    .line 1102
    .local v11, D3:I
    move-wide/from16 v0, v53

    long-to-int v0, v0

    move/from16 v63, v0

    sub-int v10, v63, v9

    .line 1103
    move-wide/from16 v0, v53

    long-to-int v9, v0

    .line 1105
    const-wide/16 v63, 0x8

    mul-long v63, v63, v51

    mul-int v65, v14, v9

    move/from16 v0, v65

    int-to-long v0, v0

    move-wide/from16 v65, v0

    add-long v63, v63, v65

    mul-int v65, v15, v10

    move/from16 v0, v65

    int-to-long v0, v0

    move-wide/from16 v65, v0

    add-long v63, v63, v65

    mul-int v65, v16, v11

    move/from16 v0, v65

    int-to-long v0, v0

    move-wide/from16 v65, v0

    add-long v49, v63, v65

    .line 1106
    .restart local v49       #predicted:J
    const/16 v63, 0x3

    ushr-long v63, v49, v63

    const-wide/16 v65, 0xff

    and-long v49, v63, v65

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v63, v0

    add-int/lit8 v55, v56, 0x1

    .end local v56           #srcPos:I
    .restart local v55       #srcPos:I
    aget-byte v63, v63, v56

    move/from16 v0, v63

    and-int/lit16 v0, v0, 0xff

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 1110
    .local v24, curByte:J
    sub-long v63, v49, v24

    const-wide/16 v65, -0x1

    and-long v49, v63, v65

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v63, v0

    add-int v64, v30, v36

    move-wide/from16 v0, v49

    long-to-int v0, v0

    move/from16 v65, v0

    move/from16 v0, v65

    int-to-byte v0, v0

    move/from16 v65, v0

    aput-byte v65, v63, v64

    .line 1112
    sub-long v63, v49, v51

    move-wide/from16 v0, v63

    long-to-int v0, v0

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-byte v0, v0

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v53, v0

    .line 1113
    move-wide/from16 v51, v49

    .line 1115
    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-byte v0, v0

    move/from16 v63, v0

    shl-int/lit8 v8, v63, 0x3

    .line 1117
    .local v8, D:I
    const/16 v63, 0x0

    aget-wide v64, v12, v63

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v66

    move/from16 v0, v66

    int-to-long v0, v0

    move-wide/from16 v66, v0

    add-long v64, v64, v66

    aput-wide v64, v12, v63

    .line 1118
    const/16 v63, 0x1

    aget-wide v64, v12, v63

    sub-int v66, v8, v9

    invoke-static/range {v66 .. v66}, Ljava/lang/Math;->abs(I)I

    move-result v66

    move/from16 v0, v66

    int-to-long v0, v0

    move-wide/from16 v66, v0

    add-long v64, v64, v66

    aput-wide v64, v12, v63

    .line 1119
    const/16 v63, 0x2

    aget-wide v64, v12, v63

    add-int v66, v8, v9

    invoke-static/range {v66 .. v66}, Ljava/lang/Math;->abs(I)I

    move-result v66

    move/from16 v0, v66

    int-to-long v0, v0

    move-wide/from16 v66, v0

    add-long v64, v64, v66

    aput-wide v64, v12, v63

    .line 1120
    const/16 v63, 0x3

    aget-wide v64, v12, v63

    sub-int v66, v8, v10

    invoke-static/range {v66 .. v66}, Ljava/lang/Math;->abs(I)I

    move-result v66

    move/from16 v0, v66

    int-to-long v0, v0

    move-wide/from16 v66, v0

    add-long v64, v64, v66

    aput-wide v64, v12, v63

    .line 1121
    const/16 v63, 0x4

    aget-wide v64, v12, v63

    add-int v66, v8, v10

    invoke-static/range {v66 .. v66}, Ljava/lang/Math;->abs(I)I

    move-result v66

    move/from16 v0, v66

    int-to-long v0, v0

    move-wide/from16 v66, v0

    add-long v64, v64, v66

    aput-wide v64, v12, v63

    .line 1122
    const/16 v63, 0x5

    aget-wide v64, v12, v63

    sub-int v66, v8, v11

    invoke-static/range {v66 .. v66}, Ljava/lang/Math;->abs(I)I

    move-result v66

    move/from16 v0, v66

    int-to-long v0, v0

    move-wide/from16 v66, v0

    add-long v64, v64, v66

    aput-wide v64, v12, v63

    .line 1123
    const/16 v63, 0x6

    aget-wide v64, v12, v63

    add-int v66, v8, v11

    invoke-static/range {v66 .. v66}, Ljava/lang/Math;->abs(I)I

    move-result v66

    move/from16 v0, v66

    int-to-long v0, v0

    move-wide/from16 v66, v0

    add-long v64, v64, v66

    aput-wide v64, v12, v63

    .line 1125
    and-int/lit8 v63, v20, 0x1f

    if-nez v63, :cond_f

    .line 1127
    const/16 v63, 0x0

    aget-wide v38, v12, v63

    .local v38, minDif:J
    const-wide/16 v40, 0x0

    .line 1128
    .local v40, numMinDif:J
    const/16 v63, 0x0

    const-wide/16 v64, 0x0

    aput-wide v64, v12, v63

    .line 1129
    const/16 v37, 0x1

    .local v37, j:I
    :goto_e
    array-length v0, v12

    move/from16 v63, v0

    move/from16 v0, v37

    move/from16 v1, v63

    if-lt v0, v1, :cond_10

    .line 1138
    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v63, v0

    packed-switch v63, :pswitch_data_1

    .line 1099
    .end local v37           #j:I
    .end local v38           #minDif:J
    .end local v40           #numMinDif:J
    :cond_f
    :goto_f
    add-int v36, v36, v21

    add-int/lit8 v20, v20, 0x1

    move/from16 v56, v55

    .end local v55           #srcPos:I
    .restart local v56       #srcPos:I
    goto/16 :goto_d

    .line 1131
    .end local v56           #srcPos:I
    .restart local v37       #j:I
    .restart local v38       #minDif:J
    .restart local v40       #numMinDif:J
    .restart local v55       #srcPos:I
    :cond_10
    aget-wide v63, v12, v37

    cmp-long v63, v63, v38

    if-gez v63, :cond_11

    .line 1133
    aget-wide v38, v12, v37

    .line 1134
    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v40, v0

    .line 1136
    :cond_11
    const-wide/16 v63, 0x0

    aput-wide v63, v12, v37

    .line 1129
    add-int/lit8 v37, v37, 0x1

    goto :goto_e

    .line 1140
    :pswitch_5
    const/16 v63, -0x10

    move/from16 v0, v63

    if-lt v14, v0, :cond_f

    add-int/lit8 v14, v14, -0x1

    goto :goto_f

    .line 1141
    :pswitch_6
    const/16 v63, 0x10

    move/from16 v0, v63

    if-ge v14, v0, :cond_f

    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    .line 1142
    :pswitch_7
    const/16 v63, -0x10

    move/from16 v0, v63

    if-lt v15, v0, :cond_f

    add-int/lit8 v15, v15, -0x1

    goto :goto_f

    .line 1143
    :pswitch_8
    const/16 v63, 0x10

    move/from16 v0, v63

    if-ge v15, v0, :cond_f

    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 1144
    :pswitch_9
    const/16 v63, -0x10

    move/from16 v0, v16

    move/from16 v1, v63

    if-lt v0, v1, :cond_f

    add-int/lit8 v16, v16, -0x1

    goto :goto_f

    .line 1145
    :pswitch_a
    const/16 v63, 0x10

    move/from16 v0, v16

    move/from16 v1, v63

    if-ge v0, v1, :cond_f

    add-int/lit8 v16, v16, 0x1

    goto :goto_f

    .line 1154
    .end local v8           #D:I
    .end local v9           #D1:I
    .end local v10           #D2:I
    .end local v11           #D3:I
    .end local v12           #Dif:[J
    .end local v14           #K1:I
    .end local v15           #K2:I
    .end local v16           #K3:I
    .end local v20           #byteCount:I
    .end local v21           #channels:I
    .end local v24           #curByte:J
    .end local v26           #curChannel:I
    .end local v29           #dataSize:I
    .end local v30           #destDataPos:I
    .end local v36           #i:I
    .end local v37           #j:I
    .end local v38           #minDif:J
    .end local v40           #numMinDif:J
    .end local v49           #predicted:J
    .end local v51           #prevByte:J
    .end local v53           #prevDelta:J
    .end local v55           #srcPos:I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    move-object/from16 v63, v0

    const/16 v64, 0x4

    aget v29, v63, v64

    .restart local v29       #dataSize:I
    const/16 v55, 0x0

    .restart local v55       #srcPos:I
    move/from16 v31, v29

    .line 1155
    .restart local v31       #destPos:I
    const v63, 0x1e000

    move/from16 v0, v29

    move/from16 v1, v63

    if-ge v0, v1, :cond_0

    :goto_10
    move/from16 v32, v31

    .end local v31           #destPos:I
    .local v32, destPos:I
    move/from16 v56, v55

    .line 1158
    .end local v55           #srcPos:I
    .restart local v56       #srcPos:I
    move/from16 v0, v56

    move/from16 v1, v29

    if-lt v0, v1, :cond_12

    .line 1166
    const/16 v63, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v64, v0

    const v65, 0x3c01c

    sub-int v66, v32, v29

    move-object/from16 v0, p0

    move/from16 v1, v63

    move-object/from16 v2, v64

    move/from16 v3, v65

    move/from16 v4, v66

    invoke-direct {v0, v1, v2, v3, v4}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    .line 1167
    const/16 v63, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v64, v0

    const v65, 0x3c020

    move-object/from16 v0, p0

    move/from16 v1, v63

    move-object/from16 v2, v64

    move/from16 v3, v65

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lde/innosystec/unrar/unpack/vm/RarVM;->setValue(Z[BII)V

    goto/16 :goto_0

    .line 1160
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v63, v0

    add-int/lit8 v55, v56, 0x1

    .end local v56           #srcPos:I
    .restart local v55       #srcPos:I
    aget-byte v24, v63, v56

    .line 1161
    .local v24, curByte:B
    const/16 v63, 0x2

    move/from16 v0, v24

    move/from16 v1, v63

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v63, v0

    add-int/lit8 v56, v55, 0x1

    .end local v55           #srcPos:I
    .restart local v56       #srcPos:I
    aget-byte v24, v63, v55

    const/16 v63, 0x2

    move/from16 v0, v24

    move/from16 v1, v63

    if-eq v0, v1, :cond_14

    .line 1162
    add-int/lit8 v63, v24, -0x20

    move/from16 v0, v63

    int-to-byte v0, v0

    move/from16 v24, v0

    move/from16 v55, v56

    .line 1164
    .end local v56           #srcPos:I
    .restart local v55       #srcPos:I
    :cond_13
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    move-object/from16 v63, v0

    add-int/lit8 v31, v32, 0x1

    .end local v32           #destPos:I
    .restart local v31       #destPos:I
    aput-byte v24, v63, v32

    goto :goto_10

    .end local v31           #destPos:I
    .end local v55           #srcPos:I
    .restart local v32       #destPos:I
    .restart local v56       #srcPos:I
    :cond_14
    move/from16 v55, v56

    .end local v56           #srcPos:I
    .restart local v55       #srcPos:I
    goto :goto_11

    .end local v32           #destPos:I
    .end local v55           #srcPos:I
    .restart local v23       #cmpByte2:B
    .restart local v27       #curPos:I
    .restart local v33       #fileOffset:J
    .restart local v35       #fileSize:I
    :cond_15
    move/from16 v28, v27

    .end local v27           #curPos:I
    .restart local v28       #curPos:I
    goto/16 :goto_2

    .line 915
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_b
    .end packed-switch

    .line 1138
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private IsStandardFilter([BI)Lde/innosystec/unrar/unpack/vm/VMStandardFilters;
    .locals 9
    .parameter "code"
    .parameter "codeSize"

    .prologue
    const/4 v8, 0x0

    .line 895
    const/4 v3, 0x7

    new-array v2, v3, [Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;

    .line 896
    new-instance v3, Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;

    const/16 v4, 0x35

    const v5, -0x52a89779

    sget-object v6, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v3, v4, v5, v6}, Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v3, v2, v8

    const/4 v3, 0x1

    .line 897
    new-instance v4, Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;

    const/16 v5, 0x39

    const v6, 0x3cd7e57e

    sget-object v7, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v4, v5, v6, v7}, Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 898
    new-instance v4, Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;

    const/16 v5, 0x78

    const v6, 0x3769893f

    sget-object v7, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v4, v5, v6, v7}, Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 899
    new-instance v4, Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;

    const/16 v5, 0x1d

    const v6, 0xe06077d

    sget-object v7, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v4, v5, v6, v7}, Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 900
    new-instance v4, Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;

    const/16 v5, 0x95

    const v6, 0x1c2c5dc8

    sget-object v7, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v4, v5, v6, v7}, Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 901
    new-instance v4, Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;

    const/16 v5, 0xd8

    const v6, -0x437a18ff

    sget-object v7, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v4, v5, v6, v7}, Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 902
    new-instance v4, Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;

    const/16 v5, 0x28

    const v6, 0x46b9c560

    sget-object v7, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_UPCASE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    invoke-direct {v4, v5, v6, v7}, Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;-><init>(IILde/innosystec/unrar/unpack/vm/VMStandardFilters;)V

    aput-object v4, v2, v3

    .line 904
    .local v2, stdList:[Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;
    const/4 v3, -0x1

    array-length v4, p1

    invoke-static {v3, p1, v8, v4}, Lde/innosystec/unrar/crc/RarCRC;->checkCrc(I[BII)I

    move-result v3

    xor-int/lit8 v0, v3, -0x1

    .line 905
    .local v0, CodeCRC:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 911
    sget-object v3, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    :goto_1
    return-object v3

    .line 906
    :cond_0
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;->getCRC()I

    move-result v3

    if-ne v3, v0, :cond_1

    aget-object v3, v2, v1

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;->getLength()I

    move-result v3

    array-length v4, p1

    if-ne v3, v4, :cond_1

    .line 907
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMStandardFilterSignature;->getType()Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    move-result-object v3

    goto :goto_1

    .line 905
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static ReadData(Lde/innosystec/unrar/unpack/vm/BitInput;)I
    .locals 4
    .parameter "rarVM"

    .prologue
    const/4 v3, 0x2

    const/16 v2, 0x10

    .line 865
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/BitInput;->fgetbits()I

    move-result v0

    .line 866
    .local v0, data:I
    const v1, 0xc000

    and-int/2addr v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 885
    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/vm/BitInput;->faddbits(I)V

    .line 886
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/BitInput;->fgetbits()I

    move-result v1

    shl-int/lit8 v0, v1, 0x10

    .line 887
    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/vm/BitInput;->faddbits(I)V

    .line 888
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/BitInput;->fgetbits()I

    move-result v1

    or-int/2addr v0, v1

    .line 889
    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/vm/BitInput;->faddbits(I)V

    move v1, v0

    .line 890
    :goto_0
    return v1

    .line 868
    :sswitch_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/vm/BitInput;->faddbits(I)V

    .line 869
    shr-int/lit8 v1, v0, 0xa

    and-int/lit8 v1, v1, 0xf

    goto :goto_0

    .line 871
    :sswitch_1
    and-int/lit16 v1, v0, 0x3c00

    if-nez v1, :cond_0

    .line 872
    shr-int/lit8 v1, v0, 0x2

    and-int/lit16 v1, v1, 0xff

    or-int/lit16 v0, v1, -0x100

    .line 873
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/vm/BitInput;->faddbits(I)V

    :goto_1
    move v1, v0

    .line 878
    goto :goto_0

    .line 875
    :cond_0
    shr-int/lit8 v1, v0, 0x6

    and-int/lit16 v0, v1, 0xff

    .line 876
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/vm/BitInput;->faddbits(I)V

    goto :goto_1

    .line 880
    :sswitch_2
    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/vm/BitInput;->faddbits(I)V

    .line 881
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/BitInput;->fgetbits()I

    move-result v0

    .line 882
    invoke-virtual {p0, v2}, Lde/innosystec/unrar/unpack/vm/BitInput;->faddbits(I)V

    move v1, v0

    .line 883
    goto :goto_0

    .line 866
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_2
    .end sparse-switch
.end method

.method private decodeArg(Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;Z)V
    .locals 4
    .parameter "op"
    .parameter "byteMode"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 766
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/vm/RarVM;->fgetbits()I

    move-result v0

    .line 767
    .local v0, data:I
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 768
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPREG:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setType(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    .line 769
    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0x7

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 770
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result v1

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setOffset(I)V

    .line 771
    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->faddbits(I)V

    .line 803
    :goto_0
    return-void

    .line 773
    :cond_0
    const v1, 0xc000

    and-int/2addr v1, v0

    if-nez v1, :cond_2

    .line 774
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPINT:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setType(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    .line 775
    if-eqz p2, :cond_1

    .line 776
    shr-int/lit8 v1, v0, 0x6

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 777
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/vm/RarVM;->faddbits(I)V

    goto :goto_0

    .line 779
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/vm/RarVM;->faddbits(I)V

    .line 780
    invoke-static {p0}, Lde/innosystec/unrar/unpack/vm/RarVM;->ReadData(Lde/innosystec/unrar/unpack/vm/BitInput;)I

    move-result v1

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setData(I)V

    goto :goto_0

    .line 783
    :cond_2
    sget-object v1, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setType(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    .line 784
    and-int/lit16 v1, v0, 0x2000

    if-nez v1, :cond_3

    .line 785
    shr-int/lit8 v1, v0, 0xa

    and-int/lit8 v1, v1, 0x7

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 786
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result v1

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setOffset(I)V

    .line 787
    invoke-virtual {p1, v2}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setBase(I)V

    .line 788
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/vm/RarVM;->faddbits(I)V

    goto :goto_0

    .line 790
    :cond_3
    and-int/lit16 v1, v0, 0x1000

    if-nez v1, :cond_4

    .line 791
    shr-int/lit8 v1, v0, 0x9

    and-int/lit8 v1, v1, 0x7

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 792
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result v1

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setOffset(I)V

    .line 793
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/vm/RarVM;->faddbits(I)V

    .line 798
    :goto_1
    invoke-static {p0}, Lde/innosystec/unrar/unpack/vm/RarVM;->ReadData(Lde/innosystec/unrar/unpack/vm/BitInput;)I

    move-result v1

    invoke-virtual {p1, v1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setBase(I)V

    goto :goto_0

    .line 795
    :cond_4
    invoke-virtual {p1, v2}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 796
    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->faddbits(I)V

    goto :goto_1
.end method

.method private filterItanium_GetBits(III)I
    .locals 6
    .parameter "curPos"
    .parameter "bitPos"
    .parameter "bitCount"

    .prologue
    .line 1193
    div-int/lit8 v1, p2, 0x8

    .line 1194
    .local v1, inAddr:I
    and-int/lit8 v3, p2, 0x7

    .line 1195
    .local v3, inBit:I
    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #inAddr:I
    .local v2, inAddr:I
    add-int v5, p1, v1

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 1196
    .local v0, bitField:I
    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #inAddr:I
    .restart local v1       #inAddr:I
    add-int v5, p1, v2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    .line 1197
    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #inAddr:I
    .restart local v2       #inAddr:I
    add-int v5, p1, v1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    .line 1198
    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    add-int v5, p1, v2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v0, v4

    .line 1199
    ushr-int/2addr v0, v3

    .line 1200
    const/4 v4, -0x1

    rsub-int/lit8 v5, p3, 0x20

    ushr-int/2addr v4, v5

    and-int/2addr v4, v0

    return v4
.end method

.method private filterItanium_SetBits(IIII)V
    .locals 7
    .parameter "curPos"
    .parameter "bitField"
    .parameter "bitPos"
    .parameter "bitCount"

    .prologue
    .line 1175
    div-int/lit8 v2, p3, 0x8

    .line 1176
    .local v2, inAddr:I
    and-int/lit8 v3, p3, 0x7

    .line 1177
    .local v3, inBit:I
    const/4 v4, -0x1

    rsub-int/lit8 v5, p4, 0x20

    ushr-int v0, v4, v5

    .line 1178
    .local v0, andMask:I
    shl-int v4, v0, v3

    xor-int/lit8 v0, v4, -0x1

    .line 1180
    shl-int/2addr p2, v3

    .line 1182
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x4

    if-lt v1, v4, :cond_0

    .line 1190
    return-void

    .line 1184
    :cond_0
    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    add-int v5, p1, v2

    add-int/2addr v5, v1

    aget-byte v6, v4, v5

    and-int/2addr v6, v0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1185
    iget-object v4, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    add-int v5, p1, v2

    add-int/2addr v5, v1

    aget-byte v6, v4, v5

    or-int/2addr v6, p2

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1186
    ushr-int/lit8 v4, v0, 0x8

    const/high16 v5, -0x100

    or-int v0, v4, v5

    .line 1187
    ushr-int/lit8 p2, p2, 0x8

    .line 1182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getOperand(Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;)I
    .locals 4
    .parameter "cmdOp"

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, ret:I
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->getType()Lde/innosystec/unrar/unpack/vm/VMOpType;

    move-result-object v2

    sget-object v3, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPREGMEM:Lde/innosystec/unrar/unpack/vm/VMOpType;

    if-ne v2, v3, :cond_0

    .line 134
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->getBase()I

    move-result v3

    add-int/2addr v2, v3

    const v3, 0x3ffff

    and-int v0, v2, v3

    .line 135
    .local v0, pos:I
    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    invoke-static {v2, v0}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    .line 140
    :goto_0
    return v1

    .line 137
    .end local v0           #pos:I
    :cond_0
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->getOffset()I

    move-result v0

    .line 138
    .restart local v0       #pos:I
    iget-object v2, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    invoke-static {v2, v0}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    goto :goto_0
.end method

.method private getValue(Z[BI)I
    .locals 1
    .parameter "byteMode"
    .parameter "mem"
    .parameter "offset"

    .prologue
    .line 75
    if-eqz p1, :cond_1

    .line 76
    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/vm/RarVM;->isVMMem([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    aget-byte v0, p2, p3

    .line 87
    :goto_0
    return v0

    .line 79
    :cond_0
    aget-byte v0, p2, p3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 82
    :cond_1
    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/vm/RarVM;->isVMMem([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-static {p2, p3}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    goto :goto_0

    .line 87
    :cond_2
    invoke-static {p2, p3}, Lde/innosystec/unrar/io/Raw;->readIntBigEndian([BI)I

    move-result v0

    goto :goto_0
.end method

.method private isVMMem([B)Z
    .locals 1
    .parameter "mem"

    .prologue
    .line 71
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private optimize(Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;)V
    .locals 8
    .parameter "prg"

    .prologue
    .line 806
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v1

    .line 808
    .local v1, commands:Ljava/util/List;,"Ljava/util/List<Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 862
    return-void

    .line 808
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;

    .line 809
    .local v0, cmd:Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;
    invoke-static {}, Lde/innosystec/unrar/unpack/vm/RarVM;->$SWITCH_TABLE$de$innosystec$unrar$unpack$vm$VMCommands()[I

    move-result-object v5

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOpCode()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v7

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 819
    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOpCode()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v7

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v7

    aget-byte v5, v5, v7

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_0

    .line 822
    const/4 v3, 0x0

    .line 824
    .local v3, flagsRequired:Z
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .local v4, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_5

    .line 835
    :cond_2
    :goto_2
    if-nez v3, :cond_0

    .line 838
    invoke-static {}, Lde/innosystec/unrar/unpack/vm/RarVM;->$SWITCH_TABLE$de$innosystec$unrar$unpack$vm$VMCommands()[I

    move-result-object v5

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOpCode()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v7

    invoke-virtual {v7}, Lde/innosystec/unrar/unpack/vm/VMCommands;->ordinal()I

    move-result v7

    aget v5, v5, v7

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 840
    :sswitch_0
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_ADDB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_3
    invoke-virtual {v0, v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->setOpCode(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto :goto_0

    .line 811
    .end local v3           #flagsRequired:Z
    .end local v4           #i:I
    :pswitch_0
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_MOVB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_4
    invoke-virtual {v0, v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->setOpCode(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto :goto_0

    .line 812
    :cond_3
    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_MOVD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_4

    .line 815
    :pswitch_1
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_CMPB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_5
    invoke-virtual {v0, v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->setOpCode(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto :goto_0

    .line 816
    :cond_4
    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_CMPD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_5

    .line 825
    .restart local v3       #flagsRequired:Z
    .restart local v4       #i:I
    :cond_5
    sget-object v7, Lde/innosystec/unrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    .line 826
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOpCode()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v5

    invoke-virtual {v5}, Lde/innosystec/unrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v5

    .line 825
    aget-byte v2, v7, v5

    .line 827
    .local v2, flags:I
    and-int/lit8 v5, v2, 0x38

    if-eqz v5, :cond_6

    .line 828
    const/4 v3, 0x1

    .line 829
    goto :goto_2

    .line 831
    :cond_6
    and-int/lit8 v5, v2, 0x40

    if-nez v5, :cond_2

    .line 824
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 841
    .end local v2           #flags:I
    :cond_7
    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_ADDD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_3

    .line 844
    :sswitch_1
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SUBB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_6
    invoke-virtual {v0, v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->setOpCode(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto/16 :goto_0

    .line 845
    :cond_8
    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_SUBD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_6

    .line 848
    :sswitch_2
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_INCB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_7
    invoke-virtual {v0, v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->setOpCode(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto/16 :goto_0

    .line 849
    :cond_9
    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_INCD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_7

    .line 852
    :sswitch_3
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_DECB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_8
    invoke-virtual {v0, v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->setOpCode(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto/16 :goto_0

    .line 853
    :cond_a
    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_DECD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_8

    .line 856
    :sswitch_4
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_NEGB:Lde/innosystec/unrar/unpack/vm/VMCommands;

    :goto_9
    invoke-virtual {v0, v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->setOpCode(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    goto/16 :goto_0

    .line 857
    :cond_b
    sget-object v5, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_NEGD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    goto :goto_9

    .line 809
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 838
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0x1c -> :sswitch_4
    .end sparse-switch
.end method

.method private setIP(I)Z
    .locals 2
    .parameter "ip"

    .prologue
    const/4 v0, 0x1

    .line 211
    iget v1, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->codeSize:I

    if-lt p1, v1, :cond_0

    .line 220
    :goto_0
    return v0

    .line 215
    :cond_0
    iget v1, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->maxOpCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->maxOpCount:I

    if-gtz v1, :cond_1

    .line 216
    const/4 v0, 0x0

    goto :goto_0

    .line 219
    :cond_1
    iput p1, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->IP:I

    goto :goto_0
.end method

.method private setValue(Z[BII)V
    .locals 1
    .parameter "byteMode"
    .parameter "mem"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 92
    if-eqz p1, :cond_1

    .line 93
    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/vm/RarVM;->isVMMem([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    int-to-byte v0, p4

    aput-byte v0, p2, p3

    .line 116
    :goto_0
    return-void

    .line 96
    :cond_0
    aget-byte v0, p2, p3

    and-int/lit16 v0, p4, 0xff

    int-to-byte v0, v0

    or-int/lit8 v0, v0, 0x0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    goto :goto_0

    .line 99
    :cond_1
    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/vm/RarVM;->isVMMem([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-static {p2, p3, p4}, Lde/innosystec/unrar/io/Raw;->writeIntLittleEndian([BII)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {p2, p3, p4}, Lde/innosystec/unrar/io/Raw;->writeIntBigEndian([BII)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;)V
    .locals 13
    .parameter "prg"

    .prologue
    .line 144
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v9

    array-length v9, v9

    if-lt v3, v9, :cond_5

    .line 150
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    const/16 v10, 0x2000

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 149
    and-int/lit8 v9, v9, -0x1

    int-to-long v1, v9

    .line 151
    .local v1, globalSize:J
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-eqz v9, :cond_0

    .line 152
    const/4 v3, 0x0

    :goto_1
    int-to-long v9, v3

    cmp-long v9, v9, v1

    if-ltz v9, :cond_6

    .line 158
    :cond_0
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v11, 0x2000

    .line 159
    sub-long/2addr v11, v1

    .line 158
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 159
    const-wide/16 v11, -0x1

    .line 158
    and-long v7, v9, v11

    .line 160
    .local v7, staticSize:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-eqz v9, :cond_1

    .line 161
    const/4 v3, 0x0

    :goto_2
    int-to-long v9, v3

    cmp-long v9, v9, v7

    if-ltz v9, :cond_7

    .line 168
    :cond_1
    iget-object v9, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    const/4 v10, 0x7

    const/high16 v11, 0x4

    aput v11, v9, v10

    .line 169
    const/4 v9, 0x0

    iput v9, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->flags:I

    .line 171
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getAltCmd()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_8

    .line 172
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getAltCmd()Ljava/util/List;

    move-result-object v6

    .line 175
    .local v6, preparedCode:Ljava/util/List;,"Ljava/util/List<Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;>;"
    :goto_3
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v9

    invoke-direct {p0, v6, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->ExecuteCode(Ljava/util/List;I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 176
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;

    sget-object v10, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_RET:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v9, v10}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->setOpCode(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    .line 178
    :cond_2
    const/4 v9, 0x0

    iget-object v10, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    const v11, 0x3c020

    invoke-direct {p0, v9, v10, v11}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v9

    .line 179
    const v10, 0x3ffff

    .line 178
    and-int v4, v9, v10

    .line 180
    .local v4, newBlockPos:I
    const/4 v9, 0x0

    iget-object v10, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    const v11, 0x3c01c

    invoke-direct {p0, v9, v10, v11}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v9

    .line 181
    const v10, 0x3ffff

    .line 180
    and-int v5, v9, v10

    .line 182
    .local v5, newBlockSize:I
    add-int v9, v4, v5

    const/high16 v10, 0x4

    if-lt v9, v10, :cond_3

    .line 183
    const/4 v4, 0x0

    .line 184
    const/4 v5, 0x0

    .line 187
    :cond_3
    invoke-virtual {p1, v4}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->setFilteredDataOffset(I)V

    .line 188
    invoke-virtual {p1, v5}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->setFilteredDataSize(I)V

    .line 190
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->clear()V

    .line 192
    const/4 v9, 0x0

    iget-object v10, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    const v11, 0x3c030

    invoke-direct {p0, v9, v10, v11}, Lde/innosystec/unrar/unpack/vm/RarVM;->getValue(Z[BI)I

    move-result v9

    .line 193
    const/16 v10, 0x1fc0

    .line 192
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 194
    .local v0, dataSize:I
    if-eqz v0, :cond_4

    .line 195
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v9

    add-int/lit8 v10, v0, 0x40

    invoke-virtual {v9, v10}, Ljava/util/Vector;->setSize(I)V

    .line 198
    const/4 v3, 0x0

    :goto_4
    add-int/lit8 v9, v0, 0x40

    if-lt v3, v9, :cond_9

    .line 203
    :cond_4
    return-void

    .line 146
    .end local v0           #dataSize:I
    .end local v1           #globalSize:J
    .end local v4           #newBlockPos:I
    .end local v5           #newBlockSize:I
    .end local v6           #preparedCode:Ljava/util/List;,"Ljava/util/List<Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;>;"
    .end local v7           #staticSize:J
    :cond_5
    iget-object v9, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->R:[I

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v10

    aget v10, v10, v3

    aput v10, v9, v3

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 154
    .restart local v1       #globalSize:J
    :cond_6
    iget-object v10, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    const v9, 0x3c000

    add-int v11, v9, v3

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    aput-byte v9, v10, v11

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 163
    .restart local v7       #staticSize:J
    :cond_7
    iget-object v10, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    const v9, 0x3c000

    long-to-int v11, v1

    add-int/2addr v9, v11

    add-int v11, v9, v3

    .line 164
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    .line 163
    aput-byte v9, v10, v11

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 173
    :cond_8
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v6

    goto/16 :goto_3

    .line 200
    .restart local v0       #dataSize:I
    .restart local v4       #newBlockPos:I
    .restart local v5       #newBlockSize:I
    .restart local v6       #preparedCode:Ljava/util/List;,"Ljava/util/List<Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;>;"
    :cond_9
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v9

    iget-object v10, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    const v11, 0x3c000

    add-int/2addr v11, v3

    aget-byte v10, v10, v11

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method public getMem()[B
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    if-nez v0, :cond_0

    .line 66
    const v0, 0x40004

    new-array v0, v0, [B

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    .line 68
    :cond_0
    return-void
.end method

.method public prepare([BILde/innosystec/unrar/unpack/vm/VMPreparedProgram;)V
    .locals 17
    .parameter "code"
    .parameter "codeSize"
    .parameter "prg"

    .prologue
    .line 634
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/vm/RarVM;->InitBitInput()V

    .line 635
    const v13, 0x8000

    move/from16 v0, p2

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 636
    .local v2, cpLength:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-lt v10, v2, :cond_4

    .line 641
    const/4 v12, 0x0

    .line 642
    .local v12, xorSum:B
    const/4 v10, 0x1

    :goto_1
    move/from16 v0, p2

    if-lt v10, v0, :cond_5

    .line 646
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->faddbits(I)V

    .line 648
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 649
    const/4 v13, 0x0

    aget-byte v13, p1, v13

    if-ne v12, v13, :cond_2

    .line 650
    invoke-direct/range {p0 .. p2}, Lde/innosystec/unrar/unpack/vm/RarVM;->IsStandardFilter([BI)Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    move-result-object v9

    .line 651
    .local v9, filterType:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->VMSF_NONE:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;

    if-eq v9, v13, :cond_0

    .line 653
    new-instance v3, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;

    invoke-direct {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;-><init>()V

    .line 654
    .local v3, curCmd:Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_STANDARD:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v3, v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->setOpCode(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    .line 655
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOp1()Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    invoke-virtual {v9}, Lde/innosystec/unrar/unpack/vm/VMStandardFilters;->getFilter()I

    move-result v14

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setData(I)V

    .line 656
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOp1()Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    sget-object v14, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setType(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    .line 657
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOp2()Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    sget-object v14, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setType(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    .line 658
    const/16 p2, 0x0

    .line 659
    invoke-virtual/range {p3 .. p3}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-virtual/range {p3 .. p3}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 669
    .end local v3           #curCmd:Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/vm/RarVM;->fgetbits()I

    move-result v5

    .line 670
    .local v5, dataFlag:I
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->faddbits(I)V

    .line 676
    const v13, 0x8000

    and-int/2addr v13, v5

    if-eqz v13, :cond_1

    .line 677
    invoke-static/range {p0 .. p0}, Lde/innosystec/unrar/unpack/vm/RarVM;->ReadData(Lde/innosystec/unrar/unpack/vm/BitInput;)I

    move-result v13

    int-to-long v13, v13

    const-wide/16 v15, 0x0

    and-long v6, v13, v15

    .line 678
    .local v6, dataSize:J
    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->inAddr:I

    move/from16 v0, p2

    if-ge v13, v0, :cond_1

    int-to-long v13, v10

    cmp-long v13, v13, v6

    if-ltz v13, :cond_6

    .line 685
    .end local v6           #dataSize:J
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->inAddr:I

    move/from16 v0, p2

    if-lt v13, v0, :cond_7

    .line 741
    .end local v5           #dataFlag:I
    .end local v9           #filterType:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;
    :cond_2
    new-instance v3, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;

    invoke-direct {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;-><init>()V

    .line 742
    .restart local v3       #curCmd:Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMCommands;->VM_RET:Lde/innosystec/unrar/unpack/vm/VMCommands;

    invoke-virtual {v3, v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->setOpCode(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    .line 745
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOp1()Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    sget-object v14, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setType(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    .line 746
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOp2()Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    sget-object v14, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setType(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    .line 757
    invoke-virtual/range {p3 .. p3}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    invoke-virtual/range {p3 .. p3}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 760
    if-eqz p2, :cond_3

    .line 761
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lde/innosystec/unrar/unpack/vm/RarVM;->optimize(Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;)V

    .line 763
    :cond_3
    return-void

    .line 638
    .end local v3           #curCmd:Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;
    .end local v12           #xorSum:B
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/innosystec/unrar/unpack/vm/RarVM;->inBuf:[B

    aget-byte v14, v13, v10

    aget-byte v15, p1, v10

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v13, v10

    .line 636
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 643
    .restart local v12       #xorSum:B
    :cond_5
    aget-byte v13, p1, v10

    xor-int/2addr v13, v12

    int-to-byte v12, v13

    .line 642
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 679
    .restart local v5       #dataFlag:I
    .restart local v6       #dataSize:J
    .restart local v9       #filterType:Lde/innosystec/unrar/unpack/vm/VMStandardFilters;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v13

    .line 680
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/vm/RarVM;->fgetbits()I

    move-result v14

    shr-int/lit8 v14, v14, 0x8

    int-to-byte v14, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    .line 679
    invoke-virtual {v13, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 681
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->faddbits(I)V

    .line 678
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 686
    .end local v6           #dataSize:J
    :cond_7
    new-instance v3, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;

    invoke-direct {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;-><init>()V

    .line 687
    .restart local v3       #curCmd:Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/vm/RarVM;->fgetbits()I

    move-result v4

    .line 688
    .local v4, data:I
    const v13, 0x8000

    and-int/2addr v13, v4

    if-nez v13, :cond_9

    .line 689
    shr-int/lit8 v13, v4, 0xc

    invoke-static {v13}, Lde/innosystec/unrar/unpack/vm/VMCommands;->findVMCommand(I)Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v13

    invoke-virtual {v3, v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->setOpCode(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    .line 690
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->faddbits(I)V

    .line 696
    :goto_4
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOpCode()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v14

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v14

    aget-byte v13, v13, v14

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_b

    .line 697
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/vm/RarVM;->fgetbits()I

    move-result v13

    shr-int/lit8 v13, v13, 0xf

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    const/4 v13, 0x1

    :goto_5
    invoke-virtual {v3, v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->setByteMode(Z)V

    .line 698
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->faddbits(I)V

    .line 702
    :goto_6
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOp1()Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    sget-object v14, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setType(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    .line 703
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOp2()Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    sget-object v14, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPNONE:Lde/innosystec/unrar/unpack/vm/VMOpType;

    invoke-virtual {v13, v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setType(Lde/innosystec/unrar/unpack/vm/VMOpType;)V

    .line 705
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    .line 706
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOpCode()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v14

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v14

    .line 705
    aget-byte v13, v13, v14

    and-int/lit8 v11, v13, 0x3

    .line 708
    .local v11, opNum:I
    if-lez v11, :cond_8

    .line 709
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOp1()Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lde/innosystec/unrar/unpack/vm/RarVM;->decodeArg(Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;Z)V

    .line 710
    const/4 v13, 0x2

    if-ne v11, v13, :cond_c

    .line 711
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOp2()Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->isByteMode()Z

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lde/innosystec/unrar/unpack/vm/RarVM;->decodeArg(Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;Z)V

    .line 737
    :cond_8
    :goto_7
    invoke-virtual/range {p3 .. p3}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 738
    invoke-virtual/range {p3 .. p3}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 693
    .end local v11           #opNum:I
    :cond_9
    shr-int/lit8 v13, v4, 0xa

    add-int/lit8 v13, v13, -0x18

    invoke-static {v13}, Lde/innosystec/unrar/unpack/vm/VMCommands;->findVMCommand(I)Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v13

    .line 692
    invoke-virtual {v3, v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->setOpCode(Lde/innosystec/unrar/unpack/vm/VMCommands;)V

    .line 694
    const/4 v13, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lde/innosystec/unrar/unpack/vm/RarVM;->faddbits(I)V

    goto/16 :goto_4

    .line 697
    :cond_a
    const/4 v13, 0x0

    goto :goto_5

    .line 700
    :cond_b
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->setByteMode(Z)V

    goto :goto_6

    .line 713
    .restart local v11       #opNum:I
    :cond_c
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOp1()Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->getType()Lde/innosystec/unrar/unpack/vm/VMOpType;

    move-result-object v13

    sget-object v14, Lde/innosystec/unrar/unpack/vm/VMOpType;->VM_OPINT:Lde/innosystec/unrar/unpack/vm/VMOpType;

    if-ne v13, v14, :cond_8

    .line 714
    sget-object v13, Lde/innosystec/unrar/unpack/vm/VMCmdFlags;->VM_CmdFlags:[B

    .line 715
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOpCode()Lde/innosystec/unrar/unpack/vm/VMCommands;

    move-result-object v14

    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMCommands;->getVMCommand()I

    move-result v14

    .line 714
    aget-byte v13, v13, v14

    and-int/lit8 v13, v13, 0x18

    if-eqz v13, :cond_8

    .line 716
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOp1()Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->getData()I

    move-result v8

    .line 717
    .local v8, distance:I
    const/16 v13, 0x100

    if-lt v8, v13, :cond_d

    .line 718
    add-int/lit16 v8, v8, -0x100

    .line 733
    :goto_8
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;->getOp1()Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;

    move-result-object v13

    invoke-virtual {v13, v8}, Lde/innosystec/unrar/unpack/vm/VMPreparedOperand;->setData(I)V

    goto :goto_7

    .line 720
    :cond_d
    const/16 v13, 0x88

    if-lt v8, v13, :cond_f

    .line 721
    add-int/lit16 v8, v8, -0x108

    .line 731
    :cond_e
    :goto_9
    invoke-virtual/range {p3 .. p3}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v13

    add-int/2addr v8, v13

    goto :goto_8

    .line 723
    :cond_f
    const/16 v13, 0x10

    if-lt v8, v13, :cond_10

    .line 724
    add-int/lit8 v8, v8, -0x8

    goto :goto_9

    .line 726
    :cond_10
    const/16 v13, 0x8

    if-lt v8, v13, :cond_e

    .line 727
    add-int/lit8 v8, v8, -0x10

    goto :goto_9
.end method

.method public setLowEndianValue(Ljava/util/Vector;II)V
    .locals 2
    .parameter
    .parameter "offset"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, mem:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Byte;>;"
    add-int/lit8 v0, p2, 0x0

    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 127
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    add-int/lit8 v0, p2, 0x3

    ushr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public setLowEndianValue([BII)V
    .locals 0
    .parameter "mem"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 119
    invoke-static {p1, p2, p3}, Lde/innosystec/unrar/io/Raw;->writeIntLittleEndian([BII)V

    .line 124
    return-void
.end method

.method public setMemory(I[BII)V
    .locals 5
    .parameter "pos"
    .parameter "data"
    .parameter "offset"
    .parameter "dataSize"

    .prologue
    const/high16 v4, 0x4

    .line 1206
    if-ge p1, v4, :cond_0

    .line 1208
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    sub-int/2addr v1, p3

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1215
    .end local v0           #i:I
    :cond_0
    return-void

    .line 1209
    .restart local v0       #i:I
    :cond_1
    sub-int v1, v4, p1

    if-lt v1, v0, :cond_0

    .line 1212
    iget-object v1, p0, Lde/innosystec/unrar/unpack/vm/RarVM;->mem:[B

    add-int v2, p1, v0

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    aput-byte v3, v1, v2

    .line 1208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
