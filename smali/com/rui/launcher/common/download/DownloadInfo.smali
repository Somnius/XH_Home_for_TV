.class public Lcom/rui/launcher/common/download/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/rui/launcher/common/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sCounter:I


# instance fields
.field public component:Landroid/content/ComponentName;

.field public content:Ljava/lang/String;

.field downloadSize:F

.field public downloadUrl:Ljava/lang/String;

.field public id:I

.field public name:Ljava/lang/CharSequence;

.field priority:I

.field public progress:I

.field totalSize:F

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x7db

    sput v0, Lcom/rui/launcher/common/download/DownloadInfo;->sCounter:I

    .line 176
    new-instance v0, Lcom/rui/launcher/common/download/DownloadInfo$1;

    invoke-direct {v0}, Lcom/rui/launcher/common/download/DownloadInfo$1;-><init>()V

    sput-object v0, Lcom/rui/launcher/common/download/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 190
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v2, p0, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    .line 23
    iput v2, p0, Lcom/rui/launcher/common/download/DownloadInfo;->progress:I

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->priority:I

    .line 29
    iput v1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->totalSize:F

    .line 31
    iput v1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadSize:F

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->component:Landroid/content/ComponentName;

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->progress:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->priority:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->totalSize:F

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadSize:F

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->content:Ljava/lang/String;

    .line 140
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/rui/launcher/common/download/DownloadInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/download/DownloadInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/rui/launcher/common/download/DownloadInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v2, p0, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    .line 23
    iput v2, p0, Lcom/rui/launcher/common/download/DownloadInfo;->progress:I

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->priority:I

    .line 29
    iput v1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->totalSize:F

    .line 31
    iput v1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadSize:F

    .line 76
    iget v0, p1, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    iput v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    .line 77
    iget-object v0, p1, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    .line 79
    iget v0, p1, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    iput v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    .line 80
    iget v0, p1, Lcom/rui/launcher/common/download/DownloadInfo;->priority:I

    iput v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->priority:I

    .line 81
    iget-object v0, p1, Lcom/rui/launcher/common/download/DownloadInfo;->component:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->component:Landroid/content/ComponentName;

    .line 82
    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "url"

    .prologue
    .line 51
    invoke-direct {p0, p2}, Lcom/rui/launcher/common/download/DownloadInfo;-><init>(Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "url"
    .parameter "type"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/rui/launcher/common/download/DownloadInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 57
    iput p3, p0, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    .line 58
    invoke-static {p3}, Lcom/rui/launcher/common/download/DownloadManager;->getPriority(I)I

    move-result v0

    iput v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->priority:I

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/content/ComponentName;)V
    .locals 1
    .parameter "name"
    .parameter "url"
    .parameter "type"
    .parameter "component"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/rui/launcher/common/download/DownloadInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 63
    iput p3, p0, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    .line 64
    invoke-static {p3}, Lcom/rui/launcher/common/download/DownloadManager;->getPriority(I)I

    move-result v0

    iput v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->priority:I

    .line 65
    iput-object p4, p0, Lcom/rui/launcher/common/download/DownloadInfo;->component:Landroid/content/ComponentName;

    .line 66
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v2, p0, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    .line 23
    iput v2, p0, Lcom/rui/launcher/common/download/DownloadInfo;->progress:I

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->priority:I

    .line 29
    iput v1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->totalSize:F

    .line 31
    iput v1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadSize:F

    .line 42
    iput-object p1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/rui/launcher/common/download/DownloadInfo;->identity()V

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public dump()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\nid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n component = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 227
    const-string v1, "\n type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 194
    if-nez p1, :cond_0

    move v0, v1

    .line 206
    .end local p1
    :goto_0
    return v0

    .line 196
    .restart local p1
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 197
    goto :goto_0

    .line 198
    :cond_1
    instance-of v0, p1, Lcom/rui/launcher/common/download/DownloadInfo;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 199
    check-cast v0, Lcom/rui/launcher/common/download/DownloadInfo;

    iget v0, v0, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    if-ne v0, v2, :cond_3

    .line 200
    iget v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    check-cast p1, Lcom/rui/launcher/common/download/DownloadInfo;

    .end local p1
    iget v3, p1, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    if-ne v0, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 202
    .restart local p1
    :cond_3
    iget v3, p0, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    move-object v0, p1

    check-cast v0, Lcom/rui/launcher/common/download/DownloadInfo;

    iget v0, v0, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    if-ne v3, v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    check-cast p1, Lcom/rui/launcher/common/download/DownloadInfo;

    .end local p1
    iget-object v3, p1, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 202
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    .restart local p1
    :cond_5
    move v0, v1

    .line 206
    goto :goto_0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/rui/launcher/common/download/DownloadInfo;->sCounter:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rui/launcher/common/download/DownloadInfo;->sCounter:I

    .line 90
    return-void
.end method

.method public getContent()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    iget v1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    packed-switch v1, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 112
    :pswitch_1
    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->content:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->content:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 211
    const/16 v0, 0x1f

    .line 212
    .local v0, prime:I
    const/16 v1, 0x11

    .line 213
    .local v1, result:I
    iget v2, p0, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    add-int/lit16 v1, v2, 0x20f

    .line 214
    iget v2, p0, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 215
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 217
    :cond_0
    return v1

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public identity()V
    .locals 2

    .prologue
    .line 85
    sget v0, Lcom/rui/launcher/common/download/DownloadInfo;->sCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/rui/launcher/common/download/DownloadInfo;->sCounter:I

    iput v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    .line 86
    return-void
.end method

.method public initContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    :pswitch_0
    return-void

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rui/launcher/common/utils/FileUtil;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->content:Ljava/lang/String;

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 150
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->name:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->component:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 165
    :goto_1
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->totalSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 170
    iget v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->downloadSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 172
    iget-object v0, p0, Lcom/rui/launcher/common/download/DownloadInfo;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    return-void

    .line 157
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
