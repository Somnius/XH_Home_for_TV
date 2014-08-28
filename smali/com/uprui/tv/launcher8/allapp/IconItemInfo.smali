.class public Lcom/uprui/tv/launcher8/allapp/IconItemInfo;
.super Lcom/uprui/tv/launcher8/allapp/ItemInfo;
.source "IconItemInfo.java"


# instance fields
.field public category:I

.field public componentName:Landroid/content/ComponentName;

.field isShortcut:Z

.field public mIntent:Landroid/content/Intent;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/ItemInfo;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->category:I

    .line 21
    return-void
.end method

.method constructor <init>(Lcom/uprui/tv/launcher8/allapp/IconItemInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/uprui/tv/launcher8/allapp/ItemInfo;-><init>(Lcom/uprui/tv/launcher8/allapp/ItemInfo;)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->category:I

    .line 26
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getTitleByLocale(Ljava/util/Locale;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "l"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/IconItemInfo;->title:Ljava/lang/CharSequence;

    return-object v0
.end method
