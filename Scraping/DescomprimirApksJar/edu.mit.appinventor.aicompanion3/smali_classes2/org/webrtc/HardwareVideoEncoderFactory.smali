.class public Lorg/webrtc/HardwareVideoEncoderFactory;
.super Ljava/lang/Object;
.source "HardwareVideoEncoderFactory.java"

# interfaces
.implements Lorg/webrtc/VideoEncoderFactory;


# static fields
.field private static final H264_CONSTRAINED_BASELINE_3_1:Ljava/lang/String; = "42001f"

.field private static final H264_CONSTRAINED_HIGH_3_1:Ljava/lang/String; = "640c1f"

.field private static final H264_FMTP_LEVEL_ASYMMETRY_ALLOWED:Ljava/lang/String; = "level-asymmetry-allowed"

.field private static final H264_FMTP_PACKETIZATION_MODE:Ljava/lang/String; = "packetization-mode"

.field private static final H264_FMTP_PROFILE_LEVEL_ID:Ljava/lang/String; = "profile-level-id"

.field private static final H264_HW_EXCEPTION_MODELS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final H264_LEVEL_3_1:Ljava/lang/String; = "1f"

.field private static final H264_PROFILE_CONSTRAINED_BASELINE:Ljava/lang/String; = "4200"

.field private static final H264_PROFILE_CONSTRAINED_HIGH:Ljava/lang/String; = "640c"

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_L_MS:I = 0x3a98

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_M_MS:I = 0x4e20

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_N_MS:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "HardwareVideoEncoderFactory"


# instance fields
.field private final enableH264HighProfile:Z

.field private final enableIntelVp8Encoder:Z

.field private final sharedContext:Lorg/webrtc/EglBase14$Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SAMSUNG-SGH-I337"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Nexus 7"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Nexus 4"

    aput-object v2, v0, v1

    .line 42
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/webrtc/HardwareVideoEncoderFactory;->H264_HW_EXCEPTION_MODELS:Ljava/util/List;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/webrtc/EglBase$Context;ZZ)V
    .locals 2
    .param p1, "sharedContext"    # Lorg/webrtc/EglBase$Context;
    .param p2, "enableIntelVp8Encoder"    # Z
    .param p3, "enableH264HighProfile"    # Z

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    instance-of v0, p1, Lorg/webrtc/EglBase14$Context;

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Lorg/webrtc/EglBase14$Context;

    .end local p1    # "sharedContext":Lorg/webrtc/EglBase$Context;
    iput-object p1, p0, Lorg/webrtc/HardwareVideoEncoderFactory;->sharedContext:Lorg/webrtc/EglBase14$Context;

    .line 71
    :goto_0
    iput-boolean p2, p0, Lorg/webrtc/HardwareVideoEncoderFactory;->enableIntelVp8Encoder:Z

    .line 72
    iput-boolean p3, p0, Lorg/webrtc/HardwareVideoEncoderFactory;->enableH264HighProfile:Z

    .line 73
    return-void

    .line 68
    .restart local p1    # "sharedContext":Lorg/webrtc/EglBase$Context;
    :cond_0
    const-string v0, "HardwareVideoEncoderFactory"

    const-string v1, "No shared EglBase.Context.  Encoders will not use texture mode."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/HardwareVideoEncoderFactory;->sharedContext:Lorg/webrtc/EglBase14$Context;

    goto :goto_0
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "enableIntelVp8Encoder"    # Z
    .param p2, "enableH264HighProfile"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/webrtc/HardwareVideoEncoderFactory;-><init>(Lorg/webrtc/EglBase$Context;ZZ)V

    .line 78
    return-void
.end method

