.class public final Lcom/baidu/location/BDLocation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/j;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/BDLocation$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field public static final TypeCacheLocation:I = 0x41

.field public static final TypeCriteriaException:I = 0x3e

.field public static final TypeGpsLocation:I = 0x3d

.field public static final TypeNetWorkException:I = 0x3f

.field public static final TypeNetWorkLocation:I = 0xa1

.field public static final TypeNone:I = 0x0

.field public static final TypeOffLineLocation:I = 0x42

.field public static final TypeOffLineLocationFail:I = 0x43

.field public static final TypeOffLineLocationNetworkFail:I = 0x44

.field public static final TypeServerError:I = 0xa7


# instance fields
.field private h0:Ljava/lang/String;

.field private h1:I

.field private h2:I

.field private h3:D

.field private h4:Z

.field private h5:F

.field private h6:Z

.field private h7:Ljava/lang/String;

.field private h8:Z

.field private h9:F

.field private ia:D

.field private ib:Ljava/lang/String;

.field private ic:F

.field private id:Z

.field private ie:Z

.field private ig:Ljava/lang/String;

.field private ih:Z

.field private ii:Ljava/lang/String;

.field private ij:Z

.field private ik:D

.field private il:Lcom/baidu/location/BDLocation$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/location/BDLocation$1;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation$1;-><init>()V

    sput-object v0, Lcom/baidu/location/BDLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/location/BDLocation;->h1:I

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->ii:Ljava/lang/String;

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->ia:D

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->h3:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->ih:Z

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->ik:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->h4:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->h5:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->h6:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->ic:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->ie:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->h2:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/baidu/location/BDLocation;->h9:F

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->ib:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->h7:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->id:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->h8:Z

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->h0:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->ij:Z

    new-instance v0, Lcom/baidu/location/BDLocation$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/BDLocation$a;-><init>(Lcom/baidu/location/BDLocation;)V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->ig:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/baidu/location/BDLocation;->h1:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->ii:Ljava/lang/String;

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->ia:D

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->h3:D

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->ih:Z

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->ik:D

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->h4:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->h5:F

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->h6:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->ic:F

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->ie:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->h2:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/baidu/location/BDLocation;->h9:F

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->ib:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->h7:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->id:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->h8:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->h0:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->ij:Z

    new-instance v0, Lcom/baidu/location/BDLocation$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/BDLocation$a;-><init>(Lcom/baidu/location/BDLocation;)V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->ig:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->h1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->ii:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/BDLocation;->ia:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/BDLocation;->h3:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/BDLocation;->ik:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->h5:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->ic:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->h2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/baidu/location/BDLocation;->h9:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->h7:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->ig:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/BDLocation$a;->new:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/BDLocation$a;->int:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/BDLocation$a;->byte:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/BDLocation$a;->do:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/BDLocation$a;->for:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/BDLocation$a;->try:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->ih:Z

    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->h4:Z

    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->h6:Z

    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->ie:Z

    const/4 v1, 0x4

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->id:Z

    const/4 v1, 0x5

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->h8:Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->ij:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/baidu/location/BDLocation$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/BDLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/location/BDLocation;)V
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/location/BDLocation;->h1:I

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->ii:Ljava/lang/String;

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->ia:D

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->h3:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->ih:Z

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->ik:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->h4:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->h5:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->h6:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->ic:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->ie:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->h2:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/baidu/location/BDLocation;->h9:F

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->ib:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->h7:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->id:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->h8:Z

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->h0:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->ij:Z

    new-instance v0, Lcom/baidu/location/BDLocation$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/BDLocation$a;-><init>(Lcom/baidu/location/BDLocation;)V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->ig:Ljava/lang/String;

    iget v0, p1, Lcom/baidu/location/BDLocation;->h1:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->h1:I

    iget-object v0, p1, Lcom/baidu/location/BDLocation;->ii:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->ii:Ljava/lang/String;

    iget-wide v0, p1, Lcom/baidu/location/BDLocation;->ia:D

    iput-wide v0, p0, Lcom/baidu/location/BDLocation;->ia:D

    iget-wide v0, p1, Lcom/baidu/location/BDLocation;->h3:D

    iput-wide v0, p0, Lcom/baidu/location/BDLocation;->h3:D

    iget-boolean v0, p1, Lcom/baidu/location/BDLocation;->ih:Z

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->ih:Z

    iget-wide v0, p1, Lcom/baidu/location/BDLocation;->ik:D

    iput-wide v0, p1, Lcom/baidu/location/BDLocation;->ik:D

    iget-boolean v0, p1, Lcom/baidu/location/BDLocation;->h4:Z

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->h4:Z

    iget v0, p1, Lcom/baidu/location/BDLocation;->h5:F

    iput v0, p0, Lcom/baidu/location/BDLocation;->h5:F

    iget-boolean v0, p1, Lcom/baidu/location/BDLocation;->h6:Z

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->h6:Z

    iget v0, p1, Lcom/baidu/location/BDLocation;->ic:F

    iput v0, p0, Lcom/baidu/location/BDLocation;->ic:F

    iget-boolean v0, p1, Lcom/baidu/location/BDLocation;->ie:Z

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->ie:Z

    iget v0, p1, Lcom/baidu/location/BDLocation;->h2:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->h2:I

    iget v0, p1, Lcom/baidu/location/BDLocation;->h9:F

    iput v0, p0, Lcom/baidu/location/BDLocation;->h9:F

    iget-object v0, p1, Lcom/baidu/location/BDLocation;->ib:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->ib:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/location/BDLocation;->h7:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->h7:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/baidu/location/BDLocation;->id:Z

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->id:Z

    iget-boolean v0, p1, Lcom/baidu/location/BDLocation;->h8:Z

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->h8:Z

    iget-object v0, p1, Lcom/baidu/location/BDLocation;->h0:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->h0:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/baidu/location/BDLocation;->ij:Z

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->ij:Z

    new-instance v0, Lcom/baidu/location/BDLocation$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/BDLocation$a;-><init>(Lcom/baidu/location/BDLocation;)V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v1, v1, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v1, v1, Lcom/baidu/location/BDLocation$a;->new:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/location/BDLocation$a;->new:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v1, v1, Lcom/baidu/location/BDLocation$a;->int:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/location/BDLocation$a;->int:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v1, v1, Lcom/baidu/location/BDLocation$a;->byte:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/location/BDLocation$a;->byte:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v1, v1, Lcom/baidu/location/BDLocation$a;->do:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/location/BDLocation$a;->do:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v1, v1, Lcom/baidu/location/BDLocation$a;->for:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/location/BDLocation$a;->for:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v1, p1, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v1, v1, Lcom/baidu/location/BDLocation$a;->try:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/location/BDLocation$a;->try:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/location/BDLocation;->ig:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->ig:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/baidu/location/BDLocation;->h1:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->ii:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->ia:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->h3:D

    iput-boolean v4, p0, Lcom/baidu/location/BDLocation;->ih:Z

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->ik:D

    iput-boolean v4, p0, Lcom/baidu/location/BDLocation;->h4:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->h5:F

    iput-boolean v4, p0, Lcom/baidu/location/BDLocation;->h6:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->ic:F

    iput-boolean v4, p0, Lcom/baidu/location/BDLocation;->ie:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->h2:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/baidu/location/BDLocation;->h9:F

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->ib:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->h7:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/baidu/location/BDLocation;->id:Z

    iput-boolean v4, p0, Lcom/baidu/location/BDLocation;->h8:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->h0:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/baidu/location/BDLocation;->ij:Z

    new-instance v0, Lcom/baidu/location/BDLocation$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/BDLocation$a;-><init>(Lcom/baidu/location/BDLocation;)V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->ig:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    const-string v3, "time"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setTime(Ljava/lang/String;)V

    const/16 v1, 0x3d

    if-ne v2, v1, :cond_2

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "point"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const-string v1, "radius"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string v1, "s"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setSpeed(F)V

    const-string v1, "d"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setDerect(F)V

    const-string v1, "n"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setSatelliteNumber(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput v4, p0, Lcom/baidu/location/BDLocation;->h1:I

    iput-boolean v4, p0, Lcom/baidu/location/BDLocation;->id:Z

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xa1

    if-ne v2, v1, :cond_a

    :try_start_1
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v0, "point"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "y"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string v2, "x"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const-string v0, "radius"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string v0, "addr"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "addr"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iput-object v0, v2, Lcom/baidu/location/BDLocation$a;->try:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/baidu/location/BDLocation$a;->new:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/baidu/location/BDLocation$a;->int:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    const/4 v3, 0x3

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/baidu/location/BDLocation$a;->byte:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    const/4 v3, 0x4

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/baidu/location/BDLocation$a;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    const/4 v3, 0x5

    aget-object v0, v0, v3

    iput-object v0, v2, Lcom/baidu/location/BDLocation$a;->for:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    const-string v2, "\u5317\u4eac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->new:Ljava/lang/String;

    const-string v2, "\u5317\u4eac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    const-string v2, "\u4e0a\u6d77"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->new:Ljava/lang/String;

    const-string v2, "\u4e0a\u6d77"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    const-string v2, "\u5929\u6d25"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->new:Ljava/lang/String;

    const-string v2, "\u5929\u6d25"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    const-string v2, "\u91cd\u5e86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->new:Ljava/lang/String;

    const-string v2, "\u91cd\u5e86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v2, v2, Lcom/baidu/location/BDLocation$a;->int:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v2, v2, Lcom/baidu/location/BDLocation$a;->byte:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v2, v2, Lcom/baidu/location/BDLocation$a;->do:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iput-object v0, v2, Lcom/baidu/location/BDLocation$a;->try:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->id:Z

    :goto_2
    const-string v0, "poi"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->h8:Z

    const-string v0, "poi"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->h7:Ljava/lang/String;

    :cond_7
    const-string v0, "floor"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "floor"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->ig:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->ig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->ig:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v2, v2, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v2, v2, Lcom/baidu/location/BDLocation$a;->new:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->id:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setAddrStr(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const/16 v1, 0x42

    if-eq v2, v1, :cond_b

    const/16 v1, 0x44

    if-ne v2, v1, :cond_0

    :cond_b
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "point"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const-string v1, "radius"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string v1, "isCellChanged"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/BDLocation;->if(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private if(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->ij:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddrStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->try:Ljava/lang/String;

    return-object v0
.end method

.method public getAltitude()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->ik:D

    return-wide v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->new:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->for:Ljava/lang/String;

    return-object v0
.end method

.method public getCoorType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->ib:Ljava/lang/String;

    return-object v0
.end method

.method public getDerect()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->h9:F

    return v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->int:Ljava/lang/String;

    return-object v0
.end method

.method public getFloor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->ig:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->ia:D

    return-wide v0
.end method

.method public getLocType()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->h1:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->h3:D

    return-wide v0
.end method

.method public getPoi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->h7:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->ic:F

    return v0
.end method

.method public getSatelliteNumber()I
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->ie:Z

    iget v0, p0, Lcom/baidu/location/BDLocation;->h2:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->h5:F

    return v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->byte:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->do:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->ii:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddr()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->id:Z

    return v0
.end method

.method public hasAltitude()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->ih:Z

    return v0
.end method

.method public hasPoi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->h8:Z

    return v0
.end method

.method public hasRadius()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->h6:Z

    return v0
.end method

.method public hasSateNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->ie:Z

    return v0
.end method

.method public hasSpeed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->h4:Z

    return v0
.end method

.method public isCellChangeFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->ij:Z

    return v0
.end method

.method public setAddrStr(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->h0:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->id:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->id:Z

    goto :goto_0
.end method

.method public setAltitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->ik:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->ih:Z

    return-void
.end method

.method public setCoorType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->ib:Ljava/lang/String;

    return-void
.end method

.method public setDerect(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->h9:F

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->ia:D

    return-void
.end method

.method public setLocType(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->h1:I

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->h3:D

    return-void
.end method

.method public setPoi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->h7:Ljava/lang/String;

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    iput p1, p0, Lcom/baidu/location/BDLocation;->ic:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->h6:Z

    return-void
.end method

.method public setSatelliteNumber(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->h2:I

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iput p1, p0, Lcom/baidu/location/BDLocation;->h5:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->h4:Z

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->ii:Ljava/lang/String;

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toNewLocation(Ljava/lang/String;)Lcom/baidu/location/BDLocation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Lcom/baidu/location/BDLocation;->h1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->ii:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->ia:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->h3:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->ik:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->h5:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->ic:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->h2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->h9:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->h7:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->ig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->new:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->int:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->byte:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->for:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->il:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->try:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x7

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->ih:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->h4:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->h6:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->ie:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->id:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->h8:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/baidu/location/BDLocation;->ij:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
