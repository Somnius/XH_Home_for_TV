.class public final Lcom/rui/launcher/common/RConstants;
.super Ljava/lang/Object;
.source "RConstants.java"


# static fields
.field public static final CHECK_VER_REQUEST:Ljava/lang/String; = "/client/check_rui_version.html"

.field public static final CLASSIFY_REQUEST:Ljava/lang/String; = "/classify/classify.html"

.field public static final CLASSIFY_STATE_FAILED_OTHER:I = 0x5e5

.field public static final CLASSIFY_STATE_NO_CONTENT:I = 0x5e4

.field public static final CLASSIFY_STATE_NO_RESPONSE:I = 0x5e3

.field public static final CLASSIFY_STATE_START:I = 0x5e6

.field public static final CLASSIFY_STATE_SUCCESS:I = 0x5e1

.field public static final CLASSIFY_STATE_UNNECESSARY:I = 0x5e2

.field public static final CLASSIFY_STATE_ZERO:I = 0x5e7

.field public static final COLLECT_APPS_SERVICE:I = 0x3

.field public static final DOWNLOAD_DIR:Ljava/lang/String; = "/data/data/*/downloads"

.field public static final EXT_DOWNLOAD_DIR:Ljava/lang/String; = "/sdcards/rui_ics/downloads"

.field public static final KEY_COUNT:Ljava/lang/String; = "count"

.field public static final KEY_LANGUAGE:Ljava/lang/String; = "language"

.field public static final KEY_LICENSE:Ljava/lang/String; = "license"

.field public static final KEY_REC_COUNTRY:Ljava/lang/String; = "country"

.field public static final KEY_REC_LANGUAGE:Ljava/lang/String; = "language"

.field public static final KEY_REC_LAST_UPDATE_TIME:Ljava/lang/String; = "latelyUpdateTime"

.field public static final KEY_REC_NATION:Ljava/lang/String; = "nation"

.field public static final KEY_REC_POSITION:Ljava/lang/String; = "position"

.field public static final KEY_USER:Ljava/lang/String; = "userLevel"

.field public static final KEY_UUID:Ljava/lang/String; = "uuID"

.field public static final MSG_CLASSIFY:I = 0x45b

.field public static final MSG_CLASSIFY_FAILED:I = 0x5e2

.field public static final MSG_CLASSIFY_UNNECESSARY:I = 0x5e1

.field public static final MSG_DOWNLOADING:I = 0x458

.field public static final MSG_DOWNLOAD_DONE:I = 0x459

.field public static final MSG_DOWNLOAD_FAIL:I = 0x45a

.field public static final MSG_DOWNLOAD_START:I = 0x457

.field public static final MSG_INVALID_URL:I = 0x456

.field public static final MSG_NEW_VER:I = 0x519

.field public static final MSG_NO_NETWORK:I = 0x57c

.field public static final MSG_NO_UPDATE:I = 0x518

.field public static final MSG_PARSE_ERROR:I = 0x580

.field public static final MSG_READ_ERROR:I = 0x57f

.field public static final MSG_SER_ERROR:I = 0x57d

.field public static final MSG_UPDATE_DONE:I = 0x51a

.field public static final MSG_UPDATE_FAIL:I = 0x51c

.field public static final MSG_UPDATE_ING:I = 0x51b

.field public static final MSG_UPDATE_START:I = 0x517

.field public static final MSG_URL_ERROR:I = 0x57e

.field public static final REFRESH_SERVICE:I = 0x2

.field public static final REQUEST_CLASSIFY:I = 0x2

.field public static final REQUEST_UPDATE:I = 0x1

.field public static final REQUEST_UPGRADE:I = 0x0

.field public static final SEG_CATE:Ljava/lang/String; = "classify_index"

.field public static final SEG_CLS:Ljava/lang/String; = "className"

.field public static final SEG_DOWNLOAD:Ljava/lang/String; = "downloadURL"

.field public static final SEG_DOWNLOAD_OPTION:Ljava/lang/String; = "downloadURLTwo"

.field public static final SEG_ICON_URL:Ljava/lang/String; = "iconName"

.field public static final SEG_ID:Ljava/lang/String; = "id"

.field public static final SEG_LATEST_UPDATE_TIME:Ljava/lang/String; = "latelyUpdateTime"

.field public static final SEG_PKG:Ljava/lang/String; = "packageName"

.field public static final SEG_REC_TYPE:Ljava/lang/String; = "properties"

.field public static final SEG_RESPONSE:Ljava/lang/String; = "updateStrInfo"

.field public static final SEG_ROOT:Ljava/lang/String; = "message"

.field public static final SEG_ROOT_APPS:Ljava/lang/String; = "recAppsInfo"

.field public static final SEG_TITLE:Ljava/lang/String; = "title"

.field public static final SEG_UPDATE:Ljava/lang/String; = "hasNewVersion"

.field public static final SEG_VER_CODE:Ljava/lang/String; = "versionCode"

.field public static final SERVER_DNS:Ljava/lang/String; = "http://ruisystem.duapp.com"

.field public static final SERVER_REC_ICON:Ljava/lang/String; = "http://bcs.duapp.com/recicons/"

.field public static final TYPE_REC_UPDATE:I = 0x1

.field public static final TYPE_RUI_UPDATE:I = 0x0

.field public static final UPDATE_REQUEST:Ljava/lang/String; = "/client/recapp_update_new.html"

.field public static final UPDATE_SERVICE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
