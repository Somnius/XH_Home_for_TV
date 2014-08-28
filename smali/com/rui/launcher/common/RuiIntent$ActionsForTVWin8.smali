.class public Lcom/rui/launcher/common/RuiIntent$ActionsForTVWin8;
.super Ljava/lang/Object;
.source "RuiIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rui/launcher/common/RuiIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionsForTVWin8"
.end annotation


# static fields
.field public static final ACTION_DOWNLOAD_RUI:Ljava/lang/String; = "com.uprui.mid.launcher8.action.DOWNLOAD_RUI"

.field public static final ACTION_RUI_COLLECT_APPS:Ljava/lang/String; = "com.uprui.mid.launcher8.action.COLLECT_APPS"

.field public static final ACTION_RUI_UPDATE_REQUEST:Ljava/lang/String; = "com.uprui.mid.launcher8.action.RUI_UPDATE_REQUEST"


# instance fields
.field final synthetic this$0:Lcom/rui/launcher/common/RuiIntent;


# direct methods
.method public constructor <init>(Lcom/rui/launcher/common/RuiIntent;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/rui/launcher/common/RuiIntent$ActionsForTVWin8;->this$0:Lcom/rui/launcher/common/RuiIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
