.class public Lcom/baidu/location/i;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static a:Lcom/baidu/location/i; = null

.field private static final do:Ljava/lang/String; = "bd_geofence.db"

.field private static final if:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "bd_geofence.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/baidu/location/i;
    .locals 2

    const-class v1, Lcom/baidu/location/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/location/i;->a:Lcom/baidu/location/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/i;

    invoke-direct {v0, p0}, Lcom/baidu/location/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/location/i;->a:Lcom/baidu/location/i;

    :cond_0
    sget-object v0, Lcom/baidu/location/i;->a:Lcom/baidu/location/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE  IF NOT EXISTS geofence (_id INTEGER PRIMARY KEY AUTOINCREMENT,geofence_id NTEXT,longitude NTEXT,latitude NTEXT,radius_type INTEGER,radius NTEXT,valid_date INTEGER,duration_millis INTEGER,coord_type NTEXT,next_active_time INTEGER,is_lac INTEGER,is_cell INTEGER,is_wifi INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE  IF NOT EXISTS geofence_detail (_id INTEGER PRIMARY KEY AUTOINCREMENT,geofence_id NTEXT,ap NTEXT,ap_backup NTEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX  IF NOT EXISTS ap_index ON geofence_detail (ap);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/i;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
