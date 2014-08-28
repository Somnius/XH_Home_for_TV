.class Lcom/uprui/tv/launcher8/data/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uprui/tv/launcher8/data/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 133
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 134
    iput-object p1, p0, Lcom/uprui/tv/launcher8/data/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 135
    return-void
.end method

.method private addStartCount(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 174
    :try_start_0
    const-string v1, "alter table favorites add startCount INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 17
    .parameter "db"

    .prologue
    .line 187
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    const/4 v15, 0x0

    invoke-direct {v7, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 188
    .local v7, intent:Landroid/content/Intent;
    const-string v14, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 191
    .local v13, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/uprui/tv/launcher8/data/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 193
    .local v11, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/uprui/tv/launcher8/data/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f050002

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 194
    .local v10, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 195
    .local v2, attrs:Landroid/util/AttributeSet;
    const-string v14, "favorites"

    invoke-static {v10, v14}, Lcom/uprui/tv/launcher8/data/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 198
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 201
    .local v5, depth:I
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v14, 0x3

    if-ne v12, v14, :cond_1

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v5, :cond_2

    :cond_1
    const/4 v14, 0x1

    if-ne v12, v14, :cond_3

    .line 243
    .end local v2           #attrs:Landroid/util/AttributeSet;
    .end local v5           #depth:I
    .end local v10           #parser:Landroid/content/res/XmlResourceParser;
    .end local v12           #type:I
    :cond_2
    :goto_1
    return-void

    .line 203
    .restart local v2       #attrs:Landroid/util/AttributeSet;
    .restart local v5       #depth:I
    .restart local v10       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v12       #type:I
    :cond_3
    const/4 v14, 0x2

    if-ne v12, v14, :cond_0

    .line 207
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 209
    .local v8, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/uprui/tv/launcher8/data/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v15, Lcom/uprui/tv/launcher8/R$styleable;->Favorite:[I

    invoke-virtual {v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 211
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 212
    const-string v14, "title"

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 214
    .local v9, packageName:Ljava/lang/String;
    const/4 v14, 0x2

    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, className:Ljava/lang/String;
    if-eqz v9, :cond_4

    const-string v14, "favorite"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 217
    const-string v14, "packageName"

    invoke-virtual {v13, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v14, "className"

    invoke-virtual {v13, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v15, "isInstall"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v9}, Lcom/uprui/tv/launcher8/data/LauncherProvider$DatabaseHelper;->isInstall(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    :goto_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v9, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .local v4, cn:Landroid/content/ComponentName;
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 222
    const-string v14, "intent"

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .end local v4           #cn:Landroid/content/ComponentName;
    :cond_4
    const-string v14, "categoryCode"

    const/4 v15, 0x3

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    const-string v14, "iconType"

    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const-string v14, "iconFrom"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    const-string v14, "iconResID"

    const/4 v15, 0x5

    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v14, "iconDownloadUrl"

    const/4 v15, 0x6

    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v14, "apkDownloadUrl"

    const/4 v15, 0x7

    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v14, "description"

    const/16 v15, 0x8

    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v14, "webUrl"

    const/16 v15, 0x9

    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v14, "favorites"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 236
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 238
    .end local v1           #a:Landroid/content/res/TypedArray;
    .end local v2           #attrs:Landroid/util/AttributeSet;
    .end local v3           #className:Ljava/lang/String;
    .end local v5           #depth:I
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #packageName:Ljava/lang/String;
    .end local v10           #parser:Landroid/content/res/XmlResourceParser;
    .end local v12           #type:I
    :catch_0
    move-exception v6

    .line 239
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v14, "TAG_SYL"

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 219
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #a:Landroid/content/res/TypedArray;
    .restart local v2       #attrs:Landroid/util/AttributeSet;
    .restart local v3       #className:Ljava/lang/String;
    .restart local v5       #depth:I
    .restart local v8       #name:Ljava/lang/String;
    .restart local v9       #packageName:Ljava/lang/String;
    .restart local v10       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v12       #type:I
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 240
    .end local v1           #a:Landroid/content/res/TypedArray;
    .end local v2           #attrs:Landroid/util/AttributeSet;
    .end local v3           #className:Ljava/lang/String;
    .end local v5           #depth:I
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #packageName:Ljava/lang/String;
    .end local v10           #parser:Landroid/content/res/XmlResourceParser;
    .end local v12           #type:I
    :catch_1
    move-exception v6

    .line 241
    .local v6, e:Ljava/io/IOException;
    const-string v14, "TAG_SYL"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public isInstall(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 3
    .parameter "pm"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 246
    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v1

    .line 250
    :cond_1
    const/16 v2, 0x2000

    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    const/4 v1, 0x1

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, sql:Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE favorites ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    const-string v2, "_id INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 142
    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    const-string v2, "intent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    const-string v2, "className"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    const-string v2, "categoryCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT -1,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    const-string v2, "startCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    const-string v2, "iconType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    const-string v2, "iconFrom"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTERGE,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    const-string v2, "iconResID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    const-string v2, "iconDownloadUrl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    const-string v2, "iconCustom"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BLOB,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    const-string v2, "apkDownloadUrl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    const-string v2, "isDownload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    const-string v2, "isInstall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    const-string v2, "savePath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    const-string v2, "description"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 158
    const-string v2, "webUrl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/uprui/tv/launcher8/data/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 163
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 167
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 168
    invoke-direct {p0, p1}, Lcom/uprui/tv/launcher8/data/LauncherProvider$DatabaseHelper;->addStartCount(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 170
    :cond_0
    return-void
.end method
