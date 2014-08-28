.class public final Lcom/rui/launcher/common/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$rui$launcher$common$utils$LogUtil$LOG_LEVEL:[I = null

.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LOG_DEBUG : "


# direct methods
.method static synthetic $SWITCH_TABLE$com$rui$launcher$common$utils$LogUtil$LOG_LEVEL()[I
    .locals 3

    .prologue
    .line 5
    sget-object v0, Lcom/rui/launcher/common/utils/LogUtil;->$SWITCH_TABLE$com$rui$launcher$common$utils$LogUtil$LOG_LEVEL:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->values()[Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->error:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->info:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->warning:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/rui/launcher/common/utils/LogUtil;->$SWITCH_TABLE$com$rui$launcher$common$utils$LogUtil$LOG_LEVEL:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/rui/launcher/common/utils/LogUtil;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "level"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    return-void
.end method

.method public static print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "level"
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 20
    sget-boolean v0, Lcom/rui/launcher/common/utils/LogUtil;->DEBUG:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->error:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    if-ne p0, v0, :cond_1

    .line 21
    :cond_0
    invoke-static {}, Lcom/rui/launcher/common/utils/LogUtil;->$SWITCH_TABLE$com$rui$launcher$common$utils$LogUtil$LOG_LEVEL()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 38
    :cond_1
    :goto_0
    return-void

    .line 23
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LOG_DEBUG : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 26
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LOG_DEBUG : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 29
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LOG_DEBUG : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 32
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LOG_DEBUG : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
