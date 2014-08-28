.class Lcom/baidu/location/ab;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/ab$a;
    }
.end annotation


# static fields
.field private static goto:Lcom/baidu/location/ab;


# instance fields
.field private a:Z

.field private byte:Ljava/lang/String;

.field private case:Ljava/lang/String;

.field private char:J

.field private do:Ljava/lang/String;

.field private else:Ljava/lang/String;

.field private for:J

.field private if:J

.field private int:Ljava/lang/String;

.field public new:Ljava/lang/String;

.field private try:Lcom/baidu/location/ab$a;


# direct methods
.method private constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/ab;->int:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/ab;->byte:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/ab;->else:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/ab;->new:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/ab;->a:Z

    iput-object v1, p0, Lcom/baidu/location/ab;->case:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/ab;->do:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/ab;->try:Lcom/baidu/location/ab$a;

    iput-wide v2, p0, Lcom/baidu/location/ab;->char:J

    iput-wide v2, p0, Lcom/baidu/location/ab;->for:J

    iput-wide v2, p0, Lcom/baidu/location/ab;->if:J

    new-instance v0, Lcom/baidu/location/ab$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/ab$a;-><init>(Lcom/baidu/location/ab;)V

    iput-object v0, p0, Lcom/baidu/location/ab;->try:Lcom/baidu/location/ab$a;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/ab;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/ab;->char:J

    return-wide p1
.end method

.method public static a()Lcom/baidu/location/ab;
    .locals 1

    sget-object v0, Lcom/baidu/location/ab;->goto:Lcom/baidu/location/ab;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/ab;

    invoke-direct {v0}, Lcom/baidu/location/ab;-><init>()V

    sput-object v0, Lcom/baidu/location/ab;->goto:Lcom/baidu/location/ab;

    :cond_0
    sget-object v0, Lcom/baidu/location/ab;->goto:Lcom/baidu/location/ab;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/ab;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/ab;->case:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/ab;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/ab;->do:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic do(Lcom/baidu/location/ab;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/ab;->if:J

    return-wide v0
.end method

.method static synthetic for(Lcom/baidu/location/ab;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/ab;->char:J

    return-wide v0
.end method

.method static synthetic if(Lcom/baidu/location/ab;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/ab;->do:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic if(Lcom/baidu/location/ab;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/ab;->case:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/ab;->case:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/ab;->do:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/ab;->int:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/ab;->case:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/ab;->byte:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/ab;->do:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/ab;->try:Lcom/baidu/location/ab$a;

    invoke-virtual {v0, p1}, Lcom/baidu/location/ab$a;->try(Landroid/os/Message;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/location/ab;->else:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/ab;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/ab;->for:J

    return-void
.end method

.method public do()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/ab;->int:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/ab;->case:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/ab;->byte:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/ab;->do:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/ab;->char:J

    return-void
.end method

.method public if()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/ab;->case:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/ab;->do:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/ab;->char:J

    return-void
.end method

.method public if(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/location/ab;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/ab;->else:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/ab;->int:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/ab;->a:Z

    iget-wide v0, p0, Lcom/baidu/location/ab;->for:J

    iput-wide v0, p0, Lcom/baidu/location/ab;->if:J

    :cond_0
    iput-object p1, p0, Lcom/baidu/location/ab;->byte:Ljava/lang/String;

    return-void
.end method
