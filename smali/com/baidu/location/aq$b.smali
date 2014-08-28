.class Lcom/baidu/location/aq$b;
.super Lcom/baidu/location/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic dR:Lcom/baidu/location/aq;


# direct methods
.method private constructor <init>(Lcom/baidu/location/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/aq$b;->dR:Lcom/baidu/location/aq;

    invoke-direct {p0}, Lcom/baidu/location/z;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/aq;Lcom/baidu/location/aq$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/aq$b;-><init>(Lcom/baidu/location/aq;)V

    return-void
.end method


# virtual methods
.method ab()V
    .locals 0

    return-void
.end method

.method byte(Landroid/os/Message;)V
    .locals 0

    return-void
.end method
