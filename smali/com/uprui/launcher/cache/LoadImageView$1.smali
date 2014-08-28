.class Lcom/uprui/launcher/cache/LoadImageView$1;
.super Ljava/lang/Object;
.source "LoadImageView.java"

# interfaces
.implements Lcom/uprui/launcher/cache/LocalBitmapTask$LocalBitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/launcher/cache/LoadImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/launcher/cache/LoadImageView;


# direct methods
.method constructor <init>(Lcom/uprui/launcher/cache/LoadImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/launcher/cache/LoadImageView$1;->this$0:Lcom/uprui/launcher/cache/LoadImageView;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/uprui/launcher/cache/LoadImageView$1;)Lcom/uprui/launcher/cache/LoadImageView;
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView$1;->this$0:Lcom/uprui/launcher/cache/LoadImageView;

    return-object v0
.end method


# virtual methods
.method public onCancel(Lcom/uprui/launcher/cache/LocalBitmapTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 224
    return-void
.end method

.method public onError(Lcom/uprui/launcher/cache/LocalBitmapTask;Ljava/lang/String;)V
    .locals 0
    .parameter "task"
    .parameter "errorDescription"

    .prologue
    .line 218
    return-void
.end method

.method public onFinish(Lcom/uprui/launcher/cache/LocalBitmapTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 212
    return-void
.end method

.method public onProgress(Lcom/uprui/launcher/cache/LocalBitmapTask;I)V
    .locals 0
    .parameter "task"
    .parameter "progress"

    .prologue
    .line 230
    return-void
.end method

.method public onStart(Lcom/uprui/launcher/cache/LocalBitmapTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 207
    return-void
.end method

.method public onSucess(Lcom/uprui/launcher/cache/LocalBitmapTask;Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter "task"
    .parameter "icon"
    .parameter "inCache"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView$1;->this$0:Lcom/uprui/launcher/cache/LoadImageView;

    new-instance v1, Lcom/uprui/launcher/cache/LoadImageView$1$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/uprui/launcher/cache/LoadImageView$1$1;-><init>(Lcom/uprui/launcher/cache/LoadImageView$1;ZLandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/uprui/launcher/cache/LoadImageView;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method
