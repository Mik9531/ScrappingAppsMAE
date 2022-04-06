.class final synthetic Lorg/webrtc/HardwareVideoDecoder$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lorg/webrtc/HardwareVideoDecoder;

.field private final arg$2:I


# direct methods
.method constructor <init>(Lorg/webrtc/HardwareVideoDecoder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/HardwareVideoDecoder$$Lambda$0;->arg$1:Lorg/webrtc/HardwareVideoDecoder;

    iput p2, p0, Lorg/webrtc/HardwareVideoDecoder$$Lambda$0;->arg$2:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder$$Lambda$0;->arg$1:Lorg/webrtc/HardwareVideoDecoder;

    iget v1, p0, Lorg/webrtc/HardwareVideoDecoder$$Lambda$0;->arg$2:I

    invoke-virtual {v0, v1}, Lorg/webrtc/HardwareVideoDecoder;->lambda$wrapNV12Buffer$0$HardwareVideoDecoder(I)V

    return-void
.end method
