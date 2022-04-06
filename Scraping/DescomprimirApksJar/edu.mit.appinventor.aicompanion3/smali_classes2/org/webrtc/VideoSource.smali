.class public Lorg/webrtc/VideoSource;
.super Lorg/webrtc/MediaSource;
.source "VideoSource.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeSource"    # J

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lorg/webrtc/MediaSource;-><init>(J)V

    .line 19
    return-void
.end method

.method private static native nativeAdaptOutputFormat(JIII)V
.end method


# virtual methods
.method public adaptOutputFormat(III)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fps"    # I

    .prologue
    .line 28
    iget-wide v0, p0, Lorg/webrtc/VideoSource;->nativeSource:J

    invoke-static {v0, v1, p1, p2, p3}, Lorg/webrtc/VideoSource;->nativeAdaptOutputFormat(JIII)V

    .line 29
    return-void
.end method
