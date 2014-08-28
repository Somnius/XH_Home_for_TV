.class Lcom/uprui/tv/launcher8/clock/ClockWidget$1;
.super Ljava/lang/Object;
.source "ClockWidget.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/clock/ClockWidget;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/clock/ClockWidget;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/clock/ClockWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/clock/ClockWidget$1;->this$0:Lcom/uprui/tv/launcher8/clock/ClockWidget;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method
