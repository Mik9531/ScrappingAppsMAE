.class public Lorg/webrtc/EglRenderer;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Lorg/webrtc/VideoRenderer$Callbacks;
.implements Lorg/webrtc/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/EglRenderer$EglSurfaceCreation;,
        Lorg/webrtc/EglRenderer$FrameListenerAndParams;,
        Lorg/webrtc/EglRenderer$FrameListener;
    }
.end annotation


# static fields
.field private static final LOG_INTERVAL_SEC:J = 0x4L

.field private static final MAX_SURFACE_CLEAR_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EglRenderer"


# instance fields
.field private bitmapTextureFramebuffer:Lorg/webrtc/GlTextureFrameBuffer;

.field private drawer:Lorg/webrtc/RendererCommon$GlDrawer;

.field private eglBase:Lorg/webrtc/EglBase;

.field private final eglSurfaceCreationRunnable:Lorg/webrtc/EglRenderer$EglSurfaceCreation;

.field private final fpsReductionLock:Ljava/lang/Object;

.field private final frameListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/webrtc/EglRenderer$FrameListenerAndParams;",
            ">;"
        }
    .end annotation
.end field

.field private final frameLock:Ljava/lang/Object;

.field private framesDropped:I

.field private framesReceived:I

.field private framesRendered:I

.field private final handlerLock:Ljava/lang/Object;

.field private layoutAspectRatio:F

.field private final layoutLock:Ljava/lang/Object;

.field private final logStatisticsRunnable:Ljava/lang/Runnable;

.field private minRenderPeriodNs:J

.field private mirror:Z

.field private final name:Ljava/lang/String;

.field private nextFrameTimeNs:J

.field private pendingFrame:Lorg/webrtc/VideoFrame;

.field private renderSwapBufferTimeNs:J

.field private renderThreadHandler:Landroid/os/Handler;

.field private renderTimeNs:J

.field private final statisticsLock:Ljava/lang/Object;

.field private statisticsStartTimeNs:J

.field private final yuvUploader:Lorg/webrtc/RendererCommon$YuvUploader;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Lorg/webrtc/RendererCommon$YuvUploader;

    invoke-direct {v0}, Lorg/webrtc/RendererCommon$YuvUploader;-><init>()V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->yuvUploader:Lorg/webrtc/RendererCommon$YuvUploader;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 131
    new-instance v0, Lorg/webrtc/EglRenderer$1;

    invoke-direct {v0, p0}, Lorg/webrtc/EglRenderer$1;-><init>(Lorg/webrtc/EglRenderer;)V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    .line 145
    new-instance v0, Lorg/webrtc/EglRenderer$EglSurfaceCreation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/webrtc/EglRenderer$EglSurfaceCreation;-><init>(Lorg/webrtc/EglRenderer;Lorg/webrtc/EglRenderer$1;)V

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/webrtc/EglRenderer$EglSurfaceCreation;

    .line 152
    iput-object p1, p0, Lorg/webrtc/EglRenderer;->name:Ljava/lang/String;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/EglRenderer;)Lorg/webrtc/EglBase;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    return-object v0
.end method

