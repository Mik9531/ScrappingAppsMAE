.class Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;
.super Ljava/lang/Object;
.source "PoolUtils.java"

# interfaces
.implements Lorg/apache/commons/pool2/ObjectPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/PoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErodingObjectPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool2/ObjectPool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final factor:Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;

.field private final pool:Lorg/apache/commons/pool2/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/ObjectPool",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool2/ObjectPool;F)V
    .locals 1
    .param p2, "factor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/ObjectPool",
            "<TT;>;F)V"
        }
    .end annotation

    .prologue
    .line 1423
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool<TT;>;"
    .local p1, "pool":Lorg/apache/commons/pool2/ObjectPool;, "Lorg/apache/commons/pool2/ObjectPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1424
    iput-object p1, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    .line 1425
    new-instance v0, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;

    invoke-direct {v0, p2}, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;-><init>(F)V

    iput-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;->factor:Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;

    .line 1426
    return-void
.end method


# virtual methods
.method public addObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1492
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/ObjectPool;->addObject()V

    .line 1493
    return-void
.end method

.method public borrowObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1434
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/ObjectPool;->borrowObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1516
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/ObjectPool;->clear()V

    .line 1517
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 1525
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/ObjectPool;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1529
    :goto_0
    return-void

    .line 1526
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getNumActive()I
    .locals 1

    .prologue
    .line 1508
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/ObjectPool;->getNumActive()I

    move-result v0

    return v0
.end method

.method public getNumIdle()I
    .locals 1

    .prologue
    .line 1500
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/ObjectPool;->getNumIdle()I

    move-result v0

    return v0
.end method

.method public invalidateObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1480
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/ObjectPool;->invalidateObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1484
    :goto_0
    return-void

    .line 1481
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public returnObject(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1450
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 1451
    .local v0, "discard":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1452
    .local v2, "now":J
    iget-object v5, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    monitor-enter v5

    .line 1453
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;->factor:Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;

    invoke-virtual {v4}, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;->getNextShrink()J

    move-result-wide v6

    cmp-long v4, v6, v2

    if-gez v4, :cond_1

    .line 1455
    iget-object v4, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v4}, Lorg/apache/commons/pool2/ObjectPool;->getNumIdle()I

    move-result v1

    .line 1456
    .local v1, "numIdle":I
    if-lez v1, :cond_0

    .line 1457
    const/4 v0, 0x1

    .line 1460
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;->factor:Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;

    invoke-virtual {v4, v2, v3, v1}, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;->update(JI)V

    .line 1462
    .end local v1    # "numIdle":I
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1464
    if-eqz v0, :cond_2

    .line 1465
    :try_start_1
    iget-object v4, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v4, p1}, Lorg/apache/commons/pool2/ObjectPool;->invalidateObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1472
    :goto_0
    return-void

    .line 1462
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1467
    :cond_2
    :try_start_3
    iget-object v4, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v4, p1}, Lorg/apache/commons/pool2/ObjectPool;->returnObject(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1469
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1536
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErodingObjectPool{factor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;->factor:Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
