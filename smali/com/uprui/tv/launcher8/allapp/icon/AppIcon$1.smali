.class Lcom/uprui/tv/launcher8/allapp/icon/AppIcon$1;
.super Ljava/lang/Object;
.source "AppIcon.java"

# interfaces
.implements Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->setPressedIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon$1;->this$0:Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon$1;->this$0:Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;

    #getter for: Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->appView:Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;->access$0(Lcom/uprui/tv/launcher8/allapp/icon/AppIcon;)Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/uprui/tv/launcher8/allapp/icon/AppImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    return-void
.end method