.method static synthetic access$100(Lorg/webrtc/EglRenderer;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/webrtc/EglRenderer;->logStatistics()V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/EglRenderer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lorg/webrtc/EglRenderer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lorg/webrtc/EglRenderer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private averageTimeAsString(JI)Ljava/lang/String;
    .locals 5
    .param p1, "sumTimeNs"    # J
    .param p3, "count"    # I

    .prologue
    .line 711
    if-gtz p3, :cond_0

    const-string v0, "NA"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p3

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u03bcs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private clearSurfaceOnRenderThread(FFFF)V
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 487
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    const-string v0, "clearSurface"

    invoke-direct {p0, v0}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 489
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 490
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 491
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->swapBuffers()V

    .line 493
    :cond_0
    return-void
.end method

.method private createEglSurfaceInternal(Ljava/lang/Object;)V
    .locals 1
    .param p1, "surface"    # Ljava/lang/Object;

    .prologue
    .line 205
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/webrtc/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v0, p1}, Lorg/webrtc/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/webrtc/EglRenderer$EglSurfaceCreation;

    invoke-direct {p0, v0}, Lorg/webrtc/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 735
    const-string v0, "EglRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/webrtc/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method private logStatistics()V
    .locals 12

    .prologue
    .line 715
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 716
    .local v0, "currentTimeNs":J
    iget-object v6, p0, Lorg/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 717
    :try_start_0
    iget-wide v8, p0, Lorg/webrtc/EglRenderer;->statisticsStartTimeNs:J

    sub-long v2, v0, v8

    .line 718
    .local v2, "elapsedTimeNs":J
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-gtz v5, :cond_0

    .line 719
    monitor-exit v6

    .line 732
    :goto_0
    return-void

    .line 721
    :cond_0
    iget v5, p0, Lorg/webrtc/EglRenderer;->framesRendered:I

    int-to-long v8, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v5, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    mul-long/2addr v8, v10

    long-to-float v5, v8

    long-to-float v7, v2

    div-float v4, v5, v7

    .line 722
    .local v4, "renderFps":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duration: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ms. Frames received: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lorg/webrtc/EglRenderer;->framesReceived:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ". Dropped: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lorg/webrtc/EglRenderer;->framesDropped:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ". Rendered: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lorg/webrtc/EglRenderer;->framesRendered:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ". Render fps: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%.1f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 726
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ". Average render time: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, Lorg/webrtc/EglRenderer;->renderTimeNs:J

    iget v7, p0, Lorg/webrtc/EglRenderer;->framesRendered:I

    .line 727
    invoke-direct {p0, v8, v9, v7}, Lorg/webrtc/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ". Average swapBuffer time: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, Lorg/webrtc/EglRenderer;->renderSwapBufferTimeNs:J

    iget v7, p0, Lorg/webrtc/EglRenderer;->framesRendered:I

    .line 729
    invoke-direct {p0, v8, v9, v7}, Lorg/webrtc/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 722
    invoke-direct {p0, v5}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 730
    invoke-direct {p0, v0, v1}, Lorg/webrtc/EglRenderer;->resetStatistics(J)V

    .line 731
    monitor-exit v6

    goto/16 :goto_0

    .end local v2    # "elapsedTimeNs":J
    .end local v4    # "renderFps":F
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private notifyCallbacks(Lorg/webrtc/VideoFrame;Z[IZ)V
    .locals 17
    .param p1, "frame"    # Lorg/webrtc/VideoFrame;
    .param p2, "isYuvBuffer"    # Z
    .param p3, "yuvTextures"    # [I
    .param p4, "wasRendered"    # Z

    .prologue
    .line 646
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    :cond_0
    return-void

    .line 649
    :cond_1
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 650
    .local v14, "drawMatrix":Landroid/graphics/Matrix;
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v14, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 651
    if-eqz p2, :cond_2

    .line 652
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v14, v1, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 653
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v14, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 654
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/webrtc/EglRenderer;->mirror:Z

    if-eqz v1, :cond_3

    .line 655
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v14, v1, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 656
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v14, v1, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 657
    const/high16 v1, -0x41000000    # -0.5f

    const/high16 v3, -0x41000000    # -0.5f

    invoke-virtual {v14, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 659
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 660
    .local v15, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/webrtc/EglRenderer$FrameListenerAndParams;>;"
    :cond_4
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/webrtc/EglRenderer$FrameListenerAndParams;

    .line 662
    .local v16, "listenerAndParams":Lorg/webrtc/EglRenderer$FrameListenerAndParams;
    if-nez p4, :cond_5

    move-object/from16 v0, v16

    iget-boolean v1, v0, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->applyFpsReduction:Z

    if-nez v1, :cond_4

    .line 665
    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    .line 667
    move-object/from16 v0, v16

    iget v1, v0, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->scale:F

    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v8, v1

    .line 668
    .local v8, "scaledWidth":I
    move-object/from16 v0, v16

    iget v1, v0, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->scale:F

    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v9, v1

    .line 670
    .local v9, "scaledHeight":I
    if-eqz v8, :cond_6

    if-nez v9, :cond_7

    .line 671
    :cond_6
    move-object/from16 v0, v16

    iget-object v1, v0, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->listener:Lorg/webrtc/EglRenderer$FrameListener;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/webrtc/EglRenderer$FrameListener;->onFrame(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 675
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/GlTextureFrameBuffer;

    if-nez v1, :cond_8

    .line 676
    new-instance v1, Lorg/webrtc/GlTextureFrameBuffer;

    const/16 v3, 0x1908

    invoke-direct {v1, v3}, Lorg/webrtc/GlTextureFrameBuffer;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/GlTextureFrameBuffer;

    .line 678
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v1, v8, v9}, Lorg/webrtc/GlTextureFrameBuffer;->setSize(II)V

    .line 680
    const v1, 0x8d40

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v3}, Lorg/webrtc/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 681
    const v1, 0x8d40

    const v3, 0x8ce0

    const/16 v4, 0xde1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/GlTextureFrameBuffer;

    .line 682
    invoke-virtual {v5}, Lorg/webrtc/GlTextureFrameBuffer;->getTextureId()I

    move-result v5

    const/4 v6, 0x0

    .line 681
    invoke-static {v1, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 684
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 685
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 686
    if-eqz p2, :cond_9

    .line 687
    move-object/from16 v0, v16

    iget-object v1, v0, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    .line 688
    invoke-static {v14}, Lorg/webrtc/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v3

    .line 689
    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p3

    .line 687
    invoke-interface/range {v1 .. v9}, Lorg/webrtc/RendererCommon$GlDrawer;->drawYuv([I[FIIIIII)V

    .line 696
    :goto_1
    mul-int v1, v8, v9

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 697
    .local v12, "bitmapBuffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v8, v9}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 698
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    invoke-static/range {v6 .. v12}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 701
    const v1, 0x8d40

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 702
    const-string v1, "EglRenderer.notifyCallbacks"

    invoke-static {v1}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 704
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 705
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v13, v12}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 706
    move-object/from16 v0, v16

    iget-object v1, v0, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->listener:Lorg/webrtc/EglRenderer$FrameListener;

    invoke-interface {v1, v13}, Lorg/webrtc/EglRenderer$FrameListener;->onFrame(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 691
    .end local v12    # "bitmapBuffer":Ljava/nio/ByteBuffer;
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v2

    check-cast v2, Lorg/webrtc/VideoFrame$TextureBuffer;

    .line 692
    .local v2, "textureBuffer":Lorg/webrtc/VideoFrame$TextureBuffer;
    move-object/from16 v0, v16

    iget-object v1, v0, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    .line 693
    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v14

    .line 692
    invoke-static/range {v1 .. v9}, Lorg/webrtc/RendererCommon;->drawTexture(Lorg/webrtc/RendererCommon$GlDrawer;Lorg/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    goto :goto_1
.end method

.method private postToRenderThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 479
    iget-object v1, p0, Lorg/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 480
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 483
    :cond_0
    monitor-exit v1

    .line 484
    return-void

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private renderFrameOnRenderThread()V
    .locals 36

    .prologue
    .line 520
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/webrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v6

    .line 521
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoFrame;

    if-nez v4, :cond_0

    .line 522
    monitor-exit v6

    .line 642
    :goto_0
    return-void

    .line 524
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoFrame;

    move-object/from16 v22, v0

    .line 525
    .local v22, "frame":Lorg/webrtc/VideoFrame;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoFrame;

    .line 526
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v4}, Lorg/webrtc/EglBase;->hasSurface()Z

    move-result v4

    if-nez v4, :cond_2

    .line 528
    :cond_1
    const-string v4, "Dropping frame - No surface"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {v22 .. v22}, Lorg/webrtc/VideoFrame;->release()V

    goto :goto_0

    .line 526
    .end local v22    # "frame":Lorg/webrtc/VideoFrame;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 534
    .restart local v22    # "frame":Lorg/webrtc/VideoFrame;
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/webrtc/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    monitor-enter v6

    .line 535
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/webrtc/EglRenderer;->minRenderPeriodNs:J

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v4, v12, v14

    if-nez v4, :cond_9

    .line 537
    const/16 v29, 0x0

    .line 553
    .local v29, "shouldRenderFrame":Z
    :goto_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 555
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v32

    .line 557
    .local v32, "startTimeNs":J
    invoke-virtual/range {v22 .. v22}, Lorg/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v22 .. v22}, Lorg/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v23, v4, v6

    .line 559
    .local v23, "frameAspectRatio":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/webrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v6

    .line 560
    :try_start_3
    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/EglRenderer;->layoutAspectRatio:F

    const/4 v9, 0x0

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lorg/webrtc/EglRenderer;->layoutAspectRatio:F

    move/from16 v19, v0

    .line 561
    .local v19, "drawnAspectRatio":F
    :goto_2
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 563
    invoke-virtual/range {v22 .. v22}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v18

    .line 565
    .local v18, "buffer":Lorg/webrtc/VideoFrame$Buffer;
    move-object/from16 v0, v18

    instance-of v4, v0, Lorg/webrtc/VideoFrame$TextureBuffer;

    if-eqz v4, :cond_d

    .line 566
    const/16 v24, 0x0

    .line 573
    .local v24, "isYuvBuffer":Z
    :goto_3
    const/16 v30, 0x0

    .line 574
    .local v30, "shouldUploadYuvTextures":Z
    if-eqz v24, :cond_5

    .line 575
    move/from16 v30, v29

    .line 578
    if-nez v30, :cond_5

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/webrtc/EglRenderer$FrameListenerAndParams;

    .line 580
    .local v25, "listenerAndParams":Lorg/webrtc/EglRenderer$FrameListenerAndParams;
    move-object/from16 v0, v25

    iget v6, v0, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->scale:F

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_3

    if-nez v29, :cond_4

    move-object/from16 v0, v25

    iget-boolean v6, v0, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->applyFpsReduction:Z

    if-nez v6, :cond_3

    .line 582
    :cond_4
    const/16 v30, 0x1

    .line 588
    .end local v25    # "listenerAndParams":Lorg/webrtc/EglRenderer$FrameListenerAndParams;
    :cond_5
    if-eqz v30, :cond_e

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/webrtc/EglRenderer;->yuvUploader:Lorg/webrtc/RendererCommon$YuvUploader;

    move-object/from16 v4, v18

    check-cast v4, Lorg/webrtc/VideoFrame$I420Buffer;

    .line 589
    invoke-virtual {v6, v4}, Lorg/webrtc/RendererCommon$YuvUploader;->uploadFromBuffer(Lorg/webrtc/VideoFrame$I420Buffer;)[I

    move-result-object v5

    .line 595
    .local v5, "yuvTextures":[I
    :goto_4
    cmpl-float v4, v23, v19

    if-lez v4, :cond_f

    .line 596
    div-float v27, v19, v23

    .line 597
    .local v27, "scaleX":F
    const/high16 v28, 0x3f800000    # 1.0f

    .line 603
    .local v28, "scaleY":F
    :goto_5
    invoke-virtual/range {v22 .. v22}, Lorg/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v27

    float-to-int v7, v4

    .line 604
    .local v7, "drawnFrameWidth":I
    invoke-virtual/range {v22 .. v22}, Lorg/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v28

    float-to-int v8, v4

    .line 606
    .local v8, "drawnFrameHeight":I
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 607
    .local v11, "drawMatrix":Landroid/graphics/Matrix;
    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v11, v4, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 608
    if-eqz v24, :cond_6

    .line 609
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v11, v4, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 610
    :cond_6
    invoke-virtual/range {v22 .. v22}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v11, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 611
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/webrtc/EglRenderer;->mirror:Z

    if-eqz v4, :cond_7

    .line 612
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v11, v4, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 613
    :cond_7
    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 614
    const/high16 v4, -0x41000000    # -0.5f

    const/high16 v6, -0x41000000    # -0.5f

    invoke-virtual {v11, v4, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 616
    if-eqz v29, :cond_8

    .line 617
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-static {v4, v6, v9, v12}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 618
    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 619
    if-eqz v24, :cond_10

    .line 620
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/EglRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    .line 621
    invoke-static {v11}, Lorg/webrtc/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    .line 622
    invoke-virtual {v12}, Lorg/webrtc/EglBase;->surfaceWidth()I

    move-result v11

    .end local v11    # "drawMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v12}, Lorg/webrtc/EglBase;->surfaceHeight()I

    move-result v12

    .line 620
    invoke-interface/range {v4 .. v12}, Lorg/webrtc/RendererCommon$GlDrawer;->drawYuv([I[FIIIIII)V

    .line 629
    :goto_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v34

    .line 630
    .local v34, "swapBuffersStartTimeNs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v4}, Lorg/webrtc/EglBase;->swapBuffers()V

    .line 632
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    .line 633
    .local v20, "currentTimeNs":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 634
    :try_start_4
    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/EglRenderer;->framesRendered:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/webrtc/EglRenderer;->framesRendered:I

    .line 635
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/webrtc/EglRenderer;->renderTimeNs:J

    sub-long v14, v20, v32

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/webrtc/EglRenderer;->renderTimeNs:J

    .line 636
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/webrtc/EglRenderer;->renderSwapBufferTimeNs:J

    sub-long v14, v20, v34

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/webrtc/EglRenderer;->renderSwapBufferTimeNs:J

    .line 637
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 640
    .end local v20    # "currentTimeNs":J
    .end local v34    # "swapBuffersStartTimeNs":J
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/webrtc/EglRenderer;->notifyCallbacks(Lorg/webrtc/VideoFrame;Z[IZ)V

    .line 641
    invoke-interface/range {v18 .. v18}, Lorg/webrtc/VideoFrame$Buffer;->release()V

    goto/16 :goto_0

    .line 538
    .end local v5    # "yuvTextures":[I
    .end local v7    # "drawnFrameWidth":I
    .end local v8    # "drawnFrameHeight":I
    .end local v18    # "buffer":Lorg/webrtc/VideoFrame$Buffer;
    .end local v19    # "drawnAspectRatio":F
    .end local v23    # "frameAspectRatio":F
    .end local v24    # "isYuvBuffer":Z
    .end local v27    # "scaleX":F
    .end local v28    # "scaleY":F
    .end local v29    # "shouldRenderFrame":Z
    .end local v30    # "shouldUploadYuvTextures":Z
    .end local v32    # "startTimeNs":J
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/webrtc/EglRenderer;->minRenderPeriodNs:J

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-gtz v4, :cond_a

    .line 540
    const/16 v29, 0x1

    .restart local v29    # "shouldRenderFrame":Z
    goto/16 :goto_1

    .line 542
    .end local v29    # "shouldRenderFrame":Z
    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    .line 543
    .restart local v20    # "currentTimeNs":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/webrtc/EglRenderer;->nextFrameTimeNs:J

    cmp-long v4, v20, v12

    if-gez v4, :cond_b

    .line 544
    const-string v4, "Skipping frame rendering - fps reduction is active."

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 545
    const/16 v29, 0x0

    .restart local v29    # "shouldRenderFrame":Z
    goto/16 :goto_1

    .line 547
    .end local v29    # "shouldRenderFrame":Z
    :cond_b
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/webrtc/EglRenderer;->nextFrameTimeNs:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/webrtc/EglRenderer;->minRenderPeriodNs:J

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/webrtc/EglRenderer;->nextFrameTimeNs:J

    .line 549
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/webrtc/EglRenderer;->nextFrameTimeNs:J

    move-wide/from16 v0, v20

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/webrtc/EglRenderer;->nextFrameTimeNs:J

    .line 550
    const/16 v29, 0x1

    .restart local v29    # "shouldRenderFrame":Z
    goto/16 :goto_1

    .line 553
    .end local v20    # "currentTimeNs":J
    .end local v29    # "shouldRenderFrame":Z
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .restart local v23    # "frameAspectRatio":F
    .restart local v29    # "shouldRenderFrame":Z
    .restart local v32    # "startTimeNs":J
    :cond_c
    move/from16 v19, v23

    .line 560
    goto/16 :goto_2

    .line 561
    :catchall_2
    move-exception v4

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v4

    .line 568
    .restart local v18    # "buffer":Lorg/webrtc/VideoFrame$Buffer;
    .restart local v19    # "drawnAspectRatio":F
    :cond_d
    const/16 v24, 0x1

    .line 569
    .restart local v24    # "isYuvBuffer":Z
    move-object/from16 v26, v18

    .line 570
    .local v26, "oldBuffer":Lorg/webrtc/VideoFrame$Buffer;
    invoke-interface/range {v18 .. v18}, Lorg/webrtc/VideoFrame$Buffer;->toI420()Lorg/webrtc/VideoFrame$I420Buffer;

    move-result-object v18

    .line 571
    invoke-interface/range {v26 .. v26}, Lorg/webrtc/VideoFrame$Buffer;->release()V

    goto/16 :goto_3

    .line 589
    .end local v26    # "oldBuffer":Lorg/webrtc/VideoFrame$Buffer;
    .restart local v30    # "shouldUploadYuvTextures":Z
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 599
    .restart local v5    # "yuvTextures":[I
    :cond_f
    const/high16 v27, 0x3f800000    # 1.0f

    .line 600
    .restart local v27    # "scaleX":F
    div-float v28, v23, v19

    .restart local v28    # "scaleY":F
    goto/16 :goto_5

    .restart local v7    # "drawnFrameWidth":I
    .restart local v8    # "drawnFrameHeight":I
    .restart local v11    # "drawMatrix":Landroid/graphics/Matrix;
    :cond_10
    move-object/from16 v10, v18

    .line 624
    check-cast v10, Lorg/webrtc/VideoFrame$TextureBuffer;

    .line 625
    .local v10, "textureBuffer":Lorg/webrtc/VideoFrame$TextureBuffer;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/webrtc/EglRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    .line 626
    invoke-virtual {v4}, Lorg/webrtc/EglBase;->surfaceWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v4}, Lorg/webrtc/EglBase;->surfaceHeight()I

    move-result v17

    move v12, v7

    move v13, v8

    .line 625
    invoke-static/range {v9 .. v17}, Lorg/webrtc/RendererCommon;->drawTexture(Lorg/webrtc/RendererCommon$GlDrawer;Lorg/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    goto/16 :goto_6

    .line 637
    .end local v10    # "textureBuffer":Lorg/webrtc/VideoFrame$TextureBuffer;
    .end local v11    # "drawMatrix":Landroid/graphics/Matrix;
    .restart local v20    # "currentTimeNs":J
    .restart local v34    # "swapBuffersStartTimeNs":J
    :catchall_3
    move-exception v4

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v4
.end method

.method private resetStatistics(J)V
    .locals 5
    .param p1, "currentTimeNs"    # J

    .prologue
    .line 267
    iget-object v1, p0, Lorg/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_0
    iput-wide p1, p0, Lorg/webrtc/EglRenderer;->statisticsStartTimeNs:J

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/EglRenderer;->framesReceived:I

    .line 270
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/EglRenderer;->framesDropped:I

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/EglRenderer;->framesRendered:I

    .line 272
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/webrtc/EglRenderer;->renderTimeNs:J

    .line 273
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/webrtc/EglRenderer;->renderSwapBufferTimeNs:J

    .line 274
    monitor-exit v1

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addFrameListener(Lorg/webrtc/EglRenderer$FrameListener;F)V
    .locals 2
    .param p1, "listener"    # Lorg/webrtc/EglRenderer$FrameListener;
    .param p2, "scale"    # F

    .prologue
    .line 354
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/webrtc/EglRenderer;->addFrameListener(Lorg/webrtc/EglRenderer$FrameListener;FLorg/webrtc/RendererCommon$GlDrawer;Z)V

    .line 355
    return-void
.end method

.method public addFrameListener(Lorg/webrtc/EglRenderer$FrameListener;FLorg/webrtc/RendererCommon$GlDrawer;)V
    .locals 1
    .param p1, "listener"    # Lorg/webrtc/EglRenderer$FrameListener;
    .param p2, "scale"    # F
    .param p3, "drawerParam"    # Lorg/webrtc/RendererCommon$GlDrawer;

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/webrtc/EglRenderer;->addFrameListener(Lorg/webrtc/EglRenderer$FrameListener;FLorg/webrtc/RendererCommon$GlDrawer;Z)V

    .line 369
    return-void
.end method

.method public addFrameListener(Lorg/webrtc/EglRenderer$FrameListener;FLorg/webrtc/RendererCommon$GlDrawer;Z)V
    .locals 6
    .param p1, "listener"    # Lorg/webrtc/EglRenderer$FrameListener;
    .param p2, "scale"    # F
    .param p3, "drawerParam"    # Lorg/webrtc/RendererCommon$GlDrawer;
    .param p4, "applyFpsReduction"    # Z

    .prologue
    .line 384
    new-instance v0, Lorg/webrtc/EglRenderer$$Lambda$3;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/webrtc/EglRenderer$$Lambda$3;-><init>(Lorg/webrtc/EglRenderer;Lorg/webrtc/RendererCommon$GlDrawer;Lorg/webrtc/EglRenderer$FrameListener;FZ)V

    invoke-direct {p0, v0}, Lorg/webrtc/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 389
    return-void
.end method

.method final bridge synthetic bridge$lambda$0$EglRenderer()V
    .locals 0

    invoke-direct {p0}, Lorg/webrtc/EglRenderer;->renderFrameOnRenderThread()V

    return-void
.end method

.method public clearImage()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 499
    invoke-virtual {p0, v0, v0, v0, v0}, Lorg/webrtc/EglRenderer;->clearImage(FFFF)V

    .line 500
    return-void
.end method

.method public clearImage(FFFF)V
    .locals 8
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 506
    iget-object v6, p0, Lorg/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 507
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 508
    monitor-exit v6

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v7, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v0, Lorg/webrtc/EglRenderer$$Lambda$7;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/webrtc/EglRenderer$$Lambda$7;-><init>(Lorg/webrtc/EglRenderer;FFFF)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 511
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createEglSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lorg/webrtc/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public createEglSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lorg/webrtc/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public disableFpsReduction()V
    .locals 1

    .prologue
    .line 337
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-virtual {p0, v0}, Lorg/webrtc/EglRenderer;->setFpsReduction(F)V

    .line 338
    return-void
.end method

.method public init(Lorg/webrtc/EglBase$Context;[ILorg/webrtc/RendererCommon$GlDrawer;)V
    .locals 10
    .param p1, "sharedContext"    # Lorg/webrtc/EglBase$Context;
    .param p2, "configAttributes"    # [I
    .param p3, "drawer"    # Lorg/webrtc/RendererCommon$GlDrawer;

    .prologue
    .line 163
    iget-object v4, p0, Lorg/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 164
    :try_start_0
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 165
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/webrtc/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Already initialized"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 193
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 167
    :cond_0
    :try_start_1
    const-string v3, "Initializing EglRenderer"

    invoke-direct {p0, v3}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 168
    iput-object p3, p0, Lorg/webrtc/EglRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    .line 170
    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/webrtc/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "EglRenderer"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 171
    .local v2, "renderThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 172
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 176
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v5, Lorg/webrtc/EglRenderer$$Lambda$0;

    invoke-direct {v5, p0, p1, p2}, Lorg/webrtc/EglRenderer$$Lambda$0;-><init>(Lorg/webrtc/EglRenderer;Lorg/webrtc/EglBase$Context;[I)V

    invoke-static {v3, v5}, Lorg/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 188
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v5, p0, Lorg/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/webrtc/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 190
    .local v0, "currentTimeNs":J
    invoke-direct {p0, v0, v1}, Lorg/webrtc/EglRenderer;->resetStatistics(J)V

    .line 191
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v5, p0, Lorg/webrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x4

    .line 192
    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 191
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    return-void
.end method

.method final synthetic lambda$addFrameListener$3$EglRenderer(Lorg/webrtc/RendererCommon$GlDrawer;Lorg/webrtc/EglRenderer$FrameListener;FZ)V
    .locals 3
    .param p1, "drawerParam"    # Lorg/webrtc/RendererCommon$GlDrawer;
    .param p2, "listener"    # Lorg/webrtc/EglRenderer$FrameListener;
    .param p3, "scale"    # F
    .param p4, "applyFpsReduction"    # Z

    .prologue
    .line 385
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/webrtc/EglRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    .line 386
    .local v0, "listenerDrawer":Lorg/webrtc/RendererCommon$GlDrawer;
    :goto_0
    iget-object v1, p0, Lorg/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    new-instance v2, Lorg/webrtc/EglRenderer$FrameListenerAndParams;

    invoke-direct {v2, p2, p3, v0, p4}, Lorg/webrtc/EglRenderer$FrameListenerAndParams;-><init>(Lorg/webrtc/EglRenderer$FrameListener;FLorg/webrtc/RendererCommon$GlDrawer;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    return-void

    .end local v0    # "listenerDrawer":Lorg/webrtc/RendererCommon$GlDrawer;
    :cond_0
    move-object v0, p1

    .line 385
    goto :goto_0
.end method

.method final synthetic lambda$clearImage$6$EglRenderer(FFFF)V
    .locals 0
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 510
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/webrtc/EglRenderer;->clearSurfaceOnRenderThread(FFFF)V

    return-void
.end method

.method final synthetic lambda$init$0$EglRenderer(Lorg/webrtc/EglBase$Context;[I)V
    .locals 1
    .param p1, "sharedContext"    # Lorg/webrtc/EglBase$Context;
    .param p2, "configAttributes"    # [I

    .prologue
    .line 180
    if-nez p1, :cond_0

    .line 181
    const-string v0, "EglBase10.create context"

    invoke-direct {p0, v0}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 182
    invoke-static {p2}, Lorg/webrtc/EglBase;->createEgl10([I)Lorg/webrtc/EglBase;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v0, "EglBase.create shared context"

    invoke-direct {p0, v0}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 185
    invoke-static {p1, p2}, Lorg/webrtc/EglBase;->create(Lorg/webrtc/EglBase$Context;[I)Lorg/webrtc/EglBase;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    goto :goto_0
.end method

.method final synthetic lambda$release$1$EglRenderer(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2
    .param p1, "eglCleanupBarrier"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    invoke-interface {v0}, Lorg/webrtc/RendererCommon$GlDrawer;->release()V

    .line 228
    iput-object v1, p0, Lorg/webrtc/EglRenderer;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    .line 230
    :cond_0
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->yuvUploader:Lorg/webrtc/RendererCommon$YuvUploader;

    invoke-virtual {v0}, Lorg/webrtc/RendererCommon$YuvUploader;->release()V

    .line 231
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/GlTextureFrameBuffer;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lorg/webrtc/GlTextureFrameBuffer;->release()V

    .line 233
    iput-object v1, p0, Lorg/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lorg/webrtc/GlTextureFrameBuffer;

    .line 235
    :cond_1
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_2

    .line 236
    const-string v0, "eglBase detach and release."

    invoke-direct {p0, v0}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->detachCurrent()V

    .line 238
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->release()V

    .line 239
    iput-object v1, p0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    .line 241
    :cond_2
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 242
    return-void
.end method

.method final synthetic lambda$release$2$EglRenderer(Landroid/os/Looper;)V
    .locals 1
    .param p1, "renderLooper"    # Landroid/os/Looper;

    .prologue
    .line 246
    const-string v0, "Quitting render thread."

    invoke-direct {p0, v0}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 248
    return-void
.end method

.method final synthetic lambda$releaseEglSurface$5$EglRenderer(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "completionCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 463
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->detachCurrent()V

    .line 465
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->releaseSurface()V

    .line 467
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 468
    return-void
.end method

.method final synthetic lambda$removeFrameListener$4$EglRenderer(Ljava/util/concurrent/CountDownLatch;Lorg/webrtc/EglRenderer$FrameListener;)V
    .locals 2
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "listener"    # Lorg/webrtc/EglRenderer$FrameListener;

    .prologue
    .line 404
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 405
    iget-object v1, p0, Lorg/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 406
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/webrtc/EglRenderer$FrameListenerAndParams;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/EglRenderer$FrameListenerAndParams;

    iget-object v1, v1, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->listener:Lorg/webrtc/EglRenderer$FrameListener;

    if-ne v1, p2, :cond_0

    .line 408
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 411
    :cond_1
    return-void
.end method

.method public onFrame(Lorg/webrtc/VideoFrame;)V
    .locals 5
    .param p1, "frame"    # Lorg/webrtc/VideoFrame;

    .prologue
    .line 426
    iget-object v2, p0, Lorg/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 427
    :try_start_0
    iget v1, p0, Lorg/webrtc/EglRenderer;->framesReceived:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/webrtc/EglRenderer;->framesReceived:I

    .line 428
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    iget-object v2, p0, Lorg/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 431
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 432
    const-string v1, "Dropping frame - Not initialized or already released."

    invoke-direct {p0, v1}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 433
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 428
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 435
    :cond_1
    :try_start_3
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 436
    :try_start_4
    iget-object v1, p0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoFrame;

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 437
    .local v0, "dropOldFrame":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 438
    iget-object v1, p0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoFrame;

    invoke-virtual {v1}, Lorg/webrtc/VideoFrame;->release()V

    .line 440
    :cond_2
    iput-object p1, p0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoFrame;

    .line 441
    iget-object v1, p0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoFrame;

    invoke-virtual {v1}, Lorg/webrtc/VideoFrame;->retain()V

    .line 442
    iget-object v1, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v4, Lorg/webrtc/EglRenderer$$Lambda$5;

    invoke-direct {v4, p0}, Lorg/webrtc/EglRenderer$$Lambda$5;-><init>(Lorg/webrtc/EglRenderer;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 443
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 444
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 445
    if-eqz v0, :cond_0

    .line 446
    iget-object v2, p0, Lorg/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 447
    :try_start_6
    iget v1, p0, Lorg/webrtc/EglRenderer;->framesDropped:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/webrtc/EglRenderer;->framesDropped:I

    .line 448
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 436
    .end local v0    # "dropOldFrame":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 443
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1

    .line 444
    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/webrtc/EglRenderer;->setFpsReduction(F)V

    .line 342
    return-void
.end method

.method public printStackTrace()V
    .locals 7

    .prologue
    .line 278
    iget-object v4, p0, Lorg/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 279
    :try_start_0
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .line 281
    .local v1, "renderThread":Ljava/lang/Thread;
    :goto_0
    if-eqz v1, :cond_1

    .line 282
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 283
    .local v0, "renderStackTrace":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    if-lez v3, :cond_1

    .line 284
    const-string v3, "EglRenderer stack trace:"

    invoke-direct {p0, v3}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 285
    array-length v5, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v2, v0, v3

    .line 286
    .local v2, "traceElem":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 285
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 279
    .end local v0    # "renderStackTrace":[Ljava/lang/StackTraceElement;
    .end local v1    # "renderThread":Ljava/lang/Thread;
    .end local v2    # "traceElem":Ljava/lang/StackTraceElement;
    :cond_0
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 280
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    goto :goto_0

    .line 290
    .restart local v1    # "renderThread":Ljava/lang/Thread;
    :cond_1
    monitor-exit v4

    .line 291
    return-void

    .line 290
    .end local v1    # "renderThread":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public release()V
    .locals 5

    .prologue
    .line 216
    const-string v2, "Releasing."

    invoke-direct {p0, v2}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 217
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 218
    .local v0, "eglCleanupBarrier":Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 219
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 220
    const-string v2, "Already released"

    invoke-direct {p0, v2}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 221
    monitor-exit v3

    .line 261
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v2, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v4, p0, Lorg/webrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    iget-object v2, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v4, Lorg/webrtc/EglRenderer$$Lambda$1;

    invoke-direct {v4, p0, v0}, Lorg/webrtc/EglRenderer$$Lambda$1;-><init>(Lorg/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 243
    iget-object v2, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 245
    .local v1, "renderLooper":Landroid/os/Looper;
    iget-object v2, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v4, Lorg/webrtc/EglRenderer$$Lambda$2;

    invoke-direct {v4, p0, v1}, Lorg/webrtc/EglRenderer$$Lambda$2;-><init>(Lorg/webrtc/EglRenderer;Landroid/os/Looper;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 251
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-static {v0}, Lorg/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 254
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v3

    .line 255
    :try_start_1
    iget-object v2, p0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoFrame;

    if-eqz v2, :cond_1

    .line 256
    iget-object v2, p0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoFrame;

    invoke-virtual {v2}, Lorg/webrtc/VideoFrame;->release()V

    .line 257
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/webrtc/EglRenderer;->pendingFrame:Lorg/webrtc/VideoFrame;

    .line 259
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    const-string v2, "Releasing done."

    invoke-direct {p0, v2}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    .end local v1    # "renderLooper":Landroid/os/Looper;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 259
    .restart local v1    # "renderLooper":Landroid/os/Looper;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public releaseEglSurface(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "completionCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 458
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/webrtc/EglRenderer$EglSurfaceCreation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/webrtc/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 459
    iget-object v1, p0, Lorg/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 460
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lorg/webrtc/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 462
    iget-object v0, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v2, Lorg/webrtc/EglRenderer$$Lambda$6;

    invoke-direct {v2, p0, p1}, Lorg/webrtc/EglRenderer$$Lambda$6;-><init>(Lorg/webrtc/EglRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 469
    monitor-exit v1

    .line 473
    :goto_0
    return-void

    .line 471
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 471
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeFrameListener(Lorg/webrtc/EglRenderer$FrameListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/webrtc/EglRenderer$FrameListener;

    .prologue
    .line 399
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 400
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "removeFrameListener must not be called on the render thread."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 403
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lorg/webrtc/EglRenderer$$Lambda$4;

    invoke-direct {v1, p0, v0, p1}, Lorg/webrtc/EglRenderer$$Lambda$4;-><init>(Lorg/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lorg/webrtc/EglRenderer$FrameListener;)V

    invoke-direct {p0, v1}, Lorg/webrtc/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 412
    invoke-static {v0}, Lorg/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 413
    return-void
.end method

.method public renderFrame(Lorg/webrtc/VideoRenderer$I420Frame;)V
    .locals 1
    .param p1, "frame"    # Lorg/webrtc/VideoRenderer$I420Frame;

    .prologue
    .line 418
    invoke-virtual {p1}, Lorg/webrtc/VideoRenderer$I420Frame;->toVideoFrame()Lorg/webrtc/VideoFrame;

    move-result-object v0

    .line 419
    .local v0, "videoFrame":Lorg/webrtc/VideoFrame;
    invoke-virtual {p0, v0}, Lorg/webrtc/EglRenderer;->onFrame(Lorg/webrtc/VideoFrame;)V

    .line 420
    invoke-virtual {v0}, Lorg/webrtc/VideoFrame;->release()V

    .line 421
    return-void
.end method

.method public setFpsReduction(F)V
    .locals 6
    .param p1, "fps"    # F

    .prologue
    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFpsReduction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 322
    iget-object v3, p0, Lorg/webrtc/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 323
    :try_start_0
    iget-wide v0, p0, Lorg/webrtc/EglRenderer;->minRenderPeriodNs:J

    .line 324
    .local v0, "previousRenderPeriodNs":J
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    .line 325
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lorg/webrtc/EglRenderer;->minRenderPeriodNs:J

    .line 329
    :goto_0
    iget-wide v4, p0, Lorg/webrtc/EglRenderer;->minRenderPeriodNs:J

    cmp-long v2, v4, v0

    if-eqz v2, :cond_0

    .line 331
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/webrtc/EglRenderer;->nextFrameTimeNs:J

    .line 333
    :cond_0
    monitor-exit v3

    .line 334
    return-void

    .line 327
    :cond_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    long-to-float v2, v4

    div-float/2addr v2, p1

    float-to-long v4, v2

    iput-wide v4, p0, Lorg/webrtc/EglRenderer;->minRenderPeriodNs:J

    goto :goto_0

    .line 333
    .end local v0    # "previousRenderPeriodNs":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setLayoutAspectRatio(F)V
    .locals 2
    .param p1, "layoutAspectRatio"    # F

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLayoutAspectRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lorg/webrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_0
    iput p1, p0, Lorg/webrtc/EglRenderer;->layoutAspectRatio:F

    .line 311
    monitor-exit v1

    .line 312
    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMirror(Z)V
    .locals 2
    .param p1, "mirror"    # Z

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMirror: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lorg/webrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 299
    :try_start_0
    iput-boolean p1, p0, Lorg/webrtc/EglRenderer;->mirror:Z

    .line 300
    monitor-exit v1

    .line 301
    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
