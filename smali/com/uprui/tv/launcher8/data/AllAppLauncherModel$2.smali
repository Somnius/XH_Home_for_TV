.class Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$2;
.super Ljava/lang/Object;
.source "AllAppLauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/uprui/tv/launcher8/allapp/IconItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final compare(Lcom/uprui/tv/launcher8/allapp/IconItemInfo;Lcom/uprui/tv/launcher8/allapp/IconItemInfo;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v1, -0x1

    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, result:I
    iget v2, p1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->category:I

    iget v3, p2, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->category:I

    if-ne v2, v3, :cond_1

    .line 565
    const/4 v0, 0x0

    .line 575
    :goto_0
    if-nez v0, :cond_0

    .line 576
    sget-object v1, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v1, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 578
    :cond_0
    return v0

    .line 567
    :cond_1
    iget v2, p1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->category:I

    if-ne v1, v2, :cond_2

    .line 568
    const/4 v0, 0x1

    goto :goto_0

    .line 569
    :cond_2
    iget v2, p2, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->category:I

    if-ne v1, v2, :cond_3

    .line 570
    const/4 v0, -0x1

    goto :goto_0

    .line 572
    :cond_3
    iget v2, p1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->category:I

    iget v3, p2, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->category:I

    if-ge v2, v3, :cond_4

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;

    check-cast p2, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$2;->compare(Lcom/uprui/tv/launcher8/allapp/IconItemInfo;Lcom/uprui/tv/launcher8/allapp/IconItemInfo;)I

    move-result v0

    return v0
.end method
