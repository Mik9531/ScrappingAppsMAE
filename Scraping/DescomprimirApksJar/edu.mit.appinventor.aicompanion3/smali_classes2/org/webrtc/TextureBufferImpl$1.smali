.class Lorg/webrtc/TextureBufferImpl$1;
.super Ljava/lang/Object;
.source "TextureBufferImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/TextureBufferImpl;->cropAndScale(IIIIII)Lorg/webrtc/VideoFrame$Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/TextureBufferImpl;


# direct methods
.method constructor <init>(Lorg/webrtc/TextureBufferImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/TextureBufferImpl;

    .prologue
    .line 129
    iput-object p1, p0, Lorg/webrtc/TextureBufferImpl$1;->this$0:Lorg/webrtc/TextureBufferImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/webrtc/TextureBufferImpl$1;->this$0:Lorg/webrtc/TextureBufferImpl;

    invoke-virtual {v0}, Lorg/webrtc/TextureBufferImpl;->release()V

    .line 133
    return-void
.end method
