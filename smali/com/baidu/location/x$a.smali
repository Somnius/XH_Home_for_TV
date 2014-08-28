.class Lcom/baidu/location/x$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/x;

.field private volatile do:Z

.field private if:J


# direct methods
.method constructor <init>(Lcom/baidu/location/x;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/location/x$a;->a:Lcom/baidu/location/x;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/x$a;->do:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/x$a;->if:J

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/x$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/x$a;->do:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/baidu/location/x$a;->do:Z

    if-eqz v0, :cond_6

    const-string v0, "IndoorSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/x$a;->a:Lcom/baidu/location/x;

    invoke-static {v2}, Lcom/baidu/location/x;->for(Lcom/baidu/location/x;)Lcom/baidu/location/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/aa;->a0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/b;->if(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/x$a;->a:Lcom/baidu/location/x;

    invoke-static {v0}, Lcom/baidu/location/x;->int(Lcom/baidu/location/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/x$a;->if:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/baidu/location/x$a;->a:Lcom/baidu/location/x;

    invoke-static {v2}, Lcom/baidu/location/x;->do(Lcom/baidu/location/x;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/x$a;->if:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/x$a;->a:Lcom/baidu/location/x;

    invoke-static {v0}, Lcom/baidu/location/x;->for(Lcom/baidu/location/x;)Lcom/baidu/location/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/aa;->a0()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/x$a;->if:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x445c

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/baidu/location/ai;->bb()Lcom/baidu/location/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ai;->bc()Z

    iget-object v0, p0, Lcom/baidu/location/x$a;->a:Lcom/baidu/location/x;

    invoke-static {v0}, Lcom/baidu/location/x;->for(Lcom/baidu/location/x;)Lcom/baidu/location/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/aa;->aZ()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/x$a;->if:J

    iget-object v0, p0, Lcom/baidu/location/x$a;->a:Lcom/baidu/location/x;

    invoke-static {v0, v4}, Lcom/baidu/location/x;->if(Lcom/baidu/location/x;Z)Z

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/x$a;->a:Lcom/baidu/location/x;

    invoke-static {v2}, Lcom/baidu/location/x;->if(Lcom/baidu/location/x;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x55f0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/x$a;->a:Lcom/baidu/location/x;

    iget-object v0, v0, Lcom/baidu/location/x;->fF:Lcom/baidu/location/x$c;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/baidu/location/x$c;->sendEmptyMessage(I)Z

    :cond_5
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lcom/baidu/location/x$a;->do:Z

    :cond_6
    return-void
.end method
