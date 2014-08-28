.class public Lcom/rui/launcher/common/CategoryManager;
.super Ljava/lang/Object;
.source "CategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rui/launcher/common/CategoryManager$Category;
    }
.end annotation


# static fields
.field public static final TOP_CATOGORYS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/rui/launcher/common/CategoryManager;->TOP_CATOGORYS:[I

    .line 13
    return-void

    .line 12
    nop

    :array_0
    .array-data 0x4
        0x65t 0x0t 0x0t 0x0t
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
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCategory(I)Lcom/rui/launcher/common/CategoryManager$Category;
    .locals 2
    .parameter "categoryCode"

    .prologue
    .line 16
    div-int/lit8 v0, p0, 0x64

    .line 17
    .local v0, category:I
    packed-switch v0, :pswitch_data_0

    .line 33
    sget-object v1, Lcom/rui/launcher/common/CategoryManager$Category;->UNKNOWN:Lcom/rui/launcher/common/CategoryManager$Category;

    :goto_0
    return-object v1

    .line 19
    :pswitch_0
    sget-object v1, Lcom/rui/launcher/common/CategoryManager$Category;->COMMON:Lcom/rui/launcher/common/CategoryManager$Category;

    goto :goto_0

    .line 21
    :pswitch_1
    sget-object v1, Lcom/rui/launcher/common/CategoryManager$Category;->GAME:Lcom/rui/launcher/common/CategoryManager$Category;

    goto :goto_0

    .line 23
    :pswitch_2
    sget-object v1, Lcom/rui/launcher/common/CategoryManager$Category;->SOCIALITY:Lcom/rui/launcher/common/CategoryManager$Category;

    goto :goto_0

    .line 25
    :pswitch_3
    sget-object v1, Lcom/rui/launcher/common/CategoryManager$Category;->MEDIA:Lcom/rui/launcher/common/CategoryManager$Category;

    goto :goto_0

    .line 27
    :pswitch_4
    sget-object v1, Lcom/rui/launcher/common/CategoryManager$Category;->LIFE:Lcom/rui/launcher/common/CategoryManager$Category;

    goto :goto_0

    .line 29
    :pswitch_5
    sget-object v1, Lcom/rui/launcher/common/CategoryManager$Category;->TOOL:Lcom/rui/launcher/common/CategoryManager$Category;

    goto :goto_0

    .line 17
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getCategoryName(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "categoryCode"
    .parameter "isFullName"

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 39
    .local v1, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 40
    .local v0, categoryName:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 41
    div-int/lit8 p1, p1, 0x64

    .line 43
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 63
    sget v2, Lcom/rui/launcher/common/R$string;->apphome_other:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 45
    :pswitch_0
    sget v2, Lcom/rui/launcher/common/R$string;->apphome_common:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    goto :goto_0

    .line 48
    :pswitch_1
    sget v2, Lcom/rui/launcher/common/R$string;->apphome_game:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    goto :goto_0

    .line 51
    :pswitch_2
    sget v2, Lcom/rui/launcher/common/R$string;->apphome_social:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    goto :goto_0

    .line 54
    :pswitch_3
    sget v2, Lcom/rui/launcher/common/R$string;->apphome_media:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    goto :goto_0

    .line 57
    :pswitch_4
    sget v2, Lcom/rui/launcher/common/R$string;->apphome_life:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    goto :goto_0

    .line 60
    :pswitch_5
    sget v2, Lcom/rui/launcher/common/R$string;->apphome_tool:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getTopNCategoryCode(II)I
    .locals 3
    .parameter "category"
    .parameter "N"

    .prologue
    .line 70
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, categoryStr:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 73
    .local v0, categoryCode:I
    return v0
.end method