.method private createBitrateAdjuster(Lorg/webrtc/VideoCodecType;Ljava/lang/String;)Lorg/webrtc/BitrateAdjuster;
    .locals 1
    .param p1, "type"    # Lorg/webrtc/VideoCodecType;
    .param p2, "codecName"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string v0, "OMX.Exynos."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    sget-object v0, Lorg/webrtc/VideoCodecType;->VP8:Lorg/webrtc/VideoCodecType;

    if-ne p1, v0, :cond_0

    .line 232
    new-instance v0, Lorg/webrtc/DynamicBitrateAdjuster;

    invoke-direct {v0}, Lorg/webrtc/DynamicBitrateAdjuster;-><init>()V

    .line 239
    :goto_0
    return-object v0

    .line 235
    :cond_0
    new-instance v0, Lorg/webrtc/FramerateBitrateAdjuster;

    invoke-direct {v0}, Lorg/webrtc/FramerateBitrateAdjuster;-><init>()V

    goto :goto_0

    .line 239
    :cond_1
    new-instance v0, Lorg/webrtc/BaseBitrateAdjuster;

    invoke-direct {v0}, Lorg/webrtc/BaseBitrateAdjuster;-><init>()V

    goto :goto_0
.end method

.method private findCodecForType(Lorg/webrtc/VideoCodecType;)Landroid/media/MediaCodecInfo;
    .locals 5
    .param p1, "type"    # Lorg/webrtc/VideoCodecType;

    .prologue
    .line 122
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 123
    const/4 v2, 0x0

    .line 125
    .local v2, "info":Landroid/media/MediaCodecInfo;
    :try_start_0
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 130
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v3

    if-nez v3, :cond_1

    .line 122
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "HardwareVideoEncoderFactory"

    const-string v4, "Cannot retrieve encoder codec info"

    invoke-static {v3, v4, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 134
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-direct {p0, v2, p1}, Lorg/webrtc/HardwareVideoEncoderFactory;->isSupportedCodec(Landroid/media/MediaCodecInfo;Lorg/webrtc/VideoCodecType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    .end local v2    # "info":Landroid/media/MediaCodecInfo;
    :goto_2
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getCodecProperties(Lorg/webrtc/VideoCodecType;Z)Ljava/util/Map;
    .locals 4
    .param p1, "type"    # Lorg/webrtc/VideoCodecType;
    .param p2, "highProfile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/webrtc/VideoCodecType;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    sget-object v1, Lorg/webrtc/HardwareVideoEncoderFactory$1;->$SwitchMap$org$webrtc$VideoCodecType:[I

    invoke-virtual {p1}, Lorg/webrtc/VideoCodecType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 259
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported codec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 257
    :goto_0
    return-object v0

    .line 252
    :pswitch_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "level-asymmetry-allowed"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v1, "packetization-mode"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v2, "profile-level-id"

    if-eqz p2, :cond_0

    const-string v1, "640c1f"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "42001f"

    goto :goto_1

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getForcedKeyFrameIntervalMs(Lorg/webrtc/VideoCodecType;Ljava/lang/String;)I
    .locals 4
    .param p1, "type"    # Lorg/webrtc/VideoCodecType;
    .param p2, "codecName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x3a98

    const/16 v3, 0x17

    .line 214
    sget-object v1, Lorg/webrtc/VideoCodecType;->VP8:Lorg/webrtc/VideoCodecType;

    if-ne p1, v1, :cond_3

    const-string v1, "OMX.qcom."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v1, v3, :cond_2

    .line 219
    const/16 v0, 0x4e20

    goto :goto_0

    .line 220
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v3, :cond_0

    .line 225
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getKeyFrameIntervalSec(Lorg/webrtc/VideoCodecType;)I
    .locals 3
    .param p1, "type"    # Lorg/webrtc/VideoCodecType;

    .prologue
    .line 203
    sget-object v0, Lorg/webrtc/HardwareVideoEncoderFactory$1;->$SwitchMap$org$webrtc$VideoCodecType:[I

    invoke-virtual {p1}, Lorg/webrtc/VideoCodecType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported VideoCodecType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :pswitch_0
    const/16 v0, 0x64

    .line 208
    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x14

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/media/MediaCodecInfo;

    .prologue
    .line 243
    iget-boolean v0, p0, Lorg/webrtc/HardwareVideoEncoderFactory;->enableH264HighProfile:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OMX.qcom."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHardwareSupportedInCurrentSdk(Landroid/media/MediaCodecInfo;Lorg/webrtc/VideoCodecType;)Z
    .locals 2
    .param p1, "info"    # Landroid/media/MediaCodecInfo;
    .param p2, "type"    # Lorg/webrtc/VideoCodecType;

    .prologue
    .line 160
    sget-object v0, Lorg/webrtc/HardwareVideoEncoderFactory$1;->$SwitchMap$org$webrtc$VideoCodecType:[I

    invoke-virtual {p2}, Lorg/webrtc/VideoCodecType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 168
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 162
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/webrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkVp8(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    goto :goto_0

    .line 164
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/webrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkVp9(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    goto :goto_0

    .line 166
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/webrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkH264(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isHardwareSupportedInCurrentSdkH264(Landroid/media/MediaCodecInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/media/MediaCodecInfo;

    .prologue
    const/4 v1, 0x0

    .line 191
    sget-object v2, Lorg/webrtc/HardwareVideoEncoderFactory;->H264_HW_EXCEPTION_MODELS:Ljava/util/List;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v1

    .line 194
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "name":Ljava/lang/String;
    const-string v2, "OMX.qcom."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_3

    :cond_2
    const-string v2, "OMX.Exynos."

    .line 198
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isHardwareSupportedInCurrentSdkVp8(Landroid/media/MediaCodecInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/media/MediaCodecInfo;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "name":Ljava/lang/String;
    const-string v1, "OMX.qcom."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_2

    :cond_0
    const-string v1, "OMX.Exynos."

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_2

    :cond_1
    const-string v1, "OMX.Intel."

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    iget-boolean v1, p0, Lorg/webrtc/HardwareVideoEncoderFactory;->enableIntelVp8Encoder:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 174
    :goto_0
    return v1

    .line 178
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isHardwareSupportedInCurrentSdkVp9(Landroid/media/MediaCodecInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/media/MediaCodecInfo;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "name":Ljava/lang/String;
    const-string v1, "OMX.qcom."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OMX.Exynos."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSupportedCodec(Landroid/media/MediaCodecInfo;Lorg/webrtc/VideoCodecType;)Z
    .locals 3
    .param p1, "info"    # Landroid/media/MediaCodecInfo;
    .param p2, "type"    # Lorg/webrtc/VideoCodecType;

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-static {p1, p2}, Lorg/webrtc/MediaCodecUtils;->codecSupportsType(Landroid/media/MediaCodecInfo;Lorg/webrtc/VideoCodecType;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 154
    :goto_0
    return v0

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoderFactory;->sharedContext:Lorg/webrtc/EglBase14$Context;

    if-nez v0, :cond_1

    sget-object v0, Lorg/webrtc/MediaCodecUtils;->ENCODER_COLOR_FORMATS:[I

    .line 150
    :goto_1
    invoke-virtual {p2}, Lorg/webrtc/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    .line 147
    invoke-static {v0, v2}, Lorg/webrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    .line 152
    goto :goto_0

    .line 147
    :cond_1
    sget-object v0, Lorg/webrtc/MediaCodecUtils;->TEXTURE_COLOR_FORMATS:[I

    goto :goto_1

    .line 154
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/webrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdk(Landroid/media/MediaCodecInfo;Lorg/webrtc/VideoCodecType;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public createEncoder(Lorg/webrtc/VideoCodecInfo;)Lorg/webrtc/VideoEncoder;
    .locals 10
    .param p1, "input"    # Lorg/webrtc/VideoCodecInfo;

    .prologue
    .line 82
    iget-object v0, p1, Lorg/webrtc/VideoCodecInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/webrtc/VideoCodecType;->valueOf(Ljava/lang/String;)Lorg/webrtc/VideoCodecType;

    move-result-object v2

    .line 83
    .local v2, "type":Lorg/webrtc/VideoCodecType;
    invoke-direct {p0, v2}, Lorg/webrtc/HardwareVideoEncoderFactory;->findCodecForType(Lorg/webrtc/VideoCodecType;)Landroid/media/MediaCodecInfo;

    move-result-object v8

    .line 85
    .local v8, "info":Landroid/media/MediaCodecInfo;
    if-nez v8, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    .line 89
    :cond_0
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "codecName":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/webrtc/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, "mime":Ljava/lang/String;
    iget-object v0, p0, Lorg/webrtc/HardwareVideoEncoderFactory;->sharedContext:Lorg/webrtc/EglBase14$Context;

    if-nez v0, :cond_1

    sget-object v0, Lorg/webrtc/MediaCodecUtils;->ENCODER_COLOR_FORMATS:[I

    .line 94
    :goto_1
    invoke-virtual {v8, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v4

    .line 91
    invoke-static {v0, v4}, Lorg/webrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 96
    .local v3, "colorFormat":I
    new-instance v0, Lorg/webrtc/HardwareVideoEncoder;

    invoke-direct {p0, v2}, Lorg/webrtc/HardwareVideoEncoderFactory;->getKeyFrameIntervalSec(Lorg/webrtc/VideoCodecType;)I

    move-result v4

    .line 97
    invoke-direct {p0, v2, v1}, Lorg/webrtc/HardwareVideoEncoderFactory;->getForcedKeyFrameIntervalMs(Lorg/webrtc/VideoCodecType;Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v2, v1}, Lorg/webrtc/HardwareVideoEncoderFactory;->createBitrateAdjuster(Lorg/webrtc/VideoCodecType;Ljava/lang/String;)Lorg/webrtc/BitrateAdjuster;

    move-result-object v6

    iget-object v7, p0, Lorg/webrtc/HardwareVideoEncoderFactory;->sharedContext:Lorg/webrtc/EglBase14$Context;

    invoke-direct/range {v0 .. v7}, Lorg/webrtc/HardwareVideoEncoder;-><init>(Ljava/lang/String;Lorg/webrtc/VideoCodecType;IIILorg/webrtc/BitrateAdjuster;Lorg/webrtc/EglBase14$Context;)V

    goto :goto_0

    .line 91
    .end local v3    # "colorFormat":I
    :cond_1
    sget-object v0, Lorg/webrtc/MediaCodecUtils;->TEXTURE_COLOR_FORMATS:[I

    goto :goto_1
.end method

.method public getSupportedCodecs()[Lorg/webrtc/VideoCodecInfo;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v2, "supportedCodecInfos":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/VideoCodecInfo;>;"
    const/4 v4, 0x3

    new-array v6, v4, [Lorg/webrtc/VideoCodecType;

    sget-object v4, Lorg/webrtc/VideoCodecType;->VP8:Lorg/webrtc/VideoCodecType;

    aput-object v4, v6, v5

    sget-object v4, Lorg/webrtc/VideoCodecType;->VP9:Lorg/webrtc/VideoCodecType;

    aput-object v4, v6, v10

    const/4 v4, 0x2

    sget-object v7, Lorg/webrtc/VideoCodecType;->H264:Lorg/webrtc/VideoCodecType;

    aput-object v7, v6, v4

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_2

    aget-object v3, v6, v4

    .line 108
    .local v3, "type":Lorg/webrtc/VideoCodecType;
    invoke-direct {p0, v3}, Lorg/webrtc/HardwareVideoEncoderFactory;->findCodecForType(Lorg/webrtc/VideoCodecType;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 109
    .local v0, "codec":Landroid/media/MediaCodecInfo;
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v3}, Lorg/webrtc/VideoCodecType;->name()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "name":Ljava/lang/String;
    sget-object v8, Lorg/webrtc/VideoCodecType;->H264:Lorg/webrtc/VideoCodecType;

    if-ne v3, v8, :cond_0

    invoke-direct {p0, v0}, Lorg/webrtc/HardwareVideoEncoderFactory;->isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 112
    new-instance v8, Lorg/webrtc/VideoCodecInfo;

    invoke-direct {p0, v3, v10}, Lorg/webrtc/HardwareVideoEncoderFactory;->getCodecProperties(Lorg/webrtc/VideoCodecType;Z)Ljava/util/Map;

    move-result-object v9

    invoke-direct {v8, v5, v1, v9}, Lorg/webrtc/VideoCodecInfo;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    new-instance v8, Lorg/webrtc/VideoCodecInfo;

    invoke-direct {p0, v3, v5}, Lorg/webrtc/HardwareVideoEncoderFactory;->getCodecProperties(Lorg/webrtc/VideoCodecType;Z)Ljava/util/Map;

    move-result-object v9

    invoke-direct {v8, v5, v1, v9}, Lorg/webrtc/VideoCodecInfo;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "codec":Landroid/media/MediaCodecInfo;
    .end local v3    # "type":Lorg/webrtc/VideoCodecType;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/webrtc/VideoCodecInfo;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/webrtc/VideoCodecInfo;

    return-object v4
.end method
