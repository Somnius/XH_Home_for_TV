.class public final enum Lcom/rui/launcher/common/CategoryManager$Category;
.super Ljava/lang/Enum;
.source "CategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rui/launcher/common/CategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rui/launcher/common/CategoryManager$Category;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMMON:Lcom/rui/launcher/common/CategoryManager$Category;

.field private static final synthetic ENUM$VALUES:[Lcom/rui/launcher/common/CategoryManager$Category;

.field public static final enum GAME:Lcom/rui/launcher/common/CategoryManager$Category;

.field public static final enum LIFE:Lcom/rui/launcher/common/CategoryManager$Category;

.field public static final enum MEDIA:Lcom/rui/launcher/common/CategoryManager$Category;

.field public static final enum SOCIALITY:Lcom/rui/launcher/common/CategoryManager$Category;

.field public static final enum TOOL:Lcom/rui/launcher/common/CategoryManager$Category;

.field public static final enum UNKNOWN:Lcom/rui/launcher/common/CategoryManager$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/rui/launcher/common/CategoryManager$Category;

    const-string v1, "COMMON"

    invoke-direct {v0, v1, v3}, Lcom/rui/launcher/common/CategoryManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rui/launcher/common/CategoryManager$Category;->COMMON:Lcom/rui/launcher/common/CategoryManager$Category;

    new-instance v0, Lcom/rui/launcher/common/CategoryManager$Category;

    const-string v1, "GAME"

    invoke-direct {v0, v1, v4}, Lcom/rui/launcher/common/CategoryManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rui/launcher/common/CategoryManager$Category;->GAME:Lcom/rui/launcher/common/CategoryManager$Category;

    new-instance v0, Lcom/rui/launcher/common/CategoryManager$Category;

    const-string v1, "SOCIALITY"

    invoke-direct {v0, v1, v5}, Lcom/rui/launcher/common/CategoryManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rui/launcher/common/CategoryManager$Category;->SOCIALITY:Lcom/rui/launcher/common/CategoryManager$Category;

    new-instance v0, Lcom/rui/launcher/common/CategoryManager$Category;

    const-string v1, "MEDIA"

    invoke-direct {v0, v1, v6}, Lcom/rui/launcher/common/CategoryManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rui/launcher/common/CategoryManager$Category;->MEDIA:Lcom/rui/launcher/common/CategoryManager$Category;

    new-instance v0, Lcom/rui/launcher/common/CategoryManager$Category;

    const-string v1, "LIFE"

    invoke-direct {v0, v1, v7}, Lcom/rui/launcher/common/CategoryManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rui/launcher/common/CategoryManager$Category;->LIFE:Lcom/rui/launcher/common/CategoryManager$Category;

    new-instance v0, Lcom/rui/launcher/common/CategoryManager$Category;

    const-string v1, "TOOL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/rui/launcher/common/CategoryManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rui/launcher/common/CategoryManager$Category;->TOOL:Lcom/rui/launcher/common/CategoryManager$Category;

    new-instance v0, Lcom/rui/launcher/common/CategoryManager$Category;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/rui/launcher/common/CategoryManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rui/launcher/common/CategoryManager$Category;->UNKNOWN:Lcom/rui/launcher/common/CategoryManager$Category;

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/rui/launcher/common/CategoryManager$Category;

    sget-object v1, Lcom/rui/launcher/common/CategoryManager$Category;->COMMON:Lcom/rui/launcher/common/CategoryManager$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rui/launcher/common/CategoryManager$Category;->GAME:Lcom/rui/launcher/common/CategoryManager$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rui/launcher/common/CategoryManager$Category;->SOCIALITY:Lcom/rui/launcher/common/CategoryManager$Category;

    aput-object v1, v0, v5

    sget-object v1, Lcom/rui/launcher/common/CategoryManager$Category;->MEDIA:Lcom/rui/launcher/common/CategoryManager$Category;

    aput-object v1, v0, v6

    sget-object v1, Lcom/rui/launcher/common/CategoryManager$Category;->LIFE:Lcom/rui/launcher/common/CategoryManager$Category;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/rui/launcher/common/CategoryManager$Category;->TOOL:Lcom/rui/launcher/common/CategoryManager$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/rui/launcher/common/CategoryManager$Category;->UNKNOWN:Lcom/rui/launcher/common/CategoryManager$Category;

    aput-object v2, v0, v1

    sput-object v0, Lcom/rui/launcher/common/CategoryManager$Category;->ENUM$VALUES:[Lcom/rui/launcher/common/CategoryManager$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rui/launcher/common/CategoryManager$Category;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/rui/launcher/common/CategoryManager$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rui/launcher/common/CategoryManager$Category;

    return-object v0
.end method

.method public static values()[Lcom/rui/launcher/common/CategoryManager$Category;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/rui/launcher/common/CategoryManager$Category;->ENUM$VALUES:[Lcom/rui/launcher/common/CategoryManager$Category;

    array-length v1, v0

    new-array v2, v1, [Lcom/rui/launcher/common/CategoryManager$Category;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
