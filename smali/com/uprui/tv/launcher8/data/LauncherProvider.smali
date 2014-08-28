.class public Lcom/uprui/tv/launcher8/data/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/tv/launcher8/data/LauncherProvider$DatabaseHelper;,
        Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.android.launcher8.uprui.tv.settings"

.field static final CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri; = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "launcher.db"

.field private static final DATABASE_VERSION:I = 0x2

.field static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "content://com.android.launcher8.uprui.tv.settings/appWidgetReset"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/uprui/tv/launcher8/data/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 109
    new-instance v0, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 111
    .local v0, args:Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;
    iget-object v3, p0, Lcom/uprui/tv/launcher8/data/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 112
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 113
    .local v1, count:I
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 71
    new-instance v0, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 72
    .local v0, args:Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;
    iget-object v1, v0, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vnd.android.cursor.dir/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vnd.android.cursor.item/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 96
    new-instance v0, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 98
    .local v0, args:Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;
    iget-object v5, p0, Lcom/uprui/tv/launcher8/data/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 99
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, v0, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v5, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 100
    .local v2, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_0

    .line 104
    :goto_0
    return-object v4

    .line 103
    :cond_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    move-object v4, p1

    .line 104
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/uprui/tv/launcher8/data/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/data/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uprui/tv/launcher8/data/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uprui/tv/launcher8/data/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 66
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

    .line 83
    new-instance v8, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    .local v8, args:Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 85
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/uprui/tv/launcher8/data/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 88
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 89
    .local v9, result:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/data/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 91
    return-object v9
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 118
    new-instance v0, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    .local v0, args:Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;
    iget-object v3, p0, Lcom/uprui/tv/launcher8/data/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 121
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/uprui/tv/launcher8/data/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 123
    .local v1, count:I
    return v1
.end method
