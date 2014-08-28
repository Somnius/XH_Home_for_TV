.class public Lcom/rui/launcher/common/RuiIntent$ActionsForPhone;
.super Ljava/lang/Object;
.source "RuiIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rui/launcher/common/RuiIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionsForPhone"
.end annotation


# static fields
.field public static final ACTION_APP_UPGRADE_REQUEST:Ljava/lang/String; = "com.uprui.phone.launcher.action.APP_UPGRADE_REQUEST"

.field public static final ACTION_CLASSIFY_DONE:Ljava/lang/String; = "com.uprui.phone.launcher.action.CLASSIFY_DONE"

.field public static final ACTION_CLASSIFY_DONE_GUIDE:Ljava/lang/String; = "com.uprui.phone.launcher.action.CLASSIFY_DONE_GUIDE"

.field public static final ACTION_CLASSIFY_FAIL:Ljava/lang/String; = "com.uprui.phone.launcher.action.CLASSIFY_FAIL"

.field public static final ACTION_CLASSIFY_REQUEST:Ljava/lang/String; = "com.uprui.phone.launcher.action.CLASSIFY_REQUEST"

.field public static final ACTION_CLASSIFY_START:Ljava/lang/String; = "com.uprui.phone.launcher.action.CLASSIFY_START"

.field public static final ACTION_DOWNLOAD:Ljava/lang/String; = "com.uprui.phone.launcher.action.DOWNLOAD"

.field public static final ACTION_DOWNLOAD_CANCEL:Ljava/lang/String; = "com.uprui.phone.launcher.action.DOWNLOAD_CANCEL"

.field public static final ACTION_DOWNLOAD_RUI:Ljava/lang/String; = "com.uprui.phone.launcher.action.DOWNLOAD_RUI"

.field public static final ACTION_DOWNLOAD_STATE_CHANGE:Ljava/lang/String; = "com.uprui.phone.launcher.action.DOWNLOAD_STATE_CHANGE"

.field public static final ACTION_INSTALL:Ljava/lang/String; = "com.uprui.phone.launcher.action.INSTALL"

.field public static final ACTION_NAVIGATION_CHANGE:Ljava/lang/String; = "com.uprui.phone.launcher.action.NAVIGATION_CHANGE"

.field public static final ACTION_RECOMMEND_UPDATE_DONE:Ljava/lang/String; = "com.uprui.phone.launcher.action.RECOMMEND_UPDATE_DONE"

.field public static final ACTION_RUI_COLLECT_APPS:Ljava/lang/String; = "com.uprui.phone.launcher.action.COLLECT_APPS"

.field public static final ACTION_RUI_UPDATE_REQUEST:Ljava/lang/String; = "com.uprui.phone.launcher.action.RUI_UPDATE_REQUEST"

.field public static final ACTION_SET_NETWORK:Ljava/lang/String; = "com.uprui.phone.launcher.action.SET_NETWORK"

.field public static final ACTION_SHOW_UPDATE:Ljava/lang/String; = "com.uprui.phone.launcher.action.SHOW_UPDATE"


# instance fields
.field final synthetic this$0:Lcom/rui/launcher/common/RuiIntent;


# direct methods
.method public constructor <init>(Lcom/rui/launcher/common/RuiIntent;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/rui/launcher/common/RuiIntent$ActionsForPhone;->this$0:Lcom/rui/launcher/common/RuiIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
