.class public Lcom/uprui/utils/DeCompressUtil;
.super Ljava/lang/Object;
.source "DeCompressUtil.java"


# static fields
.field public static final BUFF_SIZE:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deCompress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "sourceFile"
    .parameter "destDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 145
    .local v0, lastChar:C
    const/16 v2, 0x2f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_0

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    :cond_0
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, type:Ljava/lang/String;
    const-string v2, "zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    invoke-static {p0, p1}, Lcom/uprui/utils/DeCompressUtil;->unzip(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 152
    :cond_1
    const-string v2, "rar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/uprui/utils/DeCompressUtil;->unrar(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_2
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "\u53ea\u652f\u6301zip\u548crar\u683c\u5f0f\u7684\u538b\u7f29\u5305\uff01"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static deCompressTheme(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "sourceFile"
    .parameter "destDir"
    .parameter "replacePackageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 165
    .local v0, lastChar:C
    const/16 v2, 0x2f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_0

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    :cond_0
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, type:Ljava/lang/String;
    const-string v2, "zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    invoke-static {p0, p1, p2}, Lcom/uprui/utils/DeCompressUtil;->unThemeZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 172
    :cond_1
    const-string v2, "rar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1, p2}, Lcom/uprui/utils/DeCompressUtil;->unThemerar(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_2
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "\u53ea\u652f\u6301zip\u548crar\u683c\u5f0f\u7684\u538b\u7f29\u5305\uff01"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static unThemeZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter "unZipfileName"
    .parameter "mDestPath"
    .parameter "replacePackageName"

    .prologue
    .line 238
    const/4 v4, 0x0

    .line 239
    .local v4, fileOut:Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 240
    .local v12, zipIn:Ljava/util/zip/ZipInputStream;
    const/4 v11, 0x0

    .line 241
    .local v11, zipEntry:Ljava/util/zip/ZipEntry;
    const/4 v2, 0x0

    .line 242
    .local v2, file:Ljava/io/File;
    const/4 v10, 0x0

    .line 243
    .local v10, readedBytes:I
    const/16 v14, 0x1000

    new-array v1, v14, [B

    .line 244
    .local v1, buf:[B
    const/4 v7, 0x0

    .line 246
    .local v7, mainPackageName:Ljava/lang/String;
    :try_start_0
    new-instance v13, Ljava/util/zip/ZipInputStream;

    new-instance v14, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct/range {v15 .. v16}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v13, v14}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v12           #zipIn:Ljava/util/zip/ZipInputStream;
    .local v13, zipIn:Ljava/util/zip/ZipInputStream;
    move-object v3, v2

    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    move-object v5, v4

    .line 247
    .end local v4           #fileOut:Ljava/io/FileOutputStream;
    .local v5, fileOut:Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v11

    if-nez v11, :cond_0

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    move-object v12, v13

    .end local v13           #zipIn:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zipIn:Ljava/util/zip/ZipInputStream;
    move-object v4, v5

    .line 291
    .end local v5           #fileOut:Ljava/io/FileOutputStream;
    .restart local v4       #fileOut:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 248
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileOut:Ljava/io/FileOutputStream;
    .end local v12           #zipIn:Ljava/util/zip/ZipInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileOut:Ljava/io/FileOutputStream;
    .restart local v13       #zipIn:Ljava/util/zip/ZipInputStream;
    :cond_0
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, name:Ljava/lang/String;
    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 251
    const-string v14, "\\\\"

    const-string v15, "/"

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 258
    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 259
    move-object/from16 v0, p2

    invoke-virtual {v8, v7, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 262
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 263
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :try_start_2
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 264
    if-nez v7, :cond_8

    .line 265
    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 266
    const/4 v14, 0x0

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 270
    :goto_3
    new-instance v3, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 271
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    move-object v4, v5

    .line 286
    .end local v5           #fileOut:Ljava/io/FileOutputStream;
    .restart local v4       #fileOut:Ljava/io/FileOutputStream;
    :goto_4
    :try_start_4
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    move-object v5, v4

    .end local v4           #fileOut:Ljava/io/FileOutputStream;
    .restart local v5       #fileOut:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 254
    :cond_3
    :try_start_5
    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v15, "\\"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 255
    const-string v14, "/"

    const-string v15, "\\\\"

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v8

    goto/16 :goto_2

    .line 268
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :cond_4
    move-object v7, v8

    goto :goto_3

    .line 275
    :cond_5
    :try_start_6
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 276
    .local v9, parent:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_6

    .line 277
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 280
    :cond_6
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 281
    .end local v5           #fileOut:Ljava/io/FileOutputStream;
    .restart local v4       #fileOut:Ljava/io/FileOutputStream;
    :goto_5
    :try_start_7
    invoke-virtual {v13, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v10

    if-gtz v10, :cond_7

    .line 284
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    .line 288
    .end local v9           #parent:Ljava/io/File;
    :catch_0
    move-exception v6

    move-object v12, v13

    .line 289
    .end local v8           #name:Ljava/lang/String;
    .end local v13           #zipIn:Ljava/util/zip/ZipInputStream;
    .local v6, ioe:Ljava/io/IOException;
    .restart local v12       #zipIn:Ljava/util/zip/ZipInputStream;
    :goto_6
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 282
    .end local v6           #ioe:Ljava/io/IOException;
    .end local v12           #zipIn:Ljava/util/zip/ZipInputStream;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v9       #parent:Ljava/io/File;
    .restart local v13       #zipIn:Ljava/util/zip/ZipInputStream;
    :cond_7
    const/4 v14, 0x0

    :try_start_8
    invoke-virtual {v4, v1, v14, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_5

    .line 288
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #parent:Ljava/io/File;
    .end local v13           #zipIn:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zipIn:Ljava/util/zip/ZipInputStream;
    :catch_1
    move-exception v6

    goto :goto_6

    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileOut:Ljava/io/FileOutputStream;
    .end local v12           #zipIn:Ljava/util/zip/ZipInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileOut:Ljava/io/FileOutputStream;
    .restart local v13       #zipIn:Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v6

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    move-object v12, v13

    .end local v13           #zipIn:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zipIn:Ljava/util/zip/ZipInputStream;
    move-object v4, v5

    .end local v5           #fileOut:Ljava/io/FileOutputStream;
    .restart local v4       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v4           #fileOut:Ljava/io/FileOutputStream;
    .end local v12           #zipIn:Ljava/util/zip/ZipInputStream;
    .restart local v5       #fileOut:Ljava/io/FileOutputStream;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v13       #zipIn:Ljava/util/zip/ZipInputStream;
    :catch_3
    move-exception v6

    move-object v12, v13

    .end local v13           #zipIn:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zipIn:Ljava/util/zip/ZipInputStream;
    move-object v4, v5

    .end local v5           #fileOut:Ljava/io/FileOutputStream;
    .restart local v4       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v4           #fileOut:Ljava/io/FileOutputStream;
    .end local v12           #zipIn:Ljava/util/zip/ZipInputStream;
    .restart local v5       #fileOut:Ljava/io/FileOutputStream;
    .restart local v13       #zipIn:Ljava/util/zip/ZipInputStream;
    :cond_8
    move-object v4, v5

    .end local v5           #fileOut:Ljava/io/FileOutputStream;
    .restart local v4       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public static unThemerar(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "srcFile"
    .parameter "unrarPath"
    .parameter "replacePackageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/innosystec/unrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v8, Lde/innosystec/unrar/Archive;

    invoke-direct {v8, p0}, Lde/innosystec/unrar/Archive;-><init>(Ljava/io/File;)V

    .line 183
    .local v8, rarfile:Lde/innosystec/unrar/Archive;
    invoke-virtual {v8}, Lde/innosystec/unrar/Archive;->nextFileHeader()Lde/innosystec/unrar/rarfile/FileHeader;

    move-result-object v1

    .line 184
    .local v1, entry:Lde/innosystec/unrar/rarfile/FileHeader;
    const/4 v7, 0x0

    .line 185
    .local v7, rarPackageName:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    .line 227
    invoke-virtual {v8}, Lde/innosystec/unrar/Archive;->close()V

    .line 229
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .local v5, packageFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .local v0, dstFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 234
    :cond_0
    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 235
    return-void

    .line 186
    .end local v0           #dstFile:Ljava/io/File;
    .end local v5           #packageFile:Ljava/io/File;
    :cond_1
    const-string v2, ""

    .line 187
    .local v2, entrypath:Ljava/lang/String;
    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/FileHeader;->isUnicode()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 188
    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/FileHeader;->getFileNameW()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 195
    :goto_1
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 196
    const-string v9, "\\\\"

    const-string v10, "/"

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    :goto_2
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v3, file:Ljava/io/File;
    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/FileHeader;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 206
    if-nez v7, :cond_2

    .line 207
    move-object v7, v2

    .line 208
    const-string v9, "reslover"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "packageName:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v3, Ljava/io/File;

    .end local v3           #file:Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .restart local v3       #file:Ljava/io/File;
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 225
    :goto_3
    invoke-virtual {v8}, Lde/innosystec/unrar/Archive;->nextFileHeader()Lde/innosystec/unrar/rarfile/FileHeader;

    move-result-object v1

    goto/16 :goto_0

    .line 190
    .end local v3           #file:Ljava/io/File;
    :cond_3
    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 200
    :cond_4
    const-string v9, "/"

    const-string v10, "\\\\"

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 214
    .restart local v3       #file:Ljava/io/File;
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 215
    .local v6, parent:Ljava/io/File;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_6

    .line 216
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 218
    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_7

    .line 219
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 221
    :cond_7
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 222
    .local v4, fileOut:Ljava/io/FileOutputStream;
    invoke-virtual {v8, v1, v4}, Lde/innosystec/unrar/Archive;->extractFile(Lde/innosystec/unrar/rarfile/FileHeader;Ljava/io/OutputStream;)V

    .line 223
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3
.end method

.method public static unrar(Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .parameter "srcFile"
    .parameter "unrarPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/innosystec/unrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v5, Lde/innosystec/unrar/Archive;

    invoke-direct {v5, p0}, Lde/innosystec/unrar/Archive;-><init>(Ljava/io/File;)V

    .line 69
    .local v5, rarfile:Lde/innosystec/unrar/Archive;
    invoke-virtual {v5}, Lde/innosystec/unrar/Archive;->nextFileHeader()Lde/innosystec/unrar/rarfile/FileHeader;

    move-result-object v0

    .line 70
    .local v0, entry:Lde/innosystec/unrar/rarfile/FileHeader;
    :goto_0
    if-nez v0, :cond_0

    .line 101
    invoke-virtual {v5}, Lde/innosystec/unrar/Archive;->close()V

    .line 103
    return-void

    .line 71
    :cond_0
    const-string v1, ""

    .line 72
    .local v1, entrypath:Ljava/lang/String;
    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/FileHeader;->isUnicode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 73
    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/FileHeader;->getFileNameW()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 79
    :goto_1
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    const-string v6, "\\\\"

    const-string v7, "/"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    :goto_2
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, file:Ljava/io/File;
    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/FileHeader;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 89
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 99
    :goto_3
    invoke-virtual {v5}, Lde/innosystec/unrar/Archive;->nextFileHeader()Lde/innosystec/unrar/rarfile/FileHeader;

    move-result-object v0

    goto :goto_0

    .line 75
    .end local v2           #file:Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 84
    :cond_2
    const-string v6, "/"

    const-string v7, "\\\\"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 91
    .restart local v2       #file:Ljava/io/File;
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 92
    .local v4, parent:Ljava/io/File;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 93
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 95
    :cond_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 96
    .local v3, fileOut:Ljava/io/FileOutputStream;
    invoke-virtual {v5, v0, v3}, Lde/innosystec/unrar/Archive;->extractFile(Lde/innosystec/unrar/rarfile/FileHeader;Ljava/io/OutputStream;)V

    .line 97
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "unZipfileName"
    .parameter "mDestPath"

    .prologue
    .line 106
    const-string v11, "/"

    invoke-virtual {p1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 107
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    :cond_0
    const/4 v3, 0x0

    .line 110
    .local v3, fileOut:Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 111
    .local v9, zipIn:Ljava/util/zip/ZipInputStream;
    const/4 v8, 0x0

    .line 112
    .local v8, zipEntry:Ljava/util/zip/ZipEntry;
    const/4 v1, 0x0

    .line 113
    .local v1, file:Ljava/io/File;
    const/4 v7, 0x0

    .line 114
    .local v7, readedBytes:I
    const/16 v11, 0x1000

    new-array v0, v11, [B

    .line 116
    .local v0, buf:[B
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipInputStream;

    new-instance v11, Ljava/io/BufferedInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v9           #zipIn:Ljava/util/zip/ZipInputStream;
    .local v10, zipIn:Ljava/util/zip/ZipInputStream;
    move-object v2, v1

    .end local v1           #file:Ljava/io/File;
    .local v2, file:Ljava/io/File;
    move-object v4, v3

    .line 117
    .end local v3           #fileOut:Ljava/io/FileOutputStream;
    .local v4, fileOut:Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-nez v8, :cond_1

    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    move-object v9, v10

    .end local v10           #zipIn:Ljava/util/zip/ZipInputStream;
    .restart local v9       #zipIn:Ljava/util/zip/ZipInputStream;
    move-object v3, v4

    .line 138
    .end local v4           #fileOut:Ljava/io/FileOutputStream;
    .restart local v3       #fileOut:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 118
    .end local v1           #file:Ljava/io/File;
    .end local v3           #fileOut:Ljava/io/FileOutputStream;
    .end local v9           #zipIn:Ljava/util/zip/ZipInputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fileOut:Ljava/io/FileOutputStream;
    .restart local v10       #zipIn:Ljava/util/zip/ZipInputStream;
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 119
    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    :try_start_2
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 120
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 133
    .end local v4           #fileOut:Ljava/io/FileOutputStream;
    .restart local v3       #fileOut:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v2, v1

    .end local v1           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    move-object v4, v3

    .end local v3           #fileOut:Ljava/io/FileOutputStream;
    .restart local v4       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 123
    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 124
    .local v6, parent:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 125
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 127
    :cond_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 128
    .end local v4           #fileOut:Ljava/io/FileOutputStream;
    .restart local v3       #fileOut:Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    invoke-virtual {v10, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    if-gtz v7, :cond_4

    .line 131
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 135
    .end local v6           #parent:Ljava/io/File;
    :catch_0
    move-exception v5

    move-object v9, v10

    .line 136
    .end local v10           #zipIn:Ljava/util/zip/ZipInputStream;
    .local v5, ioe:Ljava/io/IOException;
    .restart local v9       #zipIn:Ljava/util/zip/ZipInputStream;
    :goto_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 129
    .end local v5           #ioe:Ljava/io/IOException;
    .end local v9           #zipIn:Ljava/util/zip/ZipInputStream;
    .restart local v6       #parent:Ljava/io/File;
    .restart local v10       #zipIn:Ljava/util/zip/ZipInputStream;
    :cond_4
    const/4 v11, 0x0

    :try_start_6
    invoke-virtual {v3, v0, v11, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 135
    .end local v6           #parent:Ljava/io/File;
    .end local v10           #zipIn:Ljava/util/zip/ZipInputStream;
    .restart local v9       #zipIn:Ljava/util/zip/ZipInputStream;
    :catch_1
    move-exception v5

    goto :goto_4

    .end local v1           #file:Ljava/io/File;
    .end local v3           #fileOut:Ljava/io/FileOutputStream;
    .end local v9           #zipIn:Ljava/util/zip/ZipInputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fileOut:Ljava/io/FileOutputStream;
    .restart local v10       #zipIn:Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v5

    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    move-object v9, v10

    .end local v10           #zipIn:Ljava/util/zip/ZipInputStream;
    .restart local v9       #zipIn:Ljava/util/zip/ZipInputStream;
    move-object v3, v4

    .end local v4           #fileOut:Ljava/io/FileOutputStream;
    .restart local v3       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v3           #fileOut:Ljava/io/FileOutputStream;
    .end local v9           #zipIn:Ljava/util/zip/ZipInputStream;
    .restart local v4       #fileOut:Ljava/io/FileOutputStream;
    .restart local v10       #zipIn:Ljava/util/zip/ZipInputStream;
    :catch_3
    move-exception v5

    move-object v9, v10

    .end local v10           #zipIn:Ljava/util/zip/ZipInputStream;
    .restart local v9       #zipIn:Ljava/util/zip/ZipInputStream;
    move-object v3, v4

    .end local v4           #fileOut:Ljava/io/FileOutputStream;
    .restart local v3       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public static upZipFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 14
    .parameter "zipFile"
    .parameter "folderPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v1, desDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 40
    :cond_0
    new-instance v11, Ljava/util/zip/ZipFile;

    invoke-direct {v11, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 41
    .local v11, zf:Ljava/util/zip/ZipFile;
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-nez v12, :cond_1

    .line 63
    return-void

    .line 42
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 43
    .local v4, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v11, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 44
    .local v6, in:Ljava/io/InputStream;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 45
    .local v9, str:Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    const-string v12, "8859_1"

    invoke-virtual {v9, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    const-string v13, "GB2312"

    invoke-direct {v10, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 46
    .end local v9           #str:Ljava/lang/String;
    .local v10, str:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v2, desFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 48
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 49
    .local v5, fileParentDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 50
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 52
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 54
    .end local v5           #fileParentDir:Ljava/io/File;
    :cond_3
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 55
    .local v7, out:Ljava/io/OutputStream;
    const/16 v12, 0x2000

    new-array v0, v12, [B

    .line 57
    .local v0, buffer:[B
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, realLength:I
    if-gtz v8, :cond_4

    .line 60
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 61
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 58
    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v7, v0, v12, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method
