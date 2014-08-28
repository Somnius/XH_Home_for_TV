.class Lcom/rui/launcher/common/services/ClassifiedInfo$1;
.super Ljava/lang/Object;
.source "ClassifiedInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rui/launcher/common/services/ClassifiedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/rui/launcher/common/services/ClassifiedInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/rui/launcher/common/services/ClassifiedInfo;
    .locals 2
    .parameter "source"

    .prologue
    .line 130
    new-instance v0, Lcom/rui/launcher/common/services/ClassifiedInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/rui/launcher/common/services/ClassifiedInfo;-><init>(Landroid/os/Parcel;Lcom/rui/launcher/common/services/ClassifiedInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/rui/launcher/common/services/ClassifiedInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/rui/launcher/common/services/ClassifiedInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/rui/launcher/common/services/ClassifiedInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 135
    new-array v0, p1, [Lcom/rui/launcher/common/services/ClassifiedInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/rui/launcher/common/services/ClassifiedInfo$1;->newArray(I)[Lcom/rui/launcher/common/services/ClassifiedInfo;

    move-result-object v0

    return-object v0
.end method
