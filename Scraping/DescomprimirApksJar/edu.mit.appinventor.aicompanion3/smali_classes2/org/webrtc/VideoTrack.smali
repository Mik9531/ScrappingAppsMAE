.class public Lorg/webrtc/VideoTrack;
.super Lorg/webrtc/MediaStreamTrack;
.source "VideoTrack.java"


# instance fields
.field private final renderers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/webrtc/VideoRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private final sinks:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lorg/webrtc/VideoSink;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeTrack"    # J

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lorg/webrtc/MediaStreamTrack;-><init>(J)V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoTrack;->renderers:Ljava/util/LinkedList;

    .line 19
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoTrack;->sinks:Ljava/util/IdentityHashMap;

    .line 23
    return-void
.end method

.method private static native nativeAddSink(JJ)V
.end method

.method private static native nativeFreeSink(J)V
.end method

.method private static native nativeRemoveSink(JJ)V
.end method

.method private static native nativeWrapSink(Lorg/webrtc/VideoSink;)J
.end method


# virtual methods
.method public addRenderer(Lorg/webrtc/VideoRenderer;)V
    .locals 4
    .param p1, "renderer"    # Lorg/webrtc/VideoRenderer;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/webrtc/VideoTrack;->renderers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-wide v0, p0, Lorg/webrtc/VideoTrack;->nativeTrack:J

    iget-wide v2, p1, Lorg/webrtc/VideoRenderer;->nativeVideoRenderer:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/VideoTrack;->nativeAddSink(JJ)V

    .line 55
    return-void
.end method

.method public addSink(Lorg/webrtc/VideoSink;)V
    .locals 4
    .param p1, "sink"    # Lorg/webrtc/VideoSink;

    .prologue
    .line 34
    invoke-static {p1}, Lorg/webrtc/VideoTrack;->nativeWrapSink(Lorg/webrtc/VideoSink;)J

    move-result-wide v0

    .line 35
    .local v0, "nativeSink":J
    iget-object v2, p0, Lorg/webrtc/VideoTrack;->sinks:Ljava/util/IdentityHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-wide v2, p0, Lorg/webrtc/VideoTrack;->nativeTrack:J

    invoke-static {v2, v3, v0, v1}, Lorg/webrtc/VideoTrack;->nativeAddSink(JJ)V

    .line 37
    return-void
.end method

.method public dispose()V
    .locals 6

    .prologue
    .line 66
    :goto_0
    iget-object v2, p0, Lorg/webrtc/VideoTrack;->renderers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    iget-object v2, p0, Lorg/webrtc/VideoTrack;->renderers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/webrtc/VideoRenderer;

    invoke-virtual {p0, v2}, Lorg/webrtc/VideoTrack;->removeRenderer(Lorg/webrtc/VideoRenderer;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v2, p0, Lorg/webrtc/VideoTrack;->sinks:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 70
    .local v0, "nativeSink":J
    iget-wide v4, p0, Lorg/webrtc/VideoTrack;->nativeTrack:J

    invoke-static {v4, v5, v0, v1}, Lorg/webrtc/VideoTrack;->nativeRemoveSink(JJ)V

    .line 71
    invoke-static {v0, v1}, Lorg/webrtc/VideoTrack;->nativeFreeSink(J)V

    goto :goto_1

    .line 73
    .end local v0    # "nativeSink":J
    :cond_1
    iget-object v2, p0, Lorg/webrtc/VideoTrack;->sinks:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->clear()V

    .line 74
    invoke-super {p0}, Lorg/webrtc/MediaStreamTrack;->dispose()V

    .line 75
    return-void
.end method

.method public removeRenderer(Lorg/webrtc/VideoRenderer;)V
    .locals 4
    .param p1, "renderer"    # Lorg/webrtc/VideoRenderer;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/webrtc/VideoTrack;->renderers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-wide v0, p0, Lorg/webrtc/VideoTrack;->nativeTrack:J

    iget-wide v2, p1, Lorg/webrtc/VideoRenderer;->nativeVideoRenderer:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/VideoTrack;->nativeRemoveSink(JJ)V

    .line 62
    invoke-virtual {p1}, Lorg/webrtc/VideoRenderer;->dispose()V

    goto :goto_0
.end method

.method public removeSink(Lorg/webrtc/VideoSink;)V
    .locals 4
    .param p1, "sink"    # Lorg/webrtc/VideoSink;

    .prologue
    .line 45
    iget-object v2, p0, Lorg/webrtc/VideoTrack;->sinks:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 46
    .local v0, "nativeSink":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 47
    iget-wide v2, p0, Lorg/webrtc/VideoTrack;->nativeTrack:J

    invoke-static {v2, v3, v0, v1}, Lorg/webrtc/VideoTrack;->nativeRemoveSink(JJ)V

    .line 48
    invoke-static {v0, v1}, Lorg/webrtc/VideoTrack;->nativeFreeSink(J)V

    .line 50
    :cond_0
    return-void
.end method
