.class Lcom/baidu/location/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/an;
.implements Lcom/baidu/location/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/t$a;
    }
.end annotation


# static fields
.field public static e0:Z = false

.field public static e1:Z = false

.field private static final e2:Ljava/lang/String; = null

.field public static e4:I = 0x0

.field public static e5:Z = false

.field public static e6:Z = false

.field private static final e8:I = 0x80

.field public static e9:Z

.field private static fa:Lcom/baidu/location/t;

.field public static fb:Z

.field public static fc:I

.field public static fd:I


# instance fields
.field private e3:Lcom/baidu/location/t$a;

.field private e7:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/t;->fa:Lcom/baidu/location/t;

    sput-boolean v1, Lcom/baidu/location/t;->e6:Z

    sput-boolean v1, Lcom/baidu/location/t;->e9:Z

    sput-boolean v3, Lcom/baidu/location/t;->fb:Z

    sput-boolean v1, Lcom/baidu/location/t;->e0:Z

    sput-boolean v1, Lcom/baidu/location/t;->e1:Z

    sput-boolean v1, Lcom/baidu/location/t;->e5:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/con.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/t;->e2:Ljava/lang/String;

    sput v2, Lcom/baidu/location/t;->fc:I

    sput v2, Lcom/baidu/location/t;->e4:I

    sput v3, Lcom/baidu/location/t;->fd:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/t;->e3:Lcom/baidu/location/t$a;

    iput-boolean v1, p0, Lcom/baidu/location/t;->e7:Z

    new-instance v0, Lcom/baidu/location/t$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/t$a;-><init>(Lcom/baidu/location/t;)V

    iput-object v0, p0, Lcom/baidu/location/t;->e3:Lcom/baidu/location/t$a;

    sput-boolean v1, Lcom/baidu/location/t;->fb:Z

    return-void
.end method

