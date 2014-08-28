.class public Lcom/example/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cancel:Landroid/widget/Button;

.field private request:Landroid/widget/Button;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 43
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lcom/example/ruithreadpoolexecutor/R$layout;->main:I

    invoke-virtual {p0, v0}, Lcom/example/TestActivity;->setContentView(I)V

    .line 32
    sget v0, Lcom/example/ruithreadpoolexecutor/R$id;->test:I

    invoke-virtual {p0, v0}, Lcom/example/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/TestActivity;->tv:Landroid/widget/TextView;

    .line 33
    sget v0, Lcom/example/ruithreadpoolexecutor/R$id;->request:I

    invoke-virtual {p0, v0}, Lcom/example/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/TestActivity;->request:Landroid/widget/Button;

    .line 34
    sget v0, Lcom/example/ruithreadpoolexecutor/R$id;->cancel:I

    invoke-virtual {p0, v0}, Lcom/example/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/TestActivity;->cancel:Landroid/widget/Button;

    .line 38
    return-void
.end method
