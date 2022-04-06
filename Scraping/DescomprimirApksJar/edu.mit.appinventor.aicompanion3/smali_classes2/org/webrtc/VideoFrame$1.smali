.class final Lorg/webrtc/VideoFrame$1;
.super Ljava/lang/Object;
.source "VideoFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/VideoFrame;->cropAndScaleI420(Lorg/webrtc/VideoFrame$I420Buffer;IIIIII)Lorg/webrtc/VideoFrame$Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$buffer:Lorg/webrtc/VideoFrame$I420Buffer;


# direct methods
.method constructor <init>(Lorg/webrtc/VideoFrame$I420Buffer;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lorg/webrtc/VideoFrame$1;->val$buffer:Lorg/webrtc/VideoFrame$I420Buffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/webrtc/VideoFrame$1;->val$buffer:Lorg/webrtc/VideoFrame$I420Buffer;

    invoke-interface {v0}, Lorg/webrtc/VideoFrame$I420Buffer;->release()V

    .line 164
    return-void
.end method
