.class Lcom/uprui/tv/launcher8/allapp/AllAppActivity$1;
.super Landroid/os/AsyncTask;
.source "AllAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->checkForLocaleChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uprui/tv/launcher8/allapp/AllAppActivity;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/allapp/AllAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$1;->this$0:Lcom/uprui/tv/launcher8/allapp/AllAppActivity;

    .line 102
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;
    .locals 2
    .parameter "unused"

    .prologue
    .line 105
    new-instance v0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;-><init>(Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;)V

    .line 106
    .local v0, localeConfiguration:Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$1;->this$0:Lcom/uprui/tv/launcher8/allapp/AllAppActivity;

    #calls: Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->readConfiguration(Landroid/content/Context;Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;)V
    invoke-static {v1, v0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->access$0(Landroid/content/Context;Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;)V

    .line 107
    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$1;->doInBackground([Ljava/lang/Void;)Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 112
    invoke-static {p1}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->access$1(Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;)V

    .line 113
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$1;->this$0:Lcom/uprui/tv/launcher8/allapp/AllAppActivity;

    #calls: Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->checkForLocaleChange()V
    invoke-static {v0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->access$2(Lcom/uprui/tv/launcher8/allapp/AllAppActivity;)V

    .line 114
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;

    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$1;->onPostExecute(Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;)V

    return-void
.end method
