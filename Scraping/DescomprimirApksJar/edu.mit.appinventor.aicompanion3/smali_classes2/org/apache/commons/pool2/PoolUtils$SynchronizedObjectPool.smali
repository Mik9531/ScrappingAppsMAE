.class Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;
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
    name = "SynchronizedObjectPool"
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
.field private final pool:Lorg/apache/commons/pool2/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/ObjectPool",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method constructor <init>(Lorg/apache/commons/pool2/ObjectPool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/ObjectPool",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 742
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool<TT;>;"
    .local p1, "pool":Lorg/apache/commons/pool2/ObjectPool;, "Lorg/apache/commons/pool2/ObjectPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 743
    if-nez p1, :cond_0

    .line 744
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    .line 747
    return-void
.end method


# virtual methods
.method public addObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 802
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool<TT;>;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 803
    .local v0, "writeLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 805
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool2/ObjectPool;->addObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 809
    return-void

    .line 807
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public borrowObject()Ljava/lang/Object;
    .locals 2
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
    .line 755
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool<TT;>;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 756
    .local v0, "writeLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 758
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool2/ObjectPool;->borrowObject()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 760
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public clear()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 844
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool<TT;>;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 845
    .local v0, "writeLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 847
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool2/ObjectPool;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 851
    return-void

    .line 849
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public close()V
    .locals 2

    .prologue
    .line 858
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool<TT;>;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 859
    .local v0, "writeLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 861
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool2/ObjectPool;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 867
    :goto_0
    return-void

    .line 862
    :catch_0
    move-exception v1

    .line 865
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public getNumActive()I
    .locals 2

    .prologue
    .line 830
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool<TT;>;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 831
    .local v0, "readLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 833
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool2/ObjectPool;->getNumActive()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 835
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public getNumIdle()I
    .locals 2

    .prologue
    .line 816
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool<TT;>;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 817
    .local v0, "readLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 819
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool2/ObjectPool;->getNumIdle()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 821
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public invalidateObject(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 785
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 786
    .local v0, "writeLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 788
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool2/ObjectPool;->invalidateObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 794
    :goto_0
    return-void

    .line 789
    :catch_0
    move-exception v1

    .line 792
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public returnObject(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 769
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 770
    .local v0, "writeLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 772
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool2/ObjectPool;->returnObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 778
    :goto_0
    return-void

    .line 773
    :catch_0
    move-exception v1

    .line 776
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 874
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 875
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SynchronizedObjectPool"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    const-string v1, "{pool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedObjectPool;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 877
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 878
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
