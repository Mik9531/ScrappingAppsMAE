.class final Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# static fields
.field private static final AREA_PER_1000:I = 0x190

.field private static final MAX_ASPECT_DISTORTION:D = 0.15

.field private static final MAX_EXPOSURE_COMPENSATION:F = 1.5f

.field private static final MAX_FPS:I = 0x14

.field private static final MIN_EXPOSURE_COMPENSATION:F = 0.0f

.field private static final MIN_FPS:I = 0xa

.field private static final MIN_PREVIEW_PIXELS:I = 0x25800

.field private static final TAG:Ljava/lang/String; = "CameraConfiguration"


# instance fields
.field private cameraResolution:Landroid/graphics/Point;

.field private final context:Landroid/content/Context;

.field private screenResolution:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private doSetTorch(Landroid/hardware/Camera$Parameters;ZZ)V
    .locals 6
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "newSetting"    # Z
    .param p3, "safeMode"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 152
    if-eqz p2, :cond_1

    .line 153
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "torch"

    aput-object v3, v2, v4

    const-string v3, "on"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void

    .line 157
    .end local v0    # "flashMode":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "flashMode":Ljava/lang/String;
    goto :goto_0
.end method

.method private findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 28
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "screenResolution"    # Landroid/graphics/Point;

    .prologue
    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v16

    .line 178
    .local v16, "rawSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v16, :cond_1

    .line 179
    const-string v23, "CameraConfiguration"

    const-string v24, "Device returned no supported preview sizes; using default"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 181
    .local v5, "defaultSize":Landroid/hardware/Camera$Size;
    if-nez v5, :cond_0

    .line 182
    new-instance v23, Ljava/lang/IllegalStateException;

    const-string v24, "Parameters contained no preview size!"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 184
    :cond_0
    new-instance v8, Landroid/graphics/Point;

    iget v0, v5, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v8, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 260
    .end local v5    # "defaultSize":Landroid/hardware/Camera$Size;
    :goto_0
    return-object v8

    .line 188
    :cond_1
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 189
    .local v22, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v23, Lcom/google/zxing/client/android/camera/CameraConfigurationManager$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager$1;-><init>(Lcom/google/zxing/client/android/camera/CameraConfigurationManager;)V

    invoke-static/range {v22 .. v23}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 204
    const-string v23, "CameraConfiguration"

    const/16 v24, 0x4

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 205
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v15, "previewSizesString":Ljava/lang/StringBuilder;
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/Camera$Size;

    .line 207
    .local v19, "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x78

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    .line 208
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x20

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 210
    .end local v19    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_2
    const-string v23, "CameraConfiguration"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Supported preview sizes: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v15    # "previewSizesString":Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v20, v24, v26

    .line 216
    .local v20, "screenAspectRatio":D
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 217
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 218
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/Camera$Size;

    .line 219
    .restart local v19    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    .line 220
    .local v18, "realWidth":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v17, v0

    .line 221
    .local v17, "realHeight":I
    mul-int v23, v18, v17

    const v24, 0x25800

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 222
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 226
    :cond_5
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    const/4 v9, 0x1

    .line 227
    .local v9, "isCandidatePortrait":Z
    :goto_3
    if-eqz v9, :cond_7

    move/from16 v14, v17

    .line 228
    .local v14, "maybeFlippedWidth":I
    :goto_4
    if-eqz v9, :cond_8

    move/from16 v13, v18

    .line 229
    .local v13, "maybeFlippedHeight":I
    :goto_5
    int-to-double v0, v14

    move-wide/from16 v24, v0

    int-to-double v0, v13

    move-wide/from16 v26, v0

    div-double v2, v24, v26

    .line 230
    .local v2, "aspectRatio":D
    sub-double v24, v2, v20

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 231
    .local v6, "distortion":D
    const-wide v24, 0x3fc3333333333333L    # 0.15

    cmpl-double v23, v6, v24

    if-lez v23, :cond_9

    .line 232
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 226
    .end local v2    # "aspectRatio":D
    .end local v6    # "distortion":D
    .end local v9    # "isCandidatePortrait":Z
    .end local v13    # "maybeFlippedHeight":I
    .end local v14    # "maybeFlippedWidth":I
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .restart local v9    # "isCandidatePortrait":Z
    :cond_7
    move/from16 v14, v18

    .line 227
    goto :goto_4

    .restart local v14    # "maybeFlippedWidth":I
    :cond_8
    move/from16 v13, v17

    .line 228
    goto :goto_5

    .line 236
    .restart local v2    # "aspectRatio":D
    .restart local v6    # "distortion":D
    .restart local v13    # "maybeFlippedHeight":I
    :cond_9
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v14, v0, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v13, v0, :cond_4

    .line 237
    new-instance v8, Landroid/graphics/Point;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 238
    .local v8, "exactPoint":Landroid/graphics/Point;
    const-string v23, "CameraConfiguration"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Found preview size exactly matching screen size: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 246
    .end local v2    # "aspectRatio":D
    .end local v6    # "distortion":D
    .end local v8    # "exactPoint":Landroid/graphics/Point;
    .end local v9    # "isCandidatePortrait":Z
    .end local v13    # "maybeFlippedHeight":I
    .end local v14    # "maybeFlippedWidth":I
    .end local v17    # "realHeight":I
    .end local v18    # "realWidth":I
    .end local v19    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_a
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_b

    .line 247
    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    .line 248
    .local v11, "largestPreview":Landroid/hardware/Camera$Size;
    new-instance v12, Landroid/graphics/Point;

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v12, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 249
    .local v12, "largestSize":Landroid/graphics/Point;
    const-string v23, "CameraConfiguration"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Using largest suitable preview size: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v12

    .line 250
    goto/16 :goto_0

    .line 254
    .end local v11    # "largestPreview":Landroid/hardware/Camera$Size;
    .end local v12    # "largestSize":Landroid/graphics/Point;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 255
    .local v4, "defaultPreview":Landroid/hardware/Camera$Size;
    if-nez v4, :cond_c

    .line 256
    new-instance v23, Ljava/lang/IllegalStateException;

    const-string v24, "Parameters contained no preview size!"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 258
    :cond_c
    new-instance v5, Landroid/graphics/Point;

    iget v0, v4, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    iget v0, v4, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 259
    .local v5, "defaultSize":Landroid/graphics/Point;
    const-string v23, "CameraConfiguration"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "No suitable preview sizes, using default: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v5

    .line 260
    goto/16 :goto_0
