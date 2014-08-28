.class public final Lcom/rui/launcher/common/RuiIntent;
.super Ljava/lang/Object;
.source "RuiIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rui/launcher/common/RuiIntent$ActionsForMid;,
        Lcom/rui/launcher/common/RuiIntent$ActionsForMidWin8;,
        Lcom/rui/launcher/common/RuiIntent$ActionsForPhone;,
        Lcom/rui/launcher/common/RuiIntent$ActionsForPhoneWin8;,
        Lcom/rui/launcher/common/RuiIntent$ActionsForTV;,
        Lcom/rui/launcher/common/RuiIntent$ActionsForTVWin8;
    }
.end annotation


# static fields
.field public static final EXTRA_AUTO_MODE:Ljava/lang/String; = "autoMode"

.field public static final EXTRA_CLASSIFY_DATA:Ljava/lang/String; = "classifiedData"

.field public static final EXTRA_CLASSIFY_FIRST:Ljava/lang/String; = "isClassify_first"

.field public static final EXTRA_CLASSIFY_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_DOWNLOAD_INFO:Ljava/lang/String; = "downloadInfo"

.field public static final EXTRA_DOWNLOAD_RESULT:Ljava/lang/String; = "savedPath"

.field public static final EXTRA_DOWNLOAD_STATE:Ljava/lang/String; = "downloadState"

.field public static final EXTRA_NAVIGATION_CHANGE:Ljava/lang/String; = "navChanges"

.field public static final EXTRA_NAVIGATION_VISIBLITY:Ljava/lang/String; = "visiblity"

.field public static final EXTRA_NOTI_ID:Ljava/lang/String; = "notiId"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "pkgName"

.field public static final EXTRA_REPLACE_DOWNLOAD:Ljava/lang/String; = "replace"

