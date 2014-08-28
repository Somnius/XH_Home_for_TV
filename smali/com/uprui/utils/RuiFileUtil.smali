.class public Lcom/uprui/utils/RuiFileUtil;
.super Ljava/lang/Object;
.source "RuiFileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/utils/RuiFileUtil$FileType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$uprui$utils$RuiFileUtil$FileType:[I = null

.field private static final APK:Ljava/lang/String; = "ruiapk"

.field private static final APK_TEMP:Ljava/lang/String; = "ruiapktemp"

.field public static final DOWNLAOD_FOLDER_NAME:Ljava/lang/String; = "download"

.field private static final IMAGE:Ljava/lang/String; = "ruiimage"

.field private static final IMAGE_TEMP:Ljava/lang/String; = "ruiimagetemp"

.field private static final RAR:Ljava/lang/String; = "ruirar"

.field private static final RAR_TEMP:Ljava/lang/String; = "ruirartemp"

.field public static final SPARE_SPACE:I = 0x14

.field private static final TXT:Ljava/lang/String; = "ruitxt"

.field private static final TXT_TEMP:Ljava/lang/String; = "ruitxttemp"

.field private static final XML:Ljava/lang/String; = "ruixml"

.field private static final XML_TEMP:Ljava/lang/String; = "ruixmltemp"

.field private static final ZIP:Ljava/lang/String; = "ruizip"

.field private static final ZIP_TEMP:Ljava/lang/String; = "ruiziptemp"

.field public static app:Landroid/app/Application;


