.class public Lorg/apache/commons/pool2/impl/EvictionConfig;
.super Ljava/lang/Object;
.source "EvictionConfig.java"


# instance fields
.field private final idleEvictTime:J

.field private final idleSoftEvictTime:J

.field private final minIdle:I


# direct methods
.method public constructor <init>(JJI)V
    .locals 7
    .param p1, "poolIdleEvictTime"    # J
    .param p3, "poolIdleSoftEvictTime"    # J
    .param p5, "minIdle"    # I

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 52
    iput-wide p1, p0, Lorg/apache/commons/pool2/impl/EvictionConfig;->idleEvictTime:J

    .line 56
    :goto_0
    cmp-long v0, p3, v2

    if-lez v0, :cond_1

    .line 57
    iput-wide p3, p0, Lorg/apache/commons/pool2/impl/EvictionConfig;->idleSoftEvictTime:J

    .line 61
    :goto_1
    iput p5, p0, Lorg/apache/commons/pool2/impl/EvictionConfig;->minIdle:I

    .line 62
    return-void

    .line 54
    :cond_0
    iput-wide v4, p0, Lorg/apache/commons/pool2/impl/EvictionConfig;->idleEvictTime:J

    goto :goto_0

    .line 59
    :cond_1
    iput-wide v4, p0, Lorg/apache/commons/pool2/impl/EvictionConfig;->idleSoftEvictTime:J

    goto :goto_1
.end method


# virtual methods
.method public getIdleEvictTime()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/EvictionConfig;->idleEvictTime:J

    return-wide v0
.end method

.method public getIdleSoftEvictTime()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/EvictionConfig;->idleSoftEvictTime:J

    return-wide v0
.end method

.method public getMinIdle()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/apache/commons/pool2/impl/EvictionConfig;->minIdle:I

    return v0
.end method
