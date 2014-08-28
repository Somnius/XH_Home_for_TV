.class Lcom/rui/launcher/common/services/PostRequestHelper;
.super Ljava/lang/Object;
.source "PostRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;
    }
.end annotation


# static fields
.field public static final STATUS_INVALID_URL:I = 0x2

.field public static final STATUS_OTHER:I = 0x6

.field public static final STATUS_PARAMS_INVALID:I = -0x1

.field public static final STATUS_PROTOCOL_ERROR:I = 0x5

.field public static final STATUS_RESPONSE_FAILED:I = 0x0

.field public static final STATUS_RESPONSE_OK:I = 0x1

.field public static final STATUS_TIME_OUT:I = 0x4

.field public static final STATUS_UNSUPPORTED_ENCODING:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private connTimeOut:I

.field private content:Ljava/lang/String;

.field private ex:Ljava/lang/Exception;

.field private paramLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;",
            ">;"
        }
    .end annotation
.end field

.field private soTimeOut:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/rui/launcher/common/services/PostRequestHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rui/launcher/common/services/PostRequestHelper;->TAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "cx"
    .parameter "type"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/services/PostRequestHelper;->initRequestParams(Landroid/content/Context;)V

    .line 79
    const/16 v0, 0x7530

    const v1, 0xea60

    invoke-virtual {p0, v0, v1}, Lcom/rui/launcher/common/services/PostRequestHelper;->setTimeOut(II)V

    .line 80
    invoke-direct {p0, p2}, Lcom/rui/launcher/common/services/PostRequestHelper;->initUrl(I)V

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/rui/launcher/common/services/PostRequestHelper;->addRequestParamsByType(Landroid/content/Context;I)V

    .line 82
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/rui/launcher/common/services/PostRequestHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addRequestParamInner(Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->paramLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getClassifyHelper(Landroid/content/Context;)Lcom/rui/launcher/common/services/PostRequestHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 65
    new-instance v0, Lcom/rui/launcher/common/services/PostRequestHelper;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/rui/launcher/common/services/PostRequestHelper;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private initPairs(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, pairs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v1, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->paramLists:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->paramLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 300
    :cond_0
    return-void

    .line 296
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;

    .line 297
    .local v0, p:Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;
    invoke-virtual {v0}, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;->toNameValuePair()Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initRequestParams(Landroid/content/Context;)V
    .locals 8
    .parameter "cx"

    .prologue
    .line 90
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->paramLists:Ljava/util/List;

    .line 92
    invoke-static {p1}, Lcom/rui/launcher/common/utils/RUtilities;->getUUIDProperty(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, uuID:Ljava/lang/String;
    invoke-static {p1}, Lcom/rui/launcher/common/utils/RUtilities;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    .line 94
    .local v3, version:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "^*#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, licenseSource:Ljava/lang/String;
    new-instance v4, Lcom/rui/launcher/common/security/LicenseFactory;

    invoke-direct {v4}, Lcom/rui/launcher/common/security/LicenseFactory;-><init>()V

    invoke-virtual {v4, v1}, Lcom/rui/launcher/common/security/LicenseFactory;->generateLicense(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, license:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;

    const/4 v5, 0x0

    new-instance v6, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;

    const-string v7, "license"

    invoke-direct {v6, v7, v0}, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/rui/launcher/common/services/PostRequestHelper;->addRequestParams([Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;)V

    .line 97
    return-void
.end method

.method private initUrl(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "http://ruisystem.duapp.com"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, sb:Ljava/lang/StringBuffer;
    packed-switch p1, :pswitch_data_0

    .line 151
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->url:Ljava/lang/String;

    .line 152
    return-void

    .line 142
    :pswitch_0
    const-string v1, "/client/check_rui_version.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 145
    :pswitch_1
    const-string v1, "/client/recapp_update_new.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 148
    :pswitch_2
    const-string v1, "/classify/classify.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addRequestParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 175
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    new-instance v0, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;

    invoke-direct {v0, p1, p2}, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/rui/launcher/common/services/PostRequestHelper;->addRequestParamInner(Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;)V

    goto :goto_0
.end method

.method public varargs addRequestParams([Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 186
    if-nez p1, :cond_1

    .line 191
    :cond_0
    return-void

    .line 188
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 189
    .local v0, p:Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;
    invoke-direct {p0, v0}, Lcom/rui/launcher/common/services/PostRequestHelper;->addRequestParamInner(Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addRequestParamsByType(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    .line 194
    packed-switch p2, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 196
    :pswitch_0
    new-instance v0, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;

    const-string v1, "language"

    .line 197
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, v0}, Lcom/rui/launcher/common/services/PostRequestHelper;->addRequestParamInner(Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;)V

    goto :goto_0

    .line 200
    :pswitch_1
    new-instance v0, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;

    .line 201
    const-string v1, "latelyUpdateTime"

    .line 202
    invoke-static {p1}, Lcom/rui/launcher/common/utils/RUtilities;->getRecLastUpdateTime4Country(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0, v0}, Lcom/rui/launcher/common/services/PostRequestHelper;->addRequestParamInner(Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;)V

    .line 203
    new-instance v0, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;

    const-string v1, "position"

    .line 204
    invoke-static {}, Lcom/rui/launcher/common/DeviceType;->getRecPosition()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0, v0}, Lcom/rui/launcher/common/services/PostRequestHelper;->addRequestParamInner(Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;)V

    .line 205
    new-instance v0, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;

    const-string v1, "country"

    .line 206
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, v0}, Lcom/rui/launcher/common/services/PostRequestHelper;->addRequestParamInner(Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;)V

    .line 207
    new-instance v0, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;

    const-string v1, "language"

    .line 208
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-direct {p0, v0}, Lcom/rui/launcher/common/services/PostRequestHelper;->addRequestParamInner(Lcom/rui/launcher/common/services/PostRequestHelper$RequestParam;)V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public doPost()I
    .locals 12

    .prologue
    const/4 v7, 0x4

    const/4 v8, 0x5

    .line 227
    invoke-virtual {p0}, Lcom/rui/launcher/common/services/PostRequestHelper;->isRequestParamsValid()Z

    move-result v9

    if-nez v9, :cond_0

    .line 228
    new-instance v7, Ljava/lang/Exception;

    .line 229
    const-string v8, "Invalid request parameters for http post! It have not set the parameters."

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 228
    iput-object v7, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;

    .line 230
    const/4 v7, -0x1

    .line 290
    :goto_0
    return v7

    .line 233
    :cond_0
    iget-object v9, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->url:Ljava/lang/String;

    invoke-static {v9}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 234
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "Invalid url for request!"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;

    .line 235
    const/4 v7, 0x2

    goto :goto_0

    .line 238
    :cond_1
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 239
    .local v3, params:Lorg/apache/http/params/HttpParams;
    iget v9, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->connTimeOut:I

    invoke-static {v3, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 240
    iget v9, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->soTimeOut:I

    invoke-static {v3, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 242
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 243
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    iget-object v9, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->url:Ljava/lang/String;

    invoke-direct {v4, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 245
    .local v4, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v2, pairs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-direct {p0, v2}, Lcom/rui/launcher/common/services/PostRequestHelper;->initPairs(Ljava/util/ArrayList;)V

    .line 249
    :try_start_0
    new-instance v9, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v10, "UTF-8"

    invoke-direct {v9, v2, v10}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 251
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 252
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 253
    .local v6, statusCode:I
    const/16 v9, 0xc8

    if-eq v6, v9, :cond_2

    .line 254
    new-instance v9, Ljava/lang/Exception;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Server response failed! "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 283
    sget-object v7, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v8, Lcom/rui/launcher/common/services/PostRequestHelper;->TAG:Ljava/lang/String;

    const-string v9, "PostRequestHelper"

    iget-object v10, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;

    invoke-static {v7, v8, v9, v10}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    .line 255
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 257
    :cond_2
    :try_start_2
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->content:Ljava/lang/String;

    .line 258
    new-instance v9, Ljava/lang/Exception;

    const-string v10, "STATUS_RESPONSE_OK!"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 283
    sget-object v7, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v8, Lcom/rui/launcher/common/services/PostRequestHelper;->TAG:Ljava/lang/String;

    const-string v9, "PostRequestHelper"

    iget-object v10, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;

    invoke-static {v7, v8, v9, v10}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    :try_start_3
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 290
    :goto_2
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 260
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #statusCode:I
    :catch_0
    move-exception v1

    .line 261
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    :try_start_4
    iput-object v1, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 283
    sget-object v7, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v8, Lcom/rui/launcher/common/services/PostRequestHelper;->TAG:Ljava/lang/String;

    const-string v9, "PostRequestHelper"

    iget-object v10, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;

    invoke-static {v7, v8, v9, v10}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    :try_start_5
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_f

    .line 262
    :goto_3
    const/4 v7, 0x3

    goto/16 :goto_0

    .line 263
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 264
    .local v1, e:Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_6
    iput-object v1, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 283
    sget-object v8, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v9, Lcom/rui/launcher/common/services/PostRequestHelper;->TAG:Ljava/lang/String;

    const-string v10, "PostRequestHelper"

    iget-object v11, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;

    invoke-static {v8, v9, v10, v11}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    :try_start_7
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 286
    :catch_2
    move-exception v8

    goto/16 :goto_0

    .line 266
    .end local v1           #e:Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_3
    move-exception v1

    .line 267
    .local v1, e:Ljava/net/SocketTimeoutException;
    :try_start_8
    iput-object v1, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 283
    sget-object v8, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v9, Lcom/rui/launcher/common/services/PostRequestHelper;->TAG:Ljava/lang/String;

    const-string v10, "PostRequestHelper"

    iget-object v11, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;

    invoke-static {v8, v9, v10, v11}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    :try_start_9
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 286
    :catch_4
    move-exception v8

    goto/16 :goto_0

    .line 269
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    :catch_5
    move-exception v1

    .line 270
    .local v1, e:Lorg/apache/http/ParseException;
    :try_start_a
    iput-object v1, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 283
    sget-object v7, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v9, Lcom/rui/launcher/common/services/PostRequestHelper;->TAG:Ljava/lang/String;

    const-string v10, "PostRequestHelper"

    iget-object v11, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;

    invoke-static {v7, v9, v10, v11}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    :try_start_b
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    :goto_4
    move v7, v8

    .line 271
    goto/16 :goto_0

    .line 272
    .end local v1           #e:Lorg/apache/http/ParseException;
    :catch_6
    move-exception v1

    .line 273
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_c
    iput-object v1, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 283
    sget-object v7, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v9, Lcom/rui/launcher/common/services/PostRequestHelper;->TAG:Ljava/lang/String;

    const-string v10, "PostRequestHelper"

    iget-object v11, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;

    invoke-static {v7, v9, v10, v11}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    :try_start_d
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    :goto_5
    move v7, v8

    .line 274
    goto/16 :goto_0

    .line 275
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_7
    move-exception v1

    .line 276
    .local v1, e:Ljava/io/IOException;
    :try_start_e
    iput-object v1, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 283
    sget-object v7, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v9, Lcom/rui/launcher/common/services/PostRequestHelper;->TAG:Ljava/lang/String;

    const-string v10, "PostRequestHelper"

    iget-object v11, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;

    invoke-static {v7, v9, v10, v11}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    :try_start_f
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    :goto_6
    move v7, v8

    .line 277
    goto/16 :goto_0

    .line 278
    .end local v1           #e:Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 279
    .local v1, e:Ljava/lang/Exception;
    :try_start_10
    iput-object v1, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 283
    sget-object v7, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v8, Lcom/rui/launcher/common/services/PostRequestHelper;->TAG:Ljava/lang/String;

    const-string v9, "PostRequestHelper"

    iget-object v10, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;

    invoke-static {v7, v8, v9, v10}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    :try_start_11
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    .line 280
    :goto_7
    const/4 v7, 0x6

    goto/16 :goto_0

    .line 282
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 283
    sget-object v8, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v9, Lcom/rui/launcher/common/services/PostRequestHelper;->TAG:Ljava/lang/String;

    const-string v10, "PostRequestHelper"

    iget-object v11, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;

    invoke-static {v8, v9, v10, v11}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    :try_start_12
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    .line 289
    :goto_8
    throw v7

    .line 286
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #statusCode:I
    :catch_9
    move-exception v7

    goto/16 :goto_2

    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #statusCode:I
    :catch_a
    move-exception v8

    goto :goto_8

    .restart local v1       #e:Ljava/lang/Exception;
    :catch_b
    move-exception v7

    goto :goto_7

    .local v1, e:Ljava/io/IOException;
    :catch_c
    move-exception v7

    goto :goto_6

    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    :catch_d
    move-exception v7

    goto :goto_5

    .local v1, e:Lorg/apache/http/ParseException;
    :catch_e
    move-exception v7

    goto :goto_4

    .local v1, e:Ljava/io/UnsupportedEncodingException;
    :catch_f
    move-exception v7

    goto/16 :goto_3

    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #statusCode:I
    :catch_10
    move-exception v7

    goto/16 :goto_1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->ex:Ljava/lang/Exception;

    return-object v0
.end method

.method public isRequestParamsValid()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public setTimeOut(II)V
    .locals 0
    .parameter "connectionTimeOut"
    .parameter "soTimeOut"

    .prologue
    .line 164
    iput p1, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->connTimeOut:I

    .line 165
    iput p2, p0, Lcom/rui/launcher/common/services/PostRequestHelper;->soTimeOut:I

    .line 166
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/services/PostRequestHelper;->initUrl(I)V

    .line 136
    return-void
.end method
