.class Lcom/uprui/tv/launcher8/clock/ClockWidget$2;
.super Ljava/lang/Object;
.source "ClockWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/clock/ClockWidget;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/clock/ClockWidget;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/clock/ClockWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget$2;->this$0:Lcom/uprui/tv/launcher8/clock/ClockWidget;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 126
    iget-object v3, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget$2;->this$0:Lcom/uprui/tv/launcher8/clock/ClockWidget;

    invoke-virtual {v3}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->isFocused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 129
    invoke-virtual {p1, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 133
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.deskclock"

    const-string v4, "com.android.deskclock.DeskClock"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 138
    iget-object v3, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget$2;->this$0:Lcom/uprui/tv/launcher8/clock/ClockWidget;

    invoke-virtual {v3}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget$2;->this$0:Lcom/uprui/tv/launcher8/clock/ClockWidget;

    invoke-virtual {v3}, Lcom/uprui/tv/launcher8/clock/ClockWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07005f

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 141
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