.field public static final EXTRA_SERVER_RESPONSE:Ljava/lang/String; = "response"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "appName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAction4Classify()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    sget v0, Lcom/rui/launcher/common/DeviceType;->myDeviceType:I

    packed-switch v0, :pswitch_data_0

    .line 328
    const-string v0, "com.uprui.mid.launcher.action.CLASSIFY_REQUEST"

    :goto_0
    return-object v0

    .line 320
    :pswitch_0
    const-string v0, "com.uprui.mid.launcher.action.CLASSIFY_REQUEST"

    goto :goto_0

    .line 323
    :pswitch_1
    const-string v0, "com.uprui.phone.launcher.action.CLASSIFY_REQUEST"

    goto :goto_0

    .line 326
    :pswitch_2
    const-string v0, "com.uprui.tv.launcher.action.CLASSIFY_REQUEST"

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getAction4ClassifyDone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    sget v0, Lcom/rui/launcher/common/DeviceType;->myDeviceType:I

    packed-switch v0, :pswitch_data_0

    .line 307
    const-string v0, "com.uprui.mid.launcher.action.CLASSIFY_DONE"

    :goto_0
    return-object v0

    .line 299
    :pswitch_0
    const-string v0, "com.uprui.mid.launcher.action.CLASSIFY_DONE"

    goto :goto_0

    .line 302
    :pswitch_1
    const-string v0, "com.uprui.phone.launcher.action.CLASSIFY_DONE"

    goto :goto_0

    .line 305
    :pswitch_2
    const-string v0, "com.uprui.tv.launcher.action.CLASSIFY_DONE"

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getAction4ClassifyFail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    sget v0, Lcom/rui/launcher/common/DeviceType;->myDeviceType:I

    packed-switch v0, :pswitch_data_0

    .line 265
    const-string v0, "com.uprui.mid.launcher.action.CLASSIFY_FAIL"

    :goto_0
    return-object v0

    .line 257
    :pswitch_0
    const-string v0, "com.uprui.mid.launcher.action.CLASSIFY_FAIL"

    goto :goto_0

    .line 260
    :pswitch_1
    const-string v0, "com.uprui.phone.launcher.action.CLASSIFY_FAIL"

    goto :goto_0

    .line 263
    :pswitch_2
    const-string v0, "com.uprui.tv.launcher.action.CLASSIFY_FAIL"

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getAction4ClassifyStart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    sget v0, Lcom/rui/launcher/common/DeviceType;->myDeviceType:I

    packed-switch v0, :pswitch_data_0

    .line 286
    const-string v0, "com.uprui.mid.launcher.action.CLASSIFY_START"

    :goto_0
    return-object v0

    .line 278
    :pswitch_0
    const-string v0, "com.uprui.mid.launcher.action.CLASSIFY_START"

    goto :goto_0

    .line 281
    :pswitch_1
    const-string v0, "com.uprui.phone.launcher.action.CLASSIFY_START"

    goto :goto_0

    .line 284
    :pswitch_2
    const-string v0, "com.uprui.tv.launcher.action.CLASSIFY_START"

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getAction4Download()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    sget v0, Lcom/rui/launcher/common/DeviceType;->myDeviceType:I

    packed-switch v0, :pswitch_data_0

    .line 244
    const-string v0, "com.uprui.mid.launcher.action.DOWNLOAD"

    :goto_0
    return-object v0

    .line 236
    :pswitch_0
    const-string v0, "com.uprui.mid.launcher.action.DOWNLOAD"

    goto :goto_0

    .line 239
    :pswitch_1
    const-string v0, "com.uprui.phone.launcher.action.DOWNLOAD"

    goto :goto_0

    .line 242
    :pswitch_2
    const-string v0, "com.uprui.tv.launcher.action.DOWNLOAD"

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getAction4DownloadCancel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    sget v0, Lcom/rui/launcher/common/DeviceType;->myDeviceType:I

    packed-switch v0, :pswitch_data_0

    .line 223
    const-string v0, "com.uprui.mid.launcher.action.DOWNLOAD_CANCEL"

    :goto_0
    return-object v0

    .line 215
    :pswitch_0
    const-string v0, "com.uprui.mid.launcher.action.DOWNLOAD_CANCEL"

    goto :goto_0

    .line 218
    :pswitch_1
    const-string v0, "com.uprui.phone.launcher.action.DOWNLOAD_CANCEL"

    goto :goto_0

    .line 221
    :pswitch_2
    const-string v0, "com.uprui.tv.launcher.action.DOWNLOAD_CANCEL"

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getAction4DownloadStateChange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    sget v0, Lcom/rui/launcher/common/DeviceType;->myDeviceType:I

    packed-switch v0, :pswitch_data_0

    .line 202
    const-string v0, "com.uprui.mid.launcher.action.DOWNLOAD_STATE_CHANGE"

    :goto_0
    return-object v0

    .line 194
    :pswitch_0
    const-string v0, "com.uprui.mid.launcher.action.DOWNLOAD_STATE_CHANGE"

    goto :goto_0

    .line 197
    :pswitch_1
    const-string v0, "com.uprui.phone.launcher.action.DOWNLOAD_STATE_CHANGE"

    goto :goto_0

    .line 200
    :pswitch_2
    const-string v0, "com.uprui.tv.launcher.action.DOWNLOAD_STATE_CHANGE"

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getAction4Insatll()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    sget v0, Lcom/rui/launcher/common/DeviceType;->myDeviceType:I

    packed-switch v0, :pswitch_data_0

    .line 181
    const-string v0, "com.uprui.mid.launcher.action.INSTALL"

    :goto_0
    return-object v0

    .line 173
    :pswitch_0
    const-string v0, "com.uprui.mid.launcher.action.INSTALL"

    goto :goto_0

    .line 176
    :pswitch_1
    const-string v0, "com.uprui.phone.launcher.action.INSTALL"

    goto :goto_0

    .line 179
    :pswitch_2
    const-string v0, "com.uprui.tv.launcher.action.INSTALL"

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getAction4RUIUpdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    sget v0, Lcom/rui/launcher/common/DeviceType;->myDeviceType:I

    packed-switch v0, :pswitch_data_0

    .line 352
    const-string v0, "com.uprui.mid.launcher.action.RUI_UPDATE_REQUEST"

    :goto_0
    return-object v0

    .line 340
    :pswitch_0
    const-string v0, "com.uprui.mid.launcher.action.RUI_UPDATE_REQUEST"

    goto :goto_0

    .line 342
    :pswitch_1
    const-string v0, "com.uprui.mid.launcher8.action.RUI_UPDATE_REQUEST"

    goto :goto_0

    .line 344
    :pswitch_2
    const-string v0, "com.uprui.phone.launcher.action.RUI_UPDATE_REQUEST"

    goto :goto_0

    .line 346
    :pswitch_3
    const-string v0, "com.uprui.mid.launcher8.action.RUI_UPDATE_REQUEST"

    goto :goto_0

    .line 348
    :pswitch_4
    const-string v0, "com.uprui.tv.launcher.action.RUI_UPDATE_REQUEST"

    goto :goto_0

    .line 350
    :pswitch_5
    const-string v0, "com.uprui.mid.launcher8.action.RUI_UPDATE_REQUEST"

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public static getAction4RecDone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    sget v0, Lcom/rui/launcher/common/DeviceType;->myDeviceType:I

    packed-switch v0, :pswitch_data_0

    .line 427
    const-string v0, "com.uprui.mid.launcher.action.RECOMMEND_UPDATE_DONE"

    :goto_0
    return-object v0

    .line 419
    :pswitch_0
    const-string v0, "com.uprui.mid.launcher.action.RECOMMEND_UPDATE_DONE"

    goto :goto_0

    .line 422
    :pswitch_1
    const-string v0, "com.uprui.phone.launcher.action.RECOMMEND_UPDATE_DONE"

    goto :goto_0

    .line 425
    :pswitch_2
    const-string v0, "com.uprui.tv.launcher.action.RECOMMEND_UPDATE_DONE"

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getAction4SetNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    sget v0, Lcom/rui/launcher/common/DeviceType;->myDeviceType:I

    packed-switch v0, :pswitch_data_0

    .line 160
    const-string v0, "com.uprui.mid.launcher.action.SET_NETWORK"

    :goto_0
    return-object v0

    .line 152
    :pswitch_0
    const-string v0, "com.uprui.mid.launcher.action.SET_NETWORK"

    goto :goto_0

    .line 155
    :pswitch_1
    const-string v0, "com.uprui.phone.launcher.action.SET_NETWORK"

    goto :goto_0

    .line 158
    :pswitch_2
    const-string v0, "com.uprui.tv.launcher.action.SET_NETWORK"

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
