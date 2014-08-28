.class public Lcom/uprui/tv/launcher8/home/HomeLoadTask;
.super Ljava/lang/Object;
.source "HomeLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/tv/launcher8/home/HomeLoadTask$HomeCallback;
    }
.end annotation


# static fields
.field public static TAG_HOME:Ljava/lang/String;


# instance fields
.field private callback:Lcom/uprui/tv/launcher8/home/HomeLoadTask$HomeCallback;

.field private isCancel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "home"

    sput-object v0, Lcom/uprui/tv/launcher8/home/HomeLoadTask;->TAG_HOME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/uprui/tv/launcher8/home/HomeLoadTask$HomeCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/uprui/tv/launcher8/home/HomeLoadTask;->callback:Lcom/uprui/tv/launcher8/home/HomeLoadTask$HomeCallback;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/uprui/tv/launcher8/home/HomeLoadTask;)Lcom/uprui/tv/launcher8/home/HomeLoadTask$HomeCallback;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeLoadTask;->callback:Lcom/uprui/tv/launcher8/home/HomeLoadTask$HomeCallback;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/home/HomeLoadTask;->isCancel:Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uprui/tv/launcher8/home/HomeLoadTask;->callback:Lcom/uprui/tv/launcher8/home/HomeLoadTask$HomeCallback;

    .line 102
    return-void
.end method

.method public loadHome(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 17
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/home/HomeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v13, lists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/home/HomeInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/uprui/tv/launcher8/home/HomeLoadTask;->isCancel:Z

    if-eqz v2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-object v13

    .line 50
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 51
    const/high16 v16, 0x7f05

    .line 50
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 52
    .local v14, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v14}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 54
    .local v8, attrs:Landroid/util/AttributeSet;
    :try_start_0
    sget-object v2, Lcom/uprui/tv/launcher8/home/HomeLoadTask;->TAG_HOME:Ljava/lang/String;

    invoke-static {v14, v2}, Lcom/uprui/tv/launcher8/data/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 56
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 59
    .local v11, depth:I
    :cond_2
    :goto_1
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    .local v15, type:I
    const/4 v2, 0x3

    if-ne v15, v2, :cond_3

    .line 60
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v11, :cond_0

    :cond_3
    const/4 v2, 0x1

    if-eq v15, v2, :cond_0

    .line 62
    const/4 v2, 0x2

    if-ne v15, v2, :cond_2

    .line 69
    sget-object v2, Lcom/uprui/tv/launcher8/R$styleable;->CellLayout:[I

    .line 68
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 71
    .local v10, cellArray:Landroid/content/res/TypedArray;
    sget-object v2, Lcom/uprui/tv/launcher8/R$styleable;->Favorite:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 74
    .local v9, categoryArray:Landroid/content/res/TypedArray;
    const/16 v2, 0xd

    const/16 v16, 0x0

    :try_start_1
    move/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 75
    .local v3, cellX:I
    const/16 v2, 0xe

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 76
    .local v4, cellY:I
    const/16 v2, 0xf

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 77
    .local v5, spanX:I
    const/16 v2, 0x10

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 78
    .local v6, spanY:I
    const/4 v2, 0x3

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v9, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 79
    .local v7, category:I
    new-instance v1, Lcom/uprui/tv/launcher8/home/HomeInfo;

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/uprui/tv/launcher8/home/HomeInfo;-><init>(IIIIII)V

    .line 80
    .local v1, info:Lcom/uprui/tv/launcher8/home/HomeInfo;
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :try_start_2
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 88
    .end local v1           #info:Lcom/uprui/tv/launcher8/home/HomeInfo;
    .end local v3           #cellX:I
    .end local v4           #cellY:I
    .end local v5           #spanX:I
    .end local v6           #spanY:I
    .end local v7           #category:I
    .end local v9           #categoryArray:Landroid/content/res/TypedArray;
    .end local v10           #cellArray:Landroid/content/res/TypedArray;
    .end local v11           #depth:I
    .end local v15           #type:I
    :catch_0
    move-exception v12

    .line 90
    .local v12, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v12}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_0

    .line 81
    .end local v12           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9       #categoryArray:Landroid/content/res/TypedArray;
    .restart local v10       #cellArray:Landroid/content/res/TypedArray;
    .restart local v11       #depth:I
    .restart local v15       #type:I
    :catchall_0
    move-exception v2

    .line 82
    :try_start_3
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    throw v2
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 91
    .end local v9           #categoryArray:Landroid/content/res/TypedArray;
    .end local v10           #cellArray:Landroid/content/res/TypedArray;
    .end local v11           #depth:I
    .end local v15           #type:I
    :catch_1
    move-exception v12

    .line 93
    .local v12, e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public obtainHome(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    new-instance v0, Lcom/uprui/executor/RuiHttpClient;

    invoke-direct {v0}, Lcom/uprui/executor/RuiHttpClient;-><init>()V

    .line 32
    .local v0, handler:Lcom/uprui/executor/RuiHttpClient;
    new-instance v1, Lcom/uprui/tv/launcher8/home/HomeLoadTask$1;

    invoke-direct {v1, p0, p1}, Lcom/uprui/tv/launcher8/home/HomeLoadTask$1;-><init>(Lcom/uprui/tv/launcher8/home/HomeLoadTask;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/uprui/executor/RuiHttpClient;->execute(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method
