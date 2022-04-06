.class public Lorg/webrtc/SurfaceTextureHelper;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTextureHelper"


# instance fields
.field private final eglBase:Lorg/webrtc/EglBase;

.field private final handler:Landroid/os/Handler;

.field private hasPendingTexture:Z

.field private isQuitting:Z

.field private volatile isTextureInUse:Z

.field private listener:Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;

.field private final oesTextureId:I

.field private pendingListener:Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;

.field final setListenerRunnable:Ljava/lang/Runnable;

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private yuvConverter:Lorg/webrtc/YuvConverter;


# direct methods
.method private constructor <init>(Lorg/webrtc/EglBase$Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "sharedContext"    # Lorg/webrtc/EglBase$Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v1, p0, Lorg/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 89
    iput-boolean v1, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    .line 90
    iput-boolean v1, p0, Lorg/webrtc/SurfaceTextureHelper;->isQuitting:Z

    .line 94
    new-instance v1, Lorg/webrtc/SurfaceTextureHelper$2;

    invoke-direct {v1, p0}, Lorg/webrtc/SurfaceTextureHelper$2;-><init>(Lorg/webrtc/SurfaceTextureHelper;)V

    iput-object v1, p0, Lorg/webrtc/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    .line 110
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 111
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SurfaceTextureHelper must be created on the handler thread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_0
    iput-object p2, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 115
    sget-object v1, Lorg/webrtc/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-static {p1, v1}, Lorg/webrtc/EglBase;->create(Lorg/webrtc/EglBase$Context;[I)Lorg/webrtc/EglBase;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/SurfaceTextureHelper;->eglBase:Lorg/webrtc/EglBase;

    .line 118
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/SurfaceTextureHelper;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v1}, Lorg/webrtc/EglBase;->createDummyPbufferSurface()V

    .line 119
    iget-object v1, p0, Lorg/webrtc/SurfaceTextureHelper;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v1}, Lorg/webrtc/EglBase;->makeCurrent()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    const v1, 0x8d65

    invoke-static {v1}, Lorg/webrtc/GlUtil;->generateTexture(I)I

    move-result v1

    iput v1, p0, Lorg/webrtc/SurfaceTextureHelper;->oesTextureId:I

    .line 128
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lorg/webrtc/SurfaceTextureHelper;->oesTextureId:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 129
    iget-object v1, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v2, Lorg/webrtc/SurfaceTextureHelper$$Lambda$0;

    invoke-direct {v2, p0}, Lorg/webrtc/SurfaceTextureHelper$$Lambda$0;-><init>(Lorg/webrtc/SurfaceTextureHelper;)V

    invoke-static {v1, v2, p2}, Lorg/webrtc/SurfaceTextureHelper;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 133
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lorg/webrtc/SurfaceTextureHelper;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v1}, Lorg/webrtc/EglBase;->release()V

    .line 123
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 124
    throw v0
.end method

