.class Lcom/baidu/location/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/an;
.implements Lcom/baidu/location/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/s$a;,
        Lcom/baidu/location/s$b;,
        Lcom/baidu/location/s$c;
    }
.end annotation


# static fields
.field private static final eA:I = 0x1

.field private static final eE:I = 0xbb8

.field private static final eF:I = 0x3

.field private static final eG:I = 0x5

.field private static eI:Ljava/lang/String; = null

.field private static eL:Ljava/lang/String; = null

.field private static eM:Lcom/baidu/location/s; = null

.field private static final eR:D = 1.0E-5

.field private static eU:I

.field private static ez:Ljava/io/File;


# instance fields
.field private final eB:I

.field private eC:Z

.field private final eD:I

.field private eH:Landroid/location/GpsStatus;

.field private eJ:Lcom/baidu/location/s$a;

.field private eK:J

.field private final eN:I

.field private eO:J

.field private eP:Lcom/baidu/location/s$c;

.field private eQ:Landroid/os/Handler;

.field private eS:Landroid/content/Context;

.field private eT:Z

.field private eV:Lcom/baidu/location/s$b;

.field private eW:Landroid/location/Location;

.field private final eX:J

.field private eY:Landroid/location/LocationManager;

.field private eZ:J

.field private ev:Z

.field private final ew:I

.field private ex:J

.field private ey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    sput-object v1, Lcom/baidu/location/s;->eM:Lcom/baidu/location/s;

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/s;->eU:I

    sput-object v1, Lcom/baidu/location/s;->eL:Ljava/lang/String;

    const-string v0, "Temp_in.dat"

    sput-object v0, Lcom/baidu/location/s;->eI:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/f;->L:Ljava/lang/String;

    sget-object v2, Lcom/baidu/location/s;->eI:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/location/s;->ez:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/baidu/location/s;->eX:J

    iput-object v2, p0, Lcom/baidu/location/s;->eY:Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/baidu/location/s;->eV:Lcom/baidu/location/s$b;

    iput-object v2, p0, Lcom/baidu/location/s;->eP:Lcom/baidu/location/s$c;

    iput-object v2, p0, Lcom/baidu/location/s;->eJ:Lcom/baidu/location/s$a;

    iput-wide v3, p0, Lcom/baidu/location/s;->eK:J

    iput-wide v3, p0, Lcom/baidu/location/s;->ex:J

    iput-boolean v5, p0, Lcom/baidu/location/s;->ev:Z

    iput-boolean v5, p0, Lcom/baidu/location/s;->eC:Z

    iput-object v2, p0, Lcom/baidu/location/s;->ey:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/baidu/location/s;->eT:Z

    iput-wide v3, p0, Lcom/baidu/location/s;->eO:J

    iput-wide v3, p0, Lcom/baidu/location/s;->eZ:J

    iput-object v2, p0, Lcom/baidu/location/s;->eQ:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/s;->eN:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/s;->ew:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/location/s;->eD:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/location/s;->eB:I

    return-void
.end method

.method public static aH()Lcom/baidu/location/s;
    .locals 1

    sget-object v0, Lcom/baidu/location/s;->eM:Lcom/baidu/location/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/s;

    invoke-direct {v0}, Lcom/baidu/location/s;-><init>()V

    sput-object v0, Lcom/baidu/location/s;->eM:Lcom/baidu/location/s;

    :cond_0
    sget-object v0, Lcom/baidu/location/s;->eM:Lcom/baidu/location/s;

    return-object v0
.end method

.method private ax()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static byte(Landroid/location/Location;)Ljava/lang/String;
    .locals 10

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x400ccccccccccccdL

    mul-double/2addr v0, v2

    double-to-float v2, v0

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    :goto_1
    float-to-int v3, v0

    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    :goto_2
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_r=%d&ll_n=%d&ll_h=%.2f&ll_t=%d"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x3

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x5

    sget v3, Lcom/baidu/location/s;->eU:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v0, 0x7

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    const-wide/16 v7, 0x3e8

    div-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/high16 v0, -0x4080

    goto :goto_1

    :cond_2
    const-wide v0, 0x4081580000000000L

    goto :goto_2
