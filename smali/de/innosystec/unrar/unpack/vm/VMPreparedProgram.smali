.class public Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
.super Ljava/lang/Object;
.source "VMPreparedProgram.java"


# instance fields
.field private AltCmd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;",
            ">;"
        }
    .end annotation
.end field

.field private Cmd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;",
            ">;"
        }
    .end annotation
.end field

.field private CmdCount:I

.field private FilteredDataOffset:I

.field private FilteredDataSize:I

.field private GlobalData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private InitR:[I

.field private StaticData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->Cmd:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->AltCmd:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->GlobalData:Ljava/util/Vector;

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->StaticData:Ljava/util/Vector;

    .line 40
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->InitR:[I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->AltCmd:Ljava/util/List;

    .line 48
    return-void
.end method


# virtual methods
.method public getAltCmd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->AltCmd:Ljava/util/List;

    return-object v0
.end method

.method public getCmd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->Cmd:Ljava/util/List;

    return-object v0
.end method

.method public getCmdCount()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->CmdCount:I

    return v0
.end method

.method public getFilteredDataOffset()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->FilteredDataOffset:I

    return v0
.end method

.method public getFilteredDataSize()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->FilteredDataSize:I

    return v0
.end method

.method public getGlobalData()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->GlobalData:Ljava/util/Vector;

    return-object v0
.end method

.method public getInitR()[I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->InitR:[I

    return-object v0
.end method

.method public getStaticData()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->StaticData:Ljava/util/Vector;

    return-object v0
.end method

.method public setAltCmd(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, altCmd:Ljava/util/List;,"Ljava/util/List<Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;>;"
    iput-object p1, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->AltCmd:Ljava/util/List;

    .line 60
    return-void
.end method

.method public setCmd(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, cmd:Ljava/util/List;,"Ljava/util/List<Lde/innosystec/unrar/unpack/vm/VMPreparedCommand;>;"
    iput-object p1, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->Cmd:Ljava/util/List;

    .line 70
    return-void
.end method

.method public setCmdCount(I)V
    .locals 0
    .parameter "cmdCount"

    .prologue
    .line 77
    iput p1, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->CmdCount:I

    .line 78
    return-void
.end method

.method public setFilteredDataOffset(I)V
    .locals 0
    .parameter "filteredDataOffset"

    .prologue
    .line 89
    iput p1, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->FilteredDataOffset:I

    .line 90
    return-void
.end method

.method public setFilteredDataSize(I)V
    .locals 0
    .parameter "filteredDataSize"

    .prologue
    .line 99
    iput p1, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->FilteredDataSize:I

    .line 100
    return-void
.end method

.method public setGlobalData(Ljava/util/Vector;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, globalData:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Byte;>;"
    iput-object p1, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->GlobalData:Ljava/util/Vector;

    .line 108
    return-void
.end method

.method public setInitR([I)V
    .locals 0
    .parameter "initR"

    .prologue
    .line 115
    iput-object p1, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->InitR:[I

    .line 116
    return-void
.end method

.method public setStaticData(Ljava/util/Vector;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, staticData:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Byte;>;"
    iput-object p1, p0, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->StaticData:Ljava/util/Vector;

    .line 124
    return-void
.end method
