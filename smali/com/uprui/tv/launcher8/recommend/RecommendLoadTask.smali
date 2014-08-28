.class public Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;
.super Ljava/lang/Object;
.source "RecommendLoadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final CATEOGORY_CODE:Ljava/lang/String; = "categoryCode"

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final LICENSE:Ljava/lang/String; = "license"

.field public static final POSITION:Ljava/lang/String; = "position"

.field public static final STARTID:Ljava/lang/String; = "startid"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final URL:Ljava/lang/String; = "http://ruisystem.duapp.com/client/recapp_tv.html"

.field public static final URL_ICON:Ljava/lang/String; = "http://bcs.duapp.com/recicons/"

.field public static final cagegoryArray:[Ljava/lang/String;


# instance fields
.field private callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

.field private context:Landroid/content/Context;

.field private is:Ljava/io/InputStream;

.field private isCancel:Z

.field private os:Ljava/io/ByteArrayOutputStream;

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "10408"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "10401"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "10403"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "102"

    aput-object v2, v0, v1

    sput-object v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->cagegoryArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "callback"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->context:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->values:Ljava/util/ArrayList;

    .line 65
    iput-object p1, p0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    .line 66
    return-void
.end method

.method private checkCancel()Z
    .locals 3

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->isCancel:Z

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "load task cancel"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->context:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;->loadErrorFormNetwork(Ljava/lang/Exception;Landroid/content/Context;)V

    .line 101
    :cond_0
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeStream()V
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->is:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 84
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->os:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_1

    .line 86
    :try_start_1
    iget-object v1, p0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->os:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 94
    :cond_1
    :goto_1
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 88
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 89
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    goto :goto_1

    .line 79
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private deleteAllFromDB()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    iget-object v1, p0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 310
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/uprui/tv/launcher8/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method private downloadIcon(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)[B
    .locals 12
    .parameter "info"

    .prologue
    .line 347
    invoke-static {}, Lcom/uprui/tv/launcher8/recommend/CustomerHttpClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 348
    .local v1, client:Lorg/apache/http/client/HttpClient;
    iget v10, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    iget-object v5, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconDownloadUrl:Ljava/lang/String;

    .line 349
    .local v5, iconURL:Ljava/lang/String;
    :goto_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 350
    .local v4, get:Lorg/apache/http/client/methods/HttpGet;
    const/4 v9, 0x0

    .line 351
    .local v9, response:Lorg/apache/http/HttpResponse;
    const/4 v6, 0x0

    .line 352
    .local v6, is:Ljava/io/InputStream;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 355
    .local v7, os:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 357
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_3

    .line 358
    new-instance v10, Ljava/io/IOException;

    const-string v11, "get response statuscode not ok"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :catch_0
    move-exception v2

    .line 375
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    if-eqz v6, :cond_0

    .line 379
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 384
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 386
    :try_start_3
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 391
    :cond_1
    :goto_2
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 393
    const/4 v10, 0x0

    :goto_3
    return-object v10

    .line 348
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #iconURL:Ljava/lang/String;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #os:Ljava/io/ByteArrayOutputStream;
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://bcs.duapp.com/recicons/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconDownloadUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 361
    .restart local v4       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #iconURL:Ljava/lang/String;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v7       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #response:Lorg/apache/http/HttpResponse;
    :cond_3
    :try_start_4
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 362
    .local v3, entity:Lorg/apache/http/HttpEntity;
    if-nez v3, :cond_6

    .line 363
    new-instance v10, Ljava/io/IOException;

    const-string v11, "get entity null"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 376
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    :catchall_0
    move-exception v10

    .line 377
    if-eqz v6, :cond_4

    .line 379
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 384
    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    .line 386
    :try_start_6
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 391
    :cond_5
    :goto_5
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 392
    throw v10

    .line 365
    .restart local v3       #entity:Lorg/apache/http/HttpEntity;
    :cond_6
    :try_start_7
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 366
    const/16 v10, 0x2000

    new-array v0, v10, [B

    .line 367
    .local v0, buffer:[B
    const/4 v8, -0x1

    .line 368
    .local v8, readCount:I
    :goto_6
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_9

    .line 371
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 373
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v10

    .line 377
    if-eqz v6, :cond_7

    .line 379
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 384
    :cond_7
    :goto_7
    if-eqz v7, :cond_8

    .line 386
    :try_start_9
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 391
    :cond_8
    :goto_8
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_3

    .line 369
    :cond_9
    const/4 v10, 0x0

    :try_start_a
    invoke-virtual {v7, v0, v10, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_6

    .line 380
    :catch_1
    move-exception v2

    .line 381
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 387
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 388
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 380
    .end local v0           #buffer:[B
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v8           #readCount:I
    .local v2, e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 381
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 387
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 388
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 380
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 381
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 387
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 388
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method private insertIntoDatabase(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    .line 314
    iget-object v6, p0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 315
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 317
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "packageName"

    iget-object v7, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v6, "className"

    iget-object v7, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->className:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v6, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_0

    .line 320
    const-string v6, "intent"

    iget-object v7, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_0
    const-string v6, "categoryCode"

    iget v7, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->categoryCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    const-string v6, "isInstall"

    iget-boolean v7, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->isInstall:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 324
    const-string v6, "isDownload"

    iget-boolean v7, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->isDownload:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 326
    const-string v6, "iconType"

    iget v7, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    const-string v6, "iconFrom"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    const-string v6, "apkDownloadUrl"

    iget-object v7, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->apkDownloadUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v6, "title"

    invoke-virtual {p1}, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v6, "iconResID"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    const-string v6, "iconDownloadUrl"

    iget-object v7, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconDownloadUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v6, "description"

    iget-object v7, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->description:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-direct {p0, p1}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->downloadIcon(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)[B

    move-result-object v0

    .line 334
    .local v0, iconByte:[B
    if-eqz v0, :cond_1

    .line 335
    const-string v6, "iconFrom"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    :cond_1
    const-string v6, "iconCustom"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 338
    const-string v6, "webUrl"

    iget-object v7, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->webUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/uprui/tv/launcher8/data/LauncherSettings$Favorites;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 341
    .local v4, uri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 343
    .local v1, id:J
    iput-wide v1, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->id:J

    .line 344
    return-void
.end method

.method private isInstall(Landroid/content/Context;Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)Z
    .locals 4
    .parameter "context"
    .parameter "info"

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, isExit:Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 400
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v2, p2, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    const/4 v0, 0x1

    .line 404
    :goto_0
    return v0

    .line 402
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    .line 206
    iput-object v0, p0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->context:Landroid/content/Context;

    .line 207
    return-void
.end method

.method private updateDB(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    invoke-direct {p0, p1}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->updateStartCount(Ljava/util/ArrayList;)V

    .line 283
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->deleteAllFromDB()V

    .line 284
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    return-void

    .line 284
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 285
    .local v0, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    invoke-direct {p0, v0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->insertIntoDatabase(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V

    goto :goto_0
.end method

.method private updateStartCount(Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    iget-object v1, p0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 291
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 293
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 302
    if-eqz v6, :cond_1

    .line 303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_1
    :goto_1
    return-void

    .line 293
    :cond_2
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 294
    .local v8, info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    sget-object v1, Lcom/uprui/tv/launcher8/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "startCount"

    aput-object v4, v2, v3

    const-string v3, "packageName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v10, v8, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 295
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->startCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 299
    .end local v8           #info:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    :catch_0
    move-exception v7

    .line 300
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    if-eqz v6, :cond_1

    .line 303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 301
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 302
    if-eqz v6, :cond_3

    .line 303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 305
    :cond_3
    throw v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->isCancel:Z

    .line 70
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->closeStream()V

    .line 71
    return-void
.end method

.method public parseData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 18
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 215
    if-nez p1, :cond_0

    .line 216
    const/4 v8, 0x0

    .line 278
    :goto_0
    return-object v8

    .line 218
    :cond_0
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    .local v13, result:Lorg/json/JSONObject;
    new-instance v14, Lorg/json/JSONObject;

    const-string v15, "message"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 220
    .local v14, root:Lorg/json/JSONObject;
    const-string v15, "hasNewVersion"

    invoke-static {v14, v15}, Lcom/rui/launcher/common/utils/JsonUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v9

    .line 221
    .local v9, needUpdate:Z
    const-string v15, "updateStrInfo"

    invoke-static {v14, v15}, Lcom/rui/launcher/common/utils/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 223
    .local v11, respone:Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v8, lists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    if-eqz v9, :cond_1

    if-eqz v11, :cond_1

    .line 226
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 227
    .local v12, responseObject:Lorg/json/JSONObject;
    const-string v15, "recAppsInfo"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 228
    .local v6, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 230
    .local v7, lenght:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v7, :cond_2

    .line 276
    .end local v4           #i:I
    .end local v6           #jsonArray:Lorg/json/JSONArray;
    .end local v7           #lenght:I
    .end local v12           #responseObject:Lorg/json/JSONObject;
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->updateDB(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 231
    .restart local v4       #i:I
    .restart local v6       #jsonArray:Lorg/json/JSONArray;
    .restart local v7       #lenght:I
    .restart local v12       #responseObject:Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 232
    .local v10, object:Lorg/json/JSONObject;
    new-instance v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    invoke-direct {v1}, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;-><init>()V

    .line 234
    .local v1, downloadAppInfo:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    :try_start_0
    const-string v15, "id"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    int-to-long v15, v15

    iput-wide v15, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->id:J

    .line 235
    const/4 v15, 0x0

    iput-boolean v15, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->isDownload:Z

    .line 236
    const-string v15, "className"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->className:Ljava/lang/String;

    .line 237
    const-string v15, "packageName"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    .line 238
    const-string v15, "classify_index"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->categoryCode:I

    .line 239
    const-string v15, "downloadURL"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->apkDownloadUrl:Ljava/lang/String;

    .line 240
    const/4 v15, -0x1

    iput v15, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconResId:I

    .line 241
    const-string v15, "title"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->setTitle(Ljava/lang/String;)V

    .line 242
    const-string v15, "describe"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->description:Ljava/lang/String;

    .line 243
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v1}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->isInstall(Landroid/content/Context;Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)Z

    move-result v15

    iput-boolean v15, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->isInstall:Z

    .line 244
    const-string v15, "iconType"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconType:I

    .line 245
    const/4 v15, 0x2

    iput v15, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconFrom:I

    .line 246
    iget v15, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconType:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 247
    const-string v15, "customIcon"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconDownloadUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_2
    :try_start_1
    const-string v15, "intent"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, intent:Ljava/lang/String;
    const/4 v15, 0x0

    invoke-static {v5, v15}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    iput-object v15, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->intent:Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 258
    .end local v5           #intent:Ljava/lang/String;
    :goto_3
    :try_start_2
    const-string v15, "webUrl"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->webUrl:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 266
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->context:Landroid/content/Context;

    invoke-static {v15}, Lcom/uprui/tv/launcher8/DialogPopView;->getDeleteSCIPackageName(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 267
    .local v3, filterStringArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v15, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 268
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 249
    .end local v3           #filterStringArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :try_start_3
    const-string v15, "iconName"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->iconDownloadUrl:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 262
    :catch_0
    move-exception v2

    .line 263
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 270
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #filterStringArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, " parseData==>\u8fc7\u6ee4 "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 259
    .end local v3           #filterStringArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v15

    goto :goto_4

    .line 254
    :catch_2
    move-exception v15

    goto :goto_3
.end method

.method public run()V
    .locals 21

    .prologue
    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->checkCancel()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 202
    :goto_0
    return-void

    .line 110
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;->loadStartFormNetwork(Landroid/content/Context;)V

    .line 114
    :cond_1
    invoke-static {}, Lcom/uprui/tv/launcher8/recommend/CustomerHttpClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 115
    .local v3, client:Lorg/apache/http/client/HttpClient;
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    const-string v17, "http://ruisystem.duapp.com/client/recapp_tv.html"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 116
    .local v12, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v8, formparams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->values:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    :try_start_0
    new-instance v7, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-direct {v7, v8, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 122
    .local v7, entity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v12, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    .line 125
    :try_start_1
    invoke-interface {v3, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 126
    .local v14, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 127
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    .line 128
    .local v16, resultEntity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v9

    .line 129
    .local v9, lenght:J
    invoke-direct/range {p0 .. p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->checkCancel()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v17

    if-eqz v17, :cond_2

    .line 198
    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->closeStream()V

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->release()V

    goto :goto_0

    .line 132
    :cond_2
    :try_start_2
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->is:Ljava/io/InputStream;

    .line 133
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->os:Ljava/io/ByteArrayOutputStream;

    .line 134
    const/16 v17, 0x2000

    move/from16 v0, v17

    new-array v2, v0, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    .line 135
    .local v2, array:[B
    const/4 v13, -0x1

    .line 136
    .local v13, read:I
    const-wide/16 v4, 0x0

    .line 138
    .local v4, currentRead:J
    :cond_3
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->is:Ljava/io/InputStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_5

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->os:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 157
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->os:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v17, v0

    const-string v18, "UTF-8"

    invoke-virtual/range {v17 .. v18}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v15

    .line 159
    .local v15, result:Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->parseData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 161
    .local v11, lists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v11, v1}, Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;->loadEndFormNetwork(Ljava/util/ArrayList;Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3

    .line 198
    .end local v2           #array:[B
    .end local v4           #currentRead:J
    .end local v9           #lenght:J
    .end local v11           #lists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    .end local v13           #read:I
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #result:Ljava/lang/String;
    .end local v16           #resultEntity:Lorg/apache/http/HttpEntity;
    :cond_4
    :goto_2
    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->closeStream()V

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->release()V

    goto/16 :goto_0

    .line 139
    .restart local v2       #array:[B
    .restart local v4       #currentRead:J
    .restart local v9       #lenght:J
    .restart local v13       #read:I
    .restart local v14       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #resultEntity:Lorg/apache/http/HttpEntity;
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->os:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 140
    int-to-long v0, v13

    move-wide/from16 v17, v0

    add-long v4, v4, v17

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x64

    mul-long v18, v18, v4

    div-long v18, v18, v9

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;->loadPositionFormNetwork(ILandroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 146
    :catch_0
    move-exception v6

    .line 147
    .local v6, e:Ljava/io/IOException;
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->checkCancel()Z

    move-result v17

    if-nez v17, :cond_6

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v6, v1}, Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;->loadErrorFormNetwork(Ljava/lang/Exception;Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_3

    .line 198
    :cond_6
    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->closeStream()V

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->release()V

    goto/16 :goto_0

    .line 164
    .end local v6           #e:Ljava/io/IOException;
    .restart local v15       #result:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 165
    .local v6, e:Lorg/json/JSONException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v6, v1}, Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;->loadErrorFormNetwork(Ljava/lang/Exception;Landroid/content/Context;)V

    .line 168
    :cond_7
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_3

    .line 198
    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->closeStream()V

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->release()V

    goto/16 :goto_0

    .line 173
    .end local v2           #array:[B
    .end local v4           #currentRead:J
    .end local v6           #e:Lorg/json/JSONException;
    .end local v9           #lenght:J
    .end local v13           #read:I
    .end local v15           #result:Ljava/lang/String;
    .end local v16           #resultEntity:Lorg/apache/http/HttpEntity;
    :cond_8
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/Exception;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "response state code -->"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;->loadErrorFormNetwork(Ljava/lang/Exception;Landroid/content/Context;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_3

    .line 198
    :cond_9
    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->closeStream()V

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->release()V

    goto/16 :goto_0

    .line 179
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v6

    .line 180
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_a
    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v6, v1}, Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;->loadErrorFormNetwork(Ljava/lang/Exception;Landroid/content/Context;)V

    .line 184
    :cond_a
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_2

    .line 192
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v7           #entity:Lorg/apache/http/HttpEntity;
    :catch_3
    move-exception v6

    .line 193
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v6, v1}, Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;->loadErrorFormNetwork(Ljava/lang/Exception;Landroid/content/Context;)V

    .line 196
    :cond_b
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 198
    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->closeStream()V

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->release()V

    goto/16 :goto_0

    .line 185
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v7       #entity:Lorg/apache/http/HttpEntity;
    :catch_4
    move-exception v6

    .line 186
    .local v6, e:Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->callback:Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v6, v1}, Lcom/uprui/tv/launcher8/data/TvWorkspaceCallback;->loadErrorFormNetwork(Ljava/lang/Exception;Landroid/content/Context;)V

    .line 190
    :cond_c
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_2

    .line 197
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #entity:Lorg/apache/http/HttpEntity;
    :catchall_0
    move-exception v17

    .line 198
    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->closeStream()V

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/uprui/tv/launcher8/recommend/RecommendLoadTask;->release()V

    .line 201
    throw v17
.end method
