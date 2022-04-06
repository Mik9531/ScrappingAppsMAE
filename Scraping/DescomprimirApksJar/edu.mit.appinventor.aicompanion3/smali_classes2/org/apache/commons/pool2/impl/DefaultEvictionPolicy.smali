.class public Lorg/apache/commons/pool2/impl/DefaultEvictionPolicy;
.super Ljava/lang/Object;
.source "DefaultEvictionPolicy.java"

# interfaces
.implements Lorg/apache/commons/pool2/impl/EvictionPolicy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool2/impl/EvictionPolicy",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultEvictionPolicy;, "Lorg/apache/commons/pool2/impl/DefaultEvictionPolicy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evict(Lorg/apache/commons/pool2/impl/EvictionConfig;Lorg/apache/commons/pool2/PooledObject;I)Z
    .locals 4
    .param p1, "config"    # Lorg/apache/commons/pool2/impl/EvictionConfig;
    .param p3, "idleCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/impl/EvictionConfig;",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;I)Z"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lorg/apache/commons/pool2/impl/DefaultEvictionPolicy;, "Lorg/apache/commons/pool2/impl/DefaultEvictionPolicy<TT;>;"
    .local p2, "underTest":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/EvictionConfig;->getIdleSoftEvictTime()J

    move-result-wide v0

    invoke-interface {p2}, Lorg/apache/commons/pool2/PooledObject;->getIdleTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 49
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/EvictionConfig;->getMinIdle()I

    move-result v0

    if-lt v0, p3, :cond_1

    .line 50
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/EvictionConfig;->getIdleEvictTime()J

    move-result-wide v0

    invoke-interface {p2}, Lorg/apache/commons/pool2/PooledObject;->getIdleTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 51
    :cond_1
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
