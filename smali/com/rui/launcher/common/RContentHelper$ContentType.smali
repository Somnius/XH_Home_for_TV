.class public final enum Lcom/rui/launcher/common/RContentHelper$ContentType;
.super Ljava/lang/Enum;
.source "RContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rui/launcher/common/RContentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rui/launcher/common/RContentHelper$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Applications:Lcom/rui/launcher/common/RContentHelper$ContentType;

.field public static final enum Classifieds:Lcom/rui/launcher/common/RContentHelper$ContentType;

.field private static final synthetic ENUM$VALUES:[Lcom/rui/launcher/common/RContentHelper$ContentType;

.field public static final enum Recommends:Lcom/rui/launcher/common/RContentHelper$ContentType;

.field public static final enum Widgets:Lcom/rui/launcher/common/RContentHelper$ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/rui/launcher/common/RContentHelper$ContentType;

    const-string v1, "Applications"

    invoke-direct {v0, v1, v2}, Lcom/rui/launcher/common/RContentHelper$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rui/launcher/common/RContentHelper$ContentType;->Applications:Lcom/rui/launcher/common/RContentHelper$ContentType;

    new-instance v0, Lcom/rui/launcher/common/RContentHelper$ContentType;

    const-string v1, "Widgets"

    invoke-direct {v0, v1, v3}, Lcom/rui/launcher/common/RContentHelper$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rui/launcher/common/RContentHelper$ContentType;->Widgets:Lcom/rui/launcher/common/RContentHelper$ContentType;

    new-instance v0, Lcom/rui/launcher/common/RContentHelper$ContentType;

    const-string v1, "Classifieds"

    invoke-direct {v0, v1, v4}, Lcom/rui/launcher/common/RContentHelper$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rui/launcher/common/RContentHelper$ContentType;->Classifieds:Lcom/rui/launcher/common/RContentHelper$ContentType;

    new-instance v0, Lcom/rui/launcher/common/RContentHelper$ContentType;

    const-string v1, "Recommends"

    invoke-direct {v0, v1, v5}, Lcom/rui/launcher/common/RContentHelper$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rui/launcher/common/RContentHelper$ContentType;->Recommends:Lcom/rui/launcher/common/RContentHelper$ContentType;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/rui/launcher/common/RContentHelper$ContentType;

    sget-object v1, Lcom/rui/launcher/common/RContentHelper$ContentType;->Applications:Lcom/rui/launcher/common/RContentHelper$ContentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rui/launcher/common/RContentHelper$ContentType;->Widgets:Lcom/rui/launcher/common/RContentHelper$ContentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rui/launcher/common/RContentHelper$ContentType;->Classifieds:Lcom/rui/launcher/common/RContentHelper$ContentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rui/launcher/common/RContentHelper$ContentType;->Recommends:Lcom/rui/launcher/common/RContentHelper$ContentType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/rui/launcher/common/RContentHelper$ContentType;->ENUM$VALUES:[Lcom/rui/launcher/common/RContentHelper$ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rui/launcher/common/RContentHelper$ContentType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/rui/launcher/common/RContentHelper$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rui/launcher/common/RContentHelper$ContentType;

    return-object v0
.end method

.method public static values()[Lcom/rui/launcher/common/RContentHelper$ContentType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/rui/launcher/common/RContentHelper$ContentType;->ENUM$VALUES:[Lcom/rui/launcher/common/RContentHelper$ContentType;

    array-length v1, v0

    new-array v2, v1, [Lcom/rui/launcher/common/RContentHelper$ContentType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
