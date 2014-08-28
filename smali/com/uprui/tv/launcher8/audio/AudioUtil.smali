.class public Lcom/uprui/tv/launcher8/audio/AudioUtil;
.super Ljava/lang/Object;
.source "AudioUtil.java"


# static fields
.field public static final KEY_BIRD:Ljava/lang/String; = "keyBird"

.field public static final KEY_KNIFE:Ljava/lang/String; = "keyknife"

.field public static final KEY_WATER:Ljava/lang/String; = "keyWater"

.field public static final KEY_WATER2:Ljava/lang/String; = "keyWater2"

.field private static util:Lcom/uprui/tv/launcher8/audio/AudioUtil;


# instance fields
.field private context:Landroid/content/Context;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sp:Landroid/media/SoundPool;

.field private type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v5, "keyWater"

    iput-object v5, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->type:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->context:Landroid/content/Context;

    .line 55
    const-string v5, "audio"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    .line 56
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->mSoundPoolMap:Ljava/util/HashMap;

    .line 57
    new-instance v5, Landroid/media/SoundPool;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {v5, v6, v8, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->sp:Landroid/media/SoundPool;

    .line 59
    :try_start_0
    iget-object v5, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->sp:Landroid/media/SoundPool;

    const v6, 0x7f060004

    const/4 v7, 0x1

    invoke-virtual {v5, p1, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    .line 60
    .local v3, musicWater:I
    iget-object v5, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->sp:Landroid/media/SoundPool;

    const/high16 v6, 0x7f06

    const/4 v7, 0x1

    invoke-virtual {v5, p1, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    .line 61
    .local v1, musicBird:I
    iget-object v5, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->sp:Landroid/media/SoundPool;

    const v6, 0x7f060002

    const/4 v7, 0x1

    invoke-virtual {v5, p1, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    .line 62
    .local v2, musicKnife:I
    iget-object v5, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->sp:Landroid/media/SoundPool;

    const v6, 0x7f060005

    const/4 v7, 0x1

    invoke-virtual {v5, p1, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    .line 63
    .local v4, musicWater2:I
    iget-object v5, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->mSoundPoolMap:Ljava/util/HashMap;

    const-string v6, "keyWater"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v5, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->mSoundPoolMap:Ljava/util/HashMap;

    const-string v6, "keyBird"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v5, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->mSoundPoolMap:Ljava/util/HashMap;

    const-string v6, "keyknife"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v5, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->mSoundPoolMap:Ljava/util/HashMap;

    const-string v6, "keyWater2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1           #musicBird:I
    .end local v2           #musicKnife:I
    .end local v3           #musicWater:I
    .end local v4           #musicWater2:I
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/uprui/tv/launcher8/audio/AudioUtil;
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    sget-object v0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->util:Lcom/uprui/tv/launcher8/audio/AudioUtil;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/uprui/tv/launcher8/audio/AudioUtil;

    invoke-direct {v0, p0}, Lcom/uprui/tv/launcher8/audio/AudioUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->util:Lcom/uprui/tv/launcher8/audio/AudioUtil;

    .line 33
    :cond_0
    sget-object v0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->util:Lcom/uprui/tv/launcher8/audio/AudioUtil;

    return-object v0
.end method

.method private getStreamVolume()F
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 74
    iget-object v3, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    int-to-float v0, v3

    .line 75
    .local v0, currentVolume:F
    iget-object v3, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    int-to-float v1, v3

    .line 76
    .local v1, maxVolume:F
    div-float v2, v0, v1

    .line 77
    .local v2, percent:F
    return v2
.end method


# virtual methods
.method public play()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 85
    iget-object v0, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->sp:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->mSoundPoolMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0}, Lcom/uprui/tv/launcher8/audio/AudioUtil;->getStreamVolume()F

    move-result v2

    invoke-direct {p0}, Lcom/uprui/tv/launcher8/audio/AudioUtil;->getStreamVolume()F

    move-result v3

    const/high16 v6, 0x3f80

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 86
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 81
    iget-object v0, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->sp:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0}, Lcom/uprui/tv/launcher8/audio/AudioUtil;->getStreamVolume()F

    move-result v2

    invoke-direct {p0}, Lcom/uprui/tv/launcher8/audio/AudioUtil;->getStreamVolume()F

    move-result v3

    const/high16 v6, 0x3f80

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 82
    return-void
.end method

.method public setType(I)V
    .locals 1
    .parameter "t"

    .prologue
    .line 37
    packed-switch p1, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 39
    :pswitch_0
    const-string v0, "keyWater"

    iput-object v0, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->type:Ljava/lang/String;

    goto :goto_0

    .line 42
    :pswitch_1
    const-string v0, "keyBird"

    iput-object v0, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->type:Ljava/lang/String;

    goto :goto_0

    .line 45
    :pswitch_2
    const-string v0, "keyknife"

    iput-object v0, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->type:Ljava/lang/String;

    goto :goto_0

    .line 48
    :pswitch_3
    const-string v0, "keyWater2"

    iput-object v0, p0, Lcom/uprui/tv/launcher8/audio/AudioUtil;->type:Ljava/lang/String;

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
