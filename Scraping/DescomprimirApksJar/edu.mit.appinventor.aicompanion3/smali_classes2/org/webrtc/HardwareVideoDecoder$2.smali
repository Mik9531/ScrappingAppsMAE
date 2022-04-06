.class Lorg/webrtc/HardwareVideoDecoder$2;
.super Ljava/lang/Object;
.source "HardwareVideoDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/HardwareVideoDecoder;->deliverTextureFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/HardwareVideoDecoder;

.field final synthetic val$decodeTimeMs:Ljava/lang/Integer;

.field final synthetic val$height:I

.field final synthetic val$index:I

.field final synthetic val$info:Landroid/media/MediaCodec$BufferInfo;

.field final synthetic val$rotation:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lorg/webrtc/HardwareVideoDecoder;IIILandroid/media/MediaCodec$BufferInfo;Ljava/lang/Integer;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/HardwareVideoDecoder;

    .prologue
    .line 427
    iput-object p1, p0, Lorg/webrtc/HardwareVideoDecoder$2;->this$0:Lorg/webrtc/HardwareVideoDecoder;

    iput p2, p0, Lorg/webrtc/HardwareVideoDecoder$2;->val$width:I

    iput p3, p0, Lorg/webrtc/HardwareVideoDecoder$2;->val$height:I

    iput p4, p0, Lorg/webrtc/HardwareVideoDecoder$2;->val$rotation:I

    iput-object p5, p0, Lorg/webrtc/HardwareVideoDecoder$2;->val$info:Landroid/media/MediaCodec$BufferInfo;

    iput-object p6, p0, Lorg/webrtc/HardwareVideoDecoder$2;->val$decodeTimeMs:Ljava/lang/Integer;

    iput p7, p0, Lorg/webrtc/HardwareVideoDecoder$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 430
    iget-object v7, p0, Lorg/webrtc/HardwareVideoDecoder$2;->this$0:Lorg/webrtc/HardwareVideoDecoder;

    new-instance v0, Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;

    iget v1, p0, Lorg/webrtc/HardwareVideoDecoder$2;->val$width:I

    iget v2, p0, Lorg/webrtc/HardwareVideoDecoder$2;->val$height:I

    iget v3, p0, Lorg/webrtc/HardwareVideoDecoder$2;->val$rotation:I

    iget-object v4, p0, Lorg/webrtc/HardwareVideoDecoder$2;->val$info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v6, p0, Lorg/webrtc/HardwareVideoDecoder$2;->val$decodeTimeMs:Ljava/lang/Integer;

    invoke-direct/range {v0 .. v6}, Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;-><init>(IIIJLjava/lang/Integer;)V

    invoke-static {v7, v0}, Lorg/webrtc/HardwareVideoDecoder;->access$402(Lorg/webrtc/HardwareVideoDecoder;Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;)Lorg/webrtc/HardwareVideoDecoder$DecodedTextureMetadata;

    .line 432
    iget-object v0, p0, Lorg/webrtc/HardwareVideoDecoder$2;->this$0:Lorg/webrtc/HardwareVideoDecoder;

    invoke-static {v0}, Lorg/webrtc/HardwareVideoDecoder;->access$500(Lorg/webrtc/HardwareVideoDecoder;)Landroid/media/MediaCodec;

    move-result-object v0

    iget v1, p0, Lorg/webrtc/HardwareVideoDecoder$2;->val$index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 433
    return-void
.end method
