.class Lcom/rui/launcher/common/NotiManager$1$1;
.super Ljava/lang/Object;
.source "NotiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rui/launcher/common/NotiManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rui/launcher/common/NotiManager$1;

.field private final synthetic val$act:Landroid/content/Context;

.field private final synthetic val$gravity:I

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rui/launcher/common/NotiManager$1;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rui/launcher/common/NotiManager$1$1;->this$1:Lcom/rui/launcher/common/NotiManager$1;

    iput-object p2, p0, Lcom/rui/launcher/common/NotiManager$1$1;->val$act:Landroid/content/Context;

    iput-object p3, p0, Lcom/rui/launcher/common/NotiManager$1$1;->val$msg:Ljava/lang/String;

    iput p4, p0, Lcom/rui/launcher/common/NotiManager$1$1;->val$gravity:I

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 480
    invoke-static {}, Lcom/rui/launcher/common/NotiManager;->access$1()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 481
    :try_start_0
    iget-object v1, p0, Lcom/rui/launcher/common/NotiManager$1$1;->val$act:Landroid/content/Context;

    iget-object v3, p0, Lcom/rui/launcher/common/NotiManager$1$1;->val$msg:Ljava/lang/String;

    .line 482
    const/4 v4, 0x0

    .line 481
    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 483
    .local v0, sToast:Landroid/widget/Toast;
    iget v1, p0, Lcom/rui/launcher/common/NotiManager$1$1;->val$gravity:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 484
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 480
    monitor-exit v2

    .line 486
    return-void

    .line 480
    .end local v0           #sToast:Landroid/widget/Toast;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
