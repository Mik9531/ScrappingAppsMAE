.class public Lorg/webrtc/FileVideoCapturer;
.super Ljava/lang/Object;
.source "FileVideoCapturer.java"

# interfaces
.implements Lorg/webrtc/VideoCapturer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;,
        Lorg/webrtc/FileVideoCapturer$VideoReader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileVideoCapturer"


# instance fields
.field private capturerObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

.field private final tickTask:Ljava/util/TimerTask;

.field private final timer:Ljava/util/Timer;

.field private final videoReader:Lorg/webrtc/FileVideoCapturer$VideoReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "jingle_peerconnection_so"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "inputFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lorg/webrtc/FileVideoCapturer;->timer:Ljava/util/Timer;

    .line 147
    new-instance v1, Lorg/webrtc/FileVideoCapturer$1;

    invoke-direct {v1, p0}, Lorg/webrtc/FileVideoCapturer$1;-><init>(Lorg/webrtc/FileVideoCapturer;)V

    iput-object v1, p0, Lorg/webrtc/FileVideoCapturer;->tickTask:Ljava/util/TimerTask;

    .line 164
    :try_start_0
    new-instance v1, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;

    invoke-direct {v1, p1}, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/webrtc/FileVideoCapturer;->videoReader:Lorg/webrtc/FileVideoCapturer$VideoReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "FileVideoCapturer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open video file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    throw v0
.end method

.method private getFrameHeight()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/webrtc/FileVideoCapturer;->videoReader:Lorg/webrtc/FileVideoCapturer$VideoReader;

    invoke-interface {v0}, Lorg/webrtc/FileVideoCapturer$VideoReader;->getFrameHeight()I

    move-result v0

    return v0
.end method

.method private getFrameWidth()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/webrtc/FileVideoCapturer;->videoReader:Lorg/webrtc/FileVideoCapturer$VideoReader;

    invoke-interface {v0}, Lorg/webrtc/FileVideoCapturer$VideoReader;->getFrameWidth()I

    move-result v0

    return v0
.end method

.method private getNextFrame()[B
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/webrtc/FileVideoCapturer;->videoReader:Lorg/webrtc/FileVideoCapturer$VideoReader;

    invoke-interface {v0}, Lorg/webrtc/FileVideoCapturer$VideoReader;->getNextFrame()[B

    move-result-object v0

    return-object v0
.end method

.method public static native nativeI420ToNV21([BII[B)V
.end method


# virtual methods
.method public changeCaptureFormat(III)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "framerate"    # I

    .prologue
    .line 202
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/webrtc/FileVideoCapturer;->videoReader:Lorg/webrtc/FileVideoCapturer$VideoReader;

    invoke-interface {v0}, Lorg/webrtc/FileVideoCapturer$VideoReader;->close()V

    .line 207
    return-void
.end method

.method public initialize(Lorg/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lorg/webrtc/VideoCapturer$CapturerObserver;)V
    .locals 0
    .param p1, "surfaceTextureHelper"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "capturerObserver"    # Lorg/webrtc/VideoCapturer$CapturerObserver;

    .prologue
    .line 186
    iput-object p3, p0, Lorg/webrtc/FileVideoCapturer;->capturerObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    .line 187
    return-void
.end method

.method public isScreencast()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public startCapture(III)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "framerate"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lorg/webrtc/FileVideoCapturer;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/webrtc/FileVideoCapturer;->tickTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const/16 v4, 0x3e8

    div-int/2addr v4, p3

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 192
    return-void
.end method

.method public stopCapture()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lorg/webrtc/FileVideoCapturer;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 197
    return-void
.end method

.method public tick()V
    .locals 8

    .prologue
    .line 176
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 178
    .local v6, "captureTimeNs":J
    invoke-direct {p0}, Lorg/webrtc/FileVideoCapturer;->getNextFrame()[B

    move-result-object v2

    .line 179
    .local v2, "frameData":[B
    iget-object v1, p0, Lorg/webrtc/FileVideoCapturer;->capturerObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    .line 180
    invoke-direct {p0}, Lorg/webrtc/FileVideoCapturer;->getFrameWidth()I

    move-result v3

    invoke-direct {p0}, Lorg/webrtc/FileVideoCapturer;->getFrameHeight()I

    move-result v4

    const/4 v5, 0x0

    .line 179
    invoke-interface/range {v1 .. v7}, Lorg/webrtc/VideoCapturer$CapturerObserver;->onByteBufferFrameCaptured([BIIIJ)V

    .line 181
    return-void
.end method
