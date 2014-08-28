.class public Lcom/uprui/tv/launcher8/DialogPopView;
.super Landroid/widget/LinearLayout;
.source "DialogPopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private delSci:Landroid/widget/TextView;

.field private delSciLinear:Landroid/widget/LinearLayout;

.field private delete:Landroid/widget/TextView;

.field private deleteLinear:Landroid/widget/LinearLayout;

.field private info:Ljava/lang/Object;

.field private manageAppLinear:Landroid/widget/LinearLayout;

.field private mangeApp:Landroid/widget/TextView;

.field private open:Landroid/widget/TextView;

.field private openLinear:Landroid/widget/LinearLayout;

.field private ruiDialog:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->init()V

    .line 63
    return-void
.end method

.method private deleteSci()V
    .locals 15

    .prologue
    .line 233
    iget-object v12, p0, Lcom/uprui/tv/launcher8/DialogPopView;->info:Ljava/lang/Object;

    instance-of v12, v12, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    if-eqz v12, :cond_1

    .line 234
    iget-object v8, p0, Lcom/uprui/tv/launcher8/DialogPopView;->info:Ljava/lang/Object;

    check-cast v8, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 235
    .local v8, target:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    iget-object v9, v8, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    .line 236
    .local v9, targetpkgName:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/uprui/tv/launcher8/ActLauncher;

    .line 239
    .local v6, launcher:Lcom/uprui/tv/launcher8/ActLauncher;
    invoke-virtual {v6}, Lcom/uprui/tv/launcher8/ActLauncher;->getSpecifiedFragment()Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;

    move-result-object v7

    .line 240
    .local v7, showFragment:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;
    invoke-virtual {v7}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->computeFourceIndex()V

    .line 241
    invoke-virtual {v7}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 242
    invoke-virtual {v7}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->getView()Landroid/view/View;

    move-result-object v12

    const v13, 0x7f090045

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;

    .line 243
    .local v11, tvWorkspace:Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v11}, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->getChildCount()I

    move-result v12

    if-lt v3, v12, :cond_2

    .line 260
    .end local v3           #i:I
    .end local v11           #tvWorkspace:Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;
    :cond_0
    invoke-virtual {v7, v2}, Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;->bindItems(Ljava/util/ArrayList;)V

    .line 262
    .end local v2           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    .end local v6           #launcher:Lcom/uprui/tv/launcher8/ActLauncher;
    .end local v7           #showFragment:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;
    .end local v8           #target:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    .end local v9           #targetpkgName:Ljava/lang/String;
    :cond_1
    return-void

    .line 244
    .restart local v2       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;>;"
    .restart local v3       #i:I
    .restart local v6       #launcher:Lcom/uprui/tv/launcher8/ActLauncher;
    .restart local v7       #showFragment:Lcom/uprui/tv/launcher8/workspace/SpecifiedCatecoryItem;
    .restart local v8       #target:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    .restart local v9       #targetpkgName:Ljava/lang/String;
    .restart local v11       #tvWorkspace:Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;
    :cond_2
    invoke-virtual {v11, v3}, Lcom/uprui/tv/launcher8/workspace/TvWorkSpace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;

    .line 245
    .local v0, cellLayout:Lcom/uprui/tv/launcher8/pageview/TvCellLayout;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildCount()I

    move-result v12

    if-lt v5, v12, :cond_3

    .line 243
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    :cond_3
    invoke-virtual {v0, v5}, Lcom/uprui/tv/launcher8/pageview/TvCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/uprui/tv/launcher8/pageview/TvCellChild;

    .line 247
    .local v1, child:Lcom/uprui/tv/launcher8/pageview/TvCellChild;
    invoke-virtual {v1}, Lcom/uprui/tv/launcher8/pageview/TvCellChild;->getInfo()Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    move-result-object v10

    .line 248
    .local v10, tvInfo:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    iget-object v12, v10, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 249
    iget-object v12, v10, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Lcom/uprui/tv/launcher8/ActLauncher;->updateItemDatas(Ljava/lang/String;)V

    .line 250
    iget-object v12, v10, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v12}, Lcom/uprui/tv/launcher8/DialogPopView;->saveDeleteSci(Ljava/lang/String;)V

    .line 251
    iget-object v12, v10, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v12}, Lcom/uprui/tv/launcher8/DialogPopView;->deleteItemInDB(Ljava/lang/String;)Z

    move-result v4

    .line 252
    .local v4, isSuccess:Z
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " isSuccess="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    .end local v4           #isSuccess:Z
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 254
    :cond_4
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static getDeleteSCIPackageName(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    const-string v5, "deleteSCI"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 288
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v5, "deleteSCI_item"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, previousItem:Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, str:[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v0, deleteSci:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-lt v1, v5, :cond_0

    .line 295
    return-object v0

    .line 292
    :cond_0
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/DialogPopView;->setClickable(Z)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/DialogPopView;->setFocusable(Z)V

    .line 68
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/DialogPopView;->setDescendantFocusability(I)V

    .line 69
    return-void
.end method

.method private isInstalled(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 204
    :try_start_0
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    const/4 v1, 0x1

    .line 207
    :goto_0
    return v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private mangeApp()V
    .locals 5

    .prologue
    .line 182
    const/4 v2, 0x0

    .line 183
    .local v2, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/uprui/tv/launcher8/DialogPopView;->info:Ljava/lang/Object;

    instance-of v3, v3, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    if-eqz v3, :cond_1

    .line 184
    iget-object v3, p0, Lcom/uprui/tv/launcher8/DialogPopView;->info:Ljava/lang/Object;

    check-cast v3, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    invoke-virtual {v3}, Lcom/uprui/tv/launcher8/allapp/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 189
    :cond_0
    :goto_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 190
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "package:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 193
    const-string v3, "cmp"

    const-string v4, "com.android.settings/.applications.InstalledAppDetails"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/uprui/tv/launcher8/DialogPopView;->info:Ljava/lang/Object;

    instance-of v3, v3, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    if-eqz v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/uprui/tv/launcher8/DialogPopView;->info:Ljava/lang/Object;

    check-cast v3, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    iget-object v2, v3, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private openApp()V
    .locals 6

    .prologue
    const v5, 0x7f07005f

    const/4 v4, 0x0

    .line 144
    iget-object v3, p0, Lcom/uprui/tv/launcher8/DialogPopView;->info:Ljava/lang/Object;

    instance-of v3, v3, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    if-eqz v3, :cond_1

    .line 145
    iget-object v3, p0, Lcom/uprui/tv/launcher8/DialogPopView;->info:Ljava/lang/Object;

    check-cast v3, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    invoke-virtual {v3}, Lcom/uprui/tv/launcher8/allapp/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 146
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 149
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 151
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 154
    .end local v0           #e:Ljava/lang/SecurityException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/uprui/tv/launcher8/DialogPopView;->info:Ljava/lang/Object;

    instance-of v3, v3, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    if-eqz v3, :cond_0

    .line 155
    iget-object v2, p0, Lcom/uprui/tv/launcher8/DialogPopView;->info:Ljava/lang/Object;

    check-cast v2, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 156
    .local v2, tci:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    invoke-static {}, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->getInstance()Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/uprui/tv/launcher8/ActLauncher;

    invoke-virtual {v4, v3}, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->setActivity(Landroid/app/Activity;)V

    .line 157
    invoke-static {}, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->getInstance()Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/uprui/tv/launcher8/downloadapps/DownloadAppHandler;->dealAppsClick(Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;)V

    goto :goto_0
.end method

.method private uninstallAPK()V
    .locals 6

    .prologue
    .line 163
    const/4 v2, 0x0

    .line 164
    .local v2, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/uprui/tv/launcher8/DialogPopView;->info:Ljava/lang/Object;

    instance-of v4, v4, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    if-eqz v4, :cond_1

    .line 165
    iget-object v4, p0, Lcom/uprui/tv/launcher8/DialogPopView;->info:Ljava/lang/Object;

    check-cast v4, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    invoke-virtual {v4}, Lcom/uprui/tv/launcher8/allapp/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 170
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "package:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 171
    .local v3, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 172
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    :try_start_0
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_1
    return-void

    .line 166
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    iget-object v4, p0, Lcom/uprui/tv/launcher8/DialogPopView;->info:Ljava/lang/Object;

    instance-of v4, v4, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    if-eqz v4, :cond_0

    .line 167
    iget-object v4, p0, Lcom/uprui/tv/launcher8/DialogPopView;->info:Ljava/lang/Object;

    check-cast v4, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    iget-object v2, v4, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 175
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public deleteItemInDB(Ljava/lang/String;)Z
    .locals 7
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 266
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "packageName= ?"

    .line 267
    .local v3, where:Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    aput-object p1, v2, v4

    .line 268
    .local v2, selectionArgs:[Ljava/lang/String;
    sget-object v6, Lcom/uprui/tv/launcher8/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v6, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 269
    .local v0, id:I
    if-gez v0, :cond_0

    .line 272
    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method public isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 131
    const/4 v2, 0x0

    .line 133
    .local v2, pInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 139
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 140
    :cond_0
    :goto_0
    return v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 214
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 218
    iget-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->open:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 219
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->openApp()V

    .line 228
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->ruiDialog:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;

    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;->dismiss()V

    .line 229
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->delete:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 221
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->uninstallAPK()V

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->mangeApp:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 223
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->mangeApp()V

    goto :goto_0

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->delSci:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->deleteSci()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 74
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/DialogPopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->title:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 76
    iget-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 78
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/DialogPopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->openLinear:Landroid/widget/LinearLayout;

    .line 79
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/DialogPopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->deleteLinear:Landroid/widget/LinearLayout;

    .line 80
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/DialogPopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->manageAppLinear:Landroid/widget/LinearLayout;

    .line 81
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/DialogPopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->delSciLinear:Landroid/widget/LinearLayout;

    .line 83
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/DialogPopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->open:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/DialogPopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->delete:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/DialogPopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->mangeApp:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/uprui/tv/launcher8/DialogPopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->delSci:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->open:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->delete:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->mangeApp:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/uprui/tv/launcher8/DialogPopView;->delSci:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method public saveDeleteSci(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "deleteSCI"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 277
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "deleteSCI_item"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, previousItem:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "deleteSCI_item"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 284
    return-void

    .line 281
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public setDialog(Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/uprui/tv/launcher8/DialogPopView;->ruiDialog:Lcom/uprui/tv/launcher8/dialog/RuiAlertDialog;

    .line 300
    return-void
.end method

.method public setInfo(Ljava/lang/Object;)V
    .locals 6
    .parameter "o"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 96
    iput-object p1, p0, Lcom/uprui/tv/launcher8/DialogPopView;->info:Ljava/lang/Object;

    .line 97
    instance-of v3, p1, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 98
    check-cast v0, Lcom/uprui/tv/launcher8/allapp/AppInfo;

    .line 99
    .local v0, app:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    invoke-virtual {v0}, Lcom/uprui/tv/launcher8/allapp/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/uprui/tv/launcher8/DialogPopView;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/uprui/tv/launcher8/DialogPopView;->deleteLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    .end local v0           #app:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/uprui/tv/launcher8/DialogPopView;->open:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 125
    iget-object v3, p0, Lcom/uprui/tv/launcher8/DialogPopView;->open:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 126
    iget-object v3, p0, Lcom/uprui/tv/launcher8/DialogPopView;->open:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 127
    return-void

    .line 103
    .restart local v0       #app:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    .restart local v1       #packageName:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/uprui/tv/launcher8/DialogPopView;->deleteLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 105
    .end local v0           #app:Lcom/uprui/tv/launcher8/allapp/AppInfo;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_2
    instance-of v3, p1, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 106
    check-cast v2, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;

    .line 107
    .local v2, tvsci:Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;
    iget-object v1, v2, Lcom/uprui/tv/launcher8/shortcut/TVShortcutInfo;->packageName:Ljava/lang/String;

    .line 109
    .restart local v1       #packageName:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/uprui/tv/launcher8/DialogPopView;->isInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 110
    iget-object v3, p0, Lcom/uprui/tv/launcher8/DialogPopView;->manageAppLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    invoke-virtual {p0}, Lcom/uprui/tv/launcher8/DialogPopView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/uprui/tv/launcher8/DialogPopView;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    iget-object v3, p0, Lcom/uprui/tv/launcher8/DialogPopView;->deleteLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    :goto_1
    iget-object v3, p0, Lcom/uprui/tv/launcher8/DialogPopView;->delSciLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_3
    iget-object v3, p0, Lcom/uprui/tv/launcher8/DialogPopView;->deleteLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 117
    :cond_4
    iget-object v3, p0, Lcom/uprui/tv/launcher8/DialogPopView;->manageAppLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    iget-object v3, p0, Lcom/uprui/tv/launcher8/DialogPopView;->deleteLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method
