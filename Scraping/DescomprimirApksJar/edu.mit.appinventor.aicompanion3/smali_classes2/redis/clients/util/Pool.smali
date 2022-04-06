.class public abstract Lredis/clients/util/Pool;
.super Ljava/lang/Object;
.source "Pool.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field protected internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/impl/GenericObjectPool",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Lorg/apache/commons/pool2/PooledObjectFactory;)V
    .locals 0
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "Lorg/apache/commons/pool2/PooledObjectFactory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    .local p2, "factory":Lorg/apache/commons/pool2/PooledObjectFactory;, "Lorg/apache/commons/pool2/PooledObjectFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1, p2}, Lredis/clients/util/Pool;->initPool(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Lorg/apache/commons/pool2/PooledObjectFactory;)V

    .line 24
    return-void
.end method

.method private poolInactive()Z
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    iget-object v0, p0, Lredis/clients/util/Pool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lredis/clients/util/Pool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addObjects(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 146
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 152
    return-void

    .line 147
    :cond_0
    :try_start_0
    iget-object v2, p0, Lredis/clients/util/Pool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->addObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lredis/clients/jedis/exceptions/JedisException;

    const-string v3, "Error trying to add idle objects"

    invoke-direct {v2, v3, v0}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public close()V
    .locals 0

    .prologue
    .line 28
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    invoke-virtual {p0}, Lredis/clients/util/Pool;->destroy()V

    .line 29
    return-void
.end method

.method protected closeInternalPool()V
    .locals 3

    .prologue
    .line 94
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    :try_start_0
    iget-object v1, p0, Lredis/clients/util/Pool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    invoke-virtual {v1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lredis/clients/jedis/exceptions/JedisException;

    const-string v2, "Could not destroy the pool"

    invoke-direct {v1, v2, v0}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 81
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    invoke-virtual {p0}, Lredis/clients/util/Pool;->closeInternalPool()V

    .line 82
    return-void
.end method

.method public getMaxBorrowWaitTimeMillis()J
    .locals 2

    .prologue
    .line 133
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    invoke-direct {p0}, Lredis/clients/util/Pool;->poolInactive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-wide/16 v0, -0x1

    .line 137
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lredis/clients/util/Pool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getMaxBorrowWaitTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMeanBorrowWaitTimeMillis()J
    .locals 2

    .prologue
    .line 125
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    invoke-direct {p0}, Lredis/clients/util/Pool;->poolInactive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-wide/16 v0, -0x1

    .line 129
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lredis/clients/util/Pool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getMeanBorrowWaitTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getNumActive()I
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    invoke-direct {p0}, Lredis/clients/util/Pool;->poolInactive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, -0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lredis/clients/util/Pool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getNumActive()I

    move-result v0

    goto :goto_0
.end method

.method public getNumIdle()I
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    invoke-direct {p0}, Lredis/clients/util/Pool;->poolInactive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, -0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lredis/clients/util/Pool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getNumIdle()I

    move-result v0

    goto :goto_0
.end method

.method public getNumWaiters()I
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    invoke-direct {p0}, Lredis/clients/util/Pool;->poolInactive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, -0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lredis/clients/util/Pool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->getNumWaiters()I

    move-result v0

    goto :goto_0
.end method

.method public getResource()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    :try_start_0
    iget-object v2, p0, Lredis/clients/util/Pool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    invoke-virtual {v2}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->borrowObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "nse":Ljava/util/NoSuchElementException;
    new-instance v2, Lredis/clients/jedis/exceptions/JedisException;

    const-string v3, "Could not get a resource from the pool"

    invoke-direct {v2, v3, v1}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 52
    .end local v1    # "nse":Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lredis/clients/jedis/exceptions/JedisConnectionException;

    const-string v3, "Could not get a resource from the pool"

    invoke-direct {v2, v3, v0}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public initPool(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Lorg/apache/commons/pool2/PooledObjectFactory;)V
    .locals 1
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "Lorg/apache/commons/pool2/PooledObjectFactory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    .local p2, "factory":Lorg/apache/commons/pool2/PooledObjectFactory;, "Lorg/apache/commons/pool2/PooledObjectFactory<TT;>;"
    iget-object v0, p0, Lredis/clients/util/Pool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lredis/clients/util/Pool;->closeInternalPool()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    new-instance v0, Lorg/apache/commons/pool2/impl/GenericObjectPool;

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool2/PooledObjectFactory;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V

    iput-object v0, p0, Lredis/clients/util/Pool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    .line 45
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    iget-object v0, p0, Lredis/clients/util/Pool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->isClosed()Z

    move-result v0

    return v0
.end method

.method protected returnBrokenResource(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    .local p1, "resource":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lredis/clients/util/Pool;->returnBrokenResourceObject(Ljava/lang/Object;)V

    .line 72
    :cond_0
    return-void
.end method

.method protected returnBrokenResourceObject(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    .local p1, "resource":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lredis/clients/util/Pool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    invoke-virtual {v1, p1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->invalidateObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lredis/clients/jedis/exceptions/JedisException;

    const-string v2, "Could not return the resource to the pool"

    invoke-direct {v1, v2, v0}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected returnResource(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    .local p1, "resource":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lredis/clients/util/Pool;->returnResourceObject(Ljava/lang/Object;)V

    .line 78
    :cond_0
    return-void
.end method

.method protected returnResourceObject(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lredis/clients/util/Pool;, "Lredis/clients/util/Pool<TT;>;"
    .local p1, "resource":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    :try_start_0
    iget-object v1, p0, Lredis/clients/util/Pool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    invoke-virtual {v1, p1}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->returnObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lredis/clients/jedis/exceptions/JedisException;

    const-string v2, "Could not return the resource to the pool"

    invoke-direct {v1, v2, v0}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