.method public static aI()V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/baidu/location/f;->L:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/config.dat"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v0, Lcom/baidu/location/b;->au:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    sget-boolean v3, Lcom/baidu/location/b;->aR:Z

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "{\"ver\":\"%d\",\"gps\":\"%.1f|%.1f|%.1f|%.1f|%d|%d|%d|%d|%d|%d|%d\",\"up\":\"%.1f|%.1f|%.1f|%.1f\",\"wf\":\"%d|%.1f|%d|%.1f\",\"ab\":\"%.2f|%.2f|%d|%d\",\"gpc\":\"%d|%d|%d|%d|%d|%d\",\"zxd\":\"%.1f|%.1f|%d|%d|%d\",\"shak\":\"%d|%d|%.1f\"}"

    const/16 v7, 0x26

    new-array v7, v7, [Ljava/lang/Object;

    sget v8, Lcom/baidu/location/b;->af:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    sget v2, Lcom/baidu/location/b;->ab:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x2

    sget v2, Lcom/baidu/location/b;->aK:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x3

    sget v2, Lcom/baidu/location/b;->ad:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x4

    sget v2, Lcom/baidu/location/b;->aM:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x5

    sget v2, Lcom/baidu/location/b;->aC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x6

    sget v2, Lcom/baidu/location/b;->U:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x7

    sget v2, Lcom/baidu/location/b;->aD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x8

    sget v2, Lcom/baidu/location/b;->V:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x9

    sget v2, Lcom/baidu/location/b;->Y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xa

    sget v2, Lcom/baidu/location/b;->as:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xb

    sget v2, Lcom/baidu/location/b;->aW:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xc

    sget v2, Lcom/baidu/location/b;->a5:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xd

    sget v2, Lcom/baidu/location/b;->a2:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xe

    sget v2, Lcom/baidu/location/b;->ak:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xf

    sget v2, Lcom/baidu/location/b;->aS:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x10

    sget v2, Lcom/baidu/location/b;->aQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x11

    sget v2, Lcom/baidu/location/b;->Z:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x12

    sget v2, Lcom/baidu/location/b;->ao:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x13

    sget v2, Lcom/baidu/location/b;->aN:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x14

    sget v2, Lcom/baidu/location/b;->a4:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x15

    sget v2, Lcom/baidu/location/b;->a1:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x16

    sget v2, Lcom/baidu/location/b;->aZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x17

    sget v2, Lcom/baidu/location/b;->aX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    const/16 v0, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x1a

    sget v1, Lcom/baidu/location/b;->aq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x1b

    sget v1, Lcom/baidu/location/b;->at:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x1c

    sget-wide v1, Lcom/baidu/location/b;->aL:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x1d

    sget v1, Lcom/baidu/location/b;->aO:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x1e

    sget v1, Lcom/baidu/location/b;->ac:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x1f

    sget v1, Lcom/baidu/location/b;->X:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x20

    sget v1, Lcom/baidu/location/b;->al:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x21

    sget v1, Lcom/baidu/location/b;->az:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x22

    sget v1, Lcom/baidu/location/b;->ap:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x23

    sget v1, Lcom/baidu/location/b;->aP:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x24

    sget v1, Lcom/baidu/location/b;->aH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x25

    sget v1, Lcom/baidu/location/b;->aU:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/baidu/location/f;->L:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v3, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    array-length v1, v0

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    move v3, v2

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto/16 :goto_0
.end method

.method public static aJ()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/t;->e2:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/f;->L:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/16 v0, 0x80

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static aK()Lcom/baidu/location/t;
    .locals 1

    sget-object v0, Lcom/baidu/location/t;->fa:Lcom/baidu/location/t;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/t;

    invoke-direct {v0}, Lcom/baidu/location/t;-><init>()V

    sput-object v0, Lcom/baidu/location/t;->fa:Lcom/baidu/location/t;

    :cond_0
    sget-object v0, Lcom/baidu/location/t;->fa:Lcom/baidu/location/t;

    return-object v0
.end method

.method public static aN()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/config.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/f;->L:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-wide v1, Lcom/baidu/location/b;->aB:D

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeDouble(D)V

    sget-wide v1, Lcom/baidu/location/b;->aa:D

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeDouble(D)V

    sget-boolean v1, Lcom/baidu/location/b;->am:Z

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    sget-boolean v1, Lcom/baidu/location/b;->am:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/baidu/location/b;->aw:[B

    if-eqz v1, :cond_2

    sget-object v1, Lcom/baidu/location/b;->aw:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static aO()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/t;->e2:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v3, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    const-wide/16 v4, 0x80

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v4, v1, [B

    :goto_0
    if-ge v0, v3, :cond_0

    mul-int v5, v1, v0

    add-int/lit16 v5, v5, 0x80

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    if-lez v5, :cond_3

    if-ge v5, v1, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    add-int/lit8 v6, v5, -0x1

    aget-byte v6, v4, v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v6, v4, v7, v5}, Ljava/lang/String;-><init>([BII)V

    sget-object v5, Lcom/baidu/location/ap;->hb:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    sput v1, Lcom/baidu/location/t;->fc:I

    sput v0, Lcom/baidu/location/t;->fd:I

    :cond_0
    if-ne v0, v3, :cond_1

    sput v3, Lcom/baidu/location/t;->fd:I

    :cond_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic do(Lcom/baidu/location/t;Lorg/apache/http/HttpEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/t;->do(Lorg/apache/http/HttpEntity;)V

    return-void
.end method

.method private do(Lorg/apache/http/HttpEntity;)V
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "utf-8"

    invoke-static {p1, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/t;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/baidu/location/t;->aI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ctr"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ctr"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/location/t;->e4:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/baidu/location/t;->aO()V

    sget v0, Lcom/baidu/location/t;->e4:I

    if-eq v0, v1, :cond_3

    sget v0, Lcom/baidu/location/t;->e4:I

    sget v2, Lcom/baidu/location/t;->e4:I

    invoke-static {v2}, Lcom/baidu/location/t;->int(I)V

    :goto_2
    if-eq v0, v1, :cond_2

    invoke-static {v0}, Lcom/baidu/location/t;->new(I)V

    :cond_2
    invoke-static {}, Lcom/baidu/location/m;->D()Lcom/baidu/location/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/m;->E()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    return-void

    :cond_3
    sget v0, Lcom/baidu/location/t;->fc:I

    if-eq v0, v1, :cond_4

    sget v0, Lcom/baidu/location/t;->fc:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method static synthetic if(Lcom/baidu/location/t;Lorg/apache/http/HttpEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/t;->if(Lorg/apache/http/HttpEntity;)V

    return-void
.end method

.method private if(Lorg/apache/http/HttpEntity;)V
    .locals 11

    const-wide v5, 0x3f9999999999999aL

    const/16 v10, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide/16 v8, 0xff

    :try_start_0
    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/t;->aN()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    array-length v3, v2

    const/16 v4, 0x280

    if-ge v3, v4, :cond_2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/b;->am:Z

    sget-wide v2, Lcom/baidu/location/b;->aj:D

    add-double/2addr v2, v5

    sput-wide v2, Lcom/baidu/location/b;->aa:D

    sget-wide v2, Lcom/baidu/location/b;->a0:D

    sub-double/2addr v2, v5

    sput-wide v2, Lcom/baidu/location/b;->aB:D

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    sput-boolean v3, Lcom/baidu/location/b;->am:Z

    const/4 v3, 0x7

    aget-byte v3, v2, v3

    int-to-long v3, v3

    and-long/2addr v3, v8

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    const/4 v5, 0x6

    aget-byte v5, v2, v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/4 v5, 0x5

    aget-byte v5, v2, v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/4 v5, 0x4

    aget-byte v5, v2, v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/4 v5, 0x3

    aget-byte v5, v2, v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/4 v5, 0x2

    aget-byte v5, v2, v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/4 v5, 0x1

    aget-byte v5, v2, v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    shl-long/2addr v5, v10

    or-long/2addr v3, v5

    const/4 v5, 0x0

    aget-byte v5, v2, v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    or-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sput-wide v3, Lcom/baidu/location/b;->aB:D

    const/16 v3, 0xf

    aget-byte v3, v2, v3

    int-to-long v3, v3

    and-long/2addr v3, v8

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    const/16 v5, 0xe

    aget-byte v5, v2, v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/16 v5, 0xd

    aget-byte v5, v2, v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/16 v5, 0xc

    aget-byte v5, v2, v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/16 v5, 0xb

    aget-byte v5, v2, v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/16 v5, 0xa

    aget-byte v5, v2, v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/16 v5, 0x9

    aget-byte v5, v2, v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    shl-long/2addr v5, v10

    or-long/2addr v3, v5

    const/16 v5, 0x8

    aget-byte v5, v2, v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    or-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sput-wide v3, Lcom/baidu/location/b;->aa:D

    const/16 v3, 0x271

    new-array v3, v3, [B

    sput-object v3, Lcom/baidu/location/b;->aw:[B

    :goto_2
    const/16 v3, 0x271

    if-ge v0, v3, :cond_3

    sget-object v3, Lcom/baidu/location/b;->aw:[B

    add-int/lit8 v4, v0, 0x10

    aget-byte v4, v2, v4

    aput-byte v4, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public static int(I)V
    .locals 5

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/t;->e2:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/baidu/location/t;->aJ()V

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    sget v3, Lcom/baidu/location/t;->fd:I

    mul-int/2addr v0, v3

    add-int/lit16 v0, v0, 0x80

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/baidu/location/ap;->hb:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    sget v0, Lcom/baidu/location/t;->fd:I

    if-ne v2, v0, :cond_1

    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :cond_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static new(I)V
    .locals 6

    const/high16 v5, 0x2

    const/high16 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    and-int/lit8 v0, p0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/baidu/location/t;->e6:Z

    and-int/lit8 v0, p0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/baidu/location/t;->e9:Z

    and-int/lit8 v0, p0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/baidu/location/t;->fb:Z

    and-int/lit8 v0, p0, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/baidu/location/t;->e0:Z

    and-int v0, p0, v4

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/baidu/location/t;->e1:Z

    and-int v0, p0, v5

    if-ne v0, v5, :cond_5

    :goto_5
    sput-boolean v1, Lcom/baidu/location/t;->e5:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method


# virtual methods
.method public aL()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/config.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/baidu/location/t;->i(Ljava/lang/String;)Z

    :cond_0
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readDouble()D

    move-result-wide v1

    sput-wide v1, Lcom/baidu/location/b;->aB:D

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readDouble()D

    move-result-wide v1

    sput-wide v1, Lcom/baidu/location/b;->aa:D

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    sput-boolean v1, Lcom/baidu/location/b;->am:Z

    sget-boolean v1, Lcom/baidu/location/b;->am:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x271

    new-array v1, v1, [B

    sput-object v1, Lcom/baidu/location/b;->aw:[B

    sget-object v1, Lcom/baidu/location/b;->aw:[B

    const/4 v2, 0x0

    const/16 v3, 0x271

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    :cond_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/baidu/location/b;->af:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&usr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/ap;->bD()Lcom/baidu/location/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/ap;->bC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/ap;->hb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&prod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/ap;->g7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/t;->e3:Lcom/baidu/location/t$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/baidu/location/t$a;->if(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public aM()V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/t;->e7:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/location/t;->aL()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/t;->e7:Z

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/t;->e3:Lcom/baidu/location/t$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/location/t$a;->if(Ljava/lang/String;Z)V

    return-void
.end method

.method public i(Ljava/lang/String;)Z
    .locals 9

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_28

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "ver"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/baidu/location/b;->af:I

    if-le v3, v4, :cond_28

    sput v3, Lcom/baidu/location/b;->af:I

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/16 v5, 0xa

    if-le v4, v5, :cond_a

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/b;->ab:F

    :cond_0
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/b;->aK:F

    :cond_1
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/b;->ad:F

    :cond_2
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/b;->aM:F

    :cond_3
    const/4 v4, 0x4

    aget-object v4, v3, v4

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x4

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/b;->aC:I

    :cond_4
    const/4 v4, 0x5

    aget-object v4, v3, v4

    if-eqz v4, :cond_5

    const/4 v4, 0x5

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x5

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/b;->U:I

    :cond_5
    const/4 v4, 0x6

    aget-object v4, v3, v4

    if-eqz v4, :cond_6

    const/4 v4, 0x6

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x6

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/b;->aD:I

    :cond_6
    const/4 v4, 0x7

    aget-object v4, v3, v4

    if-eqz v4, :cond_7

    const/4 v4, 0x7

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x7

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/b;->V:I

    :cond_7
    const/16 v4, 0x8

    aget-object v4, v3, v4

    if-eqz v4, :cond_8

    const/16 v4, 0x8

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v4, 0x8

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/b;->Y:I

    :cond_8
    const/16 v4, 0x9

    aget-object v4, v3, v4

    if-eqz v4, :cond_9

    const/16 v4, 0x9

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const/16 v4, 0x9

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/b;->as:I

    :cond_9
    const/16 v4, 0xa

    aget-object v4, v3, v4

    if-eqz v4, :cond_a

    const/16 v4, 0xa

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/b;->aW:I

    :cond_a
    const-string v3, "up"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "up"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v6, :cond_e

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/b;->a5:F

    :cond_b
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/b;->a2:F

    :cond_c
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_d

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/b;->ak:F

    :cond_d
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_e

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/baidu/location/b;->aS:F

    :cond_e
    const-string v3, "wf"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "wf"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v6, :cond_12

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/b;->aQ:I

    :cond_f
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/b;->Z:F

    :cond_10
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_11

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/b;->ao:I

    :cond_11
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_12

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/baidu/location/b;->aN:F

    :cond_12
    const-string v3, "ab"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "ab"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v6, :cond_16

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_13

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/b;->a4:F

    :cond_13
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/b;->a1:F

    :cond_14
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_15

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/b;->aZ:I

    :cond_15
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_16

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/b;->aX:I

    :cond_16
    const-string v3, "zxd"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "zxd"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v7, :cond_1b

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_17

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/b;->ac:F

    :cond_17
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_18

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/b;->X:F

    :cond_18
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_19

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/b;->al:I

    :cond_19
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/b;->az:I

    :cond_1a
    const/4 v4, 0x4

    aget-object v4, v3, v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x4

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/b;->ap:I

    :cond_1b
    const-string v3, "gpc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string v3, "gpc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x5

    if-le v4, v5, :cond_21

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_1c

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_25

    const/4 v4, 0x1

    sput-boolean v4, Lcom/baidu/location/b;->au:Z

    :cond_1c
    :goto_0
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_1d

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_26

    const/4 v4, 0x1

    sput-boolean v4, Lcom/baidu/location/b;->aR:Z

    :cond_1d
    :goto_1
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/b;->aq:I

    :cond_1e
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/b;->at:I

    :cond_1f
    const/4 v4, 0x4

    aget-object v4, v3, v4

    if-eqz v4, :cond_20

    const/4 v4, 0x4

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    const/4 v4, 0x4

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_27

    int-to-long v4, v4

    sput-wide v4, Lcom/baidu/location/b;->aL:J

    sget-wide v4, Lcom/baidu/location/b;->aL:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    sput-wide v4, Lcom/baidu/location/b;->aJ:J

    sget-wide v4, Lcom/baidu/location/b;->aJ:J

    shr-long/2addr v4, v8

    sput-wide v4, Lcom/baidu/location/b;->ay:J

    :cond_20
    :goto_2
    const/4 v4, 0x5

    aget-object v4, v3, v4

    if-eqz v4, :cond_21

    const/4 v4, 0x5

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/b;->aO:I

    :cond_21
    const-string v3, "shak"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v3, "shak"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-le v3, v8, :cond_24

    const/4 v3, 0x0

    aget-object v3, v2, v3

    if-eqz v3, :cond_22

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/b;->aP:I

    :cond_22
    const/4 v3, 0x1

    aget-object v3, v2, v3

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/b;->aH:I

    :cond_23
    const/4 v3, 0x2

    aget-object v3, v2, v3

    if-eqz v3, :cond_24

    const/4 v3, 0x2

    aget-object v3, v2, v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sput v2, Lcom/baidu/location/b;->aU:F

    :cond_24
    :goto_3
    move v1, v0

    :goto_4
    return v1

    :cond_25
    const/4 v4, 0x0

    sput-boolean v4, Lcom/baidu/location/b;->au:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_26
    const/4 v4, 0x0

    sput-boolean v4, Lcom/baidu/location/b;->aR:Z

    goto/16 :goto_1

    :cond_27
    const/4 v4, 0x0

    sput-boolean v4, Lcom/baidu/location/b;->aY:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_28
    move v0, v1

    goto :goto_3
.end method
