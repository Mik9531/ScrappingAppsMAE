.class public Lcom/google/appinventor/components/runtime/Camera;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Camera.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to take a picture using the device\'s camera. After the picture is taken, the name of the file on the phone containing the picture is available as an argument to the AfterPicture event. The file name can be used, for example, to set the Picture property of an Image component."
    iconName = "images/camera.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.CAMERA"
    }
.end annotation


# static fields
.field private static final CAMERA_INTENT:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE"

.field private static final CAMERA_OUTPUT:Ljava/lang/String; = "output"


# instance fields
.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private havePermission:Z

.field private imageFile:Landroid/net/Uri;

.field private requestCode:I

.field private useFront:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 86
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Camera;->havePermission:Z

    .line 97
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Camera;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 100
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Camera;->UseFront(Z)V

    .line 101
    return-void
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/Camera;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Camera;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Camera;->havePermission:Z

    return p1
.end method

.method private capturePicture(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .locals 8
    .param p1, "target"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .prologue
    .line 180
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 181
    .local v3, "path":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 182
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 185
    :cond_0
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    .line 187
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 188
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "_data"

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v5, "mime_type"

    const-string v6, "image/jpeg"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v5, "title"

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget v5, p0, Lcom/google/appinventor/components/runtime/Camera;->requestCode:I

    if-nez v5, :cond_1

    .line 193
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v5, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v5

    iput v5, p0, Lcom/google/appinventor/components/runtime/Camera;->requestCode:I

    .line 197
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-ge v5, v6, :cond_3

    .line 198
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Camera;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 203
    .local v1, "imageUri":Landroid/net/Uri;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "output"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 208
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/Camera;->useFront:Z

    if-eqz v5, :cond_2

    .line 209
    const-string v5, "android.intent.extras.CAMERA_FACING"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    :cond_2
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Camera;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    iget v6, p0, Lcom/google/appinventor/components/runtime/Camera;->requestCode:I

    invoke-virtual {v5, v2, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 213
    return-void

    .line 201
    .end local v1    # "imageUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v5, v3}, Lcom/google/appinventor/components/runtime/util/NougatUtil;->getPackageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "imageUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method private deleteFile(Landroid/net/Uri;)V
    .locals 5
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    .line 258
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v1, "fileToDelete":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    const-string v2, "CameraComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string v2, "CameraComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "CameraComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got security exception trying to delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 267
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scanFileToAdd(Ljava/io/File;)V
    .locals 3
    .param p1, "image"    # Ljava/io/File;

    .prologue
    .line 251
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, "mediaScanIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/util/NougatUtil;->getPackageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 253
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 254
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    return-void
.end method


# virtual methods
.method public AfterPicture(Ljava/lang/String;)V
    .locals 3
    .param p1, "image"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 277
    const-string v0, "AfterPicture"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public Initialize()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camera;->havePermission:Z

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camera;->havePermission:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camera;->havePermission:Z

    .line 111
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 107
    goto :goto_0

    :cond_2
    move v1, v2

    .line 109
    goto :goto_1
.end method

.method public TakePicture()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 148
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "png"

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getScopedPictureFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/ScopedFile;

    move-result-object v2

    .line 149
    .local v2, "target":Lcom/google/appinventor/components/runtime/util/ScopedFile;
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Camera;->havePermission:Z

    if-nez v3, :cond_1

    .line 151
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/runtime/util/ScopedFile;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v0, v6

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v0, v5

    .line 156
    .local v0, "permissions":[Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v4, Lcom/google/appinventor/components/runtime/Camera$1;

    const-string v5, "TakePicture"

    invoke-direct {v4, p0, p0, v5, v0}, Lcom/google/appinventor/components/runtime/Camera$1;-><init>(Lcom/google/appinventor/components/runtime/Camera;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 177
    .end local v0    # "permissions":[Ljava/lang/String;
    :goto_1
    return-void

    .line 154
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v0, v6

    .restart local v0    # "permissions":[Ljava/lang/String;
    goto :goto_0

    .line 166
    .end local v0    # "permissions":[Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "state":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsExternalStorage(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "mounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 168
    :cond_2
    const-string v3, "CameraComponent"

    const-string v4, "External storage is available and writable"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Camera;->capturePicture(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V

    goto :goto_1

    .line 170
    :cond_3
    const-string v3, "mounted_ro"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 171
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "TakePicture"

    const/16 v5, 0x2c0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 174
    :cond_4
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "TakePicture"

    const/16 v5, 0x2c1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public UseFront(Z)V
    .locals 0
    .param p1, "front"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the front-facing camera should be used (when available). If the device does not have a front-facing camera, this option will be ignored and the camera will open normally."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Camera;->useFront:Z

    .line 138
    return-void
.end method

.method public UseFront()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camera;->useFront:Z

    return v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 217
    const-string v2, "CameraComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning result. Request code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget v2, p0, Lcom/google/appinventor/components/runtime/Camera;->requestCode:I

    if-ne p1, v2, :cond_2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 220
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "image":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 222
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Camera;->scanFileToAdd(Ljava/io/File;)V

    .line 223
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Camera;->AfterPicture(Ljava/lang/String;)V

    .line 242
    .end local v0    # "image":Ljava/io/File;
    :goto_0
    return-void

    .line 225
    .restart local v0    # "image":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Camera;->deleteFile(Landroid/net/Uri;)V

    .line 227
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 228
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 229
    .local v1, "tryImageUri":Landroid/net/Uri;
    const-string v2, "CameraComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling Camera.AfterPicture with image path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 230
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Camera;->AfterPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    .end local v1    # "tryImageUri":Landroid/net/Uri;
    :cond_1
    const-string v2, "CameraComponent"

    const-string v3, "Couldn\'t find an image file from the Camera result"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "TakePicture"

    const/16 v4, 0xc9

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 240
    .end local v0    # "image":Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Camera;->deleteFile(Landroid/net/Uri;)V

    goto :goto_0
.end method
