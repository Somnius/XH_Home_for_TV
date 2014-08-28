.class Lcom/baidu/location/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/an;
.implements Lcom/baidu/location/j;


# static fields
.field public static U:I = 0x0

.field public static V:I = 0x0

.field public static W:Ljava/lang/String; = null

.field public static X:F = 0.0f

.field public static Y:I = 0x0

.field public static Z:F = 0.0f

.field public static a0:D = 0.0

.field public static a1:F = 0.0f

.field public static a2:F = 0.0f

.field public static a3:Ljava/lang/String; = null

.field public static a4:F = 0.0f

.field public static a5:F = 0.0f

.field public static final aA:Z = true

.field public static aB:D

.field public static aC:I

.field public static aD:I

.field private static aE:Ljava/lang/String;

.field public static aF:I

.field private static aG:Ljava/lang/String;

.field public static aH:I

.field private static aI:Ljava/lang/Process;

.field public static aJ:J

.field public static aK:F

.field public static aL:J

.field public static aM:F

.field public static aN:F

.field public static aO:I

.field public static aP:I

.field public static aQ:I

.field public static aR:Z

.field public static aS:F

.field private static aT:Ljava/lang/String;

.field public static aU:F

.field public static aV:Z

.field public static aW:I

.field public static aX:I

.field public static aY:Z

.field public static aZ:I

.field public static aa:D

.field public static ab:F

.field public static ac:F

.field public static ad:F

.field public static ae:Z

.field public static af:I

.field public static ag:I

.field public static ah:I

.field public static ai:Z

.field public static aj:D

.field public static ak:F

.field public static al:I

.field public static am:Z

.field public static an:I

.field public static ao:I

.field public static ap:I

.field public static aq:I

.field public static ar:Ljava/lang/String;

.field public static as:I

.field public static at:I

.field public static au:Z

.field private static av:Z

