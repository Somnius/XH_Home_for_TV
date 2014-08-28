.class Lcom/rui/launcher/common/NotiManager$1;
.super Ljava/lang/Object;
.source "NotiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rui/launcher/common/NotiManager;->showMessage(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$act:Landroid/content/Context;

.field private final synthetic val$gravity:I

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rui/launcher/common/NotiManager$1;->val$act:Landroid/content/Context;

    iput-object p2, p0, Lcom/rui/launcher/common/NotiManager$1;->val$msg:Ljava/lang/String;

    iput p3, p0, Lcom/rui/launcher/common/NotiManager$1;->val$gravity:I

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 477
    invoke-static {}, Lcom/rui/launcher/common/NotiManager;->access$0()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/rui/launcher/common/NotiManager$1$1;

    iget-object v2, p0, Lcom/rui/launcher/common/NotiManager$1;->val$act:Landroid/content/Context;

    iget-object v3, p0, Lcom/rui/launcher/common/NotiManager$1;->val$msg:Ljava/lang/String;

    iget v4, p0, Lcom/rui/launcher/common/NotiManager$1;->val$gravity:I

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/rui/launcher/common/NotiManager$1$1;-><init>(Lcom/rui/launcher/common/NotiManager$1;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 488
    return-void
.end method
