.class public Lcom/uprui/executor/RuiThreadFactory;
.super Ljava/lang/Object;
.source "RuiThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .parameter "r"

    .prologue
    .line 9
    new-instance v0, Lcom/uprui/executor/RuiThread;

    invoke-direct {v0, p1}, Lcom/uprui/executor/RuiThread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
