.class Lorg/webrtc/FileVideoCapturer$1;
.super Ljava/util/TimerTask;
.source "FileVideoCapturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/FileVideoCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/FileVideoCapturer;


# direct methods
.method constructor <init>(Lorg/webrtc/FileVideoCapturer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/FileVideoCapturer;

    .prologue
    .line 147
    iput-object p1, p0, Lorg/webrtc/FileVideoCapturer$1;->this$0:Lorg/webrtc/FileVideoCapturer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/webrtc/FileVideoCapturer$1;->this$0:Lorg/webrtc/FileVideoCapturer;

    invoke-virtual {v0}, Lorg/webrtc/FileVideoCapturer;->tick()V

    .line 151
    return-void
.end method
