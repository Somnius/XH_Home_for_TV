.class Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rui/launcher/common/tvupdaterec/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private data:Lcom/rui/launcher/common/tvupdaterec/RJsonData;

.field final synthetic this$0:Lcom/rui/launcher/common/tvupdaterec/ImageLoader;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/rui/launcher/common/tvupdaterec/ImageLoader;Landroid/content/Context;Lcom/rui/launcher/common/tvupdaterec/RJsonData;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "data"
    .parameter "type"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->this$0:Lcom/rui/launcher/common/tvupdaterec/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->context:Landroid/content/Context;

    .line 97
    iput-object p3, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->data:Lcom/rui/launcher/common/tvupdaterec/RJsonData;

    .line 98
    iput p4, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->type:I

    .line 99
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x0

    .line 104
    new-instance v6, Lcom/rui/launcher/common/services/ClassifiedInfo;

    iget-object v8, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->data:Lcom/rui/launcher/common/tvupdaterec/RJsonData;

    invoke-direct {v6, v8}, Lcom/rui/launcher/common/services/ClassifiedInfo;-><init>(Lcom/rui/launcher/common/tvupdaterec/RJsonData;)V

    .line 105
    .local v6, info:Lcom/rui/launcher/common/services/ClassifiedInfo;
    const/4 v2, 0x1

    .line 107
    .local v2, exist:Z
    :try_start_0
    iget-object v8, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->data:Lcom/rui/launcher/common/tvupdaterec/RJsonData;

    invoke-virtual {v9}, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    if-eqz v2, :cond_1

    .line 143
    :cond_0
    :goto_1
    return-object v6

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0

    .line 114
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v5, 0x0

    .line 116
    .local v5, imgs:[B
    :try_start_1
    iget-object v8, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->this$0:Lcom/rui/launcher/common/tvupdaterec/ImageLoader;

    iget-object v9, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->data:Lcom/rui/launcher/common/tvupdaterec/RJsonData;

    invoke-virtual {v9}, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->getIconUrl()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->getImageData(Ljava/lang/String;)[B
    invoke-static {v8, v9}, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->access$0(Lcom/rui/launcher/common/tvupdaterec/ImageLoader;Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 121
    :goto_2
    if-eqz v5, :cond_0

    .line 125
    iget-object v8, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "state"

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v8, "icon"

    iget-object v9, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->context:Landroid/content/Context;

    invoke-static {v9, v5}, Lcom/rui/launcher/common/utils/RUtilities;->createBitmap(Landroid/content/Context;[B)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/rui/launcher/common/utils/RUtilities;->writeBitmap(Landroid/content/ContentValues;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 131
    const-string v8, "iconType"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    iget-object v8, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->data:Lcom/rui/launcher/common/tvupdaterec/RJsonData;

    invoke-virtual {v8, v7}, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 134
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/PrintStream;->println()V

    .line 135
    iget v8, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->type:I

    if-ne v8, v13, :cond_2

    .line 136
    iget-object v8, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->data:Lcom/rui/launcher/common/tvupdaterec/RJsonData;

    iget-wide v8, v8, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->id:J

    invoke-static {v8, v9, v12}, Lcom/rui/launcher/common/RLauncherSettings$Recommends;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0, v8, v7, v14, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 137
    iget-object v8, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->data:Lcom/rui/launcher/common/tvupdaterec/RJsonData;

    iget-wide v8, v8, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->id:J

    invoke-virtual {v6, v8, v9}, Lcom/rui/launcher/common/services/ClassifiedInfo;->setId(J)V

    goto :goto_1

    .line 117
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v1

    .line 118
    .local v1, e:Ljava/lang/Exception;
    sget-object v8, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->error:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-static {}, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->access$1()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Download url::http://bcs.duapp.com/recicons/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->data:Lcom/rui/launcher/common/tvupdaterec/RJsonData;

    invoke-virtual {v11}, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->getIconUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v8, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->error:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-static {}, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->access$1()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Fail to get the image:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->data:Lcom/rui/launcher/common/tvupdaterec/RJsonData;

    invoke-virtual {v11}, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 138
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v7       #values:Landroid/content/ContentValues;
    :cond_2
    iget v8, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 139
    sget-object v8, Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;->debug:Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;

    invoke-static {}, Lcom/rui/launcher/common/tvupdaterec/ImageLoader;->access$1()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u65b0\u7684\u63a8\u8350\u5e94\u7528\u4e0b\u8f7d\u6210\u529f\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/rui/launcher/common/tvupdaterec/ImageLoader$DownloadCallable;->data:Lcom/rui/launcher/common/tvupdaterec/RJsonData;

    invoke-virtual {v11}, Lcom/rui/launcher/common/tvupdaterec/RJsonData;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/rui/launcher/common/utils/LogUtil;->print(Lcom/rui/launcher/common/utils/LogUtil$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v8, Lcom/rui/launcher/common/RLauncherSettings$Recommends;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 141
    .local v3, id:J
    invoke-virtual {v6, v3, v4}, Lcom/rui/launcher/common/services/ClassifiedInfo;->setId(J)V

    goto/16 :goto_1
.end method
