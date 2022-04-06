.class public Lorg/webrtc/SurfaceViewRenderer;
.super Landroid/view/SurfaceView;
.source "SurfaceViewRenderer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lorg/webrtc/VideoRenderer$Callbacks;
.implements Lorg/webrtc/VideoSink;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceViewRenderer"


# instance fields
.field private final eglRenderer:Lorg/webrtc/EglRenderer;

.field private enableFixedSize:Z

.field private frameRotation:I

.field private isFirstFrameRendered:Z

.field private isRenderingPaused:Z

.field private final layoutLock:Ljava/lang/Object;

.field private rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

.field private final resourceName:Ljava/lang/String;

.field private rotatedFrameHeight:I

.field private rotatedFrameWidth:I

.field private surfaceHeight:I

.field private surfaceWidth:I

.field private final videoLayoutMeasure:Lorg/webrtc/RendererCommon$VideoLayoutMeasure;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;

    invoke-direct {v0}, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->videoLayoutMeasure:Lorg/webrtc/RendererCommon$VideoLayoutMeasure;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/SurfaceViewRenderer;->isRenderingPaused:Z

    .line 60
    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    .line 61
    new-instance v0, Lorg/webrtc/EglRenderer;

    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/webrtc/EglRenderer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/EglRenderer;

    .line 62
    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;

    invoke-direct {v0}, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->videoLayoutMeasure:Lorg/webrtc/RendererCommon$VideoLayoutMeasure;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/SurfaceViewRenderer;->isRenderingPaused:Z

    .line 70
    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    .line 71
    new-instance v0, Lorg/webrtc/EglRenderer;

    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/webrtc/EglRenderer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/EglRenderer;

    .line 72
    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/SurfaceViewRenderer;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/SurfaceViewRenderer;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->updateSurfaceSize()V

    return-void
.end method

.method private getResourceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 302
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 304
    :goto_0
    return-object v1

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, ""

    goto :goto_0
.end method

