.class public Lcom/uprui/executor/RuiWifiException;
.super Ljava/io/IOException;
.source "RuiWifiException.java"


# static fields
.field private static final serialVersionUID:J = -0x57587b9b9643099fL


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/uprui/executor/RuiWifiException;->description:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/uprui/executor/RuiWifiException;->description:Ljava/lang/String;

    .line 15
    return-void
.end method