.end method

.method private static varargs findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "desiredValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "supportedValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Supported values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 268
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 269
    .local v0, "desiredValue":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    move-object v1, v0

    .line 275
    .end local v0    # "desiredValue":Ljava/lang/String;
    :cond_0
    const-string v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settable value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-object v1

    .line 268
    .restart local v0    # "desiredValue":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initializeTorch(Landroid/hardware/Camera$Parameters;Z)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "safeMode"    # Z

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera$Parameters;ZZ)V

    .line 148
    return-void
.end method


# virtual methods
.method getCameraResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method getScreenResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method initFromCameraParameters(Landroid/hardware/Camera;)V
    .locals 9
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 65
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v6, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 66
    .local v2, "manager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 67
    .local v0, "display":Landroid/view/Display;
    invoke-static {}, Lcom/google/zxing/client/android/camera/SdkLevel;->getLevel()I

    move-result v6

    const/16 v7, 0xd

    if-ge v6, v7, :cond_1

    .line 68
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 69
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 72
    .local v1, "height":I
    if-ge v5, v1, :cond_0

    .line 73
    const-string v6, "CameraConfiguration"

    const-string v7, "Display reports portrait orientation; assuming this is incorrect"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    move v4, v5

    .line 75
    .local v4, "temp":I
    move v5, v1

    .line 76
    move v1, v4

    .line 78
    .end local v4    # "temp":I
    :cond_0
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v5, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    .line 83
    .end local v1    # "height":I
    .end local v5    # "width":I
    :goto_0
    const-string v6, "CameraConfiguration"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screen resolution: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v6, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-direct {p0, v3, v6}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    iput-object v6, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    .line 85
    const-string v6, "CameraConfiguration"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Camera resolution: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 80
    :cond_1
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    iput-object v6, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    .line 81
    iget-object v6, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-static {v0, v6}, Lcom/google/zxing/client/android/camera/HoneycombMR2Util;->getSize(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    .locals 8
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "safeMode"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 89
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 91
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 92
    const-string v2, "CameraConfiguration"

    const-string v3, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initial camera parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-eqz p2, :cond_1

    .line 99
    const-string v2, "CameraConfiguration"

    const-string v3, "In camera config safe mode -- most settings will not be honored"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->initializeTorch(Landroid/hardware/Camera$Parameters;Z)V

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "focusMode":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 107
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "auto"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_1
    if-nez p2, :cond_2

    if-nez v0, :cond_2

    .line 118
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "macro"

    aput-object v4, v3, v5

    const-string v4, "edof"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_2
    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 126
    :cond_3
    const-string v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting Camera Preview Size to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 128
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "continuous-picture"

    aput-object v4, v3, v5

    const-string v4, "continuous-video"

    aput-object v4, v3, v6

    const-string v4, "auto"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method setTorch(Landroid/hardware/Camera;Z)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "newSetting"    # Z

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 141
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera$Parameters;ZZ)V

    .line 142
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "currentSetting":Z
    return-void
.end method
