.class public Lcom/baidu/location/u$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/u;


# direct methods
.method public constructor <init>(Lcom/baidu/location/u;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/u$a;->a:Lcom/baidu/location/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/u$a;->a:Lcom/baidu/location/u;

    invoke-static {v0, p1}, Lcom/baidu/location/u;->if(Lcom/baidu/location/u;Lcom/baidu/location/BDLocation;)V

    return-void
.end method

.method public onReceivePoi(Lcom/baidu/location/BDLocation;)V
    .locals 0

    return-void
.end method