.method private logD(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 383
    const-string v0, "SurfaceViewRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/webrtc/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method private updateFrameDimensionsAndReportEvents(Lorg/webrtc/VideoFrame;)V
    .locals 5
    .param p1, "frame"    # Lorg/webrtc/VideoFrame;

    .prologue
    .line 351
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 352
    :try_start_0
    iget-boolean v0, p0, Lorg/webrtc/SurfaceViewRenderer;->isRenderingPaused:Z

    if-eqz v0, :cond_0

    .line 353
    monitor-exit v1

    .line 380
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-boolean v0, p0, Lorg/webrtc/SurfaceViewRenderer;->isFirstFrameRendered:Z

    if-nez v0, :cond_1

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/SurfaceViewRenderer;->isFirstFrameRendered:Z

    .line 357
    const-string v0, "Reporting first rendered frame."

    invoke-direct {p0, v0}, Lorg/webrtc/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    invoke-interface {v0}, Lorg/webrtc/RendererCommon$RendererEvents;->onFirstFrameRendered()V

    .line 362
    :cond_1
    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 363
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameRotation:I

    .line 364
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 365
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting frame resolution changed to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 366
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with rotation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-direct {p0, v0}, Lorg/webrtc/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_3

    .line 368
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    .line 369
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v3

    invoke-interface {v3}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result v4

    .line 368
    invoke-interface {v0, v2, v3, v4}, Lorg/webrtc/RendererCommon$RendererEvents;->onFrameResolutionChanged(III)V

    .line 371
    :cond_3
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v0

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    .line 372
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v0

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 373
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result v0

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameRotation:I

    .line 374
    new-instance v0, Lorg/webrtc/SurfaceViewRenderer$$Lambda$0;

    invoke-direct {v0, p0}, Lorg/webrtc/SurfaceViewRenderer$$Lambda$0;-><init>(Lorg/webrtc/SurfaceViewRenderer;)V

    invoke-virtual {p0, v0}, Lorg/webrtc/SurfaceViewRenderer;->post(Ljava/lang/Runnable;)Z

    .line 379
    :cond_4
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateFrameDimensionsAndReportEvents(Lorg/webrtc/VideoRenderer$I420Frame;)V
    .locals 5
    .param p1, "frame"    # Lorg/webrtc/VideoRenderer$I420Frame;

    .prologue
    .line 317
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-boolean v0, p0, Lorg/webrtc/SurfaceViewRenderer;->isRenderingPaused:Z

    if-eqz v0, :cond_0

    .line 319
    monitor-exit v1

    .line 347
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-boolean v0, p0, Lorg/webrtc/SurfaceViewRenderer;->isFirstFrameRendered:Z

    if-nez v0, :cond_1

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/SurfaceViewRenderer;->isFirstFrameRendered:Z

    .line 323
    const-string v0, "Reporting first rendered frame."

    invoke-direct {p0, v0}, Lorg/webrtc/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    invoke-interface {v0}, Lorg/webrtc/RendererCommon$RendererEvents;->onFirstFrameRendered()V

    .line 328
    :cond_1
    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    invoke-virtual {p1}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    invoke-virtual {p1}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameRotation:I

    iget v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    if-eq v0, v2, :cond_4

    .line 330
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting frame resolution changed to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with rotation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_3

    .line 333
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    iget v2, p1, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    iget v3, p1, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    iget v4, p1, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    invoke-interface {v0, v2, v3, v4}, Lorg/webrtc/RendererCommon$RendererEvents;->onFrameResolutionChanged(III)V

    .line 335
    :cond_3
    invoke-virtual {p1}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v0

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    .line 336
    invoke-virtual {p1}, Lorg/webrtc/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v0

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 337
    iget v0, p1, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameRotation:I

    .line 338
    new-instance v0, Lorg/webrtc/SurfaceViewRenderer$2;

    invoke-direct {v0, p0}, Lorg/webrtc/SurfaceViewRenderer$2;-><init>(Lorg/webrtc/SurfaceViewRenderer;)V

    invoke-virtual {p0, v0}, Lorg/webrtc/SurfaceViewRenderer;->post(Ljava/lang/Runnable;)Z

    .line 346
    :cond_4
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateSurfaceSize()V
    .locals 9

    .prologue
    .line 239
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 240
    iget-object v7, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v7

    .line 241
    :try_start_0
    iget-boolean v6, p0, Lorg/webrtc/SurfaceViewRenderer;->enableFixedSize:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    if-eqz v6, :cond_3

    iget v6, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getWidth()I

    move-result v6

    if-eqz v6, :cond_3

    .line 242
    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getHeight()I

    move-result v6

    if-eqz v6, :cond_3

    .line 243
    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v4, v6, v8

    .line 244
    .local v4, "layoutAspectRatio":F
    iget v6, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    int-to-float v6, v6

    iget v8, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    int-to-float v8, v8

    div-float v2, v6, v8

    .line 247
    .local v2, "frameAspectRatio":F
    cmpl-float v6, v2, v4

    if-lez v6, :cond_2

    .line 248
    iget v6, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v1, v6

    .line 249
    .local v1, "drawnFrameWidth":I
    iget v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 255
    .local v0, "drawnFrameHeight":I
    :goto_0
    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getWidth()I

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 256
    .local v5, "width":I
    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getHeight()I

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 257
    .local v3, "height":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSurfaceSize. Layout size: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getWidth()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getHeight()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", frame size: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", requested surface size: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", old surface size: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceWidth:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceHeight:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/webrtc/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    .line 260
    iget v6, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceWidth:I

    if-ne v5, v6, :cond_0

    iget v6, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceHeight:I

    if-eq v3, v6, :cond_1

    .line 261
    :cond_0
    iput v5, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceWidth:I

    .line 262
    iput v3, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceHeight:I

    .line 263
    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 269
    .end local v0    # "drawnFrameHeight":I
    .end local v1    # "drawnFrameWidth":I
    .end local v2    # "frameAspectRatio":F
    .end local v3    # "height":I
    .end local v4    # "layoutAspectRatio":F
    .end local v5    # "width":I
    :cond_1
    :goto_1
    monitor-exit v7

    .line 270
    return-void

    .line 251
    .restart local v2    # "frameAspectRatio":F
    .restart local v4    # "layoutAspectRatio":F
    :cond_2
    iget v1, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    .line 252
    .restart local v1    # "drawnFrameWidth":I
    iget v6, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    float-to-int v0, v6

    .restart local v0    # "drawnFrameHeight":I
    goto/16 :goto_0

    .line 266
    .end local v0    # "drawnFrameHeight":I
    .end local v1    # "drawnFrameWidth":I
    .end local v2    # "frameAspectRatio":F
    .end local v4    # "layoutAspectRatio":F
    :cond_3
    const/4 v6, 0x0

    iput v6, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceHeight:I

    iput v6, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceWidth:I

    .line 267
    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    goto :goto_1

    .line 269
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method


# virtual methods
.method public addFrameListener(Lorg/webrtc/EglRenderer$FrameListener;F)V
    .locals 1
    .param p1, "listener"    # Lorg/webrtc/EglRenderer$FrameListener;
    .param p2, "scale"    # F

    .prologue
    .line 137
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/EglRenderer;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/EglRenderer;->addFrameListener(Lorg/webrtc/EglRenderer$FrameListener;F)V

    .line 138
    return-void
.end method

.method public addFrameListener(Lorg/webrtc/EglRenderer$FrameListener;FLorg/webrtc/RendererCommon$GlDrawer;)V
    .locals 1
    .param p1, "listener"    # Lorg/webrtc/EglRenderer$FrameListener;
    .param p2, "scale"    # F
    .param p3, "drawerParam"    # Lorg/webrtc/RendererCommon$GlDrawer;

    .prologue
    .line 124
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/EglRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/webrtc/EglRenderer;->addFrameListener(Lorg/webrtc/EglRenderer$FrameListener;FLorg/webrtc/RendererCommon$GlDrawer;)V

    .line 125
    return-void
.end method

.method public clearImage()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/EglRenderer;

    invoke-virtual {v0}, Lorg/webrtc/EglRenderer;->clearImage()V

    .line 313
    return-void
.end method

.method public disableFpsReduction()V
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/webrtc/SurfaceViewRenderer;->isRenderingPaused:Z

    .line 193
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/EglRenderer;

    invoke-virtual {v0}, Lorg/webrtc/EglRenderer;->disableFpsReduction()V

    .line 195
    return-void

    .line 193
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V
    .locals 2
    .param p1, "sharedContext"    # Lorg/webrtc/EglBase$Context;
    .param p2, "rendererEvents"    # Lorg/webrtc/RendererCommon$RendererEvents;

    .prologue
    .line 80
    sget-object v0, Lorg/webrtc/EglBase;->CONFIG_PLAIN:[I

    new-instance v1, Lorg/webrtc/GlRectDrawer;

    invoke-direct {v1}, Lorg/webrtc/GlRectDrawer;-><init>()V

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/webrtc/SurfaceViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;[ILorg/webrtc/RendererCommon$GlDrawer;)V

    .line 81
    return-void
.end method

.method public init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;[ILorg/webrtc/RendererCommon$GlDrawer;)V
    .locals 2
    .param p1, "sharedContext"    # Lorg/webrtc/EglBase$Context;
    .param p2, "rendererEvents"    # Lorg/webrtc/RendererCommon$RendererEvents;
    .param p3, "configAttributes"    # [I
    .param p4, "drawer"    # Lorg/webrtc/RendererCommon$GlDrawer;

    .prologue
    .line 92
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 93
    iput-object p2, p0, Lorg/webrtc/SurfaceViewRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    .line 94
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/webrtc/SurfaceViewRenderer;->isFirstFrameRendered:Z

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->frameRotation:I

    .line 99
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/EglRenderer;

    invoke-virtual {v0, p1, p3, p4}, Lorg/webrtc/EglRenderer;->init(Lorg/webrtc/EglBase$Context;[ILorg/webrtc/RendererCommon$GlDrawer;)V

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final synthetic lambda$updateFrameDimensionsAndReportEvents$0$SurfaceViewRenderer()V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->updateSurfaceSize()V

    .line 376
    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->requestLayout()V

    .line 377
    return-void
.end method

.method public onFrame(Lorg/webrtc/VideoFrame;)V
    .locals 1
    .param p1, "frame"    # Lorg/webrtc/VideoFrame;

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lorg/webrtc/SurfaceViewRenderer;->updateFrameDimensionsAndReportEvents(Lorg/webrtc/VideoFrame;)V

    .line 215
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/EglRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/EglRenderer;->onFrame(Lorg/webrtc/VideoFrame;)V

    .line 216
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 233
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 234
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/EglRenderer;

    sub-int v1, p4, p2

    int-to-float v1, v1

    sub-int v2, p5, p3

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/webrtc/EglRenderer;->setLayoutAspectRatio(F)V

    .line 235
    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->updateSurfaceSize()V

    .line 236
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 221
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 223
    iget-object v2, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v2

    .line 224
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->videoLayoutMeasure:Lorg/webrtc/RendererCommon$VideoLayoutMeasure;

    iget v3, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    iget v4, p0, Lorg/webrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 225
    invoke-virtual {v1, p1, p2, v3, v4}, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->measure(IIII)Landroid/graphics/Point;

    move-result-object v0

    .line 226
    .local v0, "size":Landroid/graphics/Point;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Lorg/webrtc/SurfaceViewRenderer;->setMeasuredDimension(II)V

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMeasure(). New size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/webrtc/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    .line 229
    return-void

    .line 226
    .end local v0    # "size":Landroid/graphics/Point;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public pauseVideo()V
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/webrtc/SurfaceViewRenderer;->isRenderingPaused:Z

    .line 200
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/EglRenderer;

    invoke-virtual {v0}, Lorg/webrtc/EglRenderer;->pauseVideo()V

    .line 202
    return-void

    .line 200
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/EglRenderer;

    invoke-virtual {v0}, Lorg/webrtc/EglRenderer;->release()V

    .line 111
    return-void
.end method

.method public removeFrameListener(Lorg/webrtc/EglRenderer$FrameListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/webrtc/EglRenderer$FrameListener;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/EglRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/EglRenderer;->removeFrameListener(Lorg/webrtc/EglRenderer$FrameListener;)V

    .line 142
    return-void
.end method

.method public renderFrame(Lorg/webrtc/VideoRenderer$I420Frame;)V
    .locals 1
    .param p1, "frame"    # Lorg/webrtc/VideoRenderer$I420Frame;

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lorg/webrtc/SurfaceViewRenderer;->updateFrameDimensionsAndReportEvents(Lorg/webrtc/VideoRenderer$I420Frame;)V

    .line 208
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/EglRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/EglRenderer;->renderFrame(Lorg/webrtc/VideoRenderer$I420Frame;)V

    .line 209
    return-void
.end method

.method public setEnableHardwareScaler(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 149
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 150
    iput-boolean p1, p0, Lorg/webrtc/SurfaceViewRenderer;->enableFixedSize:Z

    .line 151
    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->updateSurfaceSize()V

    .line 152
    return-void
.end method

.method public setFpsReduction(F)V
    .locals 2
    .param p1, "fps"    # F

    .prologue
    .line 184
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iput-boolean v0, p0, Lorg/webrtc/SurfaceViewRenderer;->isRenderingPaused:Z

    .line 186
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/EglRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/EglRenderer;->setFpsReduction(F)V

    .line 188
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMirror(Z)V
    .locals 1
    .param p1, "mirror"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/EglRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/EglRenderer;->setMirror(Z)V

    .line 159
    return-void
.end method

.method public setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V
    .locals 1
    .param p1, "scalingType"    # Lorg/webrtc/RendererCommon$ScalingType;

    .prologue
    .line 165
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 166
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->videoLayoutMeasure:Lorg/webrtc/RendererCommon$VideoLayoutMeasure;

    invoke-virtual {v0, p1}, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V

    .line 167
    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->requestLayout()V

    .line 168
    return-void
.end method

.method public setScalingType(Lorg/webrtc/RendererCommon$ScalingType;Lorg/webrtc/RendererCommon$ScalingType;)V
    .locals 1
    .param p1, "scalingTypeMatchOrientation"    # Lorg/webrtc/RendererCommon$ScalingType;
    .param p2, "scalingTypeMismatchOrientation"    # Lorg/webrtc/RendererCommon$ScalingType;

    .prologue
    .line 172
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 173
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->videoLayoutMeasure:Lorg/webrtc/RendererCommon$VideoLayoutMeasure;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;Lorg/webrtc/RendererCommon$ScalingType;)V

    .line 174
    invoke-virtual {p0}, Lorg/webrtc/SurfaceViewRenderer;->requestLayout()V

    .line 175
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 296
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged: format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 275
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 276
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/EglRenderer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/webrtc/EglRenderer;->createEglSurface(Landroid/view/Surface;)V

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceHeight:I

    iput v0, p0, Lorg/webrtc/SurfaceViewRenderer;->surfaceWidth:I

    .line 278
    invoke-direct {p0}, Lorg/webrtc/SurfaceViewRenderer;->updateSurfaceSize()V

    .line 279
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 283
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 284
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 285
    .local v0, "completionLatch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lorg/webrtc/SurfaceViewRenderer;->eglRenderer:Lorg/webrtc/EglRenderer;

    new-instance v2, Lorg/webrtc/SurfaceViewRenderer$1;

    invoke-direct {v2, p0, v0}, Lorg/webrtc/SurfaceViewRenderer$1;-><init>(Lorg/webrtc/SurfaceViewRenderer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Lorg/webrtc/EglRenderer;->releaseEglSurface(Ljava/lang/Runnable;)V

    .line 291
    invoke-static {v0}, Lorg/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 292
    return-void
.end method