.end method

.method static synthetic do(Lcom/baidu/location/s;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/s;->eO:J

    return-wide p1
.end method

.method static synthetic do(Lcom/baidu/location/s;)Landroid/location/GpsStatus;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/s;->eH:Landroid/location/GpsStatus;

    return-object v0
.end method

.method static synthetic do(Lcom/baidu/location/s;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/s;->for(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic do(Lcom/baidu/location/s;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/s;->ev:Z

    return p1
.end method

.method static synthetic for(I)I
    .locals 0

    sput p0, Lcom/baidu/location/s;->eU:I

    return p0
.end method

.method static synthetic for(Lcom/baidu/location/s;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/s;->eZ:J

    return-wide p1
.end method

.method static synthetic for(Lcom/baidu/location/s;)Lcom/baidu/location/s$a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/s;->eJ:Lcom/baidu/location/s$a;

    return-object v0
.end method

.method private for(Landroid/location/Location;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    iput-object p1, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    iget-object v0, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/s;->ey:Ljava/lang/String;

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/baidu/location/r;->ar()Lcom/baidu/location/r;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/baidu/location/r;->do(Landroid/location/Location;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/baidu/location/s;->ay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/location/s;->aw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/g;->try(Ljava/lang/String;)V

    sget v0, Lcom/baidu/location/s;->eU:I

    if-le v0, v11, :cond_0

    iget-object v0, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-static {v0, v10}, Lcom/baidu/location/l;->if(Landroid/location/Location;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/ai;->bb()Lcom/baidu/location/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ai;->a4()Z

    invoke-static {}, Lcom/baidu/location/n;->K()Lcom/baidu/location/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/n;->H()Lcom/baidu/location/n$a;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/ai;->bb()Lcom/baidu/location/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/ai;->a7()Lcom/baidu/location/ai$b;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/g;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/location/l;->if(Lcom/baidu/location/n$a;Lcom/baidu/location/ai$b;Landroid/location/Location;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    iget-object v0, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v3, v0

    const-wide v5, 0x400ccccccccccccdL

    mul-double/2addr v3, v5

    double-to-float v5, v3

    sget v0, Lcom/baidu/location/s;->eU:I

    if-nez v0, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "satellites"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :cond_2
    :goto_2
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_n=%d&ll_t=%d"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    iget-object v7, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v11

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getBearing()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/s;->ey:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iget-object v0, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/location/s;->if(DDF)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method private for(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/baidu/location/s;->eT:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/location/s;->ay()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method static synthetic g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/baidu/location/s;->eL:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic if(Lcom/baidu/location/s;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/s;->ex:J

    return-wide p1
.end method

.method static synthetic if(Lcom/baidu/location/s;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/s;->eH:Landroid/location/GpsStatus;

    return-object p1
.end method

.method static synthetic if(Lcom/baidu/location/s;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/s;->eY:Landroid/location/LocationManager;

    return-object v0
.end method

.method private if(DDF)V
    .locals 8

    const/16 v7, 0x32

    const-wide v5, 0x408f400000000000L

    const/4 v0, 0x0

    sget-boolean v1, Lcom/baidu/location/t;->e1:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide v1, 0x4052496801711948L

    cmpg-double v1, p1, v1

    if-ltz v1, :cond_2

    const-wide v1, 0x4060e81600f34507L

    cmpl-double v1, p1, v1

    if-gtz v1, :cond_2

    const-wide v1, 0x404b212096787ce9L

    cmpl-double v1, p3, v1

    if-gtz v1, :cond_2

    const-wide v1, 0x402d35ae81882adcL

    cmpg-double v1, p3, v1

    if-ltz v1, :cond_2

    const/high16 v1, 0x4190

    cmpl-float v1, p5, v1

    if-lez v1, :cond_3

    :cond_2
    :goto_1
    sget v1, Lcom/baidu/location/b;->ag:I

    if-eq v1, v0, :cond_0

    sput v0, Lcom/baidu/location/b;->ag:I

    goto :goto_0

    :cond_3
    sget-wide v1, Lcom/baidu/location/b;->aB:D

    sub-double v1, p1, v1

    sget-wide v3, Lcom/baidu/location/b;->aa:D

    sub-double/2addr v3, p3

    mul-double/2addr v1, v5

    double-to-int v1, v1

    mul-double v2, v3, v5

    double-to-int v2, v2

    if-lez v1, :cond_4

    if-ge v1, v7, :cond_4

    if-lez v2, :cond_4

    if-ge v2, v7, :cond_4

    mul-int/lit8 v2, v2, 0x32

    add-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x2

    and-int/lit8 v1, v1, 0x3

    sget-boolean v3, Lcom/baidu/location/b;->am:Z

    if-eqz v3, :cond_2

    sget-object v0, Lcom/baidu/location/b;->aw:[B

    aget-byte v0, v0, v2

    mul-int/lit8 v1, v1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_4
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&ll=%.5f|%.5f"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&im="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/ap;->bD()Lcom/baidu/location/ap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/ap;->bC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-wide p1, Lcom/baidu/location/b;->a0:D

    sput-wide p3, Lcom/baidu/location/b;->aj:D

    invoke-static {}, Lcom/baidu/location/t;->aK()Lcom/baidu/location/t;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/location/t;->h(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic if(Lcom/baidu/location/s;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/s;->int(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/s;Ljava/lang/String;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/s;->if(Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/s;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/s;->for(Z)V

    return-void
.end method

.method private if(Ljava/lang/String;Landroid/location/Location;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/g;->g()Lcom/baidu/location/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/n;->K()Lcom/baidu/location/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/n;->H()Lcom/baidu/location/n$a;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/ai;->bb()Lcom/baidu/location/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/ai;->a7()Lcom/baidu/location/ai$b;

    move-result-object v2

    invoke-static {v1, v2, p2, v0}, Lcom/baidu/location/l;->if(Lcom/baidu/location/n$a;Lcom/baidu/location/ai$b;Landroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method public static if(Landroid/location/Location;Landroid/location/Location;Z)Z
    .locals 6

    const/high16 v5, 0x40a0

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    if-eqz p2, :cond_2

    sget v3, Lcom/baidu/location/b;->ag:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    cmpg-float v3, v2, v5

    if-ltz v3, :cond_0

    :cond_2
    invoke-virtual {p1, p0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    sget v4, Lcom/baidu/location/b;->a2:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_3

    sget v2, Lcom/baidu/location/b;->aS:F

    cmpl-float v2, v3, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    sget v4, Lcom/baidu/location/b;->a5:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    sget v2, Lcom/baidu/location/b;->ak:F

    cmpl-float v2, v3, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    cmpl-float v2, v3, v5

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic int(Lcom/baidu/location/s;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/s;->eQ:Landroid/os/Handler;

    return-object v0
.end method

.method private int(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/s;->eQ:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/s;->eQ:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static new(Landroid/location/Location;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/baidu/location/s;->byte(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/s;->eL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic new(Lcom/baidu/location/s;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/s;->eC:Z

    return v0
.end method

.method static synthetic try(Lcom/baidu/location/s;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/s;->eZ:J

    return-wide v0
.end method

.method public static try(Landroid/location/Location;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/baidu/location/s;->byte(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&g_tp=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public aA()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aB()V
    .locals 6

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/s;->eS:Landroid/content/Context;

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/s;->eS:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/baidu/location/s;->eY:Landroid/location/LocationManager;

    new-instance v0, Lcom/baidu/location/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/s$a;-><init>(Lcom/baidu/location/s;Lcom/baidu/location/s$1;)V

    iput-object v0, p0, Lcom/baidu/location/s;->eJ:Lcom/baidu/location/s$a;

    iget-object v0, p0, Lcom/baidu/location/s;->eY:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/s;->eJ:Lcom/baidu/location/s$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    new-instance v0, Lcom/baidu/location/s$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/s$c;-><init>(Lcom/baidu/location/s;Lcom/baidu/location/s$1;)V

    iput-object v0, p0, Lcom/baidu/location/s;->eP:Lcom/baidu/location/s$c;

    iget-object v0, p0, Lcom/baidu/location/s;->eY:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/location/s;->eP:Lcom/baidu/location/s$c;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/baidu/location/s$1;

    invoke-direct {v0, p0}, Lcom/baidu/location/s$1;-><init>(Lcom/baidu/location/s;)V

    iput-object v0, p0, Lcom/baidu/location/s;->eQ:Landroid/os/Handler;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public aC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/s;->ey:Ljava/lang/String;

    return-object v0
.end method

.method public aD()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/baidu/location/s;->aG()V

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/s;->eJ:Lcom/baidu/location/s$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/s;->eY:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/s;->eJ:Lcom/baidu/location/s$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/s;->eY:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/s;->eP:Lcom/baidu/location/s$c;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/baidu/location/s;->eJ:Lcom/baidu/location/s$a;

    iput-object v2, p0, Lcom/baidu/location/s;->eY:Landroid/location/LocationManager;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public aE()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/location/s;->ay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-static {v0}, Lcom/baidu/location/s;->byte(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aF()V
    .locals 6

    iget-boolean v0, p0, Lcom/baidu/location/s;->eC:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/baidu/location/s$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/s$b;-><init>(Lcom/baidu/location/s;Lcom/baidu/location/s$1;)V

    iput-object v0, p0, Lcom/baidu/location/s;->eV:Lcom/baidu/location/s$b;

    iget-object v0, p0, Lcom/baidu/location/s;->eY:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/location/s;->eV:Lcom/baidu/location/s$b;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/baidu/location/s;->eY:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/s;->eJ:Lcom/baidu/location/s$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/s;->eC:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public aG()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/baidu/location/s;->eC:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/s;->eY:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/s;->eV:Lcom/baidu/location/s$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/s;->eY:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/s;->eV:Lcom/baidu/location/s$b;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/s;->eJ:Lcom/baidu/location/s$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/s;->eY:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/s;->eJ:Lcom/baidu/location/s$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    sput v2, Lcom/baidu/location/b;->ah:I

    sput v2, Lcom/baidu/location/b;->ag:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/s;->eV:Lcom/baidu/location/s$b;

    iput-boolean v2, p0, Lcom/baidu/location/s;->eC:Z

    invoke-direct {p0, v2}, Lcom/baidu/location/s;->for(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public aw()Ljava/lang/String;
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"result\":{\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/b;->if()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"error\":\"61\"},\"content\":{\"point\":{\"x\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"%f\",\"y\":\"%f\"},\"radius\":\"%d\",\"d\":\"%f\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"s\":\"%f\",\"n\":\"%d\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    iget-object v2, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x400ccccccccccccdL

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    const-string v7, "gps2gcj"

    invoke-static {v3, v4, v5, v6, v7}, Lcom/baidu/location/Jni;->if(DDLjava/lang/String;)[D

    move-result-object v3

    aget-wide v4, v3, v8

    cmpl-double v4, v4, v10

    if-gtz v4, :cond_0

    aget-wide v4, v3, v9

    cmpl-double v4, v4, v10

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v3, v8

    iget-object v4, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v3, v9

    :cond_0
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    aget-wide v6, v3, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    aget-wide v6, v3, v9

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v5, v9

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getBearing()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v0, 0x5

    sget v2, Lcom/baidu/location/s;->eU:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const/high16 v0, 0x4120

    goto :goto_0
.end method

.method public ay()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/location/s;->aA()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/baidu/location/s;->eO:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/baidu/location/s;->ev:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/baidu/location/s;->ex:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/baidu/location/s;->eT:Z

    goto :goto_0
.end method

.method public az()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/s;->eW:Landroid/location/Location;

    return-object v0
.end method

.method public do(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/location/s;->aF()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/location/s;->aG()V

    goto :goto_0
.end method
