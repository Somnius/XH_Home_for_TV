.class public final enum Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;
.super Ljava/lang/Enum;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rui/launcher/common/utils/LogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOG_LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

.field public static final enum debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

.field public static final enum error:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

.field public static final enum info:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

.field public static final enum warning:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    const-string v1, "error"

    invoke-direct {v0, v1, v2}, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->error:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    new-instance v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    const-string v1, "warning"

    invoke-direct {v0, v1, v3}, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->warning:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    new-instance v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    const-string v1, "info"

    invoke-direct {v0, v1, v4}, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->info:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    new-instance v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    const-string v1, "debug"

    invoke-direct {v0, v1, v5}, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v1, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->error:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->warning:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->info:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    aput-object v1, v0, v5

    sput-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->ENUM$VALUES:[Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    return-object v0
.end method

.method public static values()[Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->ENUM$VALUES:[Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    array-length v1, v0

    new-array v2, v1, [Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
