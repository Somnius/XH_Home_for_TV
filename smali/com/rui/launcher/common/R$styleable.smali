.class public final Lcom/rui/launcher/common/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rui/launcher/common/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Recommend:[I = null

.field public static final Recommend_country:I = 0xc

.field public static final Recommend_downUrl:I = 0x6

.field public static final Recommend_downUrlOption:I = 0x7

.field public static final Recommend_language:I = 0xb

.field public static final Recommend_recAppTitle:I = 0x0

.field public static final Recommend_recCategory:I = 0x3

.field public static final Recommend_recClassName:I = 0x2

.field public static final Recommend_recIcon:I = 0x8

.field public static final Recommend_recPackageName:I = 0x1

.field public static final Recommend_recType:I = 0x4

.field public static final Recommend_recVersion:I = 0x5

.field public static final Recommend_type:I = 0x9

.field public static final Recommend_version:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/rui/launcher/common/R$styleable;->Recommend:[I

    .line 124
    return-void

    .line 111
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
