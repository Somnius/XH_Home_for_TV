.class public Lde/innosystec/unrar/unpack/ppm/AnalyzeHeapDump;
.super Ljava/lang/Object;
.source "AnalyzeHeapDump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 27
    .parameter "argv"

    .prologue
    .line 21
    new-instance v5, Ljava/io/File;

    const-string v24, "P:\\test\\heapdumpc"

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .local v5, cfile:Ljava/io/File;
    new-instance v11, Ljava/io/File;

    const-string v24, "P:\\test\\heapdumpj"

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .local v11, jfile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_0

    .line 24
    sget-object v24, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "File not found: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_1

    .line 28
    sget-object v24, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "File not found: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 32
    .local v8, clen:J
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 33
    .local v14, jlen:J
    cmp-long v24, v8, v14

    if-eqz v24, :cond_2

    .line 34
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v25, "File size mismatch"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "clen = "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "jlen = "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    :cond_2
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    .line 40
    .local v16, len:J
    const/4 v6, 0x0

    .line 41
    .local v6, cin:Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 42
    .local v12, jin:Ljava/io/InputStream;
    const/high16 v4, 0x4

    .line 44
    .local v4, bufferLen:I
    :try_start_0
    new-instance v7, Ljava/io/BufferedInputStream;

    .line 45
    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 44
    move-object/from16 v0, v24

    invoke-direct {v7, v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v6           #cin:Ljava/io/InputStream;
    .local v7, cin:Ljava/io/InputStream;
    :try_start_1
    new-instance v13, Ljava/io/BufferedInputStream;

    .line 47
    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 46
    move-object/from16 v0, v24

    invoke-direct {v13, v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 48
    .end local v12           #jin:Ljava/io/InputStream;
    .local v13, jin:Ljava/io/InputStream;
    const/16 v18, 0x1

    .line 49
    .local v18, matching:Z
    const/16 v19, 0x0

    .line 50
    .local v19, mismatchFound:Z
    const-wide/16 v22, 0x0

    .line 51
    .local v22, startOff:J
    const-wide/16 v20, 0x0

    .line 52
    .local v20, off:J
    :goto_1
    cmp-long v24, v20, v16

    if-ltz v24, :cond_5

    .line 68
    if-nez v18, :cond_3

    .line 69
    :try_start_2
    move-wide/from16 v0, v22

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/ppm/AnalyzeHeapDump;->printMismatch(JJ)V

    .line 71
    :cond_3
    if-nez v19, :cond_4

    .line 72
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v25, "Files are identical"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    :cond_4
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v25, "Done"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 81
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 82
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v12, v13

    .end local v13           #jin:Ljava/io/InputStream;
    .restart local v12       #jin:Ljava/io/InputStream;
    move-object v6, v7

    .end local v7           #cin:Ljava/io/InputStream;
    .restart local v6       #cin:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 53
    .end local v6           #cin:Ljava/io/InputStream;
    .end local v12           #jin:Ljava/io/InputStream;
    .restart local v7       #cin:Ljava/io/InputStream;
    .restart local v13       #jin:Ljava/io/InputStream;
    :cond_5
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v24

    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    .line 54
    if-eqz v18, :cond_6

    .line 55
    move-wide/from16 v22, v20

    .line 56
    const/16 v18, 0x0

    .line 57
    const/16 v19, 0x1

    .line 66
    :cond_6
    :goto_2
    const-wide/16 v24, 0x1

    add-long v20, v20, v24

    goto :goto_1

    .line 61
    :cond_7
    if-nez v18, :cond_6

    .line 62
    move-wide/from16 v0, v22

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/ppm/AnalyzeHeapDump;->printMismatch(JJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 63
    const/16 v18, 0x1

    goto :goto_2

    .line 76
    .end local v7           #cin:Ljava/io/InputStream;
    .end local v13           #jin:Ljava/io/InputStream;
    .end local v18           #matching:Z
    .end local v19           #mismatchFound:Z
    .end local v20           #off:J
    .end local v22           #startOff:J
    .restart local v6       #cin:Ljava/io/InputStream;
    .restart local v12       #jin:Ljava/io/InputStream;
    :catch_0
    move-exception v10

    .line 77
    .local v10, e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 81
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 82
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 83
    :catch_1
    move-exception v10

    .line 84
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 79
    .end local v10           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v24

    .line 81
    :goto_4
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 82
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 86
    :goto_5
    throw v24

    .line 83
    :catch_2
    move-exception v10

    .line 84
    .restart local v10       #e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 83
    .end local v6           #cin:Ljava/io/InputStream;
    .end local v10           #e:Ljava/io/IOException;
    .end local v12           #jin:Ljava/io/InputStream;
    .restart local v7       #cin:Ljava/io/InputStream;
    .restart local v13       #jin:Ljava/io/InputStream;
    .restart local v18       #matching:Z
    .restart local v19       #mismatchFound:Z
    .restart local v20       #off:J
    .restart local v22       #startOff:J
    :catch_3
    move-exception v10

    .line 84
    .restart local v10       #e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    move-object v12, v13

    .end local v13           #jin:Ljava/io/InputStream;
    .restart local v12       #jin:Ljava/io/InputStream;
    move-object v6, v7

    .end local v7           #cin:Ljava/io/InputStream;
    .restart local v6       #cin:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 79
    .end local v6           #cin:Ljava/io/InputStream;
    .end local v10           #e:Ljava/io/IOException;
    .end local v18           #matching:Z
    .end local v19           #mismatchFound:Z
    .end local v20           #off:J
    .end local v22           #startOff:J
    .restart local v7       #cin:Ljava/io/InputStream;
    :catchall_1
    move-exception v24

    move-object v6, v7

    .end local v7           #cin:Ljava/io/InputStream;
    .restart local v6       #cin:Ljava/io/InputStream;
    goto :goto_4

    .end local v6           #cin:Ljava/io/InputStream;
    .end local v12           #jin:Ljava/io/InputStream;
    .restart local v7       #cin:Ljava/io/InputStream;
    .restart local v13       #jin:Ljava/io/InputStream;
    .restart local v18       #matching:Z
    .restart local v19       #mismatchFound:Z
    .restart local v20       #off:J
    .restart local v22       #startOff:J
    :catchall_2
    move-exception v24

    move-object v12, v13

    .end local v13           #jin:Ljava/io/InputStream;
    .restart local v12       #jin:Ljava/io/InputStream;
    move-object v6, v7

    .end local v7           #cin:Ljava/io/InputStream;
    .restart local v6       #cin:Ljava/io/InputStream;
    goto :goto_4

    .line 76
    .end local v6           #cin:Ljava/io/InputStream;
    .end local v18           #matching:Z
    .end local v19           #mismatchFound:Z
    .end local v20           #off:J
    .end local v22           #startOff:J
    .restart local v7       #cin:Ljava/io/InputStream;
    :catch_4
    move-exception v10

    move-object v6, v7

    .end local v7           #cin:Ljava/io/InputStream;
    .restart local v6       #cin:Ljava/io/InputStream;
    goto :goto_3

    .end local v6           #cin:Ljava/io/InputStream;
    .end local v12           #jin:Ljava/io/InputStream;
    .restart local v7       #cin:Ljava/io/InputStream;
    .restart local v13       #jin:Ljava/io/InputStream;
    .restart local v18       #matching:Z
    .restart local v19       #mismatchFound:Z
    .restart local v20       #off:J
    .restart local v22       #startOff:J
    :catch_5
    move-exception v10

    move-object v12, v13

    .end local v13           #jin:Ljava/io/InputStream;
    .restart local v12       #jin:Ljava/io/InputStream;
    move-object v6, v7

    .end local v7           #cin:Ljava/io/InputStream;
    .restart local v6       #cin:Ljava/io/InputStream;
    goto :goto_3
.end method

.method private static printMismatch(JJ)V
    .locals 4
    .parameter "startOff"
    .parameter "bytesRead"

    .prologue
    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mismatch: off="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    const-string v2, "(0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    const-string v2, "), len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, p2, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    return-void
.end method
