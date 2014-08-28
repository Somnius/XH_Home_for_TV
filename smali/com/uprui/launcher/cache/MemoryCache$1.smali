.class Lcom/uprui/launcher/cache/MemoryCache$1;
.super Ljava/util/LinkedHashMap;
.source "MemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/launcher/cache/MemoryCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x63ca391aa323df5cL


# instance fields
.field final synthetic this$0:Lcom/uprui/launcher/cache/MemoryCache;


# direct methods
.method constructor <init>(Lcom/uprui/launcher/cache/MemoryCache;IFZ)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/launcher/cache/MemoryCache$1;->this$0:Lcom/uprui/launcher/cache/MemoryCache;

    .line 20
    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method
