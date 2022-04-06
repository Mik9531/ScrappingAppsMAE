.class Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;
.super Ljava/lang/Object;
.source "PoolUtils.java"

# interfaces
.implements Lorg/apache/commons/pool2/KeyedObjectPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/PoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErodingKeyedObjectPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool2/KeyedObjectPool",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final erodingFactor:Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;

.field private final keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool2/KeyedObjectPool;F)V
    .locals 1
    .param p2, "factor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;F)V"
        }
    .end annotation

    .prologue
    .line 1567
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "keyedPool":Lorg/apache/commons/pool2/KeyedObjectPool;, "Lorg/apache/commons/pool2/KeyedObjectPool<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;

    invoke-direct {v0, p2}, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;-><init>(F)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;-><init>(Lorg/apache/commons/pool2/KeyedObjectPool;Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;)V

    .line 1568
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/pool2/KeyedObjectPool;Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;)V
    .locals 2
    .param p2, "erodingFactor"    # Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;",
            "Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1582
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "keyedPool":Lorg/apache/commons/pool2/KeyedObjectPool;, "Lorg/apache/commons/pool2/KeyedObjectPool<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1583
    if-nez p1, :cond_0

    .line 1584
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyedPool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1587
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    .line 1588
    iput-object p2, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->erodingFactor:Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;

    .line 1589
    return-void
.end method


# virtual methods
.method public addObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1668
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/KeyedObjectPool;->addObject(Ljava/lang/Object;)V

    .line 1669
    return-void
.end method

.method public borrowObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
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
    .line 1597
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/KeyedObjectPool;->borrowObject(Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 1708
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/KeyedObjectPool;->clear()V

    .line 1709
    return-void
.end method

.method public clear(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1717
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/KeyedObjectPool;->clear(Ljava/lang/Object;)V

    .line 1718
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 1726
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/KeyedObjectPool;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1730
    :goto_0
    return-void

    .line 1727
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getErodingFactor(Ljava/lang/Object;)Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;"
        }
    .end annotation

    .prologue
    .line 1647
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->erodingFactor:Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;

    return-object v0
.end method

.method protected getKeyedPool()Lorg/apache/commons/pool2/KeyedObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1738
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    return-object v0
.end method

.method public getNumActive()I
    .locals 1

    .prologue
    .line 1692
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/KeyedObjectPool;->getNumActive()I

    move-result v0

    return v0
.end method

.method public getNumActive(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 1700
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/KeyedObjectPool;->getNumActive(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getNumIdle()I
    .locals 1

    .prologue
    .line 1676
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool2/KeyedObjectPool;->getNumIdle()I

    move-result v0

    return v0
.end method

.method public getNumIdle(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 1684
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/KeyedObjectPool;->getNumIdle(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 1656
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/pool2/KeyedObjectPool;->invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1660
    :goto_0
    return-void

    .line 1657
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1615
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 1616
    .local v0, "discard":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1617
    .local v2, "now":J
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->getErodingFactor(Ljava/lang/Object;)Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;

    move-result-object v1

    .line 1618
    .local v1, "factor":Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;
    iget-object v6, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    monitor-enter v6

    .line 1619
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;->getNextShrink()J

    move-result-wide v8

    cmp-long v5, v8, v2

    if-gez v5, :cond_1

    .line 1620
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->getNumIdle(Ljava/lang/Object;)I

    move-result v4

    .line 1621
    .local v4, "numIdle":I
    if-lez v4, :cond_0

    .line 1622
    const/4 v0, 0x1

    .line 1625
    :cond_0
    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;->update(JI)V

    .line 1627
    .end local v4    # "numIdle":I
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1629
    if-eqz v0, :cond_2

    .line 1630
    :try_start_1
    iget-object v5, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v5, p1, p2}, Lorg/apache/commons/pool2/KeyedObjectPool;->invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1637
    :goto_0
    return-void

    .line 1627
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1632
    :cond_2
    :try_start_3
    iget-object v5, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v5, p1, p2}, Lorg/apache/commons/pool2/KeyedObjectPool;->returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1634
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1746
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErodingKeyedObjectPool{factor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->erodingFactor:Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyedPool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
