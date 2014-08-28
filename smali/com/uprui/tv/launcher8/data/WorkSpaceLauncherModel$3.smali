.class Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$3;
.super Ljava/lang/Object;
.source "WorkSpaceLauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;
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
        "Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)I
    .locals 3
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, result:I
    iget v1, p2, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->startCount:I

    iget v2, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->startCount:I

    sub-int v0, v1, v2

    .line 518
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    check-cast p2, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    invoke-virtual {p0, p1, p2}, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel$3;->compare(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)I

    move-result v0

    return v0
.end method
