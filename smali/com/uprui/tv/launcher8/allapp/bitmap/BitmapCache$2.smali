.class Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$2;
.super Ljava/lang/Object;
.source "BitmapCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->handlerBackBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$calls:Ljava/util/ArrayList;

.field private final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$2;->this$0:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;

    iput-object p2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$2;->val$calls:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$2;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$2;->val$bitmap:Landroid/graphics/Bitmap;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 147
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$2;->val$calls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    invoke-static {}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache;->access$3()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$2;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void

    .line 147
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCallback;

    .line 148
    .local v0, call:Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCallback;
    if-eqz v0, :cond_0

    .line 149
    iget-object v2, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$2;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCache$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v2, v3}, Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapCallback;->callBack(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
