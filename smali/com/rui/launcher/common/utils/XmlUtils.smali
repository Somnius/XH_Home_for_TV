.class public Lcom/rui/launcher/common/utils/XmlUtils;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 758
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    if-eq v0, v2, :cond_1

    .line 759
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 763
    :cond_1
    if-eq v0, v2, :cond_2

    .line 764
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 767
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 768
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected start tag: found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 769
    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 768
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 771
    :cond_3
    return-void
.end method

.method public static final convertValueToBoolean(Ljava/lang/CharSequence;Z)Z
    .locals 2
    .parameter "value"
    .parameter "defaultValue"

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, result:Z
    if-nez p0, :cond_0

    .line 59
    .end local p1
    :goto_0
    return p1

    .line 54
    .restart local p1
    :cond_0
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    const-string v1, "true"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    const-string v1, "TRUE"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    :cond_1
    const/4 v0, 0x1

    :cond_2
    move p1, v0

    .line 59
    goto :goto_0
.end method

.method public static final convertValueToInt(Ljava/lang/CharSequence;I)I
    .locals 9
    .parameter "charSeq"
    .parameter "defaultValue"

    .prologue
    const/4 v6, 0x0

    .line 65
    if-nez p0, :cond_0

    .line 105
    .end local p1
    :goto_0
    return p1

    .line 68
    .restart local p1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, nm:Ljava/lang/String;
    const/4 v5, 0x1

    .line 75
    .local v5, sign:I
    const/4 v2, 0x0

    .line 76
    .local v2, index:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 77
    .local v3, len:I
    const/16 v0, 0xa

    .line 79
    .local v0, base:I
    const/16 v7, 0x2d

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_1

    .line 80
    const/4 v5, -0x1

    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 84
    :cond_1
    const/16 v7, 0x30

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_6

    .line 86
    add-int/lit8 v7, v3, -0x1

    if-ne v2, v7, :cond_2

    move p1, v6

    .line 87
    goto :goto_0

    .line 89
    :cond_2
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 91
    .local v1, c:C
    const/16 v6, 0x78

    if-eq v6, v1, :cond_3

    const/16 v6, 0x58

    if-ne v6, v1, :cond_5

    .line 92
    :cond_3
    add-int/lit8 v2, v2, 0x2

    .line 93
    const/16 v0, 0x10

    .line 105
    .end local v1           #c:C
    :cond_4
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    mul-int p1, v6, v5

    goto :goto_0

    .line 95
    .restart local v1       #c:C
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 96
    const/16 v0, 0x8

    .line 98
    goto :goto_1

    .line 99
    .end local v1           #c:C
    :cond_6
    const/16 v6, 0x23

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_4

    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    const/16 v0, 0x10

    goto :goto_1
.end method

.method public static final convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I
    .locals 2
    .parameter "value"
    .parameter "options"
    .parameter "defaultValue"

    .prologue
    .line 36
    if-eqz p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_2

    .end local v0           #i:I
    :cond_0
    move v0, p2

    .line 43
    :cond_1
    return v0

    .line 38
    .restart local v0       #i:I
    :cond_2
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final convertValueToUnsignedInt(Ljava/lang/String;I)I
    .locals 0
    .parameter "value"
    .parameter "defaultValue"

    .prologue
    .line 111
    if-nez p0, :cond_0

    .line 114
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    invoke-static {p0}, Lcom/rui/launcher/common/utils/XmlUtils;->parseUnsignedIntAttribute(Ljava/lang/CharSequence;)I

    move-result p1

    goto :goto_0
.end method

.method public static final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 776
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 777
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 780
    :cond_1
    return-void
.end method

.method public static final parseUnsignedIntAttribute(Ljava/lang/CharSequence;)I
    .locals 7
    .parameter "charSeq"

    .prologue
    .line 120
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, value:Ljava/lang/String;
    const/4 v2, 0x0

    .line 124
    .local v2, index:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 125
    .local v3, len:I
    const/16 v0, 0xa

    .line 127
    .local v0, base:I
    const/16 v5, 0x30

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_4

    .line 129
    add-int/lit8 v5, v3, -0x1

    if-ne v2, v5, :cond_0

    .line 130
    const/4 v5, 0x0

    .line 146
    :goto_0
    return v5

    .line 132
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 134
    .local v1, c:C
    const/16 v5, 0x78

    if-eq v5, v1, :cond_1

    const/16 v5, 0x58

    if-ne v5, v1, :cond_3

    .line 135
    :cond_1
    add-int/lit8 v2, v2, 0x2

    .line 136
    const/16 v0, 0x10

    .line 146
    .end local v1           #c:C
    :cond_2
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    long-to-int v5, v5

    goto :goto_0

    .line 138
    .restart local v1       #c:C
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 139
    const/16 v0, 0x8

    .line 141
    goto :goto_1

    .end local v1           #c:C
    :cond_4
    const/16 v5, 0x23

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_2

    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 143
    const/16 v0, 0x10

    goto :goto_1
