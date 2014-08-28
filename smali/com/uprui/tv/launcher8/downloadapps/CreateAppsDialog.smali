.class public abstract Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog;
.super Ljava/lang/Object;
.source "CreateAppsDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract setMessage()Ljava/lang/String;
.end method

.method public abstract setTitle()Ljava/lang/String;
.end method

.method public showbulid(Landroid/content/Context;Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V
    .locals 5
    .parameter "context"
    .parameter "info"

    .prologue
    .line 32
    new-instance v0, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, adBuilder:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog;->setTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    .line 34
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog;->setMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    .line 36
    const v2, 0x7f070067

    new-instance v3, Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog$1;-><init>(Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog;Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    move-result-object v2

    .line 44
    const v3, 0x7f070068

    new-instance v4, Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog$2;

    invoke-direct {v4, p0}, Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog$2;-><init>(Lcom/uprui/tv/launcher8/downloadapps/CreateAppsDialog;)V

    invoke-virtual {v2, v3, v4}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;

    .line 51
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 52
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 53
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x258

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 54
    return-void
.end method

.method public startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 4
    .parameter "intent"
    .parameter "tag"
    .parameter "context"

    .prologue
    const v3, 0x7f07005f

    const/4 v2, 0x0

    .line 57
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    :try_start_0
    invoke-virtual {p3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p3, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 62
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p3, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
