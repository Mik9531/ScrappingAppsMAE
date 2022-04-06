.class Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;
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
    name = "SynchronizedKeyedObjectPool"
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
.field private final keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method constructor <init>(Lorg/apache/commons/pool2/KeyedObjectPool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 915
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    .local p1, "keyedPool":Lorg/apache/commons/pool2/KeyedObjectPool;, "Lorg/apache/commons/pool2/KeyedObjectPool<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 916
    if-nez p1, :cond_0

    .line 917
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyedPool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    .line 921
    return-void
.end method


# virtual methods
.method public addObject(Ljava/lang/Object;)V
    .locals 2
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
    .line 976
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 977
    .local v0, "writeLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 979
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool2/KeyedObjectPool;->addObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 983
    return-void

    .line 981
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public borrowObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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
    .line 929
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 930
    .local v0, "writeLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 932
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool2/KeyedObjectPool;->borrowObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 934
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
    .line 1046
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 1047
    .local v0, "writeLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1049
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool2/KeyedObjectPool;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1053
    return-void

    .line 1051
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public clear(Ljava/lang/Object;)V
    .locals 2
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
    .line 1061
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 1062
    .local v0, "writeLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1064
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool2/KeyedObjectPool;->clear(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1068
    return-void

    .line 1066
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public close()V
    .locals 2

    .prologue
    .line 1075
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 1076
    .local v0, "writeLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1078
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool2/KeyedObjectPool;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1084
    :goto_0
    return-void

    .line 1079
    :catch_0
    move-exception v1

    .line 1082
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
    .line 1032
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 1033
    .local v0, "readLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1035
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool2/KeyedObjectPool;->getNumActive()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1037
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public getNumActive(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 1004
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 1005
    .local v0, "readLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1007
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool2/KeyedObjectPool;->getNumActive(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1009
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
    .line 1018
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 1019
    .local v0, "readLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1021
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v1}, Lorg/apache/commons/pool2/KeyedObjectPool;->getNumIdle()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1023
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public getNumIdle(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 990
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 991
    .local v0, "readLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 993
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool2/KeyedObjectPool;->getNumIdle(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 995
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 959
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 960
    .local v0, "writeLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 962
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/pool2/KeyedObjectPool;->invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 968
    :goto_0
    return-void

    .line 963
    :catch_0
    move-exception v1

    .line 966
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 943
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "obj":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 944
    .local v0, "writeLock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 946
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/pool2/KeyedObjectPool;->returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 952
    :goto_0
    return-void

    .line 947
    :catch_0
    move-exception v1

    .line 950
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
    .line 1091
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1092
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SynchronizedKeyedObjectPool"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    const-string v1, "{keyedPool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedObjectPool;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1094
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1095
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
