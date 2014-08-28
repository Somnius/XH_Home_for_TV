.class Lcom/uprui/tv/launcher8/allapp/AllAppActivity$2;
.super Ljava/lang/Thread;
.source "AllAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->checkForLocaleChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/allapp/AllAppActivity;

.field private final synthetic val$localeConfiguration:Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/allapp/AllAppActivity;Ljava/lang/String;Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$2;->this$0:Lcom/uprui/tv/launcher8/allapp/AllAppActivity;

    iput-object p3, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$2;->val$localeConfiguration:Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;

    .line 138
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$2;->this$0:Lcom/uprui/tv/launcher8/allapp/AllAppActivity;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$2;->val$localeConfiguration:Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;

    #calls: Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->writeConfiguration(Landroid/content/Context;Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;)V
    invoke-static {v0, v1}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->access$3(Landroid/content/Context;Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;)V

    .line 142
    return-void
.end method
