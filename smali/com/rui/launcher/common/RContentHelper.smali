.class public Lcom/rui/launcher/common/RContentHelper;
.super Ljava/lang/Object;
.source "RContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rui/launcher/common/RContentHelper$ContentType;
    }
.end annotation


# static fields
.field private static final PREFIX_CLASSIFY:Ljava/lang/String; = "c_"

.field private static final PREFIX_RECOMMEND:Ljava/lang/String; = "r_"

.field private static final PREFS:Ljava/lang/String; = "rui_page_category_maps"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppIdFilter([J)Ljava/lang/String;
    .locals 4
    .parameter "appIds"

    .prologue
    .line 129
    if-nez p0, :cond_0

    .line 130
    const/4 v2, 0x0

    .line 141
    :goto_0
    return-object v2

    .line 132
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 134
    :cond_1
    if-lez v0, :cond_2

    .line 135
    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_2
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getFirstRecUpdate(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 146
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 147
    .local v2, sp:Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "firstRecUpdate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, key:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 149
    .local v1, newD:Z
    return v1
.end method

.method public static getPageCategory(Landroid/content/Context;ILcom/rui/launcher/common/RContentHelper$ContentType;)Lcom/rui/launcher/common/CategoryManager$Category;
    .locals 6
    .parameter "context"
    .parameter "page"
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 101
    if-nez p0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v3

    .line 103
    :cond_1
    sget-object v4, Lcom/rui/launcher/common/RContentHelper$ContentType;->Classifieds:Lcom/rui/launcher/common/RContentHelper$ContentType;

    invoke-virtual {p2, v4}, Lcom/rui/launcher/common/RContentHelper$ContentType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "c_"

    .line 105
    .local v0, prefix:Ljava/lang/String;
    :goto_1
    const-string v4, "rui_page_category_maps"

    .line 106
    const/4 v5, 0x0

    .line 105
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 107
    .local v2, sp:Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, rvt:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/rui/launcher/common/CategoryManager$Category;->valueOf(Ljava/lang/String;)Lcom/rui/launcher/common/CategoryManager$Category;

    move-result-object v3

    goto :goto_0

    .line 104
    .end local v0           #prefix:Ljava/lang/String;
    .end local v1           #rvt:Ljava/lang/String;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_2
    sget-object v4, Lcom/rui/launcher/common/RContentHelper$ContentType;->Recommends:Lcom/rui/launcher/common/RContentHelper$ContentType;

    invoke-virtual {p2, v4}, Lcom/rui/launcher/common/RContentHelper$ContentType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v0, "r_"

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_1
.end method

.method public static getPageOfCategory(Landroid/content/Context;Lcom/rui/launcher/common/CategoryManager$Category;Lcom/rui/launcher/common/RContentHelper$ContentType;)I
    .locals 8
    .parameter "context"
    .parameter "obj"
    .parameter "type"

    .prologue
    const/4 v4, -0x1

    .line 113
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v4

    .line 125
    :cond_1
    :goto_0
    return v0

    .line 115
    :cond_2
    sget-object v5, Lcom/rui/launcher/common/RContentHelper$ContentType;->Classifieds:Lcom/rui/launcher/common/RContentHelper$ContentType;

    invoke-virtual {p2, v5}, Lcom/rui/launcher/common/RContentHelper$ContentType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v1, "c_"

    .line 117
    .local v1, prefix:Ljava/lang/String;
    :goto_1
    const-string v5, "rui_page_category_maps"

    .line 118
    const/4 v6, 0x0

    .line 117
    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 119
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v2

    .line 120
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-lt v0, v2, :cond_5

    move v0, v4

    .line 125
    goto :goto_0

    .line 116
    .end local v0           #i:I
    .end local v1           #prefix:Ljava/lang/String;
    .end local v2           #size:I
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :cond_3
    sget-object v5, Lcom/rui/launcher/common/RContentHelper$ContentType;->Recommends:Lcom/rui/launcher/common/RContentHelper$ContentType;

    invoke-virtual {p2, v5}, Lcom/rui/launcher/common/RContentHelper$ContentType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v1, "r_"

    goto :goto_1

    :cond_4
    const-string v1, ""

    goto :goto_1

    .line 121
    .restart local v0       #i:I
    .restart local v1       #prefix:Ljava/lang/String;
    .restart local v2       #size:I
    .restart local v3       #sp:Landroid/content/SharedPreferences;
    :cond_5
    invoke-virtual {p1}, Lcom/rui/launcher/common/CategoryManager$Category;->name()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static getUnClassifiedInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/rui/launcher/common/services/ClassifiedInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 35
    if-nez p0, :cond_0

    .line 70
    :goto_0
    return-object v2

    .line 38
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Lcom/rui/launcher/common/services/ClassifiedInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 41
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v12, "categoryCode = -1"

    .line 42
    .local v12, selString:Ljava/lang/String;
    sget-object v1, Lcom/rui/launcher/common/RLauncherSettings$Classifieds;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "categoryCode = -1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 46
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 47
    .local v9, idIndex:I
    const-string v1, "title"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 49
    .local v13, titleIndex:I
    const-string v1, "component"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 52
    .local v7, componentIndex:I
    const-string v1, "flags"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 54
    .local v8, flagsIndex:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v2, v11

    .line 70
    goto :goto_0

    .line 56
    :cond_1
    :try_start_1
    new-instance v10, Lcom/rui/launcher/common/services/ClassifiedInfo;

    .line 58
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 56
    invoke-direct {v10, v1}, Lcom/rui/launcher/common/services/ClassifiedInfo;-><init>(Landroid/content/ComponentName;)V

    .line 59
    .local v10, info:Lcom/rui/launcher/common/services/ClassifiedInfo;
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/rui/launcher/common/services/ClassifiedInfo;->title:Ljava/lang/CharSequence;

    .line 60
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/rui/launcher/common/services/ClassifiedInfo;->flags:I

    .line 61
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Lcom/rui/launcher/common/services/ClassifiedInfo;->setId(J)V

    .line 62
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 63
    .end local v10           #info:Lcom/rui/launcher/common/services/ClassifiedInfo;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 66
    .end local v7           #componentIndex:I
    .end local v8           #flagsIndex:I
    .end local v9           #idIndex:I
    .end local v13           #titleIndex:I
    :catchall_0
    move-exception v1

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 68
    throw v1
.end method

.method public static isClassified(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 75
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 76
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "classified"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 77
    .local v0, newD:Z
    return v0
.end method

.method public static setClassified(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "value"

    .prologue
    .line 82
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "classified"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    return-void
.end method

.method public static setFirstRecUpdate(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "value"

    .prologue
    .line 154
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 155
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 156
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "firstRecUpdate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, key:Ljava/lang/String;
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    return-void
.end method

.method public static setPageCategory(Landroid/content/Context;ILcom/rui/launcher/common/CategoryManager$Category;Lcom/rui/launcher/common/RContentHelper$ContentType;)V
    .locals 5
    .parameter "context"
    .parameter "page"
    .parameter "c"
    .parameter "type"

    .prologue
    .line 90
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    sget-object v2, Lcom/rui/launcher/common/RContentHelper$ContentType;->Classifieds:Lcom/rui/launcher/common/RContentHelper$ContentType;

    invoke-virtual {p3, v2}, Lcom/rui/launcher/common/RContentHelper$ContentType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "c_"

    .line 94
    .local v0, prefix:Ljava/lang/String;
    :goto_1
    const-string v2, "rui_page_category_maps"

    .line 95
    const/4 v3, 0x0

    .line 94
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 96
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 93
    .end local v0           #prefix:Ljava/lang/String;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_2
    sget-object v2, Lcom/rui/launcher/common/RContentHelper$ContentType;->Recommends:Lcom/rui/launcher/common/RContentHelper$ContentType;

    invoke-virtual {p3, v2}, Lcom/rui/launcher/common/RContentHelper$ContentType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "r_"

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_1
.end method
