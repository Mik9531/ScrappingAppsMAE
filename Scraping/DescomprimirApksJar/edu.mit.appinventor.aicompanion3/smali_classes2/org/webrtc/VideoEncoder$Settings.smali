.class public Lorg/webrtc/VideoEncoder$Settings;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public final automaticResizeOn:Z

.field public final height:I

.field public final maxFramerate:I

.field public final numberOfCores:I

.field public final startBitrate:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIIIZ)V
    .locals 0
    .param p1, "numberOfCores"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "startBitrate"    # I
    .param p5, "maxFramerate"    # I
    .param p6, "automaticResizeOn"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/webrtc/VideoEncoder$Settings;->numberOfCores:I

    .line 30
    iput p2, p0, Lorg/webrtc/VideoEncoder$Settings;->width:I

    .line 31
    iput p3, p0, Lorg/webrtc/VideoEncoder$Settings;->height:I

    .line 32
    iput p4, p0, Lorg/webrtc/VideoEncoder$Settings;->startBitrate:I

    .line 33
    iput p5, p0, Lorg/webrtc/VideoEncoder$Settings;->maxFramerate:I

    .line 34
    iput-boolean p6, p0, Lorg/webrtc/VideoEncoder$Settings;->automaticResizeOn:Z

    .line 35
    return-void
.end method
