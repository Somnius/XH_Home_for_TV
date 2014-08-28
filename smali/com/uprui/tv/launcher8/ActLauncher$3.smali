.class Lcom/uprui/tv/launcher8/ActLauncher$3;
.super Ljava/lang/Object;
.source "ActLauncher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/ActLauncher;->showRuiUpdateDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/ActLauncher;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/ActLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/ActLauncher$3;->this$0:Lcom/uprui/tv/launcher8/ActLauncher;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 380
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 381
    return-void
.end method
