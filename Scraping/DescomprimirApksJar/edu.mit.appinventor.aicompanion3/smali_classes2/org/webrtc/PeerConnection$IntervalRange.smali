.class public Lorg/webrtc/PeerConnection$IntervalRange;
.super Ljava/lang/Object;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntervalRange"
.end annotation


# instance fields
.field private final max:I

.field private final min:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput p1, p0, Lorg/webrtc/PeerConnection$IntervalRange;->min:I

    .line 228
    iput p2, p0, Lorg/webrtc/PeerConnection$IntervalRange;->max:I

    .line 229
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lorg/webrtc/PeerConnection$IntervalRange;->max:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lorg/webrtc/PeerConnection$IntervalRange;->min:I

    return v0
.end method
