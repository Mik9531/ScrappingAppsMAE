.class Lorg/webrtc/EglRenderer$FrameListenerAndParams;
.super Ljava/lang/Object;
.source "EglRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameListenerAndParams"
.end annotation


# instance fields
.field public final applyFpsReduction:Z

.field public final drawer:Lorg/webrtc/RendererCommon$GlDrawer;

.field public final listener:Lorg/webrtc/EglRenderer$FrameListener;

.field public final scale:F


# direct methods
.method public constructor <init>(Lorg/webrtc/EglRenderer$FrameListener;FLorg/webrtc/RendererCommon$GlDrawer;Z)V
    .locals 0
    .param p1, "listener"    # Lorg/webrtc/EglRenderer$FrameListener;
    .param p2, "scale"    # F
    .param p3, "drawer"    # Lorg/webrtc/RendererCommon$GlDrawer;
    .param p4, "applyFpsReduction"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->listener:Lorg/webrtc/EglRenderer$FrameListener;

    .line 49
    iput p2, p0, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->scale:F

    .line 50
    iput-object p3, p0, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->drawer:Lorg/webrtc/RendererCommon$GlDrawer;

    .line 51
    iput-boolean p4, p0, Lorg/webrtc/EglRenderer$FrameListenerAndParams;->applyFpsReduction:Z

    .line 52
    return-void
.end method
