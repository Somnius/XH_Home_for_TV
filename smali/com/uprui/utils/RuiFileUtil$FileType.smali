.class public final enum Lcom/uprui/utils/RuiFileUtil$FileType;
.super Ljava/lang/Enum;
.source "RuiFileUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/utils/RuiFileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/uprui/utils/RuiFileUtil$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/uprui/utils/RuiFileUtil$FileType;

.field public static final enum FILE_APK:Lcom/uprui/utils/RuiFileUtil$FileType;

.field public static final enum FILE_IMAGE:Lcom/uprui/utils/RuiFileUtil$FileType;

.field public static final enum FILE_RAR:Lcom/uprui/utils/RuiFileUtil$FileType;

.field public static final enum FILE_TXT:Lcom/uprui/utils/RuiFileUtil$FileType;

.field public static final enum FILE_XML:Lcom/uprui/utils/RuiFileUtil$FileType;

.field public static final enum FILE_ZIP:Lcom/uprui/utils/RuiFileUtil$FileType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/uprui/utils/RuiFileUtil$FileType;

    const-string v1, "FILE_APK"

    invoke-direct {v0, v1, v3}, Lcom/uprui/utils/RuiFileUtil$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_APK:Lcom/uprui/utils/RuiFileUtil$FileType;

    new-instance v0, Lcom/uprui/utils/RuiFileUtil$FileType;

    const-string v1, "FILE_TXT"

    invoke-direct {v0, v1, v4}, Lcom/uprui/utils/RuiFileUtil$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_TXT:Lcom/uprui/utils/RuiFileUtil$FileType;

    new-instance v0, Lcom/uprui/utils/RuiFileUtil$FileType;

    const-string v1, "FILE_XML"

    invoke-direct {v0, v1, v5}, Lcom/uprui/utils/RuiFileUtil$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_XML:Lcom/uprui/utils/RuiFileUtil$FileType;

    new-instance v0, Lcom/uprui/utils/RuiFileUtil$FileType;

    const-string v1, "FILE_IMAGE"

    invoke-direct {v0, v1, v6}, Lcom/uprui/utils/RuiFileUtil$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_IMAGE:Lcom/uprui/utils/RuiFileUtil$FileType;

    new-instance v0, Lcom/uprui/utils/RuiFileUtil$FileType;

    const-string v1, "FILE_ZIP"

    invoke-direct {v0, v1, v7}, Lcom/uprui/utils/RuiFileUtil$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_ZIP:Lcom/uprui/utils/RuiFileUtil$FileType;

    new-instance v0, Lcom/uprui/utils/RuiFileUtil$FileType;

    const-string v1, "FILE_RAR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/uprui/utils/RuiFileUtil$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_RAR:Lcom/uprui/utils/RuiFileUtil$FileType;

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/uprui/utils/RuiFileUtil$FileType;

    sget-object v1, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_APK:Lcom/uprui/utils/RuiFileUtil$FileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_TXT:Lcom/uprui/utils/RuiFileUtil$FileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_XML:Lcom/uprui/utils/RuiFileUtil$FileType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_IMAGE:Lcom/uprui/utils/RuiFileUtil$FileType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_ZIP:Lcom/uprui/utils/RuiFileUtil$FileType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_RAR:Lcom/uprui/utils/RuiFileUtil$FileType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/uprui/utils/RuiFileUtil$FileType;->ENUM$VALUES:[Lcom/uprui/utils/RuiFileUtil$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uprui/utils/RuiFileUtil$FileType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/uprui/utils/RuiFileUtil$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/uprui/utils/RuiFileUtil$FileType;

    return-object v0
.end method

.method public static values()[Lcom/uprui/utils/RuiFileUtil$FileType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/uprui/utils/RuiFileUtil$FileType;->ENUM$VALUES:[Lcom/uprui/utils/RuiFileUtil$FileType;

    array-length v1, v0

    new-array v2, v1, [Lcom/uprui/utils/RuiFileUtil$FileType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
