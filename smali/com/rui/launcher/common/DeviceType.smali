.class public Lcom/rui/launcher/common/DeviceType;
.super Ljava/lang/Object;
.source "DeviceType.java"


# static fields
.field private static final AUTHORITY_PAD:Ljava/lang/String; = "com.uprui.mid.launcher.settings"

.field private static final AUTHORITY_PAD_WIN8:Ljava/lang/String; = "com.uprui.mid.launcher8.settings"

.field private static final AUTHORITY_PHONE:Ljava/lang/String; = "com.uprui.phone.launcher.settings"

.field private static final AUTHORITY_PHONE_WIN8:Ljava/lang/String; = "com.uprui.phone.launcher8.settings"

.field private static final AUTHORITY_TV:Ljava/lang/String; = "com.uprui.tv.launcher.settings"

.field private static final AUTHORITY_TV_WIN8:Ljava/lang/String; = "com.uprui.tv.launcher8.settings"

.field public static final DEVICE_ALL:I = 0x0

.field public static final DEVICE_PAD:I = 0x1

.field public static final DEVICE_PAD_WIN8:I = 0x5

.field public static final DEVICE_PHONE:I = 0x2

.field public static final DEVICE_PHONE_WIN8:I = 0x4

.field public static final DEVICE_TV:I = 0x3

.field public static final DEVICE_TV_WIN8:I = 0x6

.field private static authority:Ljava/lang/String;

.field static myDeviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "com.uprui.mid.launcher.settings"

    sput-object v0, Lcom/rui/launcher/common/DeviceType;->authority:Ljava/lang/String;

    .line 23
    const/4 v0, 0x2

    sput v0, Lcom/rui/launcher/common/DeviceType;->myDeviceType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/rui/launcher/common/DeviceType;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public static getMyDeviceType()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/rui/launcher/common/DeviceType;->myDeviceType:I

    return v0
.end method

.method public static getRecPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/rui/launcher/common/DeviceType;->getMyDeviceType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    const-string v0, "7"

    :goto_0
    return-object v0

    .line 76
    :pswitch_0
    const-string v0, "2"

    goto :goto_0

    .line 78
    :pswitch_1
    const-string v0, "2"

    goto :goto_0

    .line 80
    :pswitch_2
    const-string v0, "7"

    goto :goto_0

    .line 82
    :pswitch_3
    const-string v0, "7"

    goto :goto_0

    .line 84
    :pswitch_4
    const-string v0, "8"

    goto :goto_0

    .line 86
    :pswitch_5
    const-string v0, "8"

    goto :goto_0

    .line 74
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

.method private static initAuthority()V
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/rui/launcher/common/DeviceType;->myDeviceType:I

    packed-switch v0, :pswitch_data_0

    .line 59
    const-string v0, "com.uprui.mid.launcher.settings"

    sput-object v0, Lcom/rui/launcher/common/DeviceType;->authority:Ljava/lang/String;

    .line 62
    :goto_0
    return-void

    .line 41
    :pswitch_0
    const-string v0, "com.uprui.mid.launcher.settings"

    sput-object v0, Lcom/rui/launcher/common/DeviceType;->authority:Ljava/lang/String;

    goto :goto_0

    .line 44
    :pswitch_1
    const-string v0, "com.uprui.phone.launcher.settings"

    sput-object v0, Lcom/rui/launcher/common/DeviceType;->authority:Ljava/lang/String;

    goto :goto_0

    .line 47
    :pswitch_2
    const-string v0, "com.uprui.tv.launcher.settings"

    sput-object v0, Lcom/rui/launcher/common/DeviceType;->authority:Ljava/lang/String;

    goto :goto_0

    .line 50
    :pswitch_3
    const-string v0, "com.uprui.mid.launcher8.settings"

    sput-object v0, Lcom/rui/launcher/common/DeviceType;->authority:Ljava/lang/String;

    goto :goto_0

    .line 53
    :pswitch_4
    const-string v0, "com.uprui.phone.launcher8.settings"

    sput-object v0, Lcom/rui/launcher/common/DeviceType;->authority:Ljava/lang/String;

    goto :goto_0

    .line 56
    :pswitch_5
    const-string v0, "com.uprui.tv.launcher8.settings"

    sput-object v0, Lcom/rui/launcher/common/DeviceType;->authority:Ljava/lang/String;

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static setMyDeviceType(I)V
    .locals 0
    .parameter "deviceType"

    .prologue
    .line 30
    sput p0, Lcom/rui/launcher/common/DeviceType;->myDeviceType:I

    .line 31
    invoke-static {}, Lcom/rui/launcher/common/DeviceType;->initAuthority()V

    .line 32
    return-void
.end method
