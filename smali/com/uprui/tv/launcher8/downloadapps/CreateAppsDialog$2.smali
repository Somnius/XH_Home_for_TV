.class Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog$2;
.super Ljava/lang/Object;
.source "CreateAppsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog;->showbulid(Landroid/content/Context;Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog$2;->this$0:Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 48
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 49
    return-void
.end method
