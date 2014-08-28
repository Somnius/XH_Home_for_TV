.class Lcom/baidu/location/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/an;
.implements Lcom/baidu/location/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/m$a;
    }
.end annotation


# static fields
.field private static cr:Lcom/baidu/location/m;


# instance fields
.field private cq:Lcom/baidu/location/h;

.field private cs:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/m;->cr:Lcom/baidu/location/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/m;->cq:Lcom/baidu/location/h;

    iput-object v0, p0, Lcom/baidu/location/m;->cs:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/location/m$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/m$a;-><init>(Lcom/baidu/location/m;)V

    iput-object v0, p0, Lcom/baidu/location/m;->cs:Landroid/os/Handler;

    return-void
.end method

.method public static D()Lcom/baidu/location/m;
    .locals 1

    sget-object v0, Lcom/baidu/location/m;->cr:Lcom/baidu/location/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/m;

    invoke-direct {v0}, Lcom/baidu/location/m;-><init>()V

    sput-object v0, Lcom/baidu/location/m;->cr:Lcom/baidu/location/m;

    :cond_0
    sget-object v0, Lcom/baidu/location/m;->cr:Lcom/baidu/location/m;

    return-object v0
.end method

.method private F()V
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/baidu/location/t;->fb:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/b;->aY:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/baidu/location/h;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/location/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/location/m;->cq:Lcom/baidu/location/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic if(Lcom/baidu/location/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/m;->F()V

    return-void
.end method


# virtual methods
.method public B()V
    .locals 0

    return-void
.end method

.method public C()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/m;->cq:Lcom/baidu/location/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/m;->cq:Lcom/baidu/location/h;

    invoke-virtual {v0}, Lcom/baidu/location/h;->q()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/m;->cq:Lcom/baidu/location/h;

    return-void
.end method

.method public E()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/m;->cs:Landroid/os/Handler;

    return-object v0
.end method

.method public G()V
    .locals 0

    return-void
.end method
