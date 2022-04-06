.class public Lorg/webrtc/MediaCodecVideoEncoder;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;,
        Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;,
        Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;,
        Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;,
        Lorg/webrtc/MediaCodecVideoEncoder$H264Profile;,
        Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;,
        Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;
    }
.end annotation


# static fields
.field private static final BITRATE_ADJUSTMENT_FPS:I = 0x1e

.field private static final BITRATE_CORRECTION_MAX_SCALE:D = 4.0

.field private static final BITRATE_CORRECTION_SEC:D = 3.0

.field private static final BITRATE_CORRECTION_STEPS:I = 0x14

.field private static final COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m:I = 0x7fa30c04

.field private static final DEQUEUE_TIMEOUT:I = 0x0

.field private static final H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

.field private static final H264_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final MAXIMUM_INITIAL_FPS:I = 0x1e

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_L_MS:J = 0x3a98L

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_M_MS:J = 0x4e20L

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_N_MS:J = 0x3a98L

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoEncoder"

.field private static final VIDEO_AVCLevel3:I = 0x100

.field private static final VIDEO_AVCProfileHigh:I = 0x8

.field private static final VIDEO_ControlRateConstant:I = 0x2

.field private static final VP8_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field private static final VP9_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp9"

.field private static codecErrors:I

.field private static errorCallback:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

.field private static final exynosH264HighProfileHwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final exynosH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final exynosVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final exynosVp9HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final h264HighProfileHwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final h264HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static hwEncoderDisabledTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final intelVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final qcomH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final qcomVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final qcomVp9HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static runningInstance:Lorg/webrtc/MediaCodecVideoEncoder;

