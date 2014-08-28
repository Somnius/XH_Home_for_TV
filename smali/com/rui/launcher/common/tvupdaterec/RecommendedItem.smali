.class Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;
.super Ljava/lang/Object;
.source "RecommendedItem.java"


# static fields
.field public static final ESSENTIAL_RECAPP:I = 0x1

.field static final NO_ID:I = -0x1

.field public static final STATUS_DOWNLOADED:I = 0x1

.field public static final STATUS_DOWNLOADING:I = 0x0

.field public static final STATUS_UNDOWNLOAD:I = -0x1


# instance fields
.field public category:I

.field public cellX:I

.field public cellY:I

.field public componentName:Landroid/content/ComponentName;

.field public container:J

.field public customIcon:Z

.field public downloadOption:Ljava/lang/String;

.field public downloadUrl:Ljava/lang/String;

.field enTitle:Ljava/lang/CharSequence;

.field public iconData:[B

.field public iconResourceName:Ljava/lang/String;

.field public id:J

.field isGesture:Z

.field isShortcut:Z

.field itemType:I

.field mIntent:Landroid/content/Intent;

.field public notiId:I

.field public recType:I

.field sCHTitle:Ljava/lang/CharSequence;

.field public saved:Ljava/lang/String;

.field public screen:I

.field spanX:I

.field spanY:I

.field public status:I

.field public title:Ljava/lang/CharSequence;

.field public usingFallbackIcon:Z

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->notiId:I

    .line 36
    iput v1, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->recType:I

    .line 55
    iput v1, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->category:I

    .line 63
    iput-wide v2, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->id:J

    .line 67
    iput-wide v2, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->container:J

    .line 69
    iput v1, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->screen:I

    .line 71
    iput v1, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->cellX:I

    .line 73
    iput v1, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->cellY:I

    .line 75
    iput v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->spanX:I

    .line 77
    iput v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->spanY:I

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->isGesture:Z

    .line 39
    iput v1, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->status:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "component"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;-><init>()V

    .line 83
    invoke-virtual {p0, p1}, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->setComponent(Landroid/content/ComponentName;)V

    .line 84
    return-void
.end method

.method private initTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "title"

    .prologue
    .line 112
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, label:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 117
    .local v1, length:I
    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 118
    .local v2, loc:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->sCHTitle:Ljava/lang/CharSequence;

    .line 120
    const-string v3, ""

    iput-object v3, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->enTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 122
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->sCHTitle:Ljava/lang/CharSequence;

    .line 123
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_3

    .line 124
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->enTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 126
    :cond_3
    const-string v3, ""

    iput-object v3, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->enTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method


# virtual methods
.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->id:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTitleByLocale(Ljava/util/Locale;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "l"

    .prologue
    .line 132
    if-nez p1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->title:Ljava/lang/CharSequence;

    .line 141
    :cond_0
    :goto_0
    return-object v0

    .line 134
    :cond_1
    const-string v1, "CN"

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->sCHTitle:Ljava/lang/CharSequence;

    .line 135
    .local v0, label:Ljava/lang/CharSequence;
    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 136
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->sCHTitle:Ljava/lang/CharSequence;

    .line 138
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->enTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 134
    .end local v0           #label:Ljava/lang/CharSequence;
    :cond_3
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->enTitle:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public setComponent(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "component"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->componentName:Landroid/content/ComponentName;

    .line 88
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->id:J

    .line 146
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->title:Ljava/lang/CharSequence;

    .line 108
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/tvupdaterec/RecommendedItem;->initTitle(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method
