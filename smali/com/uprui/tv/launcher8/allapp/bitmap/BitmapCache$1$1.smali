.class Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1$1;
.super Ljava/lang/Object;
.source "BitmapCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$task:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1$1;->this$1:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;

    iput-object p2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1$1;->val$task:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;

    iput-object p3, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1$1;->val$key:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1$1;->val$task:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;

    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1$1;->this$1:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;

    #getter for: Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;->this$0:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;
    invoke-static {v2}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;->access$0(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;)Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    move-result-object v2

    #getter for: Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->access$1(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;->obtainBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .local v0, resBitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1$1;->this$1:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;

    #getter for: Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;->this$0:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;
    invoke-static {v1}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;->access$0(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;)Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    move-result-object v1

    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1$1;->val$key:Ljava/lang/String;

    #calls: Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->handlerBackBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v1, v2, v0}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->access$2(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 113
    return-void
.end method
