.class public final Lcom/uprui/tv/launcher8/allapp/AllAppActivity;
.super Landroid/app/Activity;
.source "AllAppActivity.java"

# interfaces
.implements Lcom/uprui/tv/launcher8/data/AllAppLauncherModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x400

.field private static final PREFERENCES:Ljava/lang/String; = "launcher.preferences"

.field private static sLocaleConfiguration:Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;

.field private static scale:I


# instance fields
.field private allAppsView:Lcom/uprui/tv/launcher8/allapp/AllAppsView;

.field private model:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

.field private onResumeNeedsLoad:Z

.field private paused:Z

.field private restoring:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->scale:I

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->sLocaleConfiguration:Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->paused:Z

    .line 56
    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-static {p0, p1}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->readConfiguration(Landroid/content/Context;Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$1(Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    sput-object p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->sLocaleConfiguration:Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;

    return-void
.end method

.method static synthetic access$2(Lcom/uprui/tv/launcher8/allapp/AllAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->checkForLocaleChange()V

    return-void
.end method

.method static synthetic access$3(Landroid/content/Context;Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-static {p0, p1}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->writeConfiguration(Landroid/content/Context;Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;)V

    return-void
.end method

.method private checkForLocaleChange()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 101
    sget-object v9, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->sLocaleConfiguration:Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;

    if-nez v9, :cond_1

    .line 102
    new-instance v9, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$1;

    invoke-direct {v9, p0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$1;-><init>(Lcom/uprui/tv/launcher8/allapp/AllAppActivity;)V

    new-array v10, v2, [Ljava/lang/Void;

    .line 115
    invoke-virtual {v9, v10}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 121
    .local v0, configuration:Landroid/content/res/Configuration;
    sget-object v9, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->sLocaleConfiguration:Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;

    iget-object v6, v9, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 122
    .local v6, previousLocale:Ljava/lang/String;
    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, locale:Ljava/lang/String;
    sget-object v9, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->sLocaleConfiguration:Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;

    iget v7, v9, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;->mcc:I

    .line 125
    .local v7, previousMcc:I
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    .line 127
    .local v4, mcc:I
    sget-object v9, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->sLocaleConfiguration:Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;

    iget v8, v9, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;->mnc:I

    .line 128
    .local v8, previousMnc:I
    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    .line 130
    .local v5, mnc:I
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-ne v4, v7, :cond_2

    if-ne v5, v8, :cond_2

    .line 132
    .local v2, localeChanged:Z
    :goto_1
    if-eqz v2, :cond_0

    .line 133
    sget-object v9, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->sLocaleConfiguration:Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;

    iput-object v1, v9, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 134
    sget-object v9, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->sLocaleConfiguration:Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;

    iput v4, v9, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;->mcc:I

    .line 135
    sget-object v9, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->sLocaleConfiguration:Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;

    iput v5, v9, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;->mnc:I

    .line 137
    sget-object v3, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->sLocaleConfiguration:Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;

    .line 138
    .local v3, localeConfiguration:Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;
    new-instance v9, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$2;

    const-string v10, "WriteLocaleConfiguration"

    invoke-direct {v9, p0, v10, v3}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$2;-><init>(Lcom/uprui/tv/launcher8/allapp/AllAppActivity;Ljava/lang/String;Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;)V

    .line 143
    invoke-virtual {v9}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$2;->start()V

    goto :goto_0

    .line 130
    .end local v2           #localeChanged:Z
    .end local v3           #localeConfiguration:Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static getDensity()F
    .locals 2

    .prologue
    .line 413
    sget v0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->scale:I

    int-to-float v0, v0

    const/high16 v1, 0x4320

    div-float/2addr v0, v1

    return v0
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 157
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 158
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;->mcc:I

    .line 159
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 165
    if-eqz v1, :cond_2

    .line 167
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v0, v1

    .line 173
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v2

    .line 165
    :goto_1
    if-eqz v0, :cond_0

    .line 167
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 168
    :catch_1
    move-exception v2

    goto :goto_0

    .line 162
    :catch_2
    move-exception v2

    .line 165
    :goto_2
    if-eqz v0, :cond_0

    .line 167
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 168
    :catch_3
    move-exception v2

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v2

    .line 165
    :goto_3
    if-eqz v0, :cond_1

    .line 167
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 172
    :cond_1
    :goto_4
    throw v2

    .line 168
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0

    :catch_5
    move-exception v3

    goto :goto_4

    .line 164
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 162
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 160
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :cond_2
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private setupViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 243
    const v4, 0x7f090007

    invoke-virtual {p0, v4}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/uprui/tv/launcher8/allapp/AllAppsView;

    iput-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->allAppsView:Lcom/uprui/tv/launcher8/allapp/AllAppsView;

    .line 244
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->allAppsView:Lcom/uprui/tv/launcher8/allapp/AllAppsView;

    invoke-interface {v4, p0}, Lcom/uprui/tv/launcher8/allapp/AllAppsView;->setLauncher(Lcom/uprui/tv/launcher8/allapp/AllAppActivity;)V

    .line 245
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->allAppsView:Lcom/uprui/tv/launcher8/allapp/AllAppsView;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 246
    iget-object v4, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->allAppsView:Lcom/uprui/tv/launcher8/allapp/AllAppsView;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 254
    const v4, 0x7f09000a

    invoke-virtual {p0, v4}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 255
    .local v0, allappImg:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 256
    .local v3, titleLp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getTopImgIconSize()I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 257
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getTopImgIconSize()I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 258
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getAppTitleHeight()I

    move-result v4

    .line 259
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getTopImgIconSize()I

    move-result v5

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1

    .line 258
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 260
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    const v4, 0x7f09000b

    invoke-virtual {p0, v4}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;

    .line 263
    .local v1, indicator:Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;
    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 264
    .local v2, indicatorLp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getAppIndicatorHeight()I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 265
    invoke-virtual {v1, v2}, Lcom/uprui/tv/launcher8/allapp/indicator/AllappIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    invoke-virtual {p0, v6}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->showAllApps(Z)V

    .line 268
    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 178
    .local v1, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 179
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p1, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 180
    iget v3, p1, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 181
    iget v3, p1, Lcom/uprui/tv/launcher8/allapp/AllAppActivity$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 182
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 187
    if-eqz v2, :cond_2

    .line 189
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v1, v2

    .line 195
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v3

    .line 187
    :goto_1
    if-eqz v1, :cond_0

    .line 189
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 190
    :catch_1
    move-exception v3

    goto :goto_0

    .line 184
    :catch_2
    move-exception v0

    .line 185
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 187
    if-eqz v1, :cond_0

    .line 189
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 190
    :catch_3
    move-exception v3

    goto :goto_0

    .line 186
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 187
    :goto_3
    if-eqz v1, :cond_1

    .line 189
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 194
    :cond_1
    :goto_4
    throw v3

    .line 190
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0

    :catch_5
    move-exception v4

    goto :goto_4

    .line 186
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 184
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 183
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public bindAllApplications(Ljava/util/ArrayList;Z)V
    .locals 4
    .parameter
    .parameter "classfied"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    const/4 v3, 0x0

    .line 366
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->allAppsView:Lcom/uprui/tv/launcher8/allapp/AllAppsView;

    invoke-interface {v1, p1, p2}, Lcom/uprui/tv/launcher8/allapp/AllAppsView;->setApps(Ljava/util/ArrayList;Z)V

    .line 367
    const-string v1, "tv_allApp_name"

    invoke-virtual {p0, v1, v3}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 368
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "ClassifySecond"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    const/4 v1, 0x0

    invoke-static {p0, v3, v1}, Lcom/uprui/tv/launcher8/LauncherApplication;->requestClassify(Landroid/content/Context;ZLjava/util/ArrayList;)V

    .line 371
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ClassifySecond"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 373
    :cond_0
    return-void
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->setLoadOnResume()Z

    .line 383
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->allAppsView:Lcom/uprui/tv/launcher8/allapp/AllAppsView;

    invoke-interface {v0, p1}, Lcom/uprui/tv/launcher8/allapp/AllAppsView;->addApps(Ljava/util/ArrayList;)V

    .line 384
    return-void
.end method

.method public bindAppsRemoved(Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter
    .parameter "permanent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->allAppsView:Lcom/uprui/tv/launcher8/allapp/AllAppsView;

    invoke-interface {v0, p1}, Lcom/uprui/tv/launcher8/allapp/AllAppsView;->removeApps(Ljava/util/ArrayList;)V

    .line 405
    return-void
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->setLoadOnResume()Z

    .line 394
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->allAppsView:Lcom/uprui/tv/launcher8/allapp/AllAppsView;

    invoke-interface {v0, p1}, Lcom/uprui/tv/launcher8/allapp/AllAppsView;->updateApps(Ljava/util/ArrayList;)V

    .line 395
    return-void
.end method

.method public bindClassifiedsAdded(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uprui/tv/launcher8/allapp/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/allapp/AppInfo;>;"
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->allAppsView:Lcom/uprui/tv/launcher8/allapp/AllAppsView;

    check-cast v0, Lcom/uprui/tv/launcher8/allapp/AllApps2D;

    invoke-virtual {v0, p1}, Lcom/uprui/tv/launcher8/allapp/AllApps2D;->updateAppsAfterClassify(Ljava/util/ArrayList;)V

    .line 410
    return-void
.end method

.method public closeAllApps(Z)V
    .locals 0
    .parameter "animated"

    .prologue
    .line 337
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 199
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->waitingForResult:Z

    .line 200
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-static {p0}, Lcom/uprui/tv/launcher8/data/MainLauncherData;->getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/data/MainLauncherData;

    .line 78
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->scale:I

    .line 80
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->checkForLocaleChange()V

    .line 82
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->setContentView(I)V

    .line 83
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->setupViews()V

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v0, connectivityFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/uprui/tv/launcher8/LauncherApplication;

    invoke-virtual {v1, p0}, Lcom/uprui/tv/launcher8/LauncherApplication;->initLauncherModel(Lcom/uprui/tv/launcher8/allapp/AllAppActivity;)Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    move-result-object v1

    iput-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->model:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    .line 89
    iget-boolean v1, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->restoring:Z

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->model:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 93
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 289
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 291
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->model:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->stopLoader()V

    .line 293
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 230
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 232
    .local v0, handled:Z
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const/4 v0, 0x1

    .line 236
    .end local v0           #handled:Z
    :cond_0
    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 273
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 277
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 278
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 279
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 283
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #v:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string v2, "com.uprui.tv.launcher.action.DOWNLOAD_RUI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->paused:Z

    .line 219
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 206
    iput-boolean v2, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->paused:Z

    .line 207
    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->restoring:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->onResumeNeedsLoad:Z

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->model:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 209
    iput-boolean v2, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->restoring:Z

    .line 210
    iput-boolean v2, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->onResumeNeedsLoad:Z

    .line 212
    :cond_1
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->model:Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/data/AllAppLauncherModel;->stopLoader()V

    .line 224
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->allAppsView:Lcom/uprui/tv/launcher8/allapp/AllAppsView;

    invoke-interface {v0}, Lcom/uprui/tv/launcher8/allapp/AllAppsView;->surrender()V

    .line 225
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 98
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 341
    iget-boolean v1, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->paused:Z

    if-eqz v1, :cond_0

    .line 342
    iput-boolean v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->onResumeNeedsLoad:Z

    .line 345
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showAllApps(Z)V
    .locals 2
    .parameter "animated"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->allAppsView:Lcom/uprui/tv/launcher8/allapp/AllAppsView;

    const/high16 v1, 0x3f80

    invoke-interface {v0, v1, p1}, Lcom/uprui/tv/launcher8/allapp/AllAppsView;->zoom(FZ)V

    .line 328
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->allAppsView:Lcom/uprui/tv/launcher8/allapp/AllAppsView;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 329
    iget-object v0, p0, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->allAppsView:Lcom/uprui/tv/launcher8/allapp/AllAppsView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 330
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 297
    if-ltz p2, :cond_0

    .line 298
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uprui/tv/launcher8/data/MainLauncherData;->waitingForResult:Z

    .line 299
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 300
    return-void
.end method

.method startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const v2, 0x7f07005f

    const/4 v1, 0x0

    .line 316
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 322
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 319
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 320
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 4
    .parameter "intent"
    .parameter "tag"

    .prologue
    const v3, 0x7f07005f

    const/4 v2, 0x0

    .line 303
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 305
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/uprui/tv/launcher8/allapp/AllAppActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 308
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