.end method

.method public static final readListXml(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 474
    .local v0, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 475
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rui/launcher/common/utils/XmlUtils;->readValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1
.end method

.method public static final readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 453
    .local v0, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 454
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rui/launcher/common/utils/XmlUtils;->readValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    return-object v1
.end method

.method public static final readThisIntArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[I
    .locals 8
    .parameter "parser"
    .parameter "endTag"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    const/4 v5, 0x0

    :try_start_0
    const-string v6, "num"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 590
    .local v4, num:I
    new-array v0, v4, [I

    .line 591
    .local v0, array:[I
    const/4 v3, 0x0

    .line 593
    .local v3, i:I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 595
    .local v2, eventType:I
    :cond_0
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 596
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 599
    const/4 v5, 0x0

    :try_start_1
    const-string v6, "value"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 598
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 622
    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 623
    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 625
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 626
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Document ended before "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " end tag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 625
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 582
    .end local v0           #array:[I
    .end local v2           #eventType:I
    .end local v3           #i:I
    .end local v4           #num:I
    :catch_0
    move-exception v1

    .line 583
    .local v1, e:Ljava/lang/NullPointerException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 584
    const-string v6, "Need num attribute in byte-array"

    .line 583
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 585
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 586
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 587
    const-string v6, "Not a number in num attribute in byte-array"

    .line 586
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 600
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #array:[I
    .restart local v2       #eventType:I
    .restart local v3       #i:I
    .restart local v4       #num:I
    :catch_2
    move-exception v1

    .line 601
    .local v1, e:Ljava/lang/NullPointerException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 602
    const-string v6, "Need value attribute in item"

    .line 601
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 603
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v1

    .line 604
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 605
    const-string v6, "Not a number in value attribute in item"

    .line 604
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 608
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 609
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Expected item tag at: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 608
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 611
    :cond_3
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    .line 612
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 613
    return-object v0

    .line 614
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 615
    add-int/lit8 v3, v3, 0x1

    .line 616
    goto :goto_0

    .line 617
    :cond_5
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 618
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Expected "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " end tag at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 619
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 618
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 617
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static final readThisListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "parser"
    .parameter "endTag"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 543
    .local v0, eventType:I
    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 544
    invoke-static {p0, p2}, Lcom/rui/launcher/common/utils/XmlUtils;->readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 545
    .local v2, val:Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    .end local v2           #val:Ljava/lang/Object;
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 555
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 557
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    .line 558
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Document ended before "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end tag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 557
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 547
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 548
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 549
    return-object v1

    .line 551
    :cond_3
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expected "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end tag at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 551
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final readThisMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .parameter "parser"
    .parameter "endTag"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 495
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 497
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 499
    .local v0, eventType:I
    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 500
    invoke-static {p0, p2}, Lcom/rui/launcher/common/utils/XmlUtils;->readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 501
    .local v2, val:Ljava/lang/Object;
    aget-object v3, p2, v4

    if-eqz v3, :cond_2

    .line 503
    aget-object v3, p2, v4

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .end local v2           #val:Ljava/lang/Object;
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 516
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 518
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    .line 519
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Document ended before "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end tag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 518
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 505
    .restart local v2       #val:Ljava/lang/Object;
    :cond_2
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Map value without name attribute: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 505
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 508
    .end local v2           #val:Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 509
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 510
    return-object v1

    .line 512
    :cond_4
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    .line 513
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expected "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end tag at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 512
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static final readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .parameter "parser"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 669
    const-string v5, "name"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 670
    .local v4, valueName:Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 676
    .local v2, tagName:Ljava/lang/String;
    const-string v5, "null"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 677
    const/4 v1, 0x0

    .line 734
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, eventType:I
    if-ne v0, v8, :cond_10

    .line 751
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 752
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected end of document in <"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 751
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 678
    .end local v0           #eventType:I
    :cond_1
    const-string v5, "string"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 679
    const-string v3, ""

    .line 681
    .local v3, value:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .restart local v0       #eventType:I
    if-ne v0, v8, :cond_3

    .line 697
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 698
    const-string v6, "Unexpected end of document in <string>"

    .line 697
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 682
    :cond_3
    if-ne v0, v10, :cond_5

    .line 683
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "string"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 684
    aput-object v4, p1, v7

    move-object v1, v3

    .line 739
    .end local v0           #eventType:I
    .end local v3           #value:Ljava/lang/String;
    :goto_2
    return-object v1

    .line 688
    .restart local v0       #eventType:I
    .restart local v3       #value:Ljava/lang/String;
    :cond_4
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 689
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected end tag in <string>: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 688
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 690
    :cond_5
    const/4 v5, 0x4

    if-ne v0, v5, :cond_6

    .line 691
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 692
    goto :goto_1

    :cond_6
    if-ne v0, v9, :cond_2

    .line 693
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 694
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected start tag in <string>: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 693
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 699
    .end local v0           #eventType:I
    .end local v3           #value:Ljava/lang/String;
    :cond_7
    const-string v5, "int"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 700
    const-string v5, "value"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 701
    .local v1, res:Ljava/lang/Integer;
    goto/16 :goto_0

    .end local v1           #res:Ljava/lang/Integer;
    :cond_8
    const-string v5, "long"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 702
    const-string v5, "value"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 703
    .local v1, res:Ljava/lang/Long;
    goto/16 :goto_0

    .end local v1           #res:Ljava/lang/Long;
    :cond_9
    const-string v5, "float"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 704
    new-instance v1, Ljava/lang/Float;

    const-string v5, "value"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 705
    .local v1, res:Ljava/lang/Float;
    goto/16 :goto_0

    .end local v1           #res:Ljava/lang/Float;
    :cond_a
    const-string v5, "double"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 706
    new-instance v1, Ljava/lang/Double;

    const-string v5, "value"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 707
    .local v1, res:Ljava/lang/Double;
    goto/16 :goto_0

    .end local v1           #res:Ljava/lang/Double;
    :cond_b
    const-string v5, "boolean"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 708
    const-string v5, "value"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 709
    .local v1, res:Ljava/lang/Boolean;
    goto/16 :goto_0

    .end local v1           #res:Ljava/lang/Boolean;
    :cond_c
    const-string v5, "int-array"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 710
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 711
    const-string v5, "int-array"

    invoke-static {p0, v5, p1}, Lcom/rui/launcher/common/utils/XmlUtils;->readThisIntArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v1

    .line 712
    .local v1, res:[I
    aput-object v4, p1, v7

    goto/16 :goto_2

    .line 715
    .end local v1           #res:[I
    :cond_d
    const-string v5, "map"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 716
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 717
    const-string v5, "map"

    invoke-static {p0, v5, p1}, Lcom/rui/launcher/common/utils/XmlUtils;->readThisMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 718
    .local v1, res:Ljava/util/HashMap;
    aput-object v4, p1, v7

    goto/16 :goto_2

    .line 721
    .end local v1           #res:Ljava/util/HashMap;
    :cond_e
    const-string v5, "list"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 722
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 723
    const-string v5, "list"

    invoke-static {p0, v5, p1}, Lcom/rui/launcher/common/utils/XmlUtils;->readThisListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 724
    .local v1, res:Ljava/util/ArrayList;
    aput-object v4, p1, v7

    goto/16 :goto_2

    .line 728
    .end local v1           #res:Ljava/util/ArrayList;
    :cond_f
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 729
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown tag: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 728
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 735
    .restart local v0       #eventType:I
    :cond_10
    if-ne v0, v10, :cond_12

    .line 736
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 737
    aput-object v4, p1, v7

    goto/16 :goto_2

    .line 741
    :cond_11
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 742
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected end tag in <"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 741
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 743
    :cond_12
    const/4 v5, 0x4

    if-ne v0, v5, :cond_13

    .line 744
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 745
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected text in <"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 744
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 746
    :cond_13
    if-ne v0, v9, :cond_0

    .line 747
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 748
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected start tag in <"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 747
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static final readValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "parser"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 650
    .local v0, eventType:I
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 651
    invoke-static {p0, p1}, Lcom/rui/launcher/common/utils/XmlUtils;->readThisValueXml(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 652
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 653
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected end tag at: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 653
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 655
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 656
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected text: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 656
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 659
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 660
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 662
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 663
    const-string v2, "Unexpected end of document"

    .line 662
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 27
    .local v0, outerDepth:I
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, type:I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 28
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 29
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 27
    if-gt v2, v0, :cond_0

    .line 31
    :cond_1
    return-void
.end method

.method public static final writeByteArrayXml([BLjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 9
    .parameter "val"
    .parameter "name"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x0

    .line 288
    if-nez p0, :cond_0

    .line 289
    const-string v5, "null"

    invoke-interface {p2, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 290
    const-string v5, "null"

    invoke-interface {p2, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    :goto_0
    return-void

    .line 294
    :cond_0
    const-string v5, "byte-array"

    invoke-interface {p2, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    if-eqz p1, :cond_1

    .line 296
    const-string v5, "name"

    invoke-interface {p2, v7, v5, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 299
    :cond_1
    array-length v0, p0

    .line 300
    .local v0, N:I
    const-string v5, "num"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 303
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v0, :cond_2

    .line 311
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    const-string v5, "byte-array"

    invoke-interface {p2, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 304
    :cond_2
    aget-byte v1, p0, v3

    .line 305
    .local v1, b:I
    shr-int/lit8 v2, v1, 0x4

    .line 306
    .local v2, h:I
    if-lt v2, v8, :cond_3

    add-int/lit8 v5, v2, 0x61

    add-int/lit8 v5, v5, -0xa

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    and-int/lit16 v2, v1, 0xff

    .line 308
    if-lt v2, v8, :cond_4

    add-int/lit8 v5, v2, 0x61

    add-int/lit8 v5, v5, -0xa

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 306
    :cond_3
    add-int/lit8 v5, v2, 0x30

    goto :goto_2

    .line 308
    :cond_4
    add-int/lit8 v5, v2, 0x30

    goto :goto_3
.end method

.method public static final writeIntArrayXml([ILjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .parameter "val"
    .parameter "name"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 333
    if-nez p0, :cond_0

    .line 334
    const-string v2, "null"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    const-string v2, "null"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 354
    :goto_0
    return-void

    .line 339
    :cond_0
    const-string v2, "int-array"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 340
    if-eqz p1, :cond_1

    .line 341
    const-string v2, "name"

    invoke-interface {p2, v4, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    :cond_1
    array-length v0, p0

    .line 345
    .local v0, N:I
    const-string v2, "num"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 347
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v0, :cond_2

    .line 353
    const-string v2, "int-array"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 348
    :cond_2
    const-string v2, "item"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 349
    const-string v2, "value"

    aget v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 350
    const-string v2, "item"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static final writeListXml(Ljava/util/List;Ljava/io/OutputStream;)V
    .locals 4
    .parameter
    .parameter "out"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, val:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 186
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 187
    .local v0, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v1, "utf-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 188
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 189
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 190
    invoke-static {p0, v3, v0}, Lcom/rui/launcher/common/utils/XmlUtils;->writeListXml(Ljava/util/List;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 191
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 192
    return-void
.end method

.method public static final writeListXml(Ljava/util/List;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter
    .parameter "name"
    .parameter "out"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            "Lorg/xmlpull/v1/XmlSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, val:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v3, 0x0

    .line 251
    if-nez p0, :cond_0

    .line 252
    const-string v2, "null"

    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    const-string v2, "null"

    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 270
    :goto_0
    return-void

    .line 257
    :cond_0
    const-string v2, "list"

    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 258
    if-eqz p1, :cond_1

    .line 259
    const-string v2, "name"

    invoke-interface {p2, v3, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 263
    .local v0, N:I
    const/4 v1, 0x0

    .line 264
    .local v1, i:I
    :goto_1
    if-lt v1, v0, :cond_2

    .line 269
    const-string v2, "list"

    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 265
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3, p2}, Lcom/rui/launcher/common/utils/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static final writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 4
    .parameter
    .parameter "out"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, val:Ljava/util/Map;,"Ljava/util/Map<**>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 163
    new-instance v0, Lcom/rui/launcher/common/utils/FastXmlSerializer;

    invoke-direct {v0}, Lcom/rui/launcher/common/utils/FastXmlSerializer;-><init>()V

    .line 164
    .local v0, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v1, "utf-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 165
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 166
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 167
    invoke-static {p0, v3, v0}, Lcom/rui/launcher/common/utils/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 168
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 169
    return-void
.end method

.method public static final writeMapXml(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 6
    .parameter
    .parameter "name"
    .parameter "out"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/String;",
            "Lorg/xmlpull/v1/XmlSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, val:Ljava/util/Map;,"Ljava/util/Map<**>;"
    const/4 v5, 0x0

    .line 211
    if-nez p0, :cond_0

    .line 212
    const-string v3, "null"

    invoke-interface {p2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    const-string v3, "null"

    invoke-interface {p2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 218
    .local v2, s:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 220
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const-string v3, "map"

    invoke-interface {p2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    if-eqz p1, :cond_1

    .line 222
    const-string v3, "name"

    invoke-interface {p2, v5, v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 231
    const-string v3, "map"

    invoke-interface {p2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 227
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 228
    .local v0, e:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3, p2}, Lcom/rui/launcher/common/utils/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_1
.end method

.method public static final writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter "v"
    .parameter "name"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 376
    if-nez p0, :cond_1

    .line 377
    const-string v1, "null"

    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 378
    if-eqz p1, :cond_0

    .line 379
    const-string v1, "name"

    invoke-interface {p2, v3, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 381
    :cond_0
    const-string v1, "null"

    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    .end local p0
    :goto_0
    return-void

    .line 383
    .restart local p0
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 384
    const-string v1, "string"

    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 385
    if-eqz p1, :cond_2

    .line 386
    const-string v1, "name"

    invoke-interface {p2, v3, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 388
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    const-string v1, "string"

    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 391
    :cond_3
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 392
    const-string v0, "int"

    .line 428
    .local v0, typeStr:Ljava/lang/String;
    :goto_1
    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 429
    if-eqz p1, :cond_4

    .line 430
    const-string v1, "name"

    invoke-interface {p2, v3, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    :cond_4
    const-string v1, "value"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 393
    .end local v0           #typeStr:Ljava/lang/String;
    :cond_5
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 394
    const-string v0, "long"

    .line 395
    .restart local v0       #typeStr:Ljava/lang/String;
    goto :goto_1

    .end local v0           #typeStr:Ljava/lang/String;
    :cond_6
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 396
    const-string v0, "float"

    .line 397
    .restart local v0       #typeStr:Ljava/lang/String;
    goto :goto_1

    .end local v0           #typeStr:Ljava/lang/String;
    :cond_7
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_8

    .line 398
    const-string v0, "double"

    .line 399
    .restart local v0       #typeStr:Ljava/lang/String;
    goto :goto_1

    .end local v0           #typeStr:Ljava/lang/String;
    :cond_8
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 400
    const-string v0, "boolean"

    .line 401
    .restart local v0       #typeStr:Ljava/lang/String;
    goto :goto_1

    .end local v0           #typeStr:Ljava/lang/String;
    :cond_9
    instance-of v1, p0, [B

    if-eqz v1, :cond_a

    .line 402
    check-cast p0, [B

    .end local p0
    invoke-static {p0, p1, p2}, Lcom/rui/launcher/common/utils/XmlUtils;->writeByteArrayXml([BLjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .line 404
    .restart local p0
    :cond_a
    instance-of v1, p0, [I

    if-eqz v1, :cond_b

    .line 405
    check-cast p0, [I

    .end local p0
    invoke-static {p0, p1, p2}, Lcom/rui/launcher/common/utils/XmlUtils;->writeIntArrayXml([ILjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .line 407
    .restart local p0
    :cond_b
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_c

    .line 408
    check-cast p0, Ljava/util/Map;

    .end local p0
    invoke-static {p0, p1, p2}, Lcom/rui/launcher/common/utils/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .line 410
    .restart local p0
    :cond_c
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_d

    .line 411
    check-cast p0, Ljava/util/List;

    .end local p0
    invoke-static {p0, p1, p2}, Lcom/rui/launcher/common/utils/XmlUtils;->writeListXml(Ljava/util/List;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .line 413
    .restart local p0
    :cond_d
    instance-of v1, p0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    .line 417
    const-string v1, "string"

    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 418
    if-eqz p1, :cond_e

    .line 419
    const-string v1, "name"

    invoke-interface {p2, v3, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 421
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 422
    const-string v1, "string"

    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 425
    :cond_f
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "writeValueXml: unable to write value "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