.field public static aw:[B

.field private static ax:Z

.field public static ay:J

.field public static az:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/high16 v5, 0x4120

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    sput-boolean v2, Lcom/baidu/location/b;->aV:Z

    sput-boolean v2, Lcom/baidu/location/b;->ai:Z

    sput-boolean v2, Lcom/baidu/location/b;->ae:Z

    sput v2, Lcom/baidu/location/b;->ah:I

    const-string v0, "http://loc.map.baidu.com/sdk.php"

    sput-object v0, Lcom/baidu/location/b;->aG:Ljava/lang/String;

    const-string v0, "http://loc.map.baidu.com/sdk_ep.php"

    sput-object v0, Lcom/baidu/location/b;->W:Ljava/lang/String;

    const-string v0, "http://loc.map.baidu.com/user_err.php"

    sput-object v0, Lcom/baidu/location/b;->aT:Ljava/lang/String;

    sput-boolean v2, Lcom/baidu/location/b;->av:Z

    sput-boolean v2, Lcom/baidu/location/b;->ax:Z

    const-string v0, "[baidu_location_service]"

    sput-object v0, Lcom/baidu/location/b;->aE:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/b;->aI:Ljava/lang/Process;

    const-string v0, "no"

    sput-object v0, Lcom/baidu/location/b;->ar:Ljava/lang/String;

    const-string v0, "gcj02"

    sput-object v0, Lcom/baidu/location/b;->a3:Ljava/lang/String;

    sput-boolean v1, Lcom/baidu/location/b;->aY:Z

    sput v6, Lcom/baidu/location/b;->aF:I

    sput-wide v3, Lcom/baidu/location/b;->a0:D

    sput-wide v3, Lcom/baidu/location/b;->aj:D

    sput-wide v3, Lcom/baidu/location/b;->aB:D

    sput-wide v3, Lcom/baidu/location/b;->aa:D

    sput v2, Lcom/baidu/location/b;->ag:I

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/b;->aw:[B

    sput-boolean v2, Lcom/baidu/location/b;->am:Z

    sput v2, Lcom/baidu/location/b;->af:I

    const v0, 0x3f8ccccd

    sput v0, Lcom/baidu/location/b;->ab:F

    const v0, 0x400ccccd

    sput v0, Lcom/baidu/location/b;->aK:F

    const v0, 0x40133333

    sput v0, Lcom/baidu/location/b;->ad:F

    const v0, 0x40733333

    sput v0, Lcom/baidu/location/b;->aM:F

    sput v6, Lcom/baidu/location/b;->aC:I

    const/16 v0, 0xa

    sput v0, Lcom/baidu/location/b;->U:I

    const/4 v0, 0x2

    sput v0, Lcom/baidu/location/b;->aD:I

    const/4 v0, 0x7

    sput v0, Lcom/baidu/location/b;->V:I

    const/16 v0, 0x14

    sput v0, Lcom/baidu/location/b;->Y:I

    const/16 v0, 0x46

    sput v0, Lcom/baidu/location/b;->as:I

    const/16 v0, 0x78

    sput v0, Lcom/baidu/location/b;->aW:I

    const/high16 v0, 0x4000

    sput v0, Lcom/baidu/location/b;->a5:F

    sput v5, Lcom/baidu/location/b;->a2:F

    const/high16 v0, 0x4248

    sput v0, Lcom/baidu/location/b;->ak:F

    const/high16 v0, 0x4348

    sput v0, Lcom/baidu/location/b;->aS:F

    const/16 v0, 0x10

    sput v0, Lcom/baidu/location/b;->aQ:I

    const v0, 0x3f666666

    sput v0, Lcom/baidu/location/b;->Z:F

    const/16 v0, 0x1388

    sput v0, Lcom/baidu/location/b;->ao:I

    const/high16 v0, 0x3f00

    sput v0, Lcom/baidu/location/b;->aN:F

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/b;->a4:F

    const v0, 0x3dcccccd

    sput v0, Lcom/baidu/location/b;->a1:F

    const/16 v0, 0x1e

    sput v0, Lcom/baidu/location/b;->aZ:I

    const/16 v0, 0x64

    sput v0, Lcom/baidu/location/b;->aX:I

    sput-boolean v1, Lcom/baidu/location/b;->au:Z

    sput-boolean v1, Lcom/baidu/location/b;->aR:Z

    const/16 v0, 0x14

    sput v0, Lcom/baidu/location/b;->aq:I

    const/16 v0, 0x12c

    sput v0, Lcom/baidu/location/b;->an:I

    const/16 v0, 0x3e8

    sput v0, Lcom/baidu/location/b;->at:I

    const-wide/32 v0, 0x124f80

    sput-wide v0, Lcom/baidu/location/b;->aJ:J

    const-wide/16 v0, 0x14

    sput-wide v0, Lcom/baidu/location/b;->aL:J

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/baidu/location/b;->ay:J

    sput v2, Lcom/baidu/location/b;->aO:I

    const/16 v0, 0x7530

    sput v0, Lcom/baidu/location/b;->aP:I

    const/16 v0, 0x7530

    sput v0, Lcom/baidu/location/b;->aH:I

    sput v5, Lcom/baidu/location/b;->aU:F

    const/high16 v0, 0x40c0

    sput v0, Lcom/baidu/location/b;->ac:F

    sput v5, Lcom/baidu/location/b;->X:F

    const/16 v0, 0x3c

    sput v0, Lcom/baidu/location/b;->al:I

    const/16 v0, 0x46

    sput v0, Lcom/baidu/location/b;->az:I

    const/4 v0, 0x6

    sput v0, Lcom/baidu/location/b;->ap:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, -0x1

    const/high16 v0, -0x8000

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static do()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/b;->aT:Ljava/lang/String;

    return-object v0
.end method

.method public static do(Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/baidu/location/b;->aG:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static do(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/baidu/location/b;->av:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D
    .locals 5

    const/4 v4, -0x1

    const-wide/16 v0, 0x1

    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static for()Ljava/lang/String;
    .locals 13

    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v7, "%d_%d_%d_%d_%d_%d"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v11

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v12

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method static if()Ljava/lang/String;
    .locals 13

    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v7, "%d-%d-%d %d:%d:%d"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v11

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v12

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static if(Lcom/baidu/location/n$a;Lcom/baidu/location/ai$b;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x3

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/location/n$a;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p1, :cond_1

    if-nez p4, :cond_9

    invoke-virtual {p1}, Lcom/baidu/location/ai$b;->char()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz p2, :cond_2

    sget v0, Lcom/baidu/location/b;->ah:I

    if-eqz v0, :cond_a

    if-eqz p4, :cond_a

    invoke-static {p2}, Lcom/baidu/location/s;->new(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const/4 v0, 0x0

    if-nez p4, :cond_3

    move v0, v1

    :cond_3
    invoke-static {}, Lcom/baidu/location/ap;->bD()Lcom/baidu/location/ap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/location/ap;->try(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/baidu/location/n$a;->int()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x2ee

    if-ge v3, v4, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_f

    if-eqz p1, :cond_f

    :try_start_0
    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    sget v3, Lcom/baidu/location/b;->ah:I

    invoke-virtual {p1}, Lcom/baidu/location/ai$b;->do()I

    move-result v4

    invoke-virtual {p1}, Lcom/baidu/location/ai$b;->try()I

    move-result v5

    invoke-virtual {p1}, Lcom/baidu/location/ai$b;->case()Z

    move-result v6

    sget v7, Lcom/baidu/location/b;->ac:F

    cmpg-float v7, v2, v7

    if-gez v7, :cond_b

    if-eq v3, v1, :cond_7

    if-nez v3, :cond_b

    :cond_7
    sget v7, Lcom/baidu/location/b;->al:I

    if-lt v4, v7, :cond_8

    if-ne v6, v1, :cond_b

    :cond_8
    const/4 v1, 0x1

    sput v1, Lcom/baidu/location/b;->aF:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v0

    :cond_9
    invoke-virtual {p1}, Lcom/baidu/location/ai$b;->byte()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    invoke-static {p2}, Lcom/baidu/location/s;->try(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_b
    :try_start_1
    sget v6, Lcom/baidu/location/b;->X:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_e

    if-eq v3, v1, :cond_c

    if-eqz v3, :cond_c

    if-ne v3, v8, :cond_e

    :cond_c
    sget v1, Lcom/baidu/location/b;->az:I

    if-lt v4, v1, :cond_d

    sget v1, Lcom/baidu/location/b;->ap:I

    if-le v5, v1, :cond_e

    :cond_d
    const/4 v1, 0x2

    sput v1, Lcom/baidu/location/b;->aF:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sput v8, Lcom/baidu/location/b;->aF:I

    goto :goto_2

    :cond_e
    const/4 v1, 0x3

    :try_start_2
    sput v1, Lcom/baidu/location/b;->aF:I

    goto :goto_2

    :cond_f
    const/4 v1, 0x3

    sput v1, Lcom/baidu/location/b;->aF:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method static if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "%.7f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static if(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/baidu/location/b;->ax:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/location/b;->aE:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static if(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static if(Lcom/baidu/location/BDLocation;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static int()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/b;->aG:Ljava/lang/String;

    return-object v0
.end method

.method public static new()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/baidu/location/b;->aI:Ljava/lang/Process;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/location/b;->aI:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/b;->aI:Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static try()V
    .locals 0

    return-void
.end method
