.class public Lcom/uprui/tv/launcher8/data/TVCategoryManager;
.super Ljava/lang/Object;
.source "TVCategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/tv/launcher8/data/TVCategoryManager$Category;
    }
.end annotation


# static fields
.field public static final TOP_CATOGORYS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/uprui/tv/launcher8/data/TVCategoryManager;->TOP_CATOGORYS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x66t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCategory(I)Lcom/uprui/tv/launcher8/data/TVCategoryManager$Category;
    .locals 2
    .parameter "categoryCode"

    .prologue
    .line 16
    div-int/lit8 v0, p0, 0x64

    .line 17
    .local v0, category:I
    packed-switch v0, :pswitch_data_0

    .line 31
    sget-object v1, Lcom/uprui/tv/launcher8/data/TVCategoryManager$Category;->UNKNOWN:Lcom/uprui/tv/launcher8/data/TVCategoryManager$Category;

    :goto_0
    return-object v1

    .line 19
    :pswitch_0
    sget-object v1, Lcom/uprui/tv/launcher8/data/TVCategoryManager$Category;->GAME:Lcom/uprui/tv/launcher8/data/TVCategoryManager$Category;

    goto :goto_0

    .line 21
    :pswitch_1
    sget-object v1, Lcom/uprui/tv/launcher8/data/TVCategoryManager$Category;->SOCIALITY:Lcom/uprui/tv/launcher8/data/TVCategoryManager$Category;

    goto :goto_0

    .line 23
    :pswitch_2
    sget-object v1, Lcom/uprui/tv/launcher8/data/TVCategoryManager$Category;->MEDIA:Lcom/uprui/tv/launcher8/data/TVCategoryManager$Category;

    goto :goto_0

    .line 25
    :pswitch_3
    sget-object v1, Lcom/uprui/tv/launcher8/data/TVCategoryManager$Category;->LIFE:Lcom/uprui/tv/launcher8/data/TVCategoryManager$Category;

    goto :goto_0

    .line 27
    :pswitch_4
    sget-object v1, Lcom/uprui/tv/launcher8/data/TVCategoryManager$Category;->TOOL:Lcom/uprui/tv/launcher8/data/TVCategoryManager$Category;

    goto :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getCategoryName(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "categoryCode"
    .parameter "isFullName"

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 36
    .local v1, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 37
    .local v0, categoryName:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 38
    div-int/lit8 p1, p1, 0x64

    .line 40
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 57
    const v2, 0x7f070042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    const v2, 0x7f07003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    goto :goto_0

    .line 45
    :pswitch_1
    const v2, 0x7f07003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    goto :goto_0

    .line 48
    :pswitch_2
    const v2, 0x7f07003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    goto :goto_0

    .line 51
    :pswitch_3
    const v2, 0x7f070040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    goto :goto_0

    .line 54
    :pswitch_4
    const v2, 0x7f070041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getTopNCategoryCode(II)I
    .locals 3
    .parameter "category"
    .parameter "N"

    .prologue
    .line 64
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, categoryStr:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 67
    .local v0, categoryCode:I
    return v0
.end method
