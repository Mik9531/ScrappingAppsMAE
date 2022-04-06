.class public final Lcom/google/appinventor/components/runtime/SoundRecorder;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SoundRecorder.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Multimedia component that records audio.</p>"
    iconName = "images/soundRecorder.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.RECORD_AUDIO"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundRecorder"


# instance fields
.field private controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

.field private havePermission:Z

.field private savedRecording:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 129
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    .line 130
    return-void
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/SoundRecorder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/SoundRecorder;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    return p1
.end method


# virtual methods
.method public AfterSoundRecorded(Ljava/lang/String;)V
    .locals 3
    .param p1, "sound"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Provides the location of the newly created sound."
    .end annotation

    .prologue
    .line 318
    const-string v0, "AfterSoundRecorded"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method public Initialize()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    .line 140
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 136
    goto :goto_0

    :cond_2
    move v1, v2

    .line 138
    goto :goto_1
.end method

.method public SavedRecording()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the path to the file where the recording should be stored. If this property is the empty string, then starting a recording will create a file in an appropriate location.  If the property is not the empty string, it should specify a complete path to a file in an existing directory, including a file name with the extension .3gp."
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    return-object v0
.end method

.method public SavedRecording(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public Start()V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/16 v10, 0x322

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 180
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "uri":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    if-nez v5, :cond_1

    .line 182
    move-object v1, p0

    .line 184
    .local v1, "me":Lcom/google/appinventor/components/runtime/SoundRecorder;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v5, v4}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 185
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "android.permission.RECORD_AUDIO"

    aput-object v5, v2, v9

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v2, v8

    .line 189
    .local v2, "neededPermissions":[Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v6, Lcom/google/appinventor/components/runtime/SoundRecorder$1;

    invoke-direct {v6, p0, v1, v2}, Lcom/google/appinventor/components/runtime/SoundRecorder$1;-><init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Lcom/google/appinventor/components/runtime/SoundRecorder;[Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 237
    .end local v1    # "me":Lcom/google/appinventor/components/runtime/SoundRecorder;
    .end local v2    # "neededPermissions":[Ljava/lang/String;
    :goto_1
    return-void

    .line 187
    .restart local v1    # "me":Lcom/google/appinventor/components/runtime/SoundRecorder;
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    const-string v5, "android.permission.RECORD_AUDIO"

    aput-object v5, v2, v9

    .restart local v2    # "neededPermissions":[Ljava/lang/String;
    goto :goto_0

    .line 204
    .end local v1    # "me":Lcom/google/appinventor/components/runtime/SoundRecorder;
    .end local v2    # "neededPermissions":[Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    if-eqz v5, :cond_2

    .line 205
    const-string v5, "SoundRecorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start() called, but already recording to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    :cond_2
    const-string v5, "SoundRecorder"

    const-string v6, "Start() called"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v5, v4}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isExternalStorageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 210
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 211
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v6, "Start"

    const/16 v7, 0x2c1

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 216
    :cond_3
    :try_start_0
    new-instance v5, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    invoke-direct {v5, p0, v6}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;-><init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 226
    :try_start_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 236
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StartedRecording()V

    goto :goto_1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v6, "Start"

    invoke-virtual {v5, p0, v6, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    goto :goto_1

    .line 220
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :catch_1
    move-exception v3

    .line 221
    .local v3, "t":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v6, "Start"

    new-array v7, v8, [Ljava/lang/Object;

    .line 222
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 221
    invoke-virtual {v5, p0, v6, v10, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 227
    .end local v3    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v3

    .line 231
    .restart local v3    # "t":Ljava/lang/Throwable;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 232
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v6, "Start"

    new-array v7, v8, [Ljava/lang/Object;

    .line 233
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 232
    invoke-virtual {v5, p0, v6, v10, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public StartedRecording()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has started, and can be stopped."
    .end annotation

    .prologue
    .line 323
    const-string v0, "StartedRecording"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 324
    return-void
.end method

.method public Stop()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 298
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    if-nez v1, :cond_0

    .line 299
    const-string v1, "SoundRecorder"

    const-string v2, "Stop() called, but already stopped."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_0
    return-void

    .line 303
    :cond_0
    :try_start_0
    const-string v1, "SoundRecorder"

    const-string v2, "Stop() called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v1, "SoundRecorder"

    const-string v2, "stopping"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->stop()V

    .line 306
    const-string v1, "SoundRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing AfterSoundRecorded with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/SoundRecorder;->AfterSoundRecorded(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 312
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Stop"

    const/16 v3, 0x321

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 312
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    goto :goto_0

    .line 311
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 312
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    throw v1
.end method

.method public StoppedRecording()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has stopped, and can be started again."
    .end annotation

    .prologue
    .line 328
    const-string v0, "StoppedRecording"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 329
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 6
    .param p1, "affectedRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v5, 0x0

    .line 241
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    if-eq p1, v1, :cond_1

    .line 242
    :cond_0
    const-string v1, "SoundRecorder"

    const-string v2, "onError called with wrong recorder. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "onError"

    const/16 v3, 0x321

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 252
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "SoundRecorder"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 252
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    goto :goto_0

    .line 251
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 252
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    throw v1
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 6
    .param p1, "affectedRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 258
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    if-eq p1, v1, :cond_1

    .line 259
    :cond_0
    const-string v1, "SoundRecorder"

    const-string v2, "onInfo called with wrong recorder. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_0
    return-void

    .line 262
    :cond_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 272
    :sswitch_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "recording"

    const/16 v3, 0x321

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 281
    :goto_1
    :try_start_0
    const-string v1, "SoundRecorder"

    const-string v2, "Recoverable condition while recording. Will attempt to stop normally."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 289
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    goto :goto_0

    .line 264
    :sswitch_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "recording"

    const/16 v3, 0x324

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 268
    :sswitch_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "recording"

    const/16 v3, 0x325

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v1, "SoundRecorder"

    const-string v2, "SoundRecorder was not in a recording state."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Stop"

    const/16 v3, 0x323

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 289
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    goto :goto_0

    .line 288
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 289
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    throw v1

    .line 262
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x320 -> :sswitch_1
        0x321 -> :sswitch_2
    .end sparse-switch
.end method
