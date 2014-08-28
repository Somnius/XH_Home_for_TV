.class public final Lcom/rui/launcher/common/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static DOWNLOAD:Ljava/lang/String; = null

.field public static final DOWNLOAD_PAD:Ljava/lang/String; = "/data/com.uprui.mid.launcher/downloads"

.field public static final DOWNLOAD_PHONE:Ljava/lang/String; = "/data/com.uprui.phone.launcher/downloads"

.field public static final DOWNLOAD_SUFFIX:Ljava/lang/String; = ".tmp"

.field public static final DOWNLOAD_TV:Ljava/lang/String; = "/data/com.uprui.tv.launcher/downloads"

.field public static final EXT_APK:Ljava/lang/String; = ".apk"

.field public static final EXT_DOWNLOAD:Ljava/lang/String; = "/rui/downloads"

.field public static final SPARE_SPACE:I = 0x14

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/rui/launcher/common/utils/FileUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rui/launcher/common/utils/FileUtil;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/rui/launcher/common/utils/FileUtil;->DOWNLOAD:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final FILE_FILTER(Ljava/lang/String;)Ljava/io/FilenameFilter;
    .locals 1
    .parameter "type"

    .prologue
    .line 275
    new-instance v0, Lcom/rui/launcher/common/utils/FileUtil$1;

    invoke-direct {v0, p0}, Lcom/rui/launcher/common/utils/FileUtil$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static changeApkFileMode(Ljava/io/File;)Z
    .locals 5
    .parameter "f"

    .prologue
    .line 256
    const/4 v2, 0x0

    .line 258
    .local v2, success:Z
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "chmod"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v3, " 777 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    const/4 v2, 0x1

    .line 267
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return v2

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 265
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static changeApkMode(Ljava/io/File;)Z
    .locals 3
    .parameter "f"

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/rui/launcher/common/utils/FileUtil;->changeMode(Ljava/io/File;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-static {p0, v0}, Lcom/rui/launcher/common/utils/FileUtil;->changeMode(Ljava/io/File;Z)Z

    move-result v0

    .line 220
    :cond_0
    return v0
.end method

.method private static changeDownLoadParentMode(Ljava/io/File;)Z
    .locals 5
    .parameter "downFile"

    .prologue
    .line 242
    const/4 v2, 0x0

    .line 244
    .local v2, success:Z
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "chmod"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v3, " 771 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    const/4 v2, 0x1

    .line 252
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return v2

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static changeMode(Ljava/io/File;Z)Z
    .locals 5
    .parameter "f"
    .parameter "isDir"

    .prologue
    .line 224
    const/4 v2, 0x0

    .line 226
    .local v2, success:Z
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "chmod"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 228
    const-string v3, " 705 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 234
    const/4 v2, 0x1

    .line 238
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :goto_1
    return v2

    .line 230
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    :cond_0
    const-string v3, " 604 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    .line 114
    const/4 v2, 0x0

    .line 116
    .local v2, result:Z
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .local v1, in:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1, p1}, Lcom/rui/launcher/common/utils/FileUtil;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 120
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 125
    .end local v1           #in:Ljava/io/InputStream;
    :goto_0
    return v2

    .line 119
    .restart local v1       #in:Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    .line 120
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 121
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    .end local v1           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 6
    .parameter "inputStream"
    .parameter "destFile"

    .prologue
    const/4 v4, 0x0

    .line 133
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 136
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .local v3, out:Ljava/io/OutputStream;
    const/16 v5, 0x1000

    :try_start_1
    new-array v0, v5, [B

    .line 140
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .local v1, bytesRead:I
    if-gez v1, :cond_1

    .line 144
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    const/4 v4, 0x1

    .line 148
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v3           #out:Ljava/io/OutputStream;
    :goto_1
    return v4

    .line 141
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v3       #out:Ljava/io/OutputStream;
    :cond_1
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v3, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 143
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catchall_0
    move-exception v5

    .line 144
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 145
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 147
    .end local v3           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 148
    .local v2, e:Ljava/io/IOException;
    goto :goto_1
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 2
    .parameter "f"

    .prologue
    const/4 v0, 0x1

    .line 157
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 153
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/rui/launcher/common/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public static generateFileNameByUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"

    .prologue
    .line 171
    move-object v1, p0

    .line 172
    .local v1, name:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 173
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, loc:I
    const/4 v2, -0x1

    if-eq v2, v0, :cond_0

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .end local v0           #loc:I
    :cond_0
    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 179
    return-object v1
.end method

.method public static getArchiveFileByComponent(Landroid/content/Context;Landroid/content/ComponentName;I)Ljava/io/File;
    .locals 4
    .parameter "context"
    .parameter "cn"
    .parameter "vd"

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, archiveFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/rui/downloads"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-static {p0, v1, p1, p2}, Lcom/rui/launcher/common/utils/FileUtil;->traversalDownloadDir(Landroid/content/Context;Ljava/io/File;Landroid/content/ComponentName;I)Ljava/io/File;

    move-result-object v0

    .line 50
    :cond_0
    if-nez v0, :cond_1

    .line 51
    new-instance v1, Ljava/io/File;

    .end local v1           #dir:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/rui/launcher/common/utils/FileUtil;->getInsideDownlaod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .restart local v1       #dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    invoke-static {p0, v1, p1, p2}, Lcom/rui/launcher/common/utils/FileUtil;->traversalDownloadDir(Landroid/content/Context;Ljava/io/File;Landroid/content/ComponentName;I)Ljava/io/File;

    move-result-object v0

    .line 56
    :cond_1
    return-object v0
.end method

.method public static getDownloadDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, dir:Ljava/io/File;
    invoke-static {}, Lcom/rui/launcher/common/utils/FileUtil;->isExternalStorageMounted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/rui/downloads"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .restart local v0       #dir:Ljava/io/File;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 200
    :cond_1
    return-object v0

    .line 188
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/rui/launcher/common/utils/FileUtil;->getInsideDownlaod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 191
    invoke-static {v0}, Lcom/rui/launcher/common/utils/FileUtil;->changeDownLoadParentMode(Ljava/io/File;)Z

    goto :goto_0
.end method

.method public static getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter "url"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Lcom/rui/launcher/common/utils/FileUtil;->getDownloadDir()Ljava/io/File;

    move-result-object v0

    .line 162
    .local v0, dir:Ljava/io/File;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 163
    :cond_0
    invoke-static {p0}, Lcom/rui/launcher/common/utils/FileUtil;->generateFileNameByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 165
    :cond_1
    const-string v2, ".tmp"

    invoke-static {p1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 166
    .local v1, f:Ljava/io/File;
    sget-object v2, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    sget-object v3, Lcom/rui/launcher/common/utils/FileUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " dir = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", f = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-object v1
.end method

.method private static final getInsideDownlaod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/rui/launcher/common/utils/FileUtil;->DOWNLOAD:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 295
    invoke-static {}, Lcom/rui/launcher/common/DeviceType;->getMyDeviceType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 306
    const-string v0, "/data/com.uprui.phone.launcher/downloads"

    sput-object v0, Lcom/rui/launcher/common/utils/FileUtil;->DOWNLOAD:Ljava/lang/String;

    .line 310
    :cond_0
    :goto_0
    sget-object v0, Lcom/rui/launcher/common/utils/FileUtil;->DOWNLOAD:Ljava/lang/String;

    return-object v0

    .line 297
    :pswitch_0
    const-string v0, "/data/com.uprui.mid.launcher/downloads"

    sput-object v0, Lcom/rui/launcher/common/utils/FileUtil;->DOWNLOAD:Ljava/lang/String;

    goto :goto_0

    .line 300
    :pswitch_1
    const-string v0, "/data/com.uprui.phone.launcher/downloads"

    sput-object v0, Lcom/rui/launcher/common/utils/FileUtil;->DOWNLOAD:Ljava/lang/String;

    goto :goto_0

    .line 303
    :pswitch_2
    const-string v0, "/data/com.uprui.tv.launcher/downloads"

    sput-object v0, Lcom/rui/launcher/common/utils/FileUtil;->DOWNLOAD:Ljava/lang/String;

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final installApk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "apkPath"

    .prologue
    .line 285
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, f:Ljava/io/File;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 287
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 288
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 291
    return-void
.end method

.method public static installApkFromFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .parameter "context"
    .parameter "file"

    .prologue
    .line 314
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 315
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 317
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isExternalStorageMounted()Z
    .locals 2

    .prologue
    .line 204
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 41
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public static isInternalFile(Ljava/io/File;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 271
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/rui/launcher/common/utils/FileUtil;->getInsideDownlaod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSpaceAvilable(Ljava/io/File;)Z
    .locals 4
    .parameter "f"

    .prologue
    const/4 v1, 0x0

    .line 208
    if-nez p0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v1

    .line 211
    :cond_1
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 212
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

.method public static reNameExternal(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .parameter "f"
    .parameter "ext"

    .prologue
    const/4 v4, 0x0

    .line 87
    move-object v0, p0

    .line 88
    .local v0, dest:Ljava/io/File;
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, path:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v0, Ljava/io/File;

    .end local v0           #dest:Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v0       #dest:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 95
    :cond_0
    invoke-static {p0, v0}, Lcom/rui/launcher/common/utils/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    invoke-static {p0}, Lcom/rui/launcher/common/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 102
    .end local v1           #path:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v2, ".apk"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    invoke-static {v0}, Lcom/rui/launcher/common/utils/FileUtil;->changeApkFileMode(Ljava/io/File;)Z

    .line 108
    :goto_1
    return-object v0

    .line 98
    .restart local v1       #path:Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Lcom/rui/launcher/common/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    goto :goto_0

    .line 106
    .end local v1           #path:Ljava/lang/String;
    :cond_3
    invoke-static {v0, v4}, Lcom/rui/launcher/common/utils/FileUtil;->changeMode(Ljava/io/File;Z)Z

    goto :goto_1
.end method

.method public static reNameExternalApk(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .parameter "f"

    .prologue
    .line 83
    const-string v0, ".apk"

    invoke-static {p0, v0}, Lcom/rui/launcher/common/utils/FileUtil;->reNameExternal(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static traversalDownloadDir(Landroid/content/Context;Ljava/io/File;Landroid/content/ComponentName;I)Ljava/io/File;
    .locals 12
    .parameter "context"
    .parameter "dir"
    .parameter "cn"
    .parameter "vd"

    .prologue
    .line 61
    const-string v4, ".apk"

    invoke-static {v4}, Lcom/rui/launcher/common/utils/FileUtil;->FILE_FILTER(Ljava/lang/String;)Ljava/io/FilenameFilter;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v7, :cond_1

    .line 79
    const/4 v2, 0x0

    :cond_0
    :goto_1
    return-object v2

    .line 61
    :cond_1
    aget-object v2, v6, v5

    .line 62
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 63
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/rui/launcher/common/utils/PkgUtil;->getPackageArchiveInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 64
    .local v3, info:Landroid/content/pm/PackageInfo;
    if-nez v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    .line 66
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt v4, p3, :cond_3

    .line 67
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v9, v8

    const/4 v4, 0x0

    :goto_2
    if-lt v4, v9, :cond_4

    .line 61
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 67
    .restart local v3       #info:Landroid/content/pm/PackageInfo;
    :cond_4
    aget-object v0, v8, v4

    .line 68
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_0

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 73
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 74
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    const/4 v2, 0x0

    goto :goto_1
.end method
