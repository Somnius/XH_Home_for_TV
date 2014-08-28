.class public Lcom/uprui/tv/launcher8/allapp/ClassifiedList;
.super Ljava/lang/Object;
.source "ClassifiedList.java"


# static fields
.field private static final DEFAULT_APPLICATIONS_NUMBER:I = 0x2a

.field private static classifiedList:Lcom/uprui/tv/launcher8/allapp/ClassifiedList;


# instance fields
.field private final CATEGORY_NUM:I

.field private categoryAppNumsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/IconItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private enableClassified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->classifiedList:Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->categoryAppNumsMap:Ljava/util/Map;

    .line 27
    sget-object v0, Lcom/uprui/tv/launcher8/data/TVCategoryManager;->TOP_CATOGORYS:[I

    array-length v0, v0

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->CATEGORY_NUM:I

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->enableClassified:Z

    .line 33
    return-void
.end method

.method private static findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    .locals 4
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/IconItemInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/IconItemInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 266
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 272
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 267
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;

    .line 268
    .local v2, info:Lcom/uprui/tv/launcher8/allapp/IconItemInfo;
    iget-object v3, v2, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    const/4 v3, 0x1

    goto :goto_1

    .line 266
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private findItemByComponent(Landroid/content/ComponentName;)I
    .locals 4
    .parameter "component"

    .prologue
    .line 121
    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 122
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 128
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 123
    .restart local v0       #i:I
    :cond_1
    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;

    .line 124
    .local v1, info:Lcom/uprui/tv/launcher8/allapp/IconItemInfo;
    iget-object v3, v1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/uprui/tv/launcher8/allapp/ClassifiedList;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->classifiedList:Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

    invoke-direct {v0}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;-><init>()V

    sput-object v0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->classifiedList:Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

    .line 39
    :cond_0
    sget-object v0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->classifiedList:Lcom/uprui/tv/launcher8/allapp/ClassifiedList;

    return-object v0
.end method

.method private initMap()V
    .locals 4

    .prologue
    .line 53
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->CATEGORY_NUM:I

    if-lt v0, v1, :cond_0

    .line 56
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->categoryAppNumsMap:Ljava/util/Map;

    sget-object v2, Lcom/uprui/tv/launcher8/data/TVCategoryManager;->TOP_CATOGORYS:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateCategoryMap(IZ)V
    .locals 4
    .parameter "categoryCode"
    .parameter "increase"

    .prologue
    .line 132
    iget-boolean v1, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->enableClassified:Z

    if-nez v1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 136
    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/rui/launcher/common/CategoryManager;->getTopNCategoryCode(II)I

    move-result p1

    .line 138
    :cond_1
    const/4 v0, 0x0

    .line 139
    .local v0, count:I
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->categoryAppNumsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->categoryAppNumsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 145
    :goto_1
    if-eqz p2, :cond_3

    .line 146
    add-int/lit8 v0, v0, 0x1

    .line 151
    :goto_2
    if-ltz v0, :cond_4

    .line 152
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->categoryAppNumsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 142
    :cond_2
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u51fa\u73b0\u4e0d\u5b58\u5728\u7684\u9876\u7ea7\u6807\u7b7e: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 148
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 154
    :cond_4
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u51fa\u73b0\u4e0d\u5b58\u5728\u7684\u9876\u7ea7\u6807\u7b7e\uff01 categoryCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public add(ILcom/uprui/tv/launcher8/allapp/IconItemInfo;)V
    .locals 2
    .parameter "index"
    .parameter "info"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 93
    iget v0, p2, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->category:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->updateCategoryMap(IZ)V

    goto :goto_0
.end method

.method public add(Lcom/uprui/tv/launcher8/allapp/IconItemInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget v0, p1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->category:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->updateCategoryMap(IZ)V

    goto :goto_0
.end method

.method public addApps(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/IconItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/IconItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 73
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 76
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;

    invoke-virtual {p0, v2}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->add(Lcom/uprui/tv/launcher8/allapp/IconItemInfo;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/IconItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/IconItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 229
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 240
    return-void

    .line 230
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;

    .line 231
    .local v3, info:Lcom/uprui/tv/launcher8/allapp/IconItemInfo;
    iget v4, v3, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->category:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 232
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    sget-object v5, Lcom/uprui/tv/launcher8/data/WorkSpaceLauncherModel;->APP_CATEGORY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 233
    .local v2, index:I
    if-gez v2, :cond_1

    .line 234
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    neg-int v5, v5

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 235
    iget v4, v3, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->category:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->updateCategoryMap(IZ)V

    .line 229
    .end local v2           #index:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public binarySearch(Lcom/uprui/tv/launcher8/allapp/IconItemInfo;Ljava/util/Comparator;)I
    .locals 1
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/tv/launcher8/allapp/IconItemInfo;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/IconItemInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 292
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/uprui/tv/launcher8/allapp/IconItemInfo;>;"
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public classify(Lcom/uprui/tv/launcher8/allapp/IconItemInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    const/4 v3, -0x1

    .line 107
    iget-object v2, p1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v2}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->findItemByComponent(Landroid/content/ComponentName;)I

    move-result v0

    .line 108
    .local v0, index:I
    if-eq v0, v3, :cond_1

    .line 109
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 110
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->updateCategoryMap(IZ)V

    .line 111
    sget-object v2, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->APP_CATEGORY_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v2}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->binarySearch(Lcom/uprui/tv/launcher8/allapp/IconItemInfo;Ljava/util/Comparator;)I

    move-result v1

    .line 112
    .local v1, newIndex:I
    if-gez v1, :cond_0

    .line 113
    add-int/lit8 v2, v1, 0x1

    neg-int v1, v2

    .line 116
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->add(ILcom/uprui/tv/launcher8/allapp/IconItemInfo;)V

    .line 118
    .end local v1           #newIndex:I
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->categoryAppNumsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 61
    return-void
.end method

.method public enableClassfied(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->enableClassified:Z

    .line 46
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->enableClassified:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->clear()V

    .line 48
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->initMap()V

    .line 50
    :cond_0
    return-void
.end method

.method public get(I)Lcom/uprui/tv/launcher8/allapp/IconItemInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;

    return-object v0
.end method

.method public getCategoryScreens(I)Ljava/util/HashMap;
    .locals 7
    .parameter "group"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    if-nez p1, :cond_1

    .line 198
    const/4 v1, 0x0

    .line 223
    :cond_0
    return-object v1

    .line 200
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v1, categoryScreenNumsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v6, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->CATEGORY_NUM:I

    if-ge v3, v6, :cond_0

    .line 203
    sget-object v6, Lcom/uprui/tv/launcher8/data/TVCategoryManager;->TOP_CATOGORYS:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 204
    .local v0, categoryCode:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->categoryAppNumsMap:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 205
    .local v2, count:Ljava/lang/Integer;
    if-nez v2, :cond_2

    .line 202
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :cond_2
    const/4 v4, 0x0

    .line 210
    .local v4, page:I
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_3

    .line 212
    const/4 v4, 0x1

    .line 220
    :goto_2
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 221
    .local v5, pageObject:Ljava/lang/Integer;
    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 213
    .end local v5           #pageObject:Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    rem-int/2addr v6, p1

    if-nez v6, :cond_4

    .line 215
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    div-int v4, v6, p1

    .line 216
    goto :goto_2

    .line 217
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    div-int/2addr v6, p1

    add-int/lit8 v4, v6, 0x1

    goto :goto_2
.end method

.method public getContent()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/IconItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemByComponent(Landroid/content/ComponentName;)Lcom/uprui/tv/launcher8/allapp/IconItemInfo;
    .locals 1
    .parameter "component"

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->findItemByComponent(Landroid/content/ComponentName;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->get(I)Lcom/uprui/tv/launcher8/allapp/IconItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getScreenCounts(I)I
    .locals 4
    .parameter "group"

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, page:I
    if-nez p1, :cond_0

    .line 167
    const/4 v2, 0x0

    .line 188
    :goto_0
    return v2

    .line 169
    :cond_0
    iget-boolean v2, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->enableClassified:Z

    if-nez v2, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->size()I

    move-result v1

    .line 172
    .local v1, size:I
    if-eqz v1, :cond_1

    .line 174
    rem-int v2, v1, p1

    if-nez v2, :cond_2

    .line 175
    div-int v0, v1, p1

    .line 179
    :cond_1
    :goto_1
    iget v2, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->CATEGORY_NUM:I

    if-le v0, v2, :cond_3

    .line 180
    const-string v2, ""

    const-string v3, " \u5e94\u7528\u592a\u591a\u4e86\uff0c\u9ed8\u8ba4\u5206\u7c7b\u5c4f\u4e0d\u591f\u7528\u4e86\uff01\uff01\uff01"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #size:I
    :goto_2
    move v2, v0

    .line 188
    goto :goto_0

    .line 177
    .restart local v1       #size:I
    :cond_2
    div-int v2, v1, p1

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 182
    :cond_3
    iget v2, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->CATEGORY_NUM:I

    goto :goto_0

    .line 185
    .end local v1           #size:I
    :cond_4
    const-string v2, ""

    const-string v3, "\u8fd8\u6ca1\u6709\u542f\u7528\u5206\u7c7b\uff0c\u4e0d\u5e94\u8be5\u8c03\u7528\u6b64\u65b9\u6cd5\uff01\uff01\uff01"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public remove(Lcom/uprui/tv/launcher8/allapp/IconItemInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 97
    iget-object v1, p1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v1}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->findItemByComponent(Landroid/content/ComponentName;)I

    move-result v0

    .line 98
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 100
    iget v1, p1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->category:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->updateCategoryMap(IZ)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string v1, ""

    const-string v2, "\u8981\u5220\u9664\u7684\u5e94\u7528\u4e0d\u5b58\u5728\uff01"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/IconItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/IconItemInfo;>;"
    const/4 v7, -0x1

    .line 244
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 245
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 255
    return-void

    .line 246
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;

    .line 247
    .local v1, info:Lcom/uprui/tv/launcher8/allapp/IconItemInfo;
    iget v5, v1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->category:I

    if-eq v5, v7, :cond_1

    .line 248
    iget-object v5, v1, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v5}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->findItemByComponent(Landroid/content/ComponentName;)I

    move-result v3

    .line 249
    .local v3, removeIndex:I
    if-le v3, v7, :cond_1

    .line 250
    iget-object v5, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;

    .line 251
    .local v4, rinfo:Lcom/uprui/tv/launcher8/allapp/IconItemInfo;
    iget v5, v4, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->category:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->updateCategoryMap(IZ)V

    .line 245
    .end local v3           #removeIndex:I
    .end local v4           #rinfo:Lcom/uprui/tv/launcher8/allapp/IconItemInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAll(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/IconItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/IconItemInfo;>;"
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->clear()V

    .line 65
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 66
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 69
    return-void

    .line 67
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;

    invoke-virtual {p0, v2}, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->add(Lcom/uprui/tv/launcher8/allapp/IconItemInfo;)V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/ClassifiedList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
