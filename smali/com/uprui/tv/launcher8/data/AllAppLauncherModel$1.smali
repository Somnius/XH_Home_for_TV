.class Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$1;
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
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final compare(Lcom/uprui/tv/launcher8/allapp/IconItemInfo;Lcom/uprui/tv/launcher8/allapp/IconItemInfo;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 555
    invoke-static {}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->access$0()Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;

    check-cast p2, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$1;->compare(Lcom/uprui/tv/launcher8/allapp/IconItemInfo;Lcom/uprui/tv/launcher8/allapp/IconItemInfo;)I

    move-result v0

    return v0
.end method
