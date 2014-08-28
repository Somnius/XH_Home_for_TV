.class Lcom/baidu/location/al$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/al;

.field private final do:Lcom/baidu/location/ah;

.field private final for:Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;

.field private final if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/location/al;Lcom/baidu/location/ah;Ljava/lang/String;Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/al$c;->a:Lcom/baidu/location/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/baidu/location/al$c;->do:Lcom/baidu/location/ah;

    iput-object p3, p0, Lcom/baidu/location/al$c;->if:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/location/al$c;->for:Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/al$c;->a:Lcom/baidu/location/al;

    iget-object v1, p0, Lcom/baidu/location/al$c;->do:Lcom/baidu/location/ah;

    iget-object v2, p0, Lcom/baidu/location/al$c;->if:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/baidu/location/al;->if(Lcom/baidu/location/al;Lcom/baidu/location/ah;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/location/al$c;->a:Lcom/baidu/location/al;

    iget-object v2, p0, Lcom/baidu/location/al$c;->for:Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;

    iget-object v3, p0, Lcom/baidu/location/al$c;->do:Lcom/baidu/location/ah;

    invoke-virtual {v3}, Lcom/baidu/location/ah;->getGeofenceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/baidu/location/al;->if(Lcom/baidu/location/al;Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;ILjava/lang/String;)V

    return-void
.end method
