.class public Lcom/rui/launcher/common/utils/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2
    .parameter "json"
    .parameter "key"

    .prologue
    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 11
    :goto_0
    return v1

    .line 10
    :catch_0
    move-exception v0

    .line 11
    .local v0, e:Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 2
    .parameter "json"
    .parameter "key"

    .prologue
    .line 17
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 19
    :goto_0
    return v1

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, e:Lorg/json/JSONException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "json"
    .parameter "key"

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 27
    :goto_0
    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method
