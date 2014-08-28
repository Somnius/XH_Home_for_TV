.class Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;
.super Ljava/lang/Object;
.source "BitmapCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->loadBitmap(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCallback;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$task:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;->this$0:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    iput-object p2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;->val$task:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;

    iput-object p3, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;->val$key:Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;)Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;->this$0:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;->this$0:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    #getter for: Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->threadClient:Lcom/uprui/executor/RuiHttpClient;
    invoke-static {v0}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->access$0(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;)Lcom/uprui/executor/RuiHttpClient;

    move-result-object v0

    new-instance v1, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1$1;

    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;->val$task:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;

    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;->val$key:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1$1;-><init>(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$1;Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/uprui/executor/RuiHttpClient;->execute(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method
