.class public Lorg/webrtc/HardwareVideoDecoderFactory;
.super Ljava/lang/Object;
.source "HardwareVideoDecoderFactory.java"

# interfaces
.implements Lorg/webrtc/VideoDecoderFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "HardwareVideoDecoderFactory"


# instance fields
.field private final sharedContext:Lorg/webrtc/EglBase$Context;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/webrtc/HardwareVideoDecoderFactory;-><init>(Lorg/webrtc/EglBase$Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/webrtc/EglBase$Context;)V
    .locals 0
    .param p1, "sharedContext"    # Lorg/webrtc/EglBase$Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/webrtc/HardwareVideoDecoderFactory;->sharedContext:Lorg/webrtc/EglBase$Context;

    .line 43
    return-void
.end method

.method private findCodecForType(Lorg/webrtc/VideoCodecType;)Landroid/media/MediaCodecInfo;
    .locals 6
    .param p1, "type"    # Lorg/webrtc/VideoCodecType;

    .prologue
    const/4 v3, 0x0

    .line 62
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_0

    move-object v2, v3

    .line 82
    :goto_0
    return-object v2

    .line 66
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 67
    const/4 v2, 0x0

    .line 69
    .local v2, "info":Landroid/media/MediaCodecInfo;
    :try_start_0
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 74
    :goto_2
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "HardwareVideoDecoderFactory"

    const-string v5, "Cannot retrieve encoder codec info"

    invoke-static {v4, v5, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 78
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-direct {p0, v2, p1}, Lorg/webrtc/HardwareVideoDecoderFactory;->isSupportedCodec(Landroid/media/MediaCodecInfo;Lorg/webrtc/VideoCodecType;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v2    # "info":Landroid/media/MediaCodecInfo;
    :cond_3
    move-object v2, v3

    .line 82
    goto :goto_0
.end method

.method private isHardwareSupported(Landroid/media/MediaCodecInfo;Lorg/webrtc/VideoCodecType;)Z
    .locals 5
    .param p1, "info"    # Landroid/media/MediaCodecInfo;
    .param p2, "type"    # Lorg/webrtc/VideoCodecType;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "name":Ljava/lang/String;
    sget-object v3, Lorg/webrtc/HardwareVideoDecoderFactory$1;->$SwitchMap$org$webrtc$VideoCodecType:[I

    invoke-virtual {p2}, Lorg/webrtc/VideoCodecType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 104
    :pswitch_0
    const-string v3, "OMX.qcom."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "OMX.Intel."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "OMX.Exynos."

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "OMX.Nvidia."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 108
    :pswitch_1
    const-string v3, "OMX.qcom."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "OMX.Exynos."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 111
    :pswitch_2
    const-string v3, "OMX.qcom."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "OMX.Intel."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "OMX.Exynos."

    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isSupportedCodec(Landroid/media/MediaCodecInfo;Lorg/webrtc/VideoCodecType;)Z
    .locals 3
    .param p1, "info"    # Landroid/media/MediaCodecInfo;
    .param p2, "type"    # Lorg/webrtc/VideoCodecType;

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-static {p1, p2}, Lorg/webrtc/MediaCodecUtils;->codecSupportsType(Landroid/media/MediaCodecInfo;Lorg/webrtc/VideoCodecType;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    sget-object v1, Lorg/webrtc/MediaCodecUtils;->DECODER_COLOR_FORMATS:[I

    .line 92
    invoke-virtual {p2}, Lorg/webrtc/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    .line 91
    invoke-static {v1, v2}, Lorg/webrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-direct {p0, p1, p2}, Lorg/webrtc/HardwareVideoDecoderFactory;->isHardwareSupported(Landroid/media/MediaCodecInfo;Lorg/webrtc/VideoCodecType;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public createDecoder(Ljava/lang/String;)Lorg/webrtc/VideoDecoder;
    .locals 7
    .param p1, "codecType"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p1}, Lorg/webrtc/VideoCodecType;->valueOf(Ljava/lang/String;)Lorg/webrtc/VideoCodecType;

    move-result-object v2

    .line 48
    .local v2, "type":Lorg/webrtc/VideoCodecType;
    invoke-direct {p0, v2}, Lorg/webrtc/HardwareVideoDecoderFactory;->findCodecForType(Lorg/webrtc/VideoCodecType;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 50
    .local v1, "info":Landroid/media/MediaCodecInfo;
    if-nez v1, :cond_0

    .line 51
    const/4 v3, 0x0

    .line 55
    :goto_0
    return-object v3

    .line 54
    :cond_0
    invoke-virtual {v2}, Lorg/webrtc/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 55
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    new-instance v3, Lorg/webrtc/HardwareVideoDecoder;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/webrtc/MediaCodecUtils;->DECODER_COLOR_FORMATS:[I

    .line 56
    invoke-static {v5, v0}, Lorg/webrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lorg/webrtc/HardwareVideoDecoderFactory;->sharedContext:Lorg/webrtc/EglBase$Context;

    invoke-direct {v3, v4, v2, v5, v6}, Lorg/webrtc/HardwareVideoDecoder;-><init>(Ljava/lang/String;Lorg/webrtc/VideoCodecType;ILorg/webrtc/EglBase$Context;)V

    goto :goto_0
.end method
