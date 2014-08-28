.class public final Lcom/rui/launcher/common/tvupdaterec/RJsonData;
.super Ljava/lang/Object;
.source "RJsonData.java"


# static fields
.field public static final TYPE_NEW:I = 0x1

.field public static final TYPE_REPEAT:I = 0x0

.field public static final TYPE_REPLACE:I = 0x2


# instance fields
.field public cateCode:I

.field public clsName:Ljava/lang/String;

.field public component:Landroid/content/ComponentName;

.field public downOption:Ljava/lang/String;

.field public downUrl:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public id:J

.field public latestUpdateTime:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public recType:I

.field public title:Ljava/lang/String;

.field public verCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "component"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->component:Landroid/content/ComponentName;

    .line 74
    invoke-direct {p0}, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->initComponent()V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "pkg"
    .parameter "cls"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->pkgName:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->clsName:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->initComponent()V

    .line 81
    return-void
.end method

.method private initComponent()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->component:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->clsName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->component:Landroid/content/ComponentName;

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->pkgName:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->clsName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 165
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    iget-object v1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    iget v1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->cateCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 169
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    iget-object v1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->downUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCateCode()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->cateCode:I

    return v0
.end method

.method public getClsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->clsName:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->component:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getDownUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->downUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->verCode:Ljava/lang/String;

    return-object v0
.end method

.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 149
    const-string v0, "component"

    iget-object v1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "title"

    iget-object v1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "versionCode"

    iget-object v1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->verCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "categoryCode"

    iget v1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->cateCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v0, "recType"

    iget v1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->recType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const-string v0, "dUrl"

    iget-object v1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->downUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "dOUrl"

    iget-object v1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->downOption:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public setCateCode(I)V
    .locals 0
    .parameter "cateCode"

    .prologue
    .line 137
    iput p1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->cateCode:I

    .line 138
    return-void
.end method

.method public setClsName(Ljava/lang/String;)V
    .locals 0
    .parameter "clsName"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->clsName:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setComponent(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "component"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->component:Landroid/content/ComponentName;

    .line 98
    return-void
.end method

.method public setDownUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "downUrl"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->downUrl:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "iconUrl"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->iconUrl:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->pkgName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->title:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->verCode:Ljava/lang/String;

    .line 146
    return-void
.end method
