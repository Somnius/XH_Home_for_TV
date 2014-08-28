.class public Lde/innosystec/unrar/MVTest;
.super Ljava/lang/Object;
.source "MVTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .parameter "args"

    .prologue
    .line 17
    const-string v5, "/home/Avenger/testdata/test2.part01.rar"

    .line 18
    .local v5, filename:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .local v3, f:Ljava/io/File;
    const/4 v0, 0x0

    .line 21
    .local v0, a:Lde/innosystec/unrar/Archive;
    :try_start_0
    new-instance v1, Lde/innosystec/unrar/Archive;

    invoke-direct {v1, v3}, Lde/innosystec/unrar/Archive;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lde/innosystec/unrar/exception/RarException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0           #a:Lde/innosystec/unrar/Archive;
    .local v1, a:Lde/innosystec/unrar/Archive;
    move-object v0, v1

    .line 29
    .end local v1           #a:Lde/innosystec/unrar/Archive;
    .restart local v0       #a:Lde/innosystec/unrar/Archive;
    :goto_0
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lde/innosystec/unrar/Archive;->getMainHeader()Lde/innosystec/unrar/rarfile/MainHeader;

    move-result-object v8

    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/MainHeader;->print()V

    .line 31
    invoke-virtual {v0}, Lde/innosystec/unrar/Archive;->nextFileHeader()Lde/innosystec/unrar/rarfile/FileHeader;

    move-result-object v4

    .line 32
    .local v4, fh:Lde/innosystec/unrar/rarfile/FileHeader;
    :goto_1
    if-nez v4, :cond_1

    .line 52
    .end local v4           #fh:Lde/innosystec/unrar/rarfile/FileHeader;
    :cond_0
    return-void

    .line 22
    :catch_0
    move-exception v2

    .line 24
    .local v2, e:Lde/innosystec/unrar/exception/RarException;
    invoke-virtual {v2}, Lde/innosystec/unrar/exception/RarException;->printStackTrace()V

    goto :goto_0

    .line 25
    .end local v2           #e:Lde/innosystec/unrar/exception/RarException;
    :catch_1
    move-exception v2

    .line 27
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 34
    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #fh:Lde/innosystec/unrar/rarfile/FileHeader;
    :cond_1
    :try_start_1
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/home/Avenger/testdata/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lde/innosystec/unrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v7, out:Ljava/io/File;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 37
    .local v6, os:Ljava/io/FileOutputStream;
    invoke-virtual {v0, v4, v6}, Lde/innosystec/unrar/Archive;->extractFile(Lde/innosystec/unrar/rarfile/FileHeader;Ljava/io/OutputStream;)V

    .line 38
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lde/innosystec/unrar/exception/RarException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 49
    .end local v6           #os:Ljava/io/FileOutputStream;
    .end local v7           #out:Ljava/io/File;
    :goto_2
    invoke-virtual {v0}, Lde/innosystec/unrar/Archive;->nextFileHeader()Lde/innosystec/unrar/rarfile/FileHeader;

    move-result-object v4

    goto :goto_1

    .line 39
    :catch_2
    move-exception v2

    .line 41
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 42
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 44
    .local v2, e:Lde/innosystec/unrar/exception/RarException;
    invoke-virtual {v2}, Lde/innosystec/unrar/exception/RarException;->printStackTrace()V

    goto :goto_2

    .line 45
    .end local v2           #e:Lde/innosystec/unrar/exception/RarException;
    :catch_4
    move-exception v2

    .line 47
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
