.class public Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;
.super Ljava/lang/Object;
.source "AllappIndicatorItemInfo.java"


# instance fields
.field private imageResId:I

.field private position:I

.field private refourced:Z

.field private title:Ljava/lang/String;

.field private topCategoryScreenIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "title"
    .parameter "imageId"
    .parameter "p"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->topCategoryScreenIndex:I

    .line 19
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->title:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->imageResId:I

    .line 21
    iput p3, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->position:I

    .line 22
    return-void
.end method


# virtual methods
.method public getImageResId()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->imageResId:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->position:I

    return v0
.end method

.method public getRefourced()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->refourced:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopCategoryScreenIndex()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->topCategoryScreenIndex:I

    return v0
.end method

.method public setImageResId(I)V
    .locals 0
    .parameter "imageResId"

    .prologue
    .line 37
    iput p1, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->imageResId:I

    .line 38
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 45
    iput p1, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->position:I

    .line 46
    return-void
.end method

.method public setRefourced(Z)V
    .locals 0
    .parameter "refourced"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->refourced:Z

    .line 54
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->title:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setTopCategoryScreenIndex(I)V
    .locals 0
    .parameter "topCategoryScreenIndex"

    .prologue
    .line 15
    iput p1, p0, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicatorItemInfo;->topCategoryScreenIndex:I

    .line 16
    return-void
.end method
