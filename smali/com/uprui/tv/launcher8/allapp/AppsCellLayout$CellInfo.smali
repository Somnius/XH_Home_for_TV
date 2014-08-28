.class public final Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;
.super Ljava/lang/Object;
.source "AppsCellLayout.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo$VacantCell;
    }
.end annotation


# instance fields
.field cell:Landroid/view/View;

.field cellX:I

.field cellY:I

.field final current:Landroid/graphics/Rect;

.field maxVacantSpanX:I

.field maxVacantSpanXSpanY:I

.field maxVacantSpanY:I

.field maxVacantSpanYSpanX:I

.field screen:I

.field spanX:I

.field spanY:I

.field final vacantCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo$VacantCell;",
            ">;"
        }
    .end annotation
.end field

.field valid:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 791
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->current:Landroid/graphics/Rect;

    .line 725
    return-void
.end method


# virtual methods
.method public clearVacantCells()V
    .locals 4

    .prologue
    .line 794
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 795
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo$VacantCell;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 797
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 801
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 802
    return-void

    .line 798
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo$VacantCell;

    invoke-virtual {v3}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo$VacantCell;->release()V

    .line 797
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method findVacantCellsFromOccupied([ZII)V
    .locals 8
    .parameter "occupied"
    .parameter "xCount"
    .parameter "yCount"

    .prologue
    const/high16 v1, -0x8000

    .line 805
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cellX:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cellY:I

    if-gez v0, :cond_1

    .line 806
    :cond_0
    iput v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->maxVacantSpanXSpanY:I

    iput v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->maxVacantSpanX:I

    .line 807
    iput v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->maxVacantSpanYSpanX:I

    iput v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->maxVacantSpanY:I

    .line 808
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->clearVacantCells()V

    .line 819
    :goto_0
    return-void

    .line 812
    :cond_1
    filled-new-array {p2, p3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    .line 813
    .local v5, unflattened:[[Z
    const/4 v7, 0x0

    .local v7, y:I
    :goto_1
    if-lt v7, p3, :cond_2

    .line 818
    iget v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cellX:I

    iget v2, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cellY:I

    move-object v0, p0

    move v3, p2

    move v4, p3

    #calls: Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->findIntersectingVacantCells(Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;IIII[[Z)V
    invoke-static/range {v0 .. v5}, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout;->access$1(Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;IIII[[Z)V

    goto :goto_0

    .line 814
    :cond_2
    const/4 v6, 0x0

    .local v6, x:I
    :goto_2
    if-lt v6, p2, :cond_3

    .line 813
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 815
    :cond_3
    aget-object v0, v5, v6

    mul-int v1, v7, p2

    add-int/2addr v1, v6

    aget-boolean v1, p1, v1

    aput-boolean v1, v0, v7

    .line 814
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Cell[view="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AppsCellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
