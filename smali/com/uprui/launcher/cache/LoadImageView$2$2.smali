.class Lcom/uprui/launcher/cache/LoadImageView$2$2;
.super Ljava/lang/Object;
.source "LoadImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/launcher/cache/LoadImageView$2;->onSuccess(Lcom/uprui/executor/RuiHttpTask;Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uprui/launcher/cache/LoadImageView$2;

.field private final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/uprui/launcher/cache/LoadImageView$2;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/launcher/cache/LoadImageView$2$2;->this$1:Lcom/uprui/launcher/cache/LoadImageView$2;

    iput-object p2, p0, Lcom/uprui/launcher/cache/LoadImageView$2$2;->val$file:Ljava/io/File;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView$2$2;->this$1:Lcom/uprui/launcher/cache/LoadImageView$2;

    #getter for: Lcom/uprui/launcher/cache/LoadImageView$2;->this$0:Lcom/uprui/launcher/cache/LoadImageView;
    invoke-static {v0}, Lcom/uprui/launcher/cache/LoadImageView$2;->access$0(Lcom/uprui/launcher/cache/LoadImageView$2;)Lcom/uprui/launcher/cache/LoadImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/uprui/launcher/cache/LoadImageView$2$2;->val$file:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/uprui/launcher/cache/LoadImageView;->loadFile(Ljava/io/File;)V

    .line 129
    return-void
.end method
