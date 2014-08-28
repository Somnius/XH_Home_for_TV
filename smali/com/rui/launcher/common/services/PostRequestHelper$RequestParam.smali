.class public Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;
.super Ljava/lang/Object;
.source "PostRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rui/launcher/common/services/PostRequestHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestParam"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;->name:Ljava/lang/String;

    .line 311
    iput-object p2, p0, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;->value:Ljava/lang/String;

    .line 312
    sget-object v0, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-static {}, Lcom/rui/launcher/common/services/PostRequestHelper;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v1, p0, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget-object v1, p0, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method toNameValuePair()Lorg/apache/http/message/BasicNameValuePair;
    .locals 3

    .prologue
    .line 316
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v1, p0, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;->value:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