# direct methods
.method static synthetic $SWITCH_TABLE$com$uprui$utils$RuiFileUtil$FileType()[I
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/uprui/utils/RuiFileUtil;->$SWITCH_TABLE$com$uprui$utils$RuiFileUtil$FileType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/uprui/utils/RuiFileUtil$FileType;->values()[Lcom/uprui/utils/RuiFileUtil$FileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_APK:Lcom/uprui/utils/RuiFileUtil$FileType;

    invoke-virtual {v1}, Lcom/uprui/utils/RuiFileUtil$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_IMAGE:Lcom/uprui/utils/RuiFileUtil$FileType;

    invoke-virtual {v1}, Lcom/uprui/utils/RuiFileUtil$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_RAR:Lcom/uprui/utils/RuiFileUtil$FileType;

    invoke-virtual {v1}, Lcom/uprui/utils/RuiFileUtil$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_TXT:Lcom/uprui/utils/RuiFileUtil$FileType;

    invoke-virtual {v1}, Lcom/uprui/utils/RuiFileUtil$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_XML:Lcom/uprui/utils/RuiFileUtil$FileType;

    invoke-virtual {v1}, Lcom/uprui/utils/RuiFileUtil$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_ZIP:Lcom/uprui/utils/RuiFileUtil$FileType;

    invoke-virtual {v1}, Lcom/uprui/utils/RuiFileUtil$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/uprui/utils/RuiFileUtil;->$SWITCH_TABLE$com$uprui$utils$RuiFileUtil$FileType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeFileMode(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .parameter "file"
    .parameter "mode"

    .prologue
    .line 290
    const/4 v2, 0x0

    .line 292
    .local v2, success:Z
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "chmod"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    const/4 v2, 0x1

    .line 301
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return v2

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 7
    .parameter "src"
    .parameter "dst"

    .prologue
    const/4 v6, 0x0

    .line 307
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 308
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 310
    .local v3, fos:Ljava/io/FileOutputStream;
    const/16 v5, 0x2000

    :try_start_1
    new-array v0, v5, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    .local v0, array:[B
    const/4 v4, -0x1

    .line 313
    .local v4, readCount:I
    :goto_0
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 316
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 323
    :goto_1
    :try_start_3
    invoke-static {v2}, Lcom/uprui/utils/RuiFileUtil;->safeCloseStream(Ljava/io/Closeable;)V

    .line 324
    invoke-static {v3}, Lcom/uprui/utils/RuiFileUtil;->safeCloseStream(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 332
    .end local v0           #array:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #readCount:I
    :goto_2
    return v6

    .line 314
    .restart local v0       #array:[B
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #readCount:I
    :cond_0
    const/4 v5, 0x0

    :try_start_4
    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v1

    .line 320
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 322
    .end local v0           #array:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #readCount:I
    :catchall_0
    move-exception v5

    .line 323
    :try_start_6
    invoke-static {v2}, Lcom/uprui/utils/RuiFileUtil;->safeCloseStream(Ljava/io/Closeable;)V

    .line 324
    invoke-static {v3}, Lcom/uprui/utils/RuiFileUtil;->safeCloseStream(Ljava/io/Closeable;)V

    .line 325
    throw v5
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    .line 326
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 328
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public static findApkLoadFile(Landroid/content/ComponentName;)Ljava/io/File;
    .locals 2
    .parameter "cn"

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/uprui/utils/RuiFileUtil;->generateApkFileName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uprui/utils/RuiFileUtil;->getLoadFileByName(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static findApkLoadFile(Landroid/content/ComponentName;I)Ljava/io/File;
    .locals 2
    .parameter "cn"
    .parameter "versionCode"

    .prologue
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/uprui/utils/RuiFileUtil;->generateApkFileName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uprui/utils/RuiFileUtil;->getLoadFileByName(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static generateApkFileName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .parameter "cn"

    .prologue
    .line 417
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, className:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, apkName:Ljava/lang/String;
    return-object v0
.end method

.method public static generateApkLoadFile(Landroid/content/ComponentName;)Ljava/io/File;
    .locals 2
    .parameter "cn"

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/uprui/utils/RuiFileUtil;->generateApkFileName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uprui/utils/RuiFileUtil;->generateValidLoadFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static generateApkLoadFile(Landroid/content/ComponentName;I)Ljava/io/File;
    .locals 2
    .parameter "cn"
    .parameter "versionCode"

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/uprui/utils/RuiFileUtil;->generateApkFileName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uprui/utils/RuiFileUtil;->generateValidLoadFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static generateLoadTempFile(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter "fileName"

    .prologue
    .line 234
    invoke-static {p0}, Lcom/uprui/utils/RuiFileUtil;->getFileTypeByName(Ljava/lang/String;)Lcom/uprui/utils/RuiFileUtil$FileType;

    move-result-object v2

    .line 235
    .local v2, fileType:Lcom/uprui/utils/RuiFileUtil$FileType;
    invoke-static {v2}, Lcom/uprui/utils/RuiFileUtil;->getValidLoadTempFolder(Lcom/uprui/utils/RuiFileUtil$FileType;)Ljava/io/File;

    move-result-object v3

    .line 236
    .local v3, tempFolder:Ljava/io/File;
    const-string v6, "."

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 237
    .local v5, where:I
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, tmpFileName:Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_rui"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-static {v6, v7, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 246
    :goto_0
    return-object v1

    .line 241
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 246
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static generateValidLoadFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .parameter "fileName"

    .prologue
    .line 255
    invoke-static {p0}, Lcom/uprui/utils/RuiFileUtil;->getFileTypeByName(Ljava/lang/String;)Lcom/uprui/utils/RuiFileUtil$FileType;

    move-result-object v2

    .line 256
    .local v2, fileType:Lcom/uprui/utils/RuiFileUtil$FileType;
    invoke-static {v2}, Lcom/uprui/utils/RuiFileUtil;->getValidLoadFolder(Lcom/uprui/utils/RuiFileUtil$FileType;)Ljava/io/File;

    move-result-object v3

    .line 257
    .local v3, folder:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 261
    const-string v4, "771"

    invoke-static {v1, v4}, Lcom/uprui/utils/RuiFileUtil;->changeFileMode(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-object v1

    .line 262
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/uprui/utils/RuiFileUtil;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/uprui/utils/RuiFileUtil;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getFileTempTypeString(Lcom/uprui/utils/RuiFileUtil$FileType;)Ljava/lang/String;
    .locals 3
    .parameter "fileTempType"

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, type:Ljava/lang/String;
    invoke-static {}, Lcom/uprui/utils/RuiFileUtil;->$SWITCH_TABLE$com$uprui$utils$RuiFileUtil$FileType()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/uprui/utils/RuiFileUtil$FileType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 117
    :goto_0
    return-object v0

    .line 98
    :pswitch_0
    const-string v0, "ruiapktemp"

    .line 99
    goto :goto_0

    .line 101
    :pswitch_1
    const-string v0, "ruitxttemp"

    .line 102
    goto :goto_0

    .line 104
    :pswitch_2
    const-string v0, "ruiimagetemp"

    .line 105
    goto :goto_0

    .line 107
    :pswitch_3
    const-string v0, "ruixmltemp"

    .line 108
    goto :goto_0

    .line 110
    :pswitch_4
    const-string v0, "ruiziptemp"

    .line 111
    goto :goto_0

    .line 113
    :pswitch_5
    const-string v0, "ruirartemp"

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getFileTypeByName(Ljava/lang/String;)Lcom/uprui/utils/RuiFileUtil$FileType;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, type:Lcom/uprui/utils/RuiFileUtil$FileType;
    const-string v1, ".apk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    sget-object v0, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_APK:Lcom/uprui/utils/RuiFileUtil$FileType;

    .line 135
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :cond_1
    const-string v1, ".png"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    sget-object v0, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_IMAGE:Lcom/uprui/utils/RuiFileUtil$FileType;

    .line 126
    goto :goto_0

    :cond_2
    const-string v1, ".txt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    sget-object v0, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_TXT:Lcom/uprui/utils/RuiFileUtil$FileType;

    .line 128
    goto :goto_0

    :cond_3
    const-string v1, ".xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 129
    sget-object v0, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_XML:Lcom/uprui/utils/RuiFileUtil$FileType;

    .line 130
    goto :goto_0

    :cond_4
    const-string v1, ".zip"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 131
    sget-object v0, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_ZIP:Lcom/uprui/utils/RuiFileUtil$FileType;

    .line 132
    goto :goto_0

    :cond_5
    const-string v1, ".rar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    sget-object v0, Lcom/uprui/utils/RuiFileUtil$FileType;->FILE_RAR:Lcom/uprui/utils/RuiFileUtil$FileType;

    goto :goto_0
.end method

.method public static getFileTypeString(Lcom/uprui/utils/RuiFileUtil$FileType;)Ljava/lang/String;
    .locals 3
    .parameter "fileType"

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, type:Ljava/lang/String;
    invoke-static {}, Lcom/uprui/utils/RuiFileUtil;->$SWITCH_TABLE$com$uprui$utils$RuiFileUtil$FileType()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/uprui/utils/RuiFileUtil$FileType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 90
    :goto_0
    return-object v0

    .line 70
    :pswitch_0
    const-string v0, "ruiapk"

    .line 71
    goto :goto_0

    .line 73
    :pswitch_1
    const-string v0, "ruitxt"

    .line 74
    goto :goto_0

    .line 76
    :pswitch_2
    const-string v0, "ruiimage"

    .line 77
    goto :goto_0

    .line 79
    :pswitch_3
    const-string v0, "ruixml"

    .line 80
    goto :goto_0

    .line 82
    :pswitch_4
    const-string v0, "ruizip"

    .line 83
    goto :goto_0

    .line 85
    :pswitch_5
    const-string v0, "ruirar"

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getLoadFileByName(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter "fileName"

    .prologue
    .line 271
    invoke-static {p0}, Lcom/uprui/utils/RuiFileUtil;->getFileTypeByName(Ljava/lang/String;)Lcom/uprui/utils/RuiFileUtil$FileType;

    move-result-object v3

    .line 272
    .local v3, fileType:Lcom/uprui/utils/RuiFileUtil$FileType;
    invoke-static {v3}, Lcom/uprui/utils/RuiFileUtil;->getFileTypeString(Lcom/uprui/utils/RuiFileUtil$FileType;)Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, folderName:Ljava/lang/String;
    invoke-static {}, Lcom/uprui/utils/RuiFileUtil;->getValidDownloadCacheFolder()Ljava/io/File;

    move-result-object v1

    .line 275
    .local v1, cacheLoadFile:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    .local v2, file:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 277
    .local v0, appFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 280
    .end local v0           #appFile:Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0       #appFile:Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getValidDownloadCacheFolder()Ljava/io/File;
    .locals 3

    .prologue
    .line 166
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uprui/utils/RuiFileUtil;->getValidRuiCacheFolder()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getValidLoadFolder(Lcom/uprui/utils/RuiFileUtil$FileType;)Ljava/io/File;
    .locals 4
    .parameter "fileType"

    .prologue
    .line 187
    invoke-static {}, Lcom/uprui/utils/RuiFileUtil;->getValidDownloadCacheFolder()Ljava/io/File;

    move-result-object v0

    .line 188
    .local v0, cacheDownFolder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 191
    :cond_0
    if-nez p0, :cond_2

    .line 204
    .end local v0           #cacheDownFolder:Ljava/io/File;
    :cond_1
    :goto_0
    return-object v0

    .line 194
    .restart local v0       #cacheDownFolder:Ljava/io/File;
    :cond_2
    invoke-static {p0}, Lcom/uprui/utils/RuiFileUtil;->getFileTypeString(Lcom/uprui/utils/RuiFileUtil$FileType;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, type:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 198
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 200
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 202
    const-string v3, "771"

    invoke-static {v1, v3}, Lcom/uprui/utils/RuiFileUtil;->changeFileMode(Ljava/io/File;Ljava/lang/String;)Z

    :cond_3
    move-object v0, v1

    .line 204
    goto :goto_0
.end method

.method public static getValidLoadTempFolder(Lcom/uprui/utils/RuiFileUtil$FileType;)Ljava/io/File;
    .locals 4
    .parameter "fileTempType"

    .prologue
    .line 213
    invoke-static {p0}, Lcom/uprui/utils/RuiFileUtil;->getFileTempTypeString(Lcom/uprui/utils/RuiFileUtil$FileType;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, type:Ljava/lang/String;
    invoke-static {}, Lcom/uprui/utils/RuiFileUtil;->getValidDownloadCacheFolder()Ljava/io/File;

    move-result-object v0

    .line 215
    .local v0, cacheDownFolder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 219
    :cond_0
    if-nez v2, :cond_1

    .line 229
    .end local v0           #cacheDownFolder:Ljava/io/File;
    :goto_0
    return-object v0

    .line 223
    .restart local v0       #cacheDownFolder:Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 224
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 225
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 227
    const-string v3, "771"

    invoke-static {v1, v3}, Lcom/uprui/utils/RuiFileUtil;->changeFileMode(Ljava/io/File;Ljava/lang/String;)Z

    :cond_2
    move-object v0, v1

    .line 229
    goto :goto_0
.end method

.method public static getValidRuiCacheFolder()Ljava/io/File;
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/uprui/utils/RuiFileUtil;->isSdcradMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/uprui/utils/RuiFileUtil;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/uprui/utils/RuiFileUtil;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 0
    .parameter "app"

    .prologue
    .line 63
    sput-object p0, Lcom/uprui/utils/RuiFileUtil;->app:Landroid/app/Application;

    .line 64
    return-void
.end method

.method public static installApk(Landroid/content/ComponentName;)Z
    .locals 2
    .parameter "cn"

    .prologue
    .line 431
    invoke-static {p0}, Lcom/uprui/utils/RuiFileUtil;->findApkLoadFile(Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object v0

    .line 432
    .local v0, file:Ljava/io/File;
    if-nez v0, :cond_0

    .line 433
    const/4 v1, 0x0

    .line 435
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/uprui/utils/RuiFileUtil;->installApkFromFile(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public static installApk(Landroid/content/ComponentName;I)Z
    .locals 2
    .parameter "cn"
    .parameter "versionCode"

    .prologue
    .line 424
    invoke-static {p0, p1}, Lcom/uprui/utils/RuiFileUtil;->findApkLoadFile(Landroid/content/ComponentName;I)Ljava/io/File;

    move-result-object v0

    .line 425
    .local v0, file:Ljava/io/File;
    if-nez v0, :cond_0

    .line 426
    const/4 v1, 0x0

    .line 428
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/uprui/utils/RuiFileUtil;->installApkFromFile(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public static installApkFromFile(Ljava/io/File;)Z
    .locals 3
    .parameter "file"

    .prologue
    .line 370
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 371
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 373
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    :try_start_0
    sget-object v1, Lcom/uprui/utils/RuiFileUtil;->app:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    const/4 v1, 0x1

    .line 386
    :goto_0
    return v1

    .line 382
    :catch_0
    move-exception v1

    .line 386
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDownLoadSpaceAvilable()Z
    .locals 2

    .prologue
    .line 348
    invoke-static {}, Lcom/uprui/utils/RuiFileUtil;->isSdcradMounted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    sget-object v1, Lcom/uprui/utils/RuiFileUtil;->app:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 350
    .local v0, cancheFolder:Ljava/io/File;
    invoke-static {v0}, Lcom/uprui/utils/RuiFileUtil;->isSpaceAvilable(Ljava/io/File;)Z

    move-result v1

    .line 353
    :goto_0
    return v1

    .line 352
    .end local v0           #cancheFolder:Ljava/io/File;
    :cond_0
    sget-object v1, Lcom/uprui/utils/RuiFileUtil;->app:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 353
    .restart local v0       #cancheFolder:Ljava/io/File;
    invoke-static {v0}, Lcom/uprui/utils/RuiFileUtil;->isSpaceAvilable(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isSdcradMounted()Z
    .locals 2

    .prologue
    .line 391
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 392
    const-string v1, "mounted"

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 392
    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x1

    .line 396
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpaceAvilable(Ljava/io/File;)Z
    .locals 4
    .parameter "f"

    .prologue
    const/4 v1, 0x0

    .line 358
    if-nez p0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v1

    .line 361
    :cond_1
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, statfs:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x400

    div-int/lit16 v2, v2, 0x400

    const/16 v3, 0x14

    if-le v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static safeCloseStream(Ljava/io/Closeable;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 337
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    goto :goto_0
.end method
