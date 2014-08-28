.class public Lcom/rui/launcher/common/RLauncherProvider;
.super Landroid/content/ContentProvider;
.source "RLauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;,
        Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "rui.launcher.db"

.field private static final DATABASE_VERSION:I = 0x5

.field static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field static final TABLE_CLASSIFIEDS:Ljava/lang/String; = "classifieds"

.field static final TABLE_RECOMMENDS:Ljava/lang/String; = "recommends"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/rui/launcher/common/RLauncherProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rui/launcher/common/RLauncherProvider;->TAG:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/rui/launcher/common/RLauncherProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/rui/launcher/common/RLauncherProvider;->updateLocalDB()V

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/rui/launcher/common/RLauncherProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/rui/launcher/common/DeviceType;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private importInitDB()V
    .locals 8

    .prologue
    .line 487
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 488
    invoke-virtual {p0}, Lcom/rui/launcher/common/RLauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/databases/local_category.db"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 487
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 489
    .local v5, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 490
    .local v2, localFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 491
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 494
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/rui/launcher/common/RLauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/rui/launcher/common/R$raw;->local_category:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 496
    .local v1, in:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 498
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v3           #out:Ljava/io/FileOutputStream;
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {v1, v4}, Lcom/rui/launcher/common/RLauncherProvider;->writeTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 505
    .end local v1           #in:Ljava/io/InputStream;
    .end local v4           #out:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 500
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 501
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 500
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 184
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/rui/launcher/common/RLauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 188
    :cond_1
    return-void
.end method

.method private updateLocalDB()V
    .locals 4

    .prologue
    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 509
    invoke-virtual {p0}, Lcom/rui/launcher/common/RLauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/databases/local_category.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 508
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 511
    .local v0, localFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 515
    :cond_0
    invoke-direct {p0}, Lcom/rui/launcher/common/RLauncherProvider;->importInitDB()V

    .line 516
    return-void
.end method

.method public static writeTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 7
    .parameter "in"
    .parameter "out"

    .prologue
    .line 519
    const-wide/16 v3, 0x0

    .line 520
    .local v3, size:J
    const/4 v1, 0x0

    .line 521
    .local v1, count:I
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 523
    .local v0, buffer:[B
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 530
    :goto_1
    return-wide v3

    .line 524
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    int-to-long v5, v1

    add-long/2addr v3, v5

    goto :goto_0

    .line 527
    :catch_0
    move-exception v2

    .line 528
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 143
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v4, p0, Lcom/rui/launcher/common/RLauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 144
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 146
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 147
    .local v2, numOperations:I
    new-array v3, v2, [Landroid/content/ContentProviderResult;

    .line 148
    .local v3, results:[Landroid/content/ContentProviderResult;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 152
    return-object v3

    .line 149
    :cond_0
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentProviderOperation;

    invoke-virtual {v4, p0, v3, v1}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v4

    aput-object v4, v3, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1           #i:I
    .end local v2           #numOperations:I
    .end local v3           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v4

    .line 154
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 155
    throw v4
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 119
    new-instance v0, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 121
    .local v0, args:Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;
    iget-object v4, p0, Lcom/rui/launcher/common/RLauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 122
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 124
    :try_start_0
    array-length v3, p2

    .line 125
    .local v3, numValues:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 130
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 135
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/RLauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 136
    array-length v4, p2

    :goto_1
    return v4

    .line 126
    :cond_0
    :try_start_1
    iget-object v4, v0, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, p2, v2

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 132
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 127
    const/4 v4, 0x0

    goto :goto_1

    .line 125
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v2           #i:I
    .end local v3           #numValues:I
    :catchall_0
    move-exception v4

    .line 132
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 133
    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 161
    new-instance v0, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 163
    .local v0, args:Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;
    iget-object v3, p0, Lcom/rui/launcher/common/RLauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 164
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 165
    .local v1, count:I
    if-lez v1, :cond_0

    .line 166
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/RLauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 168
    :cond_0
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 80
    new-instance v0, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 81
    .local v0, args:Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;
    iget-object v1, v0, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vnd.android.cursor.dir/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vnd.android.cursor.item/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v4, 0x0

    .line 103
    new-instance v0, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 105
    .local v0, args:Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;
    iget-object v5, p0, Lcom/rui/launcher/common/RLauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 106
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, v0, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v5, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 108
    .local v2, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_0

    .line 114
    :goto_0
    return-object v4

    .line 111
    :cond_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 112
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/RLauncherProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v4, p1

    .line 114
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/rui/launcher/common/RLauncherProvider;->importInitDB()V

    .line 74
    new-instance v0, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/rui/launcher/common/RLauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/rui/launcher/common/RLauncherProvider$DatabaseHelper;-><init>(Lcom/rui/launcher/common/RLauncherProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rui/launcher/common/RLauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 90
    new-instance v8, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 91
    .local v8, args:Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 92
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/rui/launcher/common/RLauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 95
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 96
    .local v9, result:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/rui/launcher/common/RLauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 98
    return-object v9
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, count:I
    new-instance v0, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 175
    .local v0, args:Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;
    iget-object v3, p0, Lcom/rui/launcher/common/RLauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 176
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/rui/launcher/common/RLauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 177
    if-lez v1, :cond_0

    .line 178
    invoke-direct {p0, p1}, Lcom/rui/launcher/common/RLauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 180
    :cond_0
    return v1
.end method
