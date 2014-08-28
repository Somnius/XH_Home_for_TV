.class public Lcom/baidu/location/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/j;
.implements Lcom/baidu/location/an;


# static fields
.field public static final fK:F = 0.01f

.field private static final fP:I = 0x14

.field private static final fU:F = 0.8f

.field public static final fV:F = 4.0f


# instance fields
.field private fG:I

.field private fH:I

.field private final fI:J

.field private fJ:[F

.field public fL:Landroid/hardware/SensorEventListener;

.field fM:Ljava/util/Timer;

.field private fN:I

.field private fO:Landroid/hardware/Sensor;

.field private fQ:[F

.field private volatile fR:I

.field private fS:I

.field private fT:[D

.field private fW:I

.field private fX:Landroid/hardware/SensorManager;

.field private fY:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/location/aa;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/baidu/location/aa;->fI:J

    iput v2, p0, Lcom/baidu/location/aa;->fR:I

    iput v3, p0, Lcom/baidu/location/aa;->fH:I

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/baidu/location/aa;->fJ:[F

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/baidu/location/aa;->fQ:[F

    const/16 v0, 0x1f

    iput v0, p0, Lcom/baidu/location/aa;->fS:I

    iget v0, p0, Lcom/baidu/location/aa;->fS:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/baidu/location/aa;->fT:[D

    iput v2, p0, Lcom/baidu/location/aa;->fW:I

    new-instance v0, Lcom/baidu/location/aa$1;

    invoke-direct {v0, p0}, Lcom/baidu/location/aa$1;-><init>(Lcom/baidu/location/aa;)V

    iput-object v0, p0, Lcom/baidu/location/aa;->fL:Landroid/hardware/SensorEventListener;

    :try_start_0
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/baidu/location/aa;->fX:Landroid/hardware/SensorManager;

    iput p2, p0, Lcom/baidu/location/aa;->fN:I

    iget-object v0, p0, Lcom/baidu/location/aa;->fX:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/aa;->fO:Landroid/hardware/Sensor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private a1()V
    .locals 7

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v2, [F

    iget-object v1, p0, Lcom/baidu/location/aa;->fQ:[F

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v1, v0, v4

    aget v2, v0, v4

    mul-float/2addr v1, v2

    aget v2, v0, v5

    aget v3, v0, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget v2, v0, v6

    aget v0, v0, v6

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/aa;->fT:[D

    iget v3, p0, Lcom/baidu/location/aa;->fW:I

    aput-wide v0, v2, v3

    iget v0, p0, Lcom/baidu/location/aa;->fW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/location/aa;->fW:I

    iget v0, p0, Lcom/baidu/location/aa;->fW:I

    iget v1, p0, Lcom/baidu/location/aa;->fS:I

    if-ne v0, v1, :cond_0

    iput v4, p0, Lcom/baidu/location/aa;->fW:I

    iget-object v0, p0, Lcom/baidu/location/aa;->fT:[D

    invoke-direct {p0, v0}, Lcom/baidu/location/aa;->if([D)D

    move-result-wide v0

    iget v2, p0, Lcom/baidu/location/aa;->fR:I

    if-nez v2, :cond_1

    const-wide v2, 0x3fd3333333333333L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    invoke-direct {p0, v4}, Lcom/baidu/location/aa;->try(I)V

    iput v4, p0, Lcom/baidu/location/aa;->fR:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v5}, Lcom/baidu/location/aa;->try(I)V

    iput v5, p0, Lcom/baidu/location/aa;->fR:I

    goto :goto_0
.end method

.method static synthetic do(Lcom/baidu/location/aa;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/aa;->fG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/location/aa;->fG:I

    return v0
.end method

.method static synthetic for(Lcom/baidu/location/aa;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/aa;->fR:I

    return v0
.end method

.method private if([D)D
    .locals 11

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    array-length v6, p1

    move v3, v0

    move-wide v4, v1

    :goto_0
    if-ge v3, v6, :cond_0

    aget-wide v7, p1, v3

    add-double/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    int-to-double v7, v6

    div-double v3, v4, v7

    :goto_1
    if-ge v0, v6, :cond_1

    aget-wide v7, p1, v0

    sub-double/2addr v7, v3

    aget-wide v9, p1, v0

    sub-double/2addr v9, v3

    mul-double/2addr v7, v9

    add-double/2addr v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v6, -0x1

    int-to-double v3, v0

    div-double v0, v1, v3

    return-wide v0
.end method

.method static synthetic if(Lcom/baidu/location/aa;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/location/aa;->fR:I

    return p1
.end method

.method static synthetic if(Lcom/baidu/location/aa;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/aa;->a1()V

    return-void
.end method

.method private if(FFF)[F
    .locals 9

    const v8, 0x3f4ccccd

    const v7, 0x3e4ccccc

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/baidu/location/aa;->fJ:[F

    iget-object v2, p0, Lcom/baidu/location/aa;->fJ:[F

    aget v2, v2, v4

    mul-float/2addr v2, v8

    mul-float v3, v7, p1

    add-float/2addr v2, v3

    aput v2, v1, v4

    iget-object v1, p0, Lcom/baidu/location/aa;->fJ:[F

    iget-object v2, p0, Lcom/baidu/location/aa;->fJ:[F

    aget v2, v2, v5

    mul-float/2addr v2, v8

    mul-float v3, v7, p2

    add-float/2addr v2, v3

    aput v2, v1, v5

    iget-object v1, p0, Lcom/baidu/location/aa;->fJ:[F

    iget-object v2, p0, Lcom/baidu/location/aa;->fJ:[F

    aget v2, v2, v6

    mul-float/2addr v2, v8

    mul-float v3, v7, p3

    add-float/2addr v2, v3

    aput v2, v1, v6

    iget-object v1, p0, Lcom/baidu/location/aa;->fJ:[F

    aget v1, v1, v4

    sub-float v1, p1, v1

    aput v1, v0, v4

    iget-object v1, p0, Lcom/baidu/location/aa;->fJ:[F

    aget v1, v1, v5

    sub-float v1, p2, v1

    aput v1, v0, v5

    iget-object v1, p0, Lcom/baidu/location/aa;->fJ:[F

    aget v1, v1, v6

    sub-float v1, p3, v1

    aput v1, v0, v6

    return-object v0
.end method

.method static synthetic if(Lcom/baidu/location/aa;FFF)[F
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/location/aa;->if(FFF)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic if(Lcom/baidu/location/aa;[F)[F
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/aa;->fQ:[F

    return-object p1
.end method

.method private declared-synchronized try(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/baidu/location/aa;->fH:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/baidu/location/aa;->fH:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a0()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/baidu/location/aa;->fG:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/baidu/location/aa;->fH:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a2()V
    .locals 6

    iget-boolean v0, p0, Lcom/baidu/location/aa;->fY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/aa;->fO:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/aa;->fX:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/baidu/location/aa;->fL:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/baidu/location/aa;->fO:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/baidu/location/aa;->fN:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/util/Timer;

    const-string v1, "UpdateData"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/baidu/location/aa;->fM:Ljava/util/Timer;

    new-instance v1, Lcom/baidu/location/aa$2;

    invoke-direct {v1, p0}, Lcom/baidu/location/aa$2;-><init>(Lcom/baidu/location/aa;)V

    iget-object v0, p0, Lcom/baidu/location/aa;->fM:Ljava/util/Timer;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x1e

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/aa;->fY:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a3()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/location/aa;->fY:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/aa;->fX:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/baidu/location/aa;->fL:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/baidu/location/aa;->fM:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/baidu/location/aa;->fM:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/aa;->fM:Ljava/util/Timer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/aa;->fY:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized aZ()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/baidu/location/aa;->fH:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
