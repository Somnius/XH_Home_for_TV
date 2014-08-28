.class Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;
.super Ljava/lang/Object;
.source "AllAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/allapp/AllAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleConfiguration"
.end annotation


# instance fields
.field public locale:Ljava/lang/String;

.field public mcc:I

.field public mnc:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;->mcc:I

    .line 150
    iput v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;->mnc:I

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;-><init>()V

    return-void
.end method
