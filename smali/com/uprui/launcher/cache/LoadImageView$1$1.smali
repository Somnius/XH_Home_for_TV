.class Lcom/uprui/launcher/cache/LoadImageView$1$1;
.super Ljava/lang/Object;
.source "LoadImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/launcher/cache/LoadImageView$1;->onSucess(Lcom/uprui/launcher/cache/LocalBitmapTask;Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uprui/launcher/cache/LoadImageView$1;

.field private final synthetic val$icon:Landroid/graphics/Bitmap;

.field private final synthetic val$inCache:Z


# direct methods
.method constructor <init>(Lcom/uprui/launcher/cache/LoadImageView$1;ZLandroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/launcher/cache/LoadImageView$1$1;->this$1:Lcom/uprui/launcher/cache/LoadImageView$1;

    iput-boolean p2, p0, Lcom/uprui/launcher/cache/LoadImageView$1$1;->val$inCache:Z

    iput-object p3, p0, Lcom/uprui/launcher/cache/LoadImageView$1$1;->val$icon:Landroid/graphics/Bitmap;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/uprui/launcher/cache/LoadImageView$1$1;)Lcom/uprui/launcher/cache/LoadImageView$1;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView$1$1;->this$1:Lcom/uprui/launcher/cache/LoadImageView$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 177
    iget-boolean v1, p0, Lcom/uprui/launcher/cache/LoadImageView$1$1;->val$inCache:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/uprui/launcher/cache/LoadImageView$1$1;->this$1:Lcom/uprui/launcher/cache/LoadImageView$1;

    #getter for: Lcom/uprui/launcher/cache/LoadImageView$1;->this$0:Lcom/uprui/launcher/cache/LoadImageView;
    invoke-static {v1}, Lcom/uprui/launcher/cache/LoadImageView$1;->access$0(Lcom/uprui/launcher/cache/LoadImageView$1;)Lcom/uprui/launcher/cache/LoadImageView;

    move-result-object v1

    #getter for: Lcom/uprui/launcher/cache/LoadImageView;->attachToWindow:Z
    invoke-static {v1}, Lcom/uprui/launcher/cache/LoadImageView;->access$0(Lcom/uprui/launcher/cache/LoadImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/uprui/launcher/cache/LoadImageView$1$1;->this$1:Lcom/uprui/launcher/cache/LoadImageView$1;

    #getter for: Lcom/uprui/launcher/cache/LoadImageView$1;->this$0:Lcom/uprui/launcher/cache/LoadImageView;
    invoke-static {v1}, Lcom/uprui/launcher/cache/LoadImageView$1;->access$0(Lcom/uprui/launcher/cache/LoadImageView$1;)Lcom/uprui/launcher/cache/LoadImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uprui/launcher/cache/LoadImageView;->clearAnimation()V

    .line 179
    iget-object v1, p0, Lcom/uprui/launcher/cache/LoadImageView$1$1;->this$1:Lcom/uprui/launcher/cache/LoadImageView$1;

    #getter for: Lcom/uprui/launcher/cache/LoadImageView$1;->this$0:Lcom/uprui/launcher/cache/LoadImageView;
    invoke-static {v1}, Lcom/uprui/launcher/cache/LoadImageView$1;->access$0(Lcom/uprui/launcher/cache/LoadImageView$1;)Lcom/uprui/launcher/cache/LoadImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uprui/launcher/cache/LoadImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/example/ruithreadpoolexecutor/R$anim;->image_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 180
    .local v0, anim:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/uprui/launcher/cache/LoadImageView$1$1;->this$1:Lcom/uprui/launcher/cache/LoadImageView$1;

    #getter for: Lcom/uprui/launcher/cache/LoadImageView$1;->this$0:Lcom/uprui/launcher/cache/LoadImageView;
    invoke-static {v1}, Lcom/uprui/launcher/cache/LoadImageView$1;->access$0(Lcom/uprui/launcher/cache/LoadImageView$1;)Lcom/uprui/launcher/cache/LoadImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uprui/launcher/cache/LoadImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 181
    new-instance v1, Lcom/uprui/launcher/cache/LoadImageView$1$1$1;

    iget-object v2, p0, Lcom/uprui/launcher/cache/LoadImageView$1$1;->val$icon:Landroid/graphics/Bitmap;

    invoke-direct {v1, p0, v2}, Lcom/uprui/launcher/cache/LoadImageView$1$1$1;-><init>(Lcom/uprui/launcher/cache/LoadImageView$1$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 198
    .end local v0           #anim:Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/uprui/launcher/cache/LoadImageView$1$1;->this$1:Lcom/uprui/launcher/cache/LoadImageView$1;

    #getter for: Lcom/uprui/launcher/cache/LoadImageView$1;->this$0:Lcom/uprui/launcher/cache/LoadImageView;
    invoke-static {v1}, Lcom/uprui/launcher/cache/LoadImageView$1;->access$0(Lcom/uprui/launcher/cache/LoadImageView$1;)Lcom/uprui/launcher/cache/LoadImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/uprui/launcher/cache/LoadImageView$1$1;->val$icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/uprui/launcher/cache/LoadImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
