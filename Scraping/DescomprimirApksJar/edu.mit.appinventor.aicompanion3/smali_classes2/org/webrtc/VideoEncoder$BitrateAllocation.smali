.class public Lorg/webrtc/VideoEncoder$BitrateAllocation;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitrateAllocation"
.end annotation


# instance fields
.field public final bitratesBbs:[[I


# direct methods
.method public constructor <init>([[I)V
    .locals 0
    .param p1, "bitratesBbs"    # [[I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/webrtc/VideoEncoder$BitrateAllocation;->bitratesBbs:[[I

    .line 71
    return-void
.end method


# virtual methods
.method public getSum()I
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "sum":I
    iget-object v6, p0, Lorg/webrtc/VideoEncoder$BitrateAllocation;->bitratesBbs:[[I

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v1, v6, v5

    .line 79
    .local v1, "spatialLayer":[I
    array-length v8, v1

    move v3, v4

    :goto_1
    if-ge v3, v8, :cond_0

    aget v0, v1, v3

    .line 80
    .local v0, "bitrate":I
    add-int/2addr v2, v0

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 78
    .end local v0    # "bitrate":I
    :cond_0
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 83
    .end local v1    # "spatialLayer":[I
    :cond_1
    return v2
.end method
