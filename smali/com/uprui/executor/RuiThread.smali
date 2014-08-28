.class public Lcom/uprui/executor/RuiThread;
.super Ljava/lang/Thread;
.source "RuiThread.java"


# static fields
.field private static final ALIVE:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field private static final CREATED:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field private static final DEAFULT_NAME:Ljava/lang/String; = "RuiThread"

.field private static volatile DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uprui/executor/RuiThread;->DEBUG:Z

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/uprui/executor/RuiThread;->CREATED:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/uprui/executor/RuiThread;->ALIVE:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 15
    const-string v0, "RuiThread"

    invoke-direct {p0, p1, v0}, Lcom/uprui/executor/RuiThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .parameter "r"
    .parameter "name"

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/uprui/executor/RuiThread;->CREATED:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/uprui/executor/RuiThread$1;

    invoke-direct {v0, p0}, Lcom/uprui/executor/RuiThread$1;-><init>(Lcom/uprui/executor/RuiThread;)V

    invoke-virtual {p0, v0}, Lcom/uprui/executor/RuiThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 28
    return-void
.end method

.method public static getDebug()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/uprui/executor/RuiThread;->DEBUG:Z

    return v0
.end method

.method public static getThreadAlive()I
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/uprui/executor/RuiThread;->ALIVE:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static getThreadCreated()I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/uprui/executor/RuiThread;->CREATED:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static setDebug(Z)V
    .locals 0
    .parameter "debug"

    .prologue
    .line 44
    sput-boolean p0, Lcom/uprui/executor/RuiThread;->DEBUG:Z

    .line 45
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 31
    sget-object v0, Lcom/uprui/executor/RuiThread;->ALIVE:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 32
    sget-boolean v0, Lcom/uprui/executor/RuiThread;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RuiThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "run "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uprui/executor/RuiThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    sget-object v0, Lcom/uprui/executor/RuiThread;->ALIVE:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 37
    sget-boolean v0, Lcom/uprui/executor/RuiThread;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "RuiThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uprui/executor/RuiThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_1
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    sget-object v1, Lcom/uprui/executor/RuiThread;->ALIVE:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 37
    sget-boolean v1, Lcom/uprui/executor/RuiThread;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "RuiThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exit "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uprui/executor/RuiThread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_2
    throw v0
.end method
