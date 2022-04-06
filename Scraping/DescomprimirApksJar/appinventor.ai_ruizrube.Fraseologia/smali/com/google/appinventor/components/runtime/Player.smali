.class public final Lcom/google/appinventor/components/runtime/Player;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Player.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Multimedia component that plays audio and controls phone vibration.  The name of a multimedia field is specified in the <code>Source</code> property, which can be set in the Designer or in the Blocks Editor.  The length of time for a vibration is specified in the Blocks Editor in milliseconds (thousandths of a second).\n<p>For supported audio formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p>\n<p>This component is best for long sound files, such as songs, while the <code>Sound</code> component is more efficient for short files, such as sound effects.</p>"
    iconName = "images/player.png"
    nonVisible = true
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.VIBRATE, android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Player$State;
    }
.end annotation


# static fields
.field private static final audioFocusSupported:Z


# instance fields
.field private final activity:Landroid/app/Activity;

.field private afChangeListener:Ljava/lang/Object;

.field private am:Landroid/media/AudioManager;

.field private focusOn:Z

.field private loop:Z

.field private playOnlyInForeground:Z

.field private player:Landroid/media/MediaPlayer;

.field public playerState:Lcom/google/appinventor/components/runtime/Player$State;

.field private sourcePath:Ljava/lang/String;

.field private final vibe:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Player;->audioFocusSupported:Z

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Player;->audioFocusSupported:Z

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 128
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 129
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->activity:Landroid/app/Activity;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->vibe:Landroid/os/Vibrator;

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    .line 138
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Player;->loop:Z

    .line 139
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Player;->playOnlyInForeground:Z

    .line 140
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Player;->focusOn:Z

    .line 141
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Player;->audioFocusSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->setAudioManager(Landroid/app/Activity;)Landroid/media/AudioManager;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->am:Landroid/media/AudioManager;

    .line 142
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Player;->audioFocusSupported:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->setAudioFocusChangeListener(Lcom/google/appinventor/components/runtime/Player;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->afChangeListener:Ljava/lang/Object;

    .line 143
    return-void

    :cond_1
    move-object v0, v1

    .line 141
    goto :goto_0
.end method

.method private abandonFocus()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->am:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->afChangeListener:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->abandonFocus(Landroid/media/AudioManager;Ljava/lang/Object;)V

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->focusOn:Z

    .line 380
    return-void
.end method

.method private prepare()V
    .locals 7

    .prologue
    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 402
    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 405
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    .line 406
    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->INITIAL:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    .line 407
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Source"

    const/16 v3, 0x2be

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private prepareToDie()V
    .locals 2

    .prologue
    .line 480
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Player;->audioFocusSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->focusOn:Z

    if-eqz v0, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->abandonFocus()V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->INITIAL:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_1

    .line 484
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 486
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/runtime/Player$State;->INITIAL:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    .line 487
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->vibe:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 492
    return-void
.end method

.method private requestPermanentFocus()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->am:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Player;->afChangeListener:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->focusRequestGranted(Landroid/media/AudioManager;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->focusOn:Z

    .line 214
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->focusOn:Z

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "Source"

    const/16 v4, 0x2c5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-virtual {v0, p0, v3, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 217
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 213
    goto :goto_0
.end method


# virtual methods
.method public Completed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 424
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Player;->audioFocusSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->focusOn:Z

    if-eqz v0, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->abandonFocus()V

    .line 428
    :cond_0
    const-string v0, "Completed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 429
    return-void
.end method

.method public IsPlaying()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports whether the media is playing"
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_1

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 229
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Loop(Z)V
    .locals 2
    .param p1, "shouldLoop"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_1

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 259
    :cond_1
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Player;->loop:Z

    .line 260
    return-void
.end method

.method public Loop()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, the player will loop when it plays. Setting Loop while the player is playing will affect the current playing."
    .end annotation

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->loop:Z

    return v0
.end method

.method public OtherPlayerStarted()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is signaled when another player has started (and the current player is playing or paused, but not stopped)."
    .end annotation

    .prologue
    .line 437
    const-string v0, "OtherPlayerStarted"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 438
    return-void
.end method

.method public Pause()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 331
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 333
    .local v0, "wasPlaying":Z
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v2, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v1, v2, :cond_0

    .line 334
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 335
    if-eqz v0, :cond_0

    .line 336
    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    goto :goto_0
.end method

.method public PlayOnlyInForeground(Z)V
    .locals 0
    .param p1, "shouldForeground"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Player;->playOnlyInForeground:Z

    .line 307
    return-void
.end method

.method public PlayOnlyInForeground()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, the player will pause playing when leaving the current screen; if false (default option), the player continues playing whenever the current screen is displaying or not."
    .end annotation

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->playOnlyInForeground:Z

    return v0
.end method

.method public PlayerError(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The PlayerError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    .prologue
    .line 395
    return-void
.end method

.method public Source()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public Source(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 166
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "path":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v2, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v2, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v2, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v1, v2, :cond_2

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 171
    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->INITIAL:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    .line 174
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 175
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 179
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    .line 180
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadMediaPlayer(Landroid/media/MediaPlayer;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 199
    sget-boolean v1, Lcom/google/appinventor/components/runtime/Player;->audioFocusSupported:Z

    if-eqz v1, :cond_4

    .line 200
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->requestPermanentFocus()V

    .line 203
    :cond_4
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->prepare()V

    .line 206
    :cond_5
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 187
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    .line 188
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Source"

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    goto :goto_0

    .line 190
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :catch_1
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 192
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    .line 193
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Source"

    const/16 v3, 0x2bd

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Start()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 315
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Player;->audioFocusSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->focusOn:Z

    if-nez v0, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->requestPermanentFocus()V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_2

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Player;->loop:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 320
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 321
    sget-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    .line 324
    :cond_2
    return-void
.end method

.method public Stop()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 360
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Player;->audioFocusSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->focusOn:Z

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->abandonFocus()V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_2

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 365
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->prepare()V

    .line 366
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 371
    :cond_2
    return-void
.end method

.method public Vibrate(J)V
    .locals 1
    .param p1, "milliseconds"    # J
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->vibe:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 389
    return-void
.end method

.method public Volume(I)V
    .locals 6
    .param p1, "vol"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "50"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the volume to a number between 0 and 100"
    .end annotation

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 273
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_2

    .line 274
    :cond_0
    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_3

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Volume"

    const/16 v2, 0x2c8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 280
    :cond_2
    :goto_0
    return-void

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    int-to-float v1, p1

    div-float/2addr v1, v3

    int-to-float v2, p1

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "m"    # Landroid/media/MediaPlayer;

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Player;->Completed()V

    .line 416
    return-void
.end method

.method public onDelete()V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->prepareToDie()V

    .line 476
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->prepareToDie()V

    .line 470
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->playOnlyInForeground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Player;->pause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->playOnlyInForeground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Player;->Start()V

    .line 446
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->playOnlyInForeground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Player;->pause()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 350
    sget-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    goto :goto_0
.end method
