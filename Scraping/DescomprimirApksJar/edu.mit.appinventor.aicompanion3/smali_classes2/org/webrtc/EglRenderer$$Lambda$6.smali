.class final synthetic Lorg/webrtc/EglRenderer$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lorg/webrtc/EglRenderer;

.field private final arg$2:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/webrtc/EglRenderer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/EglRenderer$$Lambda$6;->arg$1:Lorg/webrtc/EglRenderer;

    iput-object p2, p0, Lorg/webrtc/EglRenderer$$Lambda$6;->arg$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/EglRenderer$$Lambda$6;->arg$1:Lorg/webrtc/EglRenderer;

    iget-object v1, p0, Lorg/webrtc/EglRenderer$$Lambda$6;->arg$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/webrtc/EglRenderer;->lambda$releaseEglSurface$5$EglRenderer(Ljava/lang/Runnable;)V

    return-void
.end method
