.class public Lorg/webrtc/VideoRenderer;
.super Ljava/lang/Object;
.source "VideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/VideoRenderer$Callbacks;,
        Lorg/webrtc/VideoRenderer$I420Frame;
    }
.end annotation


# instance fields
.field nativeVideoRenderer:J


# direct methods
.method public constructor <init>(Lorg/webrtc/VideoRenderer$Callbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lorg/webrtc/VideoRenderer$Callbacks;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {p1}, Lorg/webrtc/VideoRenderer;->nativeWrapVideoRenderer(Lorg/webrtc/VideoRenderer$Callbacks;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/VideoRenderer;->nativeVideoRenderer:J

    .line 185
    return-void
.end method

.method private static native freeWrappedVideoRenderer(J)V
.end method

.method public static native nativeCopyPlane(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;I)V
.end method

.method private static native nativeWrapVideoRenderer(Lorg/webrtc/VideoRenderer$Callbacks;)J
.end method

.method private static native releaseNativeFrame(J)V
.end method

.method public static renderFrameDone(Lorg/webrtc/VideoRenderer$I420Frame;)V
    .locals 4
    .param p0, "frame"    # Lorg/webrtc/VideoRenderer$I420Frame;

    .prologue
    const-wide/16 v2, 0x0

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->textureId:I

    .line 175
    invoke-static {p0}, Lorg/webrtc/VideoRenderer$I420Frame;->access$000(Lorg/webrtc/VideoRenderer$I420Frame;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 176
    invoke-static {p0}, Lorg/webrtc/VideoRenderer$I420Frame;->access$000(Lorg/webrtc/VideoRenderer$I420Frame;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/webrtc/VideoRenderer;->releaseNativeFrame(J)V

    .line 177
    invoke-static {p0, v2, v3}, Lorg/webrtc/VideoRenderer$I420Frame;->access$002(Lorg/webrtc/VideoRenderer$I420Frame;J)J

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 188
    iget-wide v0, p0, Lorg/webrtc/VideoRenderer;->nativeVideoRenderer:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-wide v0, p0, Lorg/webrtc/VideoRenderer;->nativeVideoRenderer:J

    invoke-static {v0, v1}, Lorg/webrtc/VideoRenderer;->freeWrappedVideoRenderer(J)V

    .line 194
    iput-wide v2, p0, Lorg/webrtc/VideoRenderer;->nativeVideoRenderer:J

    goto :goto_0
.end method
