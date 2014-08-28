.class Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$4;
.super Ljava/lang/Object;
.source "AllAppLauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;->loadAllAppsByBatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask$4;->this$1:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$LoaderTask;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 371
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 372
    return-void
.end method
