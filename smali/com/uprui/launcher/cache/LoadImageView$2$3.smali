.class Lcom/uprui/launcher/cache/LoadImageView$2$3;
.super Ljava/lang/Object;
.source "LoadImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/launcher/cache/LoadImageView$2;->onFaile(Lcom/uprui/executor/RuiHttpTask;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uprui/launcher/cache/LoadImageView$2;


# direct methods
.method constructor <init>(Lcom/uprui/launcher/cache/LoadImageView$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/launcher/cache/LoadImageView$2$3;->this$1:Lcom/uprui/launcher/cache/LoadImageView$2;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/uprui/launcher/cache/LoadImageView$2$3;->this$1:Lcom/uprui/launcher/cache/LoadImageView$2;

    #getter for: Lcom/uprui/launcher/cache/LoadImageView$2;->this$0:Lcom/uprui/launcher/cache/LoadImageView;
    invoke-static {v0}, Lcom/uprui/launcher/cache/LoadImageView$2;->access$0(Lcom/uprui/launcher/cache/LoadImageView$2;)Lcom/uprui/launcher/cache/LoadImageView;

    move-result-object v0

    sget v1, Lcom/example/ruithreadpoolexecutor/R$drawable;->loadding_error:I

    invoke-virtual {v0, v1}, Lcom/uprui/launcher/cache/LoadImageView;->setImageResource(I)V

    .line 141
    return-void
.end method
