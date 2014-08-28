.class public Lcom/uprui/tv/launcher8/DialogPopItemView;
.super Landroid/widget/TextView;
.source "DialogPopItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/DialogPopItemView;->init()V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/DialogPopItemView;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/DialogPopItemView;->init()V

    .line 24
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/DialogPopItemView;->setClickable(Z)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/DialogPopItemView;->setFocusable(Z)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 35
    if-eqz p1, :cond_0

    .line 36
    const v0, -0xff5405

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/DialogPopItemView;->setBackgroundColor(I)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/DialogPopItemView;->setBackgroundColor(I)V

    goto :goto_0
.end method
