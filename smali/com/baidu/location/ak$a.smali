.class Lcom/baidu/location/ak$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/ak;

.field private do:I

.field private for:I

.field private if:I

.field private int:I


# direct methods
.method public constructor <init>(Lcom/baidu/location/ak;IIII)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/baidu/location/ak$a;->a:Lcom/baidu/location/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/location/ak$a;->int:I

    iput v0, p0, Lcom/baidu/location/ak$a;->if:I

    iput v0, p0, Lcom/baidu/location/ak$a;->do:I

    iput v0, p0, Lcom/baidu/location/ak$a;->for:I

    iput p2, p0, Lcom/baidu/location/ak$a;->int:I

    iput p3, p0, Lcom/baidu/location/ak$a;->if:I

    iput p4, p0, Lcom/baidu/location/ak$a;->do:I

    iput p5, p0, Lcom/baidu/location/ak$a;->for:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/ak$a;->if:I

    return v0
.end method

.method public do()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/ak$a;->for:I

    return v0
.end method

.method public if()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/ak$a;->do:I

    return v0
.end method
