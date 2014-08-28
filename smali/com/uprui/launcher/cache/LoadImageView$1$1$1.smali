.class Lcom/uprui/launcher/cache/LoadImageView$1$1$1;
.super Ljava/lang/Object;
.source "LoadImageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/launcher/cache/LoadImageView$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/uprui/launcher/cache/LoadImageView$1$1;

.field private final synthetic val$icon:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/uprui/launcher/cache/LoadImageView$1$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/launcher/cache/LoadImageView$1$1$1;->this$2:Lcom/uprui/launcher/cache/LoadImageView$1$1;

    iput-object p2, p0, Lcom/uprui/launcher/cache/LoadImageView$1$1$1;->val$icon:Landroid/graphics/Bitmap;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 193
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 189
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView$1$1$1;->this$2:Lcom/uprui/launcher/cache/LoadImageView$1$1;

    #getter for: Lcom/uprui/launcher/cache/LoadImageView$1$1;->this$1:Lcom/uprui/launcher/cache/LoadImageView$1;
    invoke-static {v0}, Lcom/uprui/launcher/cache/LoadImageView$1$1;->access$0(Lcom/uprui/launcher/cache/LoadImageView$1$1;)Lcom/uprui/launcher/cache/LoadImageView$1;

    move-result-object v0

    #getter for: Lcom/uprui/launcher/cache/LoadImageView$1;->this$0:Lcom/uprui/launcher/cache/LoadImageView;
    invoke-static {v0}, Lcom/uprui/launcher/cache/LoadImageView$1;->access$0(Lcom/uprui/launcher/cache/LoadImageView$1;)Lcom/uprui/launcher/cache/LoadImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/uprui/launcher/cache/LoadImageView$1$1$1;->val$icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/uprui/launcher/cache/LoadImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 185
    return-void
.end method
