.class public Lcom/rui/launcher/common/services/ClassifiedInfo;
.super Ljava/lang/Object;
.source "ClassifiedInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/rui/launcher/common/services/ClassifiedInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public category:I

.field public component:Landroid/content/ComponentName;

.field public flags:I

.field public id:J

.field public needUpload:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/rui/launcher/common/services/ClassifiedInfo$1;

    invoke-direct {v0}, Lcom/rui/launcher/common/services/ClassifiedInfo$1;-><init>()V

    sput-object v0, Lcom/rui/launcher/common/services/ClassifiedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "cn"

    .prologue
    const/4 v2, -0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->id:J

    .line 25
    iput v2, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    .line 29
    iput v2, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->needUpload:I

    .line 32
    iput-object p1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "info"
    .parameter "text"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->id:J

    .line 25
    iput v2, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    .line 29
    iput v2, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->needUpload:I

    .line 36
    iput-object p2, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->title:Ljava/lang/CharSequence;

    .line 37
    iget-object v0, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->title:Ljava/lang/CharSequence;

    .line 41
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    .line 42
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 43
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput-object v0, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    .line 44
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_1

    .line 45
    iput v3, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->flags:I

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->flags:I

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "source"

    .prologue
    const/4 v3, -0x1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->id:J

    .line 25
    iput v3, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    .line 29
    iput v3, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->needUpload:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .local v0, version:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->id:J

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->title:Ljava/lang/CharSequence;

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->flags:I

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/rui/launcher/common/services/ClassifiedInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/services/ClassifiedInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/rui/launcher/common/tvupdaterec/RJsonData;)V
    .locals 3
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->id:J

    .line 25
    iput v2, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    .line 29
    iput v2, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->needUpload:I

    .line 53
    invoke-virtual {p1}, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->title:Ljava/lang/CharSequence;

    .line 54
    invoke-virtual {p1}, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    .line 55
    invoke-virtual {p1}, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->getCateCode()I

    move-result v0

    iput v0, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public dump()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    const-string v1, ", category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 78
    const-string v0, "title"

    iget-object v1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "component"

    iget-object v1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "categoryCode"

    iget v1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v0, "flags"

    iget v1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->id:J

    .line 60
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 140
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 142
    .local v1, object:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "pkgName"

    iget-object v4, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v3, "title"

    iget-object v4, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v3, "isBuildIn"

    iget v4, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->flags:I

    if-ne v4, v2, :cond_0

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_1
    return-object v1

    .line 144
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public toRequestParamValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v1, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-wide v0, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget-object v0, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v0, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    :goto_1
    iget v0, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Lcom/rui/launcher/common/services/ClassifiedInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return-void

    .line 98
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