.method synthetic constructor <init>(Lorg/webrtc/EglBase$Context;Landroid/os/Handler;Lorg/webrtc/SurfaceTextureHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/webrtc/EglBase$Context;
    .param p2, "x1"    # Landroid/os/Handler;
    .param p3, "x2"    # Lorg/webrtc/SurfaceTextureHelper$1;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/webrtc/SurfaceTextureHelper;-><init>(Lorg/webrtc/EglBase$Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/SurfaceTextureHelper;)Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/SurfaceTextureHelper;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->pendingListener:Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    return-object v0
.end method

.method static synthetic access$102(Lorg/webrtc/SurfaceTextureHelper;Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;)Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p1, "x1"    # Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/webrtc/SurfaceTextureHelper;->pendingListener:Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    return-object p1
.end method

.method static synthetic access$202(Lorg/webrtc/SurfaceTextureHelper;Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;)Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p1, "x1"    # Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/webrtc/SurfaceTextureHelper;->listener:Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    return-object p1
.end method

.method static synthetic access$300(Lorg/webrtc/SurfaceTextureHelper;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/SurfaceTextureHelper;

    .prologue
    .line 39
    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    return v0
.end method

.method static synthetic access$302(Lorg/webrtc/SurfaceTextureHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lorg/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    return p1
.end method

.method static synthetic access$400(Lorg/webrtc/SurfaceTextureHelper;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/SurfaceTextureHelper;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/webrtc/SurfaceTextureHelper;->updateTexImage()V

    return-void
.end method

.method static synthetic access$500(Lorg/webrtc/SurfaceTextureHelper;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/SurfaceTextureHelper;

    .prologue
    .line 39
    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    return v0
.end method

.method static synthetic access$502(Lorg/webrtc/SurfaceTextureHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    return p1
.end method

.method static synthetic access$600(Lorg/webrtc/SurfaceTextureHelper;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/SurfaceTextureHelper;

    .prologue
    .line 39
    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isQuitting:Z

    return v0
.end method

.method static synthetic access$602(Lorg/webrtc/SurfaceTextureHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lorg/webrtc/SurfaceTextureHelper;->isQuitting:Z

    return p1
.end method

.method static synthetic access$700(Lorg/webrtc/SurfaceTextureHelper;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/SurfaceTextureHelper;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/webrtc/SurfaceTextureHelper;->release()V

    return-void
.end method

.method static synthetic access$800(Lorg/webrtc/SurfaceTextureHelper;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/SurfaceTextureHelper;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/webrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    return-void
.end method

.method static synthetic access$900(Lorg/webrtc/SurfaceTextureHelper;)Lorg/webrtc/YuvConverter;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/SurfaceTextureHelper;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->yuvConverter:Lorg/webrtc/YuvConverter;

    return-object v0
.end method

.method static synthetic access$902(Lorg/webrtc/SurfaceTextureHelper;Lorg/webrtc/YuvConverter;)Lorg/webrtc/YuvConverter;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p1, "x1"    # Lorg/webrtc/YuvConverter;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/webrtc/SurfaceTextureHelper;->yuvConverter:Lorg/webrtc/YuvConverter;

    return-object p1
.end method

.method public static create(Ljava/lang/String;Lorg/webrtc/EglBase$Context;)Lorg/webrtc/SurfaceTextureHelper;
    .locals 3
    .param p0, "threadName"    # Ljava/lang/String;
    .param p1, "sharedContext"    # Lorg/webrtc/EglBase$Context;

    .prologue
    .line 58
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lorg/webrtc/SurfaceTextureHelper$1;

    invoke-direct {v2, p1, v0, p0}, Lorg/webrtc/SurfaceTextureHelper$1;-><init>(Lorg/webrtc/EglBase$Context;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lorg/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/webrtc/SurfaceTextureHelper;

    return-object v2
.end method

.method private release()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 279
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isQuitting:Z

    if-nez v0, :cond_2

    .line 283
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected release."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_2
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->yuvConverter:Lorg/webrtc/YuvConverter;

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->yuvConverter:Lorg/webrtc/YuvConverter;

    invoke-virtual {v0}, Lorg/webrtc/YuvConverter;->release()V

    .line 288
    :cond_3
    new-array v0, v3, [I

    iget v1, p0, Lorg/webrtc/SurfaceTextureHelper;->oesTextureId:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 289
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 290
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->release()V

    .line 291
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 292
    return-void
.end method

.method private static setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .locals 2
    .param p0, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p1, "listener"    # Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 139
    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    goto :goto_0
.end method

.method private tryDeliverTextureFrame()V
    .locals 5

    .prologue
    .line 261
    iget-object v3, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 262
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Wrong thread."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 264
    :cond_0
    iget-boolean v3, p0, Lorg/webrtc/SurfaceTextureHelper;->isQuitting:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lorg/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/webrtc/SurfaceTextureHelper;->listener:Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    if-nez v3, :cond_2

    .line 276
    :cond_1
    :goto_0
    return-void

    .line 267
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    .line 268
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 270
    invoke-direct {p0}, Lorg/webrtc/SurfaceTextureHelper;->updateTexImage()V

    .line 272
    const/16 v3, 0x10

    new-array v2, v3, [F

    .line 273
    .local v2, "transformMatrix":[F
    iget-object v3, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 274
    iget-object v3, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 275
    .local v0, "timestampNs":J
    iget-object v3, p0, Lorg/webrtc/SurfaceTextureHelper;->listener:Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    iget v4, p0, Lorg/webrtc/SurfaceTextureHelper;->oesTextureId:I

    invoke-interface {v3, v4, v2, v0, v1}, Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;->onTextureFrameAvailable(I[FJ)V

    goto :goto_0
.end method

.method private updateTexImage()V
    .locals 2

    .prologue
    .line 255
    sget-object v1, Lorg/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 257
    monitor-exit v1

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public createTextureBuffer(IILandroid/graphics/Matrix;)Lorg/webrtc/VideoFrame$TextureBuffer;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "transformMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 303
    new-instance v0, Lorg/webrtc/TextureBufferImpl;

    sget-object v3, Lorg/webrtc/VideoFrame$TextureBuffer$Type;->OES:Lorg/webrtc/VideoFrame$TextureBuffer$Type;

    iget v4, p0, Lorg/webrtc/SurfaceTextureHelper;->oesTextureId:I

    new-instance v7, Lorg/webrtc/SurfaceTextureHelper$7;

    invoke-direct {v7, p0}, Lorg/webrtc/SurfaceTextureHelper$7;-><init>(Lorg/webrtc/SurfaceTextureHelper;)V

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lorg/webrtc/TextureBufferImpl;-><init>(IILorg/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Lorg/webrtc/SurfaceTextureHelper;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "SurfaceTextureHelper"

    const-string v1, "dispose()"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/SurfaceTextureHelper$5;

    invoke-direct {v1, p0}, Lorg/webrtc/SurfaceTextureHelper$5;-><init>(Lorg/webrtc/SurfaceTextureHelper;)V

    invoke-static {v0, v1}, Lorg/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public isTextureInUse()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    return v0
.end method

.method final synthetic lambda$new$0$SurfaceTextureHelper(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 131
    invoke-direct {p0}, Lorg/webrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    .line 132
    return-void
.end method

.method public returnTextureFrame()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/SurfaceTextureHelper$4;

    invoke-direct {v1, p0}, Lorg/webrtc/SurfaceTextureHelper$4;-><init>(Lorg/webrtc/SurfaceTextureHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method

.method public startListening(Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .prologue
    .line 154
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->listener:Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->pendingListener:Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SurfaceTextureHelper listener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    iput-object p1, p0, Lorg/webrtc/SurfaceTextureHelper;->pendingListener:Lorg/webrtc/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 158
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/webrtc/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 166
    const-string v0, "SurfaceTextureHelper"

    const-string v1, "stopListening()"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/webrtc/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/SurfaceTextureHelper$3;

    invoke-direct {v1, p0}, Lorg/webrtc/SurfaceTextureHelper$3;-><init>(Lorg/webrtc/SurfaceTextureHelper;)V

    invoke-static {v0, v1}, Lorg/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method public textureToYUV(Ljava/nio/ByteBuffer;IIII[F)V
    .locals 9
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "stride"    # I
    .param p5, "textureId"    # I
    .param p6, "transformMatrix"    # [F

    .prologue
    .line 236
    iget v0, p0, Lorg/webrtc/SurfaceTextureHelper;->oesTextureId:I

    if-eq p5, v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "textureToByteBuffer called with unexpected textureId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    iget-object v8, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v0, Lorg/webrtc/SurfaceTextureHelper$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/webrtc/SurfaceTextureHelper$6;-><init>(Lorg/webrtc/SurfaceTextureHelper;Ljava/nio/ByteBuffer;IIII[F)V

    invoke-static {v8, v0}, Lorg/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method