.field private static final supportedColorList:[I

.field private static final supportedSurfaceColorList:[I

.field private static final vp9HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;


# instance fields
.field private bitrateAccumulator:D

.field private bitrateAccumulatorMax:D

.field private bitrateAdjustmentScaleExp:I

.field private bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

.field private bitrateObservationTimeMs:D

.field private colorFormat:I

.field private configData:Ljava/nio/ByteBuffer;

.field private drawer:Lorg/webrtc/GlRectDrawer;

.field private eglBase:Lorg/webrtc/EglBase14;

.field private forcedKeyFrameMs:J

.field private height:I

.field private inputSurface:Landroid/view/Surface;

.field private lastKeyFrameMs:J

.field private mediaCodec:Landroid/media/MediaCodec;

.field private mediaCodecThread:Ljava/lang/Thread;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private profile:I

.field private targetBitrateBps:I

.field private targetFps:I

.field private type:Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x15

    const/16 v7, 0x13

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->runningInstance:Lorg/webrtc/MediaCodecVideoEncoder;

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->errorCallback:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    .line 66
    sput v4, Lorg/webrtc/MediaCodecVideoEncoder;->codecErrors:I

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    .line 138
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string v1, "OMX.qcom."

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v7, v2}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->qcomVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 140
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string v1, "OMX.Exynos."

    const/16 v2, 0x17

    sget-object v3, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->exynosVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 142
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string v1, "OMX.Intel."

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v8, v2}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->intelVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 155
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string v1, "OMX.qcom."

    const/16 v2, 0x18

    sget-object v3, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->qcomVp9HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 157
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string v1, "OMX.Exynos."

    const/16 v2, 0x18

    sget-object v3, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->exynosVp9HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 159
    new-array v0, v6, [Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->qcomVp9HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->exynosVp9HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v5

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->vp9HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 163
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string v1, "OMX.qcom."

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v7, v2}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->qcomH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 165
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string v1, "OMX.Exynos."

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v8, v2}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->exynosH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 167
    new-array v0, v6, [Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->qcomH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->exynosH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v5

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->h264HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 171
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string v1, "OMX.Exynos."

    const/16 v2, 0x17

    sget-object v3, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->exynosH264HighProfileHwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 174
    new-array v0, v5, [Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->exynosH264HighProfileHwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v4

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->h264HighProfileHwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 180
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SAMSUNG-SGH-I337"

    aput-object v1, v0, v4

    const-string v1, "Nexus 7"

    aput-object v1, v0, v5

    const-string v1, "Nexus 4"

    aput-object v1, v0, v6

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    .line 190
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 194
    new-array v0, v5, [I

    const v1, 0x7f000789

    aput v1, v0, v4

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    return-void

    .line 190
    nop

    :array_0
    .array-data 4
        0x13
        0x15
        0x7fa30c00
        0x7fa30c04
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    iput-object v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/MediaCodecVideoEncoder;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method private checkOnMediaCodecThread()V
    .locals 4

    .prologue
    .line 391
    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaCodecVideoEncoder previously operated on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but is now called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 393
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    return-void
.end method

.method static createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 2
    .param p0, "codecName"    # Ljava/lang/String;

    .prologue
    .line 413
    :try_start_0
    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 415
    :goto_0
    return-object v1

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static disableH264HwCodec()V
    .locals 2

    .prologue
    .line 240
    const-string v0, "MediaCodecVideoEncoder"

    const-string v1, "H.264 encoding is disabled by application."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v1, "video/avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method public static disableVp8HwCodec()V
    .locals 2

    .prologue
    .line 230
    const-string v0, "MediaCodecVideoEncoder"

    const-string v1, "VP8 encoding is disabled by application."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method public static disableVp9HwCodec()V
    .locals 2

    .prologue
    .line 235
    const-string v0, "MediaCodecVideoEncoder"

    const-string v1, "VP9 encoding is disabled by application."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method private static findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;
    .locals 21
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "supportedHwCodecProperties"    # [Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;
    .param p2, "colorList"    # [I

    .prologue
    .line 305
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x13

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 306
    const/4 v15, 0x0

    .line 387
    :goto_0
    return-object v15

    .line 310
    :cond_0
    const-string v15, "video/avc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 311
    sget-object v15, Lorg/webrtc/MediaCodecVideoEncoder;->H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 312
    .local v8, "exceptionModels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v8, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 313
    const-string v15, "MediaCodecVideoEncoder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Model: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " has black listed H.264 encoder."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const/4 v15, 0x0

    goto :goto_0

    .line 318
    .end local v8    # "exceptionModels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v15

    if-ge v9, v15, :cond_d

    .line 319
    const/4 v10, 0x0

    .line 321
    .local v10, "info":Landroid/media/MediaCodecInfo;
    :try_start_0
    invoke-static {v9}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 325
    :goto_2
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v15

    if-nez v15, :cond_3

    .line 318
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 322
    :catch_0
    move-exception v7

    .line 323
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v15, "MediaCodecVideoEncoder"

    const-string v16, "Cannot retrieve encoder codec info"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 328
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    const/4 v12, 0x0

    .line 329
    .local v12, "name":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    aget-object v11, v16, v15

    .line 330
    .local v11, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 331
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    .line 335
    .end local v11    # "mimeType":Ljava/lang/String;
    :cond_4
    if-eqz v12, :cond_2

    .line 338
    const-string v15, "MediaCodecVideoEncoder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Found candidate encoder "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/webrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v13, 0x0

    .line 342
    .local v13, "supportedCodec":Z
    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 343
    .local v2, "bitrateAdjustmentType":Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v15, v0, :cond_9

    aget-object v5, p1, v15

    .line 344
    .local v5, "codecProperties":Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;
    iget-object v0, v5, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;->codecPrefix:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 345
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v0, v5, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;->minSdk:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 346
    const-string v17, "MediaCodecVideoEncoder"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Codec "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is disabled due to SDK version "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 329
    .end local v2    # "bitrateAdjustmentType":Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .end local v5    # "codecProperties":Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;
    .end local v13    # "supportedCodec":Z
    .restart local v11    # "mimeType":Ljava/lang/String;
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 350
    .end local v11    # "mimeType":Ljava/lang/String;
    .restart local v2    # "bitrateAdjustmentType":Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .restart local v5    # "codecProperties":Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;
    .restart local v13    # "supportedCodec":Z
    :cond_7
    iget-object v15, v5, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v16, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_8

    .line 351
    iget-object v2, v5, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 352
    const-string v15, "MediaCodecVideoEncoder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Codec "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " requires bitrate adjustment: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_8
    const/4 v13, 0x1

    .line 359
    .end local v5    # "codecProperties":Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;
    :cond_9
    if-eqz v13, :cond_2

    .line 366
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 371
    .local v3, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    iget-object v0, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_6
    move/from16 v0, v17

    if-ge v15, v0, :cond_a

    aget v6, v16, v15

    .line 372
    .local v6, "colorFormat":I
    const-string v18, "MediaCodecVideoEncoder"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "   Color: 0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/webrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 367
    .end local v3    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v6    # "colorFormat":I
    :catch_1
    move-exception v7

    .line 368
    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    const-string v15, "MediaCodecVideoEncoder"

    const-string v16, "Cannot retrieve encoder capabilities"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 375
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    :cond_a
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    const/4 v15, 0x0

    move/from16 v16, v15

    :goto_7
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    aget v14, p2, v16

    .line 376
    .local v14, "supportedColorFormat":I
    iget-object v0, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/4 v15, 0x0

    :goto_8
    move/from16 v0, v19

    if-ge v15, v0, :cond_c

    aget v4, v18, v15

    .line 377
    .local v4, "codecColorFormat":I
    if-ne v4, v14, :cond_b

    .line 379
    const-string v15, "MediaCodecVideoEncoder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Found target encoder for mime "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". Color: 0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 380
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". Bitrate adjustment: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 379
    invoke-static/range {v15 .. v16}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v15, Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    invoke-direct {v15, v12, v4, v2}, Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    goto/16 :goto_0

    .line 376
    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 375
    .end local v4    # "codecColorFormat":I
    :cond_c
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    goto :goto_7

    .line 387
    .end local v2    # "bitrateAdjustmentType":Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .end local v3    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v10    # "info":Landroid/media/MediaCodecInfo;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "supportedCodec":Z
    .end local v14    # "supportedColorFormat":I
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method private getBitrateScale(I)D
    .locals 6
    .param p1, "bitrateAdjustmentScaleExp"    # I

    .prologue
    .line 861
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    int-to-double v2, p1

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static isH264HighProfileHwSupported()Z
    .locals 3

    .prologue
    .line 269
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v1, "video/avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/avc"

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->h264HighProfileHwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 270
    invoke-static {v0, v1, v2}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    .line 270
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isH264HwSupported()Z
    .locals 3

    .prologue
    .line 264
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v1, "video/avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/avc"

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->h264HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 265
    invoke-static {v0, v1, v2}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 264
    :goto_0
    return v0

    .line 265
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isH264HwSupportedUsingTextures()Z
    .locals 3

    .prologue
    .line 284
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v1, "video/avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/avc"

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->h264HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 285
    invoke-static {v0, v1, v2}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    .line 285
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVp8HwSupported()Z
    .locals 3

    .prologue
    .line 246
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/x-vnd.on2.vp8"

    .line 247
    invoke-static {}, Lorg/webrtc/MediaCodecVideoEncoder;->vp8HwList()[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    move-result-object v1

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->supportedColorList:[I

    invoke-static {v0, v1, v2}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    .line 247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVp8HwSupportedUsingTextures()Z
    .locals 3

    .prologue
    .line 274
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/x-vnd.on2.vp8"

    .line 275
    invoke-static {}, Lorg/webrtc/MediaCodecVideoEncoder;->vp8HwList()[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    move-result-object v1

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    invoke-static {v0, v1, v2}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    .line 275
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVp9HwSupported()Z
    .locals 3

    .prologue
    .line 259
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/x-vnd.on2.vp9"

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->vp9HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 260
    invoke-static {v0, v1, v2}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVp9HwSupportedUsingTextures()Z
    .locals 3

    .prologue
    .line 279
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/x-vnd.on2.vp9"

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->vp9HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 280
    invoke-static {v0, v1, v2}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 279
    :goto_0
    return v0

    .line 280
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeFillBuffer(JILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V
.end method

.method public static printStackTrace()V
    .locals 6

    .prologue
    .line 398
    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->runningInstance:Lorg/webrtc/MediaCodecVideoEncoder;

    if-eqz v2, :cond_0

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->runningInstance:Lorg/webrtc/MediaCodecVideoEncoder;

    iget-object v2, v2, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 399
    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->runningInstance:Lorg/webrtc/MediaCodecVideoEncoder;

    iget-object v2, v2, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 400
    .local v0, "mediaCodecStackTraces":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 401
    const-string v2, "MediaCodecVideoEncoder"

    const-string v3, "MediaCodecVideoEncoder stacks trace:"

    invoke-static {v2, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 403
    .local v1, "stackTrace":Ljava/lang/StackTraceElement;
    const-string v4, "MediaCodecVideoEncoder"

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    .end local v1    # "stackTrace":Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method private reportEncodedFrame(I)V
    .locals 14
    .param p1, "size"    # I

    .prologue
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 866
    iget v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v7, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-eq v6, v7, :cond_1

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    iget v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    iget v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    div-double v4, v6, v8

    .line 872
    .local v4, "expectedBytesPerFrame":D
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    int-to-double v8, p1

    sub-double/2addr v8, v4

    add-double/2addr v6, v8

    iput-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 873
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    const-wide v8, 0x408f400000000000L    # 1000.0

    iget v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    .line 877
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    iget-wide v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    mul-double v0, v6, v8

    .line 878
    .local v0, "bitrateAccumulatorCap":D
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 879
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    neg-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 883
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    const-wide v8, 0x40a7700000000000L    # 3000.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 884
    const-string v6, "MediaCodecVideoEncoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Acc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    double-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Max: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    double-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". ExpScale: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const/4 v3, 0x0

    .line 887
    .local v3, "bitrateAdjustmentScaleChanged":Z
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    iget-wide v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    cmpl-double v6, v6, v8

    if-lez v6, :cond_4

    .line 889
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    iget-wide v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    div-double/2addr v6, v8

    add-double/2addr v6, v12

    double-to-int v2, v6

    .line 890
    .local v2, "bitrateAdjustmentInc":I
    iget v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    sub-int/2addr v6, v2

    iput v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 891
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    iput-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 892
    const/4 v3, 0x1

    .line 900
    .end local v2    # "bitrateAdjustmentInc":I
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 901
    iget v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    const/16 v7, 0x14

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 902
    iget v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    const/16 v7, -0x14

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 903
    const-string v6, "MediaCodecVideoEncoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adjusting bitrate scale to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 904
    invoke-direct {p0, v8}, Lorg/webrtc/MediaCodecVideoEncoder;->getBitrateScale(I)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 903
    invoke-static {v6, v7}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    div-int/lit16 v6, v6, 0x3e8

    iget v7, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    invoke-direct {p0, v6, v7}, Lorg/webrtc/MediaCodecVideoEncoder;->setRates(II)Z

    .line 907
    :cond_3
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    goto/16 :goto_0

    .line 893
    :cond_4
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    iget-wide v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    neg-double v8, v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    .line 895
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    neg-double v6, v6

    iget-wide v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    div-double/2addr v6, v8

    add-double/2addr v6, v12

    double-to-int v2, v6

    .line 896
    .restart local v2    # "bitrateAdjustmentInc":I
    iget v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    add-int/2addr v6, v2

    iput v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 897
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    neg-double v6, v6

    iput-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 898
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static setErrorCallback(Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;)V
    .locals 2
    .param p0, "errorCallback"    # Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    .prologue
    .line 223
    const-string v0, "MediaCodecVideoEncoder"

    const-string v1, "Set error callback"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sput-object p0, Lorg/webrtc/MediaCodecVideoEncoder;->errorCallback:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    .line 225
    return-void
.end method

.method private setRates(II)Z
    .locals 8
    .param p1, "kbps"    # I
    .param p2, "frameRate"    # I

    .prologue
    .line 722
    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 724
    mul-int/lit16 v0, p1, 0x3e8

    .line 725
    .local v0, "codecBitrateBps":I
    iget-object v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v4, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-ne v3, v4, :cond_0

    .line 726
    int-to-double v4, v0

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    div-double/2addr v4, v6

    iput-wide v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    .line 727
    iget v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    if-lez v3, :cond_0

    iget v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    if-ge v0, v3, :cond_0

    .line 729
    iget-wide v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    int-to-double v6, v0

    mul-double/2addr v4, v6

    iget v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    iput-wide v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 732
    :cond_0
    iput v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    .line 733
    iput p2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    .line 736
    iget-object v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v4, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    if-lez v3, :cond_2

    .line 737
    iget v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    mul-int/lit8 v3, v3, 0x1e

    iget v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    div-int v0, v3, v4

    .line 738
    const-string v3, "MediaCodecVideoEncoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRates: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, v0, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kbps. Fps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/webrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :cond_1
    :goto_0
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 752
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "video-bitrate"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 753
    iget-object v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    const/4 v3, 0x1

    .line 757
    .end local v2    # "params":Landroid/os/Bundle;
    :goto_1
    return v3

    .line 740
    :cond_2
    iget-object v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v4, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-ne v3, v4, :cond_3

    .line 741
    const-string v3, "MediaCodecVideoEncoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRates: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kbps. Fps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". ExpScale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/webrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    if-eqz v3, :cond_1

    .line 744
    int-to-double v4, v0

    iget v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    invoke-direct {p0, v3}, Lorg/webrtc/MediaCodecVideoEncoder;->getBitrateScale(I)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_0

    .line 747
    :cond_3
    const-string v3, "MediaCodecVideoEncoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRates: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kbps. Fps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/webrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 755
    :catch_0
    move-exception v1

    .line 756
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v3, "MediaCodecVideoEncoder"

    const-string v4, "setRates failed"

    invoke-static {v3, v4, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 757
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static vp8HwEncoderProperties()Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;
    .locals 3

    .prologue
    .line 251
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/x-vnd.on2.vp8"

    invoke-static {}, Lorg/webrtc/MediaCodecVideoEncoder;->vp8HwList()[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    move-result-object v1

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->supportedColorList:[I

    invoke-static {v0, v1, v2}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    goto :goto_0
.end method

.method private static vp8HwList()[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, "supported_codecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;>;"
    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->qcomVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->exynosVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v1, "WebRTC-IntelVP8"

    invoke-static {v1}, Lorg/webrtc/PeerConnectionFactory;->fieldTrialsFindFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Enabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->intelVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    return-object v1
.end method


# virtual methods
.method checkKeyFrameRequired(ZJ)V
    .locals 10
    .param p1, "requestedKeyFrame"    # Z
    .param p2, "presentationTimestampUs"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 545
    const-wide/16 v4, 0x1f4

    add-long/2addr v4, p2

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 546
    .local v2, "presentationTimestampMs":J
    iget-wide v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->lastKeyFrameMs:J

    cmp-long v4, v4, v8

    if-gez v4, :cond_0

    .line 547
    iput-wide v2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->lastKeyFrameMs:J

    .line 549
    :cond_0
    const/4 v1, 0x0

    .line 550
    .local v1, "forcedKeyFrame":Z
    if-nez p1, :cond_1

    iget-wide v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->forcedKeyFrameMs:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    iget-wide v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->lastKeyFrameMs:J

    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->forcedKeyFrameMs:J

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 552
    const/4 v1, 0x1

    .line 554
    :cond_1
    if-nez p1, :cond_2

    if-eqz v1, :cond_3

    .line 559
    :cond_2
    if-eqz p1, :cond_4

    .line 560
    const-string v4, "MediaCodecVideoEncoder"

    const-string v5, "Sync frame request"

    invoke-static {v4, v5}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 565
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "request-sync"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 566
    iget-object v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 567
    iput-wide v2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->lastKeyFrameMs:J

    .line 569
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_3
    return-void

    .line 562
    :cond_4
    const-string v4, "MediaCodecVideoEncoder"

    const-string v5, "Sync frame forced"

    invoke-static {v4, v5}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method dequeueInputBuffer()I
    .locals 4

    .prologue
    .line 764
    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 766
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 769
    :goto_0
    return v1

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MediaCodecVideoEncoder"

    const-string v2, "dequeueIntputBuffer failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 769
    const/4 v1, -0x2

    goto :goto_0
.end method

.method dequeueOutputBuffer()Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;
    .locals 18

    .prologue
    .line 792
    invoke-direct/range {p0 .. p0}, Lorg/webrtc/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 794
    :try_start_0
    new-instance v14, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v14}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 795
    .local v14, "info":Landroid/media/MediaCodec$BufferInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v14, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 797
    .local v3, "result":I
    if-ltz v3, :cond_3

    .line 798
    iget v2, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v15, 0x1

    .line 799
    .local v15, "isConfigFrame":Z
    :goto_0
    if-eqz v15, :cond_3

    .line 800
    const-string v2, "MediaCodecVideoEncoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Config frame generated. Offset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget v2, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 802
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v3

    iget v6, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v3

    iget v6, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 804
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/webrtc/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v6, v6, v3

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 806
    const-string v17, ""

    .line 807
    .local v17, "spsData":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    iget v2, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v6, 0x8

    if-ge v2, v6, :cond_1

    iget v2, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    :goto_2
    if-ge v13, v2, :cond_2

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/webrtc/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 807
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 798
    .end local v13    # "i":I
    .end local v15    # "isConfigFrame":Z
    .end local v17    # "spsData":Ljava/lang/String;
    :cond_0
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 807
    .restart local v13    # "i":I
    .restart local v15    # "isConfigFrame":Z
    .restart local v17    # "spsData":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x8

    goto :goto_2

    .line 810
    :cond_2
    const-string v2, "MediaCodecVideoEncoder"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 814
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v14, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 817
    .end local v13    # "i":I
    .end local v15    # "isConfigFrame":Z
    .end local v17    # "spsData":Ljava/lang/String;
    :cond_3
    if-ltz v3, :cond_7

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 822
    .local v16, "outputBuffer":Ljava/nio/ByteBuffer;
    iget v2, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 823
    iget v2, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 824
    iget v2, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/webrtc/MediaCodecVideoEncoder;->reportEncodedFrame(I)V

    .line 827
    iget v2, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    const/4 v5, 0x1

    .line 828
    .local v5, "isKeyFrame":Z
    :goto_3
    if-eqz v5, :cond_4

    .line 829
    const-string v2, "MediaCodecVideoEncoder"

    const-string v6, "Sync frame generated"

    invoke-static {v2, v6}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :cond_4
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->type:Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;

    sget-object v6, Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H264:Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;

    if-ne v2, v6, :cond_6

    .line 832
    const-string v2, "MediaCodecVideoEncoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Appending config frame of size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/webrtc/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to output buffer with offset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget v6, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 836
    .local v4, "keyFrameBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 838
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 839
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 840
    new-instance v2, Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;

    iget-wide v6, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct/range {v2 .. v7}, Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;-><init>(ILjava/nio/ByteBuffer;ZJ)V

    move-object v6, v2

    .line 856
    .end local v3    # "result":I
    .end local v4    # "keyFrameBuffer":Ljava/nio/ByteBuffer;
    .end local v5    # "isKeyFrame":Z
    .end local v14    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v16    # "outputBuffer":Ljava/nio/ByteBuffer;
    :goto_4
    return-object v6

    .line 827
    .restart local v3    # "result":I
    .restart local v14    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v16    # "outputBuffer":Ljava/nio/ByteBuffer;
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 842
    .restart local v5    # "isKeyFrame":Z
    :cond_6
    new-instance v6, Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;

    .line 843
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    iget-wide v10, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move v7, v3

    move v9, v5

    invoke-direct/range {v6 .. v11}, Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;-><init>(ILjava/nio/ByteBuffer;ZJ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 854
    .end local v3    # "result":I
    .end local v5    # "isKeyFrame":Z
    .end local v14    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v16    # "outputBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v12

    .line 855
    .local v12, "e":Ljava/lang/IllegalStateException;
    const-string v2, "MediaCodecVideoEncoder"

    const-string v6, "dequeueOutputBuffer failed"

    invoke-static {v2, v6, v12}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 856
    new-instance v6, Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    invoke-direct/range {v6 .. v11}, Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;-><init>(ILjava/nio/ByteBuffer;ZJ)V

    goto :goto_4

    .line 845
    .end local v12    # "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "result":I
    .restart local v14    # "info":Landroid/media/MediaCodec$BufferInfo;
    :cond_7
    const/4 v2, -0x3

    if-ne v3, v2, :cond_8

    .line 846
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 847
    invoke-virtual/range {p0 .. p0}, Lorg/webrtc/MediaCodecVideoEncoder;->dequeueOutputBuffer()Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;

    move-result-object v6

    goto :goto_4

    .line 848
    :cond_8
    const/4 v2, -0x2

    if-ne v3, v2, :cond_9

    .line 849
    invoke-virtual/range {p0 .. p0}, Lorg/webrtc/MediaCodecVideoEncoder;->dequeueOutputBuffer()Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;

    move-result-object v6

    goto :goto_4

    .line 850
    :cond_9
    const/4 v2, -0x1

    if-ne v3, v2, :cond_a

    .line 851
    const/4 v6, 0x0

    goto :goto_4

    .line 853
    :cond_a
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dequeueOutputBuffer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method encodeBuffer(ZIIJ)Z
    .locals 10
    .param p1, "isKeyframe"    # Z
    .param p2, "inputBuffer"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimestampUs"    # J

    .prologue
    const/4 v8, 0x0

    .line 573
    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 575
    :try_start_0
    invoke-virtual {p0, p1, p4, p5}, Lorg/webrtc/MediaCodecVideoEncoder;->checkKeyFrameRequired(ZJ)V

    .line 576
    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v1, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    const/4 v0, 0x1

    .line 580
    :goto_0
    return v0

    .line 578
    :catch_0
    move-exception v7

    .line 579
    .local v7, "e":Ljava/lang/IllegalStateException;
    const-string v0, "MediaCodecVideoEncoder"

    const-string v1, "encodeBuffer failed"

    invoke-static {v0, v1, v7}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v8

    .line 580
    goto :goto_0
.end method

.method encodeFrame(JZLorg/webrtc/VideoFrame;I)Z
    .locals 21
    .param p1, "nativeEncoder"    # J
    .param p3, "isKeyframe"    # Z
    .param p4, "frame"    # Lorg/webrtc/VideoFrame;
    .param p5, "bufferIndex"    # I

    .prologue
    .line 607
    invoke-direct/range {p0 .. p0}, Lorg/webrtc/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 609
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p4 .. p4}, Lorg/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v18

    .line 610
    .local v18, "presentationTimestampUs":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/webrtc/MediaCodecVideoEncoder;->checkKeyFrameRequired(ZJ)V

    .line 612
    invoke-virtual/range {p4 .. p4}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v15

    .line 613
    .local v15, "buffer":Lorg/webrtc/VideoFrame$Buffer;
    instance-of v4, v15, Lorg/webrtc/VideoFrame$TextureBuffer;

    if-eqz v4, :cond_0

    .line 614
    move-object v0, v15

    check-cast v0, Lorg/webrtc/VideoFrame$TextureBuffer;

    move-object v5, v0

    .line 615
    .local v5, "textureBuffer":Lorg/webrtc/VideoFrame$TextureBuffer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/EglBase14;

    invoke-virtual {v4}, Lorg/webrtc/EglBase14;->makeCurrent()V

    .line 618
    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 619
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/MediaCodecVideoEncoder;->drawer:Lorg/webrtc/GlRectDrawer;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Lorg/webrtc/MediaCodecVideoEncoder;->width:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/webrtc/MediaCodecVideoEncoder;->height:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->width:I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/webrtc/MediaCodecVideoEncoder;->height:I

    invoke-static/range {v4 .. v12}, Lorg/webrtc/RendererCommon;->drawTexture(Lorg/webrtc/RendererCommon$GlDrawer;Lorg/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    .line 621
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/EglBase14;

    invoke-virtual/range {p4 .. p4}, Lorg/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/webrtc/EglBase14;->swapBuffers(J)V

    .line 633
    .end local v5    # "textureBuffer":Lorg/webrtc/VideoFrame$TextureBuffer;
    :goto_0
    const/4 v4, 0x1

    .line 636
    .end local v15    # "buffer":Lorg/webrtc/VideoFrame$Buffer;
    .end local v18    # "presentationTimestampUs":J
    :goto_1
    return v4

    .line 623
    .restart local v15    # "buffer":Lorg/webrtc/VideoFrame$Buffer;
    .restart local v18    # "presentationTimestampUs":J
    :cond_0
    invoke-interface {v15}, Lorg/webrtc/VideoFrame$Buffer;->toI420()Lorg/webrtc/VideoFrame$I420Buffer;

    move-result-object v17

    .line 624
    .local v17, "i420Buffer":Lorg/webrtc/VideoFrame$I420Buffer;
    invoke-interface/range {v17 .. v17}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface/range {v17 .. v17}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v10

    .line 625
    invoke-interface/range {v17 .. v17}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-interface/range {v17 .. v17}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v12

    invoke-interface/range {v17 .. v17}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 626
    invoke-interface/range {v17 .. v17}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v14

    move-wide/from16 v6, p1

    move/from16 v8, p5

    .line 624
    invoke-static/range {v6 .. v14}, Lorg/webrtc/MediaCodecVideoEncoder;->nativeFillBuffer(JILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V

    .line 627
    invoke-interface/range {v17 .. v17}, Lorg/webrtc/VideoFrame$I420Buffer;->release()V

    .line 630
    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/MediaCodecVideoEncoder;->width:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/webrtc/MediaCodecVideoEncoder;->height:I

    mul-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v9, v4, 0x2

    .line 631
    .local v9, "yuvSize":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    const/4 v12, 0x0

    move/from16 v7, p5

    move-wide/from16 v10, v18

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 634
    .end local v9    # "yuvSize":I
    .end local v15    # "buffer":Lorg/webrtc/VideoFrame$Buffer;
    .end local v17    # "i420Buffer":Lorg/webrtc/VideoFrame$I420Buffer;
    .end local v18    # "presentationTimestampUs":J
    :catch_0
    move-exception v16

    .line 635
    .local v16, "e":Ljava/lang/RuntimeException;
    const-string v4, "MediaCodecVideoEncoder"

    const-string v6, "encodeFrame failed"

    move-object/from16 v0, v16

    invoke-static {v4, v6, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 636
    const/4 v4, 0x0

    goto :goto_1
.end method

.method encodeTexture(ZI[FJ)Z
    .locals 10
    .param p1, "isKeyframe"    # Z
    .param p2, "oesTextureId"    # I
    .param p3, "transformationMatrix"    # [F
    .param p4, "presentationTimestampUs"    # J

    .prologue
    .line 586
    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 588
    :try_start_0
    invoke-virtual {p0, p1, p4, p5}, Lorg/webrtc/MediaCodecVideoEncoder;->checkKeyFrameRequired(ZJ)V

    .line 589
    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/EglBase14;

    invoke-virtual {v0}, Lorg/webrtc/EglBase14;->makeCurrent()V

    .line 592
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 593
    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->drawer:Lorg/webrtc/GlRectDrawer;

    iget v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->width:I

    iget v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->height:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lorg/webrtc/MediaCodecVideoEncoder;->width:I

    iget v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->height:I

    move v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v8}, Lorg/webrtc/GlRectDrawer;->drawOes(I[FIIIIII)V

    .line 594
    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/EglBase14;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p4, p5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/webrtc/EglBase14;->swapBuffers(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    const/4 v0, 0x1

    .line 598
    :goto_0
    return v0

    .line 596
    :catch_0
    move-exception v9

    .line 597
    .local v9, "e":Ljava/lang/RuntimeException;
    const-string v0, "MediaCodecVideoEncoder"

    const-string v1, "encodeTexture failed"

    invoke-static {v0, v1, v9}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 598
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getInputBuffers()[Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 539
    iget-object v1, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 540
    .local v0, "inputBuffers":[Ljava/nio/ByteBuffer;
    const-string v1, "MediaCodecVideoEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input buffers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-object v0
.end method

.method initEncode(Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;IIIIILorg/webrtc/EglBase14$Context;)Z
    .locals 14
    .param p1, "type"    # Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;
    .param p2, "profile"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "kbps"    # I
    .param p6, "fps"    # I
    .param p7, "sharedContext"    # Lorg/webrtc/EglBase14$Context;

    .prologue
    .line 421
    if-eqz p7, :cond_0

    const/4 v9, 0x1

    .line 422
    .local v9, "useSurface":Z
    :goto_0
    const-string v10, "MediaCodecVideoEncoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Java initEncode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Profile: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " x "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". @ "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " kbps. Fps: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Encode from texture : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    move/from16 v0, p2

    iput v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->profile:I

    .line 427
    move/from16 v0, p3

    iput v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->width:I

    .line 428
    move/from16 v0, p4

    iput v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->height:I

    .line 429
    iget-object v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    if-eqz v10, :cond_1

    .line 430
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Forgot to release()?"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 421
    .end local v9    # "useSurface":Z
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 432
    .restart local v9    # "useSurface":Z
    :cond_1
    const/4 v8, 0x0

    .line 433
    .local v8, "properties":Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;
    const/4 v7, 0x0

    .line 434
    .local v7, "mime":Ljava/lang/String;
    const/4 v6, 0x0

    .line 435
    .local v6, "keyFrameIntervalSec":I
    const/4 v2, 0x0

    .line 436
    .local v2, "configureH264HighProfile":Z
    sget-object v10, Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_VP8:Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;

    if-ne p1, v10, :cond_4

    .line 437
    const-string v7, "video/x-vnd.on2.vp8"

    .line 438
    const-string v11, "video/x-vnd.on2.vp8"

    .line 439
    invoke-static {}, Lorg/webrtc/MediaCodecVideoEncoder;->vp8HwList()[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    move-result-object v12

    if-eqz v9, :cond_3

    sget-object v10, Lorg/webrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 438
    :goto_1
    invoke-static {v11, v12, v10}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v8

    .line 440
    const/16 v6, 0x64

    .line 462
    :cond_2
    :goto_2
    if-nez v8, :cond_b

    .line 463
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can not find HW encoder for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 439
    :cond_3
    sget-object v10, Lorg/webrtc/MediaCodecVideoEncoder;->supportedColorList:[I

    goto :goto_1

    .line 441
    :cond_4
    sget-object v10, Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_VP9:Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;

    if-ne p1, v10, :cond_6

    .line 442
    const-string v7, "video/x-vnd.on2.vp9"

    .line 443
    const-string v11, "video/x-vnd.on2.vp9"

    sget-object v12, Lorg/webrtc/MediaCodecVideoEncoder;->vp9HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    if-eqz v9, :cond_5

    sget-object v10, Lorg/webrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    :goto_3
    invoke-static {v11, v12, v10}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v8

    .line 445
    const/16 v6, 0x64

    goto :goto_2

    .line 443
    :cond_5
    sget-object v10, Lorg/webrtc/MediaCodecVideoEncoder;->supportedColorList:[I

    goto :goto_3

    .line 446
    :cond_6
    sget-object v10, Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H264:Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;

    if-ne p1, v10, :cond_2

    .line 447
    const-string v7, "video/avc"

    .line 448
    const-string v11, "video/avc"

    sget-object v12, Lorg/webrtc/MediaCodecVideoEncoder;->h264HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    if-eqz v9, :cond_8

    sget-object v10, Lorg/webrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    :goto_4
    invoke-static {v11, v12, v10}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v8

    .line 450
    sget-object v10, Lorg/webrtc/MediaCodecVideoEncoder$H264Profile;->CONSTRAINED_HIGH:Lorg/webrtc/MediaCodecVideoEncoder$H264Profile;

    invoke-virtual {v10}, Lorg/webrtc/MediaCodecVideoEncoder$H264Profile;->getValue()I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_7

    .line 451
    const-string v11, "video/avc"

    sget-object v12, Lorg/webrtc/MediaCodecVideoEncoder;->h264HighProfileHwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    if-eqz v9, :cond_9

    sget-object v10, Lorg/webrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    :goto_5
    invoke-static {v11, v12, v10}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v5

    .line 453
    .local v5, "h264HighProfileProperties":Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;
    if-eqz v5, :cond_a

    .line 454
    const-string v10, "MediaCodecVideoEncoder"

    const-string v11, "High profile H.264 encoder supported."

    invoke-static {v10, v11}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const/4 v2, 0x1

    .line 460
    .end local v5    # "h264HighProfileProperties":Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;
    :cond_7
    :goto_6
    const/16 v6, 0x14

    goto :goto_2

    .line 448
    :cond_8
    sget-object v10, Lorg/webrtc/MediaCodecVideoEncoder;->supportedColorList:[I

    goto :goto_4

    .line 451
    :cond_9
    sget-object v10, Lorg/webrtc/MediaCodecVideoEncoder;->supportedColorList:[I

    goto :goto_5

    .line 457
    .restart local v5    # "h264HighProfileProperties":Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;
    :cond_a
    const-string v10, "MediaCodecVideoEncoder"

    const-string v11, "High profile H.264 encoder requested, but not supported. Use baseline."

    invoke-static {v10, v11}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 465
    .end local v5    # "h264HighProfileProperties":Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;
    :cond_b
    sput-object p0, Lorg/webrtc/MediaCodecVideoEncoder;->runningInstance:Lorg/webrtc/MediaCodecVideoEncoder;

    .line 466
    iget v10, v8, Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;->colorFormat:I

    iput v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->colorFormat:I

    .line 467
    iget-object v10, v8, Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    iput-object v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 468
    iget-object v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v11, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-ne v10, v11, :cond_f

    .line 469
    const/16 p6, 0x1e

    .line 474
    :goto_7
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->forcedKeyFrameMs:J

    .line 475
    const-wide/16 v10, -0x1

    iput-wide v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->lastKeyFrameMs:J

    .line 476
    sget-object v10, Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_VP8:Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;

    if-ne p1, v10, :cond_d

    iget-object v10, v8, Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;->codecName:Ljava/lang/String;

    sget-object v11, Lorg/webrtc/MediaCodecVideoEncoder;->qcomVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    iget-object v11, v11, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;->codecPrefix:Ljava/lang/String;

    .line 477
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 478
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-eq v10, v11, :cond_c

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x16

    if-ne v10, v11, :cond_10

    .line 480
    :cond_c
    const-wide/16 v10, 0x3a98

    iput-wide v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->forcedKeyFrameMs:J

    .line 488
    :cond_d
    :goto_8
    const-string v10, "MediaCodecVideoEncoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Color format: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lorg/webrtc/MediaCodecVideoEncoder;->colorFormat:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Bitrate adjustment: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Key frame interval: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lorg/webrtc/MediaCodecVideoEncoder;->forcedKeyFrameMs:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " . Initial fps: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    move/from16 v0, p5

    mul-int/lit16 v10, v0, 0x3e8

    iput v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    .line 491
    move/from16 v0, p6

    iput v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    .line 492
    iget v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x4020000000000000L    # 8.0

    div-double/2addr v10, v12

    iput-wide v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    .line 493
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 494
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    .line 495
    const/4 v10, 0x0

    iput v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 497
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    iput-object v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 499
    :try_start_0
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v7, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    .line 500
    .local v4, "format":Landroid/media/MediaFormat;
    const-string v10, "bitrate"

    iget v11, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 501
    const-string v10, "bitrate-mode"

    const/4 v11, 0x2

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 502
    const-string v10, "color-format"

    iget v11, v8, Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;->colorFormat:I

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 503
    const-string v10, "frame-rate"

    iget v11, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 504
    const-string v10, "i-frame-interval"

    invoke-virtual {v4, v10, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 505
    if-eqz v2, :cond_e

    .line 506
    const-string v10, "profile"

    const/16 v11, 0x8

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 507
    const-string v10, "level"

    const/16 v11, 0x100

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 509
    :cond_e
    const-string v10, "MediaCodecVideoEncoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Format: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v10, v8, Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;->codecName:Ljava/lang/String;

    invoke-static {v10}, Lorg/webrtc/MediaCodecVideoEncoder;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v10

    iput-object v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 511
    iput-object p1, p0, Lorg/webrtc/MediaCodecVideoEncoder;->type:Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;

    .line 512
    iget-object v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v10, :cond_12

    .line 513
    const-string v10, "MediaCodecVideoEncoder"

    const-string v11, "Can not create media encoder"

    invoke-static {v10, v11}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Lorg/webrtc/MediaCodecVideoEncoder;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    const/4 v10, 0x0

    .line 535
    .end local v4    # "format":Landroid/media/MediaFormat;
    :goto_9
    return v10

    .line 471
    :cond_f
    const/16 v10, 0x1e

    move/from16 v0, p6

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result p6

    goto/16 :goto_7

    .line 481
    :cond_10
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-ne v10, v11, :cond_11

    .line 482
    const-wide/16 v10, 0x4e20

    iput-wide v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->forcedKeyFrameMs:J

    goto/16 :goto_8

    .line 483
    :cond_11
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-le v10, v11, :cond_d

    .line 484
    const-wide/16 v10, 0x3a98

    iput-wide v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->forcedKeyFrameMs:J

    goto/16 :goto_8

    .line 517
    .restart local v4    # "format":Landroid/media/MediaFormat;
    :cond_12
    :try_start_1
    iget-object v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v10, v4, v11, v12, v13}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 519
    if-eqz v9, :cond_13

    .line 520
    new-instance v10, Lorg/webrtc/EglBase14;

    sget-object v11, Lorg/webrtc/EglBase;->CONFIG_RECORDABLE:[I

    move-object/from16 v0, p7

    invoke-direct {v10, v0, v11}, Lorg/webrtc/EglBase14;-><init>(Lorg/webrtc/EglBase14$Context;[I)V

    iput-object v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/EglBase14;

    .line 522
    iget-object v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v10}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v10

    iput-object v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    .line 523
    iget-object v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/EglBase14;

    iget-object v11, p0, Lorg/webrtc/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    invoke-virtual {v10, v11}, Lorg/webrtc/EglBase14;->createSurface(Landroid/view/Surface;)V

    .line 524
    new-instance v10, Lorg/webrtc/GlRectDrawer;

    invoke-direct {v10}, Lorg/webrtc/GlRectDrawer;-><init>()V

    iput-object v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->drawer:Lorg/webrtc/GlRectDrawer;

    .line 526
    :cond_13
    iget-object v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v10}, Landroid/media/MediaCodec;->start()V

    .line 527
    iget-object v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v10}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v10

    iput-object v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 528
    const-string v10, "MediaCodecVideoEncoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Output buffers: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/webrtc/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    array-length v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 535
    const/4 v10, 0x1

    goto :goto_9

    .line 530
    .end local v4    # "format":Landroid/media/MediaFormat;
    :catch_0
    move-exception v3

    .line 531
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string v10, "MediaCodecVideoEncoder"

    const-string v11, "initEncode failed"

    invoke-static {v10, v11, v3}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 532
    invoke-virtual {p0}, Lorg/webrtc/MediaCodecVideoEncoder;->release()V

    .line 533
    const/4 v10, 0x0

    goto/16 :goto_9
.end method

.method release()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 641
    const-string v5, "MediaCodecVideoEncoder"

    const-string v6, "Java releaseEncoder"

    invoke-static {v5, v6}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 647
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$1CaughtException;

    invoke-direct {v0, p0}, Lorg/webrtc/MediaCodecVideoEncoder$1CaughtException;-><init>(Lorg/webrtc/MediaCodecVideoEncoder;)V

    .line 648
    .local v0, "caughtException":Lorg/webrtc/MediaCodecVideoEncoder$1CaughtException;
    const/4 v4, 0x0

    .line 650
    .local v4, "stopHung":Z
    iget-object v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v5, :cond_1

    .line 653
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 655
    .local v1, "releaseDone":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lorg/webrtc/MediaCodecVideoEncoder$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/webrtc/MediaCodecVideoEncoder$1;-><init>(Lorg/webrtc/MediaCodecVideoEncoder;Lorg/webrtc/MediaCodecVideoEncoder$1CaughtException;Ljava/util/concurrent/CountDownLatch;)V

    .line 675
    .local v2, "runMediaCodecRelease":Ljava/lang/Runnable;
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 677
    const-wide/16 v6, 0x1388

    invoke-static {v1, v6, v7}, Lorg/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 678
    const-string v5, "MediaCodecVideoEncoder"

    const-string v6, "Media encoder release timeout"

    invoke-static {v5, v6}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const/4 v4, 0x1

    .line 682
    :cond_0
    iput-object v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 685
    .end local v1    # "releaseDone":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "runMediaCodecRelease":Ljava/lang/Runnable;
    :cond_1
    iput-object v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 686
    iget-object v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->drawer:Lorg/webrtc/GlRectDrawer;

    if-eqz v5, :cond_2

    .line 687
    iget-object v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->drawer:Lorg/webrtc/GlRectDrawer;

    invoke-virtual {v5}, Lorg/webrtc/GlRectDrawer;->release()V

    .line 688
    iput-object v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->drawer:Lorg/webrtc/GlRectDrawer;

    .line 690
    :cond_2
    iget-object v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/EglBase14;

    if-eqz v5, :cond_3

    .line 691
    iget-object v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/EglBase14;

    invoke-virtual {v5}, Lorg/webrtc/EglBase14;->release()V

    .line 692
    iput-object v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/EglBase14;

    .line 694
    :cond_3
    iget-object v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    if-eqz v5, :cond_4

    .line 695
    iget-object v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->release()V

    .line 696
    iput-object v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    .line 698
    :cond_4
    sput-object v8, Lorg/webrtc/MediaCodecVideoEncoder;->runningInstance:Lorg/webrtc/MediaCodecVideoEncoder;

    .line 700
    if-eqz v4, :cond_6

    .line 701
    sget v5, Lorg/webrtc/MediaCodecVideoEncoder;->codecErrors:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lorg/webrtc/MediaCodecVideoEncoder;->codecErrors:I

    .line 702
    sget-object v5, Lorg/webrtc/MediaCodecVideoEncoder;->errorCallback:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    if-eqz v5, :cond_5

    .line 703
    const-string v5, "MediaCodecVideoEncoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invoke codec error callback. Errors: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lorg/webrtc/MediaCodecVideoEncoder;->codecErrors:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    sget-object v5, Lorg/webrtc/MediaCodecVideoEncoder;->errorCallback:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    sget v6, Lorg/webrtc/MediaCodecVideoEncoder;->codecErrors:I

    invoke-interface {v5, v6}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;->onMediaCodecVideoEncoderCriticalError(I)V

    .line 706
    :cond_5
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Media encoder release timeout."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 711
    :cond_6
    iget-object v5, v0, Lorg/webrtc/MediaCodecVideoEncoder$1CaughtException;->e:Ljava/lang/Exception;

    if-eqz v5, :cond_7

    .line 712
    new-instance v3, Ljava/lang/RuntimeException;

    iget-object v5, v0, Lorg/webrtc/MediaCodecVideoEncoder$1CaughtException;->e:Ljava/lang/Exception;

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 713
    .local v3, "runtimeException":Ljava/lang/RuntimeException;
    iget-object v5, v0, Lorg/webrtc/MediaCodecVideoEncoder$1CaughtException;->e:Ljava/lang/Exception;

    .line 714
    invoke-virtual {v5}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 713
    invoke-static {v5, v6}, Lorg/webrtc/ThreadUtils;->concatStackTraces([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 715
    throw v3

    .line 718
    .end local v3    # "runtimeException":Ljava/lang/RuntimeException;
    :cond_7
    const-string v5, "MediaCodecVideoEncoder"

    const-string v6, "Java releaseEncoder done"

    invoke-static {v5, v6}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    return-void
.end method

.method releaseOutputBuffer(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 914
    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 916
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    const/4 v1, 0x1

    .line 920
    :goto_0
    return v1

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "MediaCodecVideoEncoder"

    const-string v3, "releaseOutputBuffer failed"

    invoke-static {v2, v3, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
