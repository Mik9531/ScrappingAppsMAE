.class public Lorg/webrtc/RendererCommon;
.super Ljava/lang/Object;
.source "RendererCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/RendererCommon$ScalingType;,
        Lorg/webrtc/RendererCommon$VideoLayoutMeasure;,
        Lorg/webrtc/RendererCommon$YuvUploader;,
        Lorg/webrtc/RendererCommon$GlDrawer;,
        Lorg/webrtc/RendererCommon$RendererEvents;
    }
.end annotation


# static fields
.field private static BALANCED_VISIBLE_FRACTION:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    const/high16 v0, 0x3f100000    # 0.5625f

    sput v0, Lorg/webrtc/RendererCommon;->BALANCED_VISIBLE_FRACTION:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustOrigin([F)V
    .locals 6
    .param p0, "matrix"    # [F

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xc

    const/high16 v3, 0x3f000000    # 0.5f

    .line 354
    aget v0, p0, v4

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x4

    aget v2, p0, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    aput v0, p0, v4

    .line 355
    aget v0, p0, v5

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x5

    aget v2, p0, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    aput v0, p0, v5

    .line 357
    aget v0, p0, v4

    add-float/2addr v0, v3

    aput v0, p0, v4

    .line 358
    aget v0, p0, v5

    add-float/2addr v0, v3

    aput v0, p0, v5

    .line 359
    return-void
.end method

.method public static convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F
    .locals 8
    .param p0, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 310
    const/16 v2, 0x9

    new-array v1, v2, [F

    .line 311
    .local v1, "values":[F
    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 328
    const/16 v2, 0x10

    new-array v0, v2, [F

    aget v2, v1, v3

    aput v2, v0, v3

    aget v2, v1, v7

    aput v2, v0, v5

    aput v4, v0, v6

    const/4 v2, 0x6

    aget v2, v1, v2

    aput v2, v0, v7

    const/4 v2, 0x4

    aget v3, v1, v5

    aput v3, v0, v2

    const/4 v2, 0x5

    const/4 v3, 0x4

    aget v3, v1, v3

    aput v3, v0, v2

    const/4 v2, 0x6

    aput v4, v0, v2

    const/4 v2, 0x7

    const/4 v3, 0x7

    aget v3, v1, v3

    aput v3, v0, v2

    const/16 v2, 0x8

    aput v4, v0, v2

    const/16 v2, 0x9

    aput v4, v0, v2

    const/16 v2, 0xa

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v2

    const/16 v2, 0xb

    aput v4, v0, v2

    const/16 v2, 0xc

    aget v3, v1, v6

    aput v3, v0, v2

    const/16 v2, 0xd

    const/4 v3, 0x5

    aget v3, v1, v3

    aput v3, v0, v2

    const/16 v2, 0xe

    aput v4, v0, v2

    const/16 v2, 0xf

    const/16 v3, 0x8

    aget v3, v1, v3

    aput v3, v0, v2

    .line 335
    .local v0, "matrix4x4":[F
    return-object v0
.end method

.method public static convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;
    .locals 8
    .param p0, "matrix4x4"    # [F

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 296
    const/16 v2, 0x9

    new-array v1, v2, [F

    aget v2, p0, v3

    aput v2, v1, v3

    aget v2, p0, v6

    aput v2, v1, v4

    const/4 v2, 0x2

    const/16 v3, 0xc

    aget v3, p0, v3

    aput v3, v1, v2

    aget v2, p0, v4

    aput v2, v1, v5

    aget v2, p0, v7

    aput v2, v1, v6

    const/16 v2, 0xd

    aget v2, p0, v2

    aput v2, v1, v7

    const/4 v2, 0x6

    aget v3, p0, v5

    aput v3, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x7

    aget v3, p0, v3

    aput v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0xf

    aget v3, p0, v3

    aput v3, v1, v2

    .line 303
    .local v1, "values":[F
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 304
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 305
    return-object v0
.end method

.method private static convertScalingTypeToVisibleFraction(Lorg/webrtc/RendererCommon$ScalingType;)F
    .locals 2
    .param p0, "scalingType"    # Lorg/webrtc/RendererCommon$ScalingType;

    .prologue
    .line 366
    sget-object v0, Lorg/webrtc/RendererCommon$1;->$SwitchMap$org$webrtc$RendererCommon$ScalingType:[I

    invoke-virtual {p0}, Lorg/webrtc/RendererCommon$ScalingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 368
    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 372
    :goto_0
    return v0

    .line 370
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 372
    :pswitch_2
    sget v0, Lorg/webrtc/RendererCommon;->BALANCED_VISIBLE_FRACTION:F

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static drawTexture(Lorg/webrtc/RendererCommon$GlDrawer;Lorg/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V
    .locals 10
    .param p0, "drawer"    # Lorg/webrtc/RendererCommon$GlDrawer;
    .param p1, "buffer"    # Lorg/webrtc/VideoFrame$TextureBuffer;
    .param p2, "renderMatrix"    # Landroid/graphics/Matrix;
    .param p3, "frameWidth"    # I
    .param p4, "frameHeight"    # I
    .param p5, "viewportX"    # I
    .param p6, "viewportY"    # I
    .param p7, "viewportWidth"    # I
    .param p8, "viewportHeight"    # I

    .prologue
    .line 65
    new-instance v9, Landroid/graphics/Matrix;

    invoke-interface {p1}, Lorg/webrtc/VideoFrame$TextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 66
    .local v9, "finalMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v9, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 67
    invoke-static {v9}, Lorg/webrtc/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v2

    .line 68
    .local v2, "finalGlMatrix":[F
    sget-object v0, Lorg/webrtc/RendererCommon$1;->$SwitchMap$org$webrtc$VideoFrame$TextureBuffer$Type:[I

    invoke-interface {p1}, Lorg/webrtc/VideoFrame$TextureBuffer;->getType()Lorg/webrtc/VideoFrame$TextureBuffer$Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/webrtc/VideoFrame$TextureBuffer$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown texture type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_0
    invoke-interface {p1}, Lorg/webrtc/VideoFrame$TextureBuffer;->getTextureId()I

    move-result v1

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lorg/webrtc/RendererCommon$GlDrawer;->drawOes(I[FIIIIII)V

    .line 80
    :goto_0
    return-void

    .line 74
    :pswitch_1
    invoke-interface {p1}, Lorg/webrtc/VideoFrame$TextureBuffer;->getTextureId()I

    move-result v1

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lorg/webrtc/RendererCommon$GlDrawer;->drawRgb(I[FIIIIII)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getDisplaySize(FFII)Landroid/graphics/Point;
    .locals 4
    .param p0, "minVisibleFraction"    # F
    .param p1, "videoAspectRatio"    # F
    .param p2, "maxDisplayWidth"    # I
    .param p3, "maxDisplayHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 385
    cmpl-float v2, p0, v3

    if-eqz v2, :cond_0

    cmpl-float v2, p1, v3

    if-nez v2, :cond_1

    .line 386
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    .line 393
    :goto_0
    return-object v2

    .line 389
    :cond_1
    int-to-float v2, p3

    div-float/2addr v2, p0

    mul-float/2addr v2, p1

    .line 390
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 389
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 391
    .local v1, "width":I
    int-to-float v2, p2

    div-float/2addr v2, p0

    div-float/2addr v2, p1

    .line 392
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 391
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 393
    .local v0, "height":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public static getDisplaySize(Lorg/webrtc/RendererCommon$ScalingType;FII)Landroid/graphics/Point;
    .locals 1
    .param p0, "scalingType"    # Lorg/webrtc/RendererCommon$ScalingType;
    .param p1, "videoAspectRatio"    # F
    .param p2, "maxDisplayWidth"    # I
    .param p3, "maxDisplayHeight"    # I

    .prologue
    .line 343
    invoke-static {p0}, Lorg/webrtc/RendererCommon;->convertScalingTypeToVisibleFraction(Lorg/webrtc/RendererCommon$ScalingType;)F

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lorg/webrtc/RendererCommon;->getDisplaySize(FFII)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static getLayoutMatrix(ZFF)[F
    .locals 5
    .param p0, "mirror"    # Z
    .param p1, "videoAspectRatio"    # F
    .param p2, "displayAspectRatio"    # F

    .prologue
    const/4 v4, 0x0

    .line 274
    const/high16 v1, 0x3f800000    # 1.0f

    .line 275
    .local v1, "scaleX":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 277
    .local v2, "scaleY":F
    cmpl-float v3, p2, p1

    if-lez v3, :cond_1

    .line 278
    div-float v2, p1, p2

    .line 283
    :goto_0
    if-eqz p0, :cond_0

    .line 284
    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v1, v3

    .line 286
    :cond_0
    const/16 v3, 0x10

    new-array v0, v3, [F

    .line 287
    .local v0, "matrix":[F
    invoke-static {v0, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 288
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v4, v1, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 289
    invoke-static {v0}, Lorg/webrtc/RendererCommon;->adjustOrigin([F)V

    .line 290
    return-object v0

    .line 280
    .end local v0    # "matrix":[F
    :cond_1
    div-float v1, p2, p1

    goto :goto_0
.end method

.method public static final horizontalFlipMatrix()[F
    .locals 1

    .prologue
    .line 240
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final identityMatrix()[F
    .locals 1

    .prologue
    .line 223
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static multiplyMatrices([F[F)[F
    .locals 6
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .prologue
    const/4 v1, 0x0

    .line 263
    const/16 v2, 0x10

    new-array v0, v2, [F

    .local v0, "resultMatrix":[F
    move-object v2, p0

    move v3, v1

    move-object v4, p1

    move v5, v1

    .line 264
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 265
    return-object v0
.end method

.method public static rotateTextureMatrix([FF)[F
    .locals 6
    .param p0, "textureMatrix"    # [F
    .param p1, "rotationDegree"    # F

    .prologue
    const/4 v3, 0x0

    .line 253
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 254
    .local v0, "rotationMatrix":[F
    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move v2, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 255
    invoke-static {v0}, Lorg/webrtc/RendererCommon;->adjustOrigin([F)V

    .line 256
    invoke-static {p0, v0}, Lorg/webrtc/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object v1

    return-object v1
.end method

.method public static final verticalFlipMatrix()[F
    .locals 1

    .prologue
    .line 231
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
