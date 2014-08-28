.class public Lcom/uprui/executor/RuiNetWorkException;
.super Ljava/io/IOException;
.source "RuiNetWorkException.java"


# static fields
.field private static final serialVersionUID:J = 0x30be68335fb3d2d3L


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/uprui/executor/RuiNetWorkException;->description:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/uprui/executor/RuiNetWorkException;->description:Ljava/lang/String;

    .line 21
    return-void
.end method
