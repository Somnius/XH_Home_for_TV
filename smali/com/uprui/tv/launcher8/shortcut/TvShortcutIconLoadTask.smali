.class public Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;
.super Ljava/lang/Object;
.source "TvShortcutIconLoadTask.java"

# interfaces
.implements Lcom/uprui/tv/launcher8/allapp/bitmap/BitmapTask;


# static fields
.field public static final DEBUG:Z = false

.field public static final PREFIX:Ljava/lang/String; = "TvShortcut:"

.field public static final TAG:Ljava/lang/String; = "TvShortcutIconLoadTask"


# instance fields
.field private info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;


# direct methods
.method public constructor <init>(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;->info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 43
    return-void
.end method

.method private getBitmapFromAPK(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "info"
    .parameter "context"

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 167
    .local v2, iconBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 169
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v5, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 170
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 172
    .local v3, iconDrawable:Landroid/graphics/drawable/Drawable;
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #iconDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 176
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getBitmapFromDB(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "info"
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 82
    const/4 v8, 0x0

    .line 83
    .local v8, icon:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 84
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/uprui/tv/launcher8/data/LauncherSettings$Favorites;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "iconCustom"

    aput-object v3, v2, v9

    const-string v3, "packageName =?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 87
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 89
    .local v6, array:[B
    if-eqz v6, :cond_0

    .line 90
    const/4 v1, 0x0

    array-length v2, v6

    invoke-static {v6, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 94
    .end local v6           #array:[B
    :cond_0
    if-eqz v7, :cond_1

    .line 95
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_1
    return-object v8

    .line 93
    :catchall_0
    move-exception v1

    .line 94
    if-eqz v7, :cond_2

    .line 95
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_2
    throw v1
.end method

.method private getBitmapFromNetwork(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "info"
    .parameter "context"

    .prologue
    .line 104
    invoke-static {}, Lcom/uprui/tv/launcher8/recommend/CustomerHttpClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 105
    .local v1, client:Lorg/apache/http/client/HttpClient;
    iget v11, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    iget-object v6, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconDownloadUrl:Ljava/lang/String;

    .line 106
    .local v6, iconURL:Ljava/lang/String;
    :goto_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 107
    .local v4, get:Lorg/apache/http/client/methods/HttpGet;
    const/4 v10, 0x0

    .line 108
    .local v10, response:Lorg/apache/http/HttpResponse;
    const/4 v7, 0x0

    .line 109
    .local v7, is:Ljava/io/InputStream;
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    .local v8, os:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 114
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_3

    .line 115
    new-instance v11, Ljava/io/IOException;

    const-string v12, "get response statuscode not ok"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :catch_0
    move-exception v2

    .line 133
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    if-eqz v7, :cond_0

    .line 137
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 142
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    if-eqz v8, :cond_1

    .line 144
    :try_start_3
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 149
    :cond_1
    :goto_2
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 151
    const/4 v11, 0x0

    :goto_3
    return-object v11

    .line 105
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #iconURL:Ljava/lang/String;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #os:Ljava/io/ByteArrayOutputStream;
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "http://bcs.duapp.com/recicons/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconDownloadUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 118
    .restart local v4       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #iconURL:Ljava/lang/String;
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #response:Lorg/apache/http/HttpResponse;
    :cond_3
    :try_start_4
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 119
    .local v3, entity:Lorg/apache/http/HttpEntity;
    if-nez v3, :cond_6

    .line 120
    new-instance v11, Ljava/io/IOException;

    const-string v12, "get entity null"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 134
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    :catchall_0
    move-exception v11

    .line 135
    if-eqz v7, :cond_4

    .line 137
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 142
    :cond_4
    :goto_4
    if-eqz v8, :cond_5

    .line 144
    :try_start_6
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 149
    :cond_5
    :goto_5
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 150
    throw v11

    .line 122
    .restart local v3       #entity:Lorg/apache/http/HttpEntity;
    :cond_6
    :try_start_7
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 123
    const/16 v11, 0x2000

    new-array v0, v11, [B

    .line 124
    .local v0, buffer:[B
    const/4 v9, -0x1

    .line 125
    .local v9, readCount:I
    :goto_6
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v11, -0x1

    if-ne v9, v11, :cond_9

    .line 128
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 129
    invoke-direct {p0, p1, p2, v8}, Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;->updateInfo(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)V

    .line 130
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 131
    .local v5, iconByte:[B
    const/4 v11, 0x0

    array-length v12, v5

    invoke-static {v5, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v11

    .line 135
    if-eqz v7, :cond_7

    .line 137
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 142
    :cond_7
    :goto_7
    if-eqz v8, :cond_8

    .line 144
    :try_start_9
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 149
    :cond_8
    :goto_8
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_3

    .line 126
    .end local v5           #iconByte:[B
    :cond_9
    const/4 v11, 0x0

    :try_start_a
    invoke-virtual {v8, v0, v11, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_6

    .line 138
    .restart local v5       #iconByte:[B
    :catch_1
    move-exception v2

    .line 139
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 145
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 146
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 138
    .end local v0           #buffer:[B
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #iconByte:[B
    .end local v9           #readCount:I
    .local v2, e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 139
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 145
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 146
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 138
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 139
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 145
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 146
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method private getBitmapFromResId(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "info"
    .parameter "context"

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    .local v0, res:Landroid/content/res/Resources;
    iget v1, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconResId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getTaskKey(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)Ljava/lang/String;
    .locals 2
    .parameter "info"

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TvShortcut:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateInfo(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)V
    .locals 8
    .parameter "info"
    .parameter "context"
    .parameter "os"

    .prologue
    const/4 v7, 0x3

    .line 155
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 157
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "iconFrom"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v2, "iconCustom"

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 159
    invoke-static {}, Lcom/uprui/tv/launcher8/data/LauncherSettings$Favorites;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "packageName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 161
    iput v7, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconFrom:I

    .line 162
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public getTaskKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TvShortcut:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;->info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    iget-object v1, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;->info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    iget-object v1, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public obtainBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, icon:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;->info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    iget v1, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconFrom:I

    packed-switch v1, :pswitch_data_0

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;->info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    iget v1, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconType:I

    invoke-static {v0, v1}, Lcom/uprui/tv/launcher8/allapp/Utilities;->changeBitmapToTvShortcutBounds(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 59
    :pswitch_0
    iget-object v1, p0, Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;->info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    invoke-direct {p0, v1, p1}, Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;->getBitmapFromAPK(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v1, p0, Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;->info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    invoke-direct {p0, v1, p1}, Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;->getBitmapFromResId(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v1, p0, Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;->info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    invoke-direct {p0, v1, p1}, Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;->getBitmapFromNetwork(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    goto :goto_0

    .line 68
    :pswitch_3
    iget-object v1, p0, Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;->info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    invoke-direct {p0, v1, p1}, Lcom/uprui/tv/launcher8/shortcut/TvShortcutIconLoadTask;->getBitmapFromDB(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
