.class public Lredis/clients/jedis/JedisSlotBasedConnectionHandler;
.super Lredis/clients/jedis/JedisClusterConnectionHandler;
.source "JedisSlotBasedConnectionHandler.java"


# direct methods
.method public constructor <init>(Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;I)V
    .locals 0
    .param p2, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/HostAndPort;",
            ">;",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    invoke-direct {p0, p1, p2, p3, p3}, Lredis/clients/jedis/JedisSlotBasedConnectionHandler;-><init>(Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;II)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;II)V
    .locals 6
    .param p2, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p3, "connectionTimeout"    # I
    .param p4, "soTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/HostAndPort;",
            ">;",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisClusterConnectionHandler;-><init>(Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;IILjava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;IILjava/lang/String;)V
    .locals 0
    .param p2, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p3, "connectionTimeout"    # I
    .param p4, "soTimeout"    # I
    .param p5, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/HostAndPort;",
            ">;",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    invoke-direct/range {p0 .. p5}, Lredis/clients/jedis/JedisClusterConnectionHandler;-><init>(Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;IILjava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p3, "connectionTimeout"    # I
    .param p4, "soTimeout"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "clientName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/HostAndPort;",
            ">;",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    invoke-direct/range {p0 .. p6}, Lredis/clients/jedis/JedisClusterConnectionHandler;-><init>(Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;IILjava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getConnection()Lredis/clients/jedis/Jedis;
    .locals 7

    .prologue
    .line 38
    iget-object v5, p0, Lredis/clients/jedis/JedisSlotBasedConnectionHandler;->cache:Lredis/clients/jedis/JedisClusterInfoCache;

    invoke-virtual {v5}, Lredis/clients/jedis/JedisClusterInfoCache;->getShuffledNodesPool()Ljava/util/List;

    move-result-object v3

    .line 40
    .local v3, "pools":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/JedisPool;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 61
    new-instance v5, Lredis/clients/jedis/exceptions/JedisNoReachableClusterNodeException;

    const-string v6, "No reachable node in cluster"

    invoke-direct {v5, v6}, Lredis/clients/jedis/exceptions/JedisNoReachableClusterNodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 40
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lredis/clients/jedis/JedisPool;

    .line 41
    .local v2, "pool":Lredis/clients/jedis/JedisPool;
    const/4 v1, 0x0

    .line 43
    .local v1, "jedis":Lredis/clients/jedis/Jedis;
    :try_start_0
    invoke-virtual {v2}, Lredis/clients/jedis/JedisPool;->getResource()Lredis/clients/jedis/Jedis;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Lredis/clients/jedis/Jedis;->ping()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "result":Ljava/lang/String;
    const-string v6, "pong"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    return-object v1

    .line 53
    :cond_2
    invoke-virtual {v1}, Lredis/clients/jedis/Jedis;->close()V
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "ex":Lredis/clients/jedis/exceptions/JedisException;
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v1}, Lredis/clients/jedis/Jedis;->close()V

    goto :goto_0
.end method

.method public getConnectionFromSlot(I)Lredis/clients/jedis/Jedis;
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 66
    iget-object v1, p0, Lredis/clients/jedis/JedisSlotBasedConnectionHandler;->cache:Lredis/clients/jedis/JedisClusterInfoCache;

    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisClusterInfoCache;->getSlotPool(I)Lredis/clients/jedis/JedisPool;

    move-result-object v0

    .line 67
    .local v0, "connectionPool":Lredis/clients/jedis/JedisPool;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lredis/clients/jedis/JedisPool;->getResource()Lredis/clients/jedis/Jedis;

    move-result-object v1

    .line 78
    :goto_0
    return-object v1

    .line 72
    :cond_0
    invoke-virtual {p0}, Lredis/clients/jedis/JedisSlotBasedConnectionHandler;->renewSlotCache()V

    .line 73
    iget-object v1, p0, Lredis/clients/jedis/JedisSlotBasedConnectionHandler;->cache:Lredis/clients/jedis/JedisClusterInfoCache;

    invoke-virtual {v1, p1}, Lredis/clients/jedis/JedisClusterInfoCache;->getSlotPool(I)Lredis/clients/jedis/JedisPool;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Lredis/clients/jedis/JedisPool;->getResource()Lredis/clients/jedis/Jedis;

    move-result-object v1

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lredis/clients/jedis/JedisSlotBasedConnectionHandler;->getConnection()Lredis/clients/jedis/Jedis;

    move-result-object v1

    goto :goto_0
.end method
