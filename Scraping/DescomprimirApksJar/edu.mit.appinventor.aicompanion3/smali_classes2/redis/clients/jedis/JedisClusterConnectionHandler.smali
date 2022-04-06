.class public abstract Lredis/clients/jedis/JedisClusterConnectionHandler;
.super Ljava/lang/Object;
.source "JedisClusterConnectionHandler.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected final cache:Lredis/clients/jedis/JedisClusterInfoCache;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;IILjava/lang/String;)V
    .locals 7
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
    .line 16
    .local p1, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisClusterConnectionHandler;-><init>(Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;IILjava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
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
    .line 19
    .local p1, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lredis/clients/jedis/JedisClusterInfoCache;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisClusterInfoCache;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lredis/clients/jedis/JedisClusterConnectionHandler;->cache:Lredis/clients/jedis/JedisClusterInfoCache;

    .line 22
    invoke-direct {p0, p1, p2, p5, p6}, Lredis/clients/jedis/JedisClusterConnectionHandler;->initializeSlotsCache(Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method private initializeSlotsCache(Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "clientName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/HostAndPort;",
            ">;",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "startNodes":Ljava/util/Set;, "Ljava/util/Set<Lredis/clients/jedis/HostAndPort;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 57
    :cond_1
    :goto_1
    return-void

    .line 38
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/HostAndPort;

    .line 39
    .local v0, "hostAndPort":Lredis/clients/jedis/HostAndPort;
    new-instance v1, Lredis/clients/jedis/Jedis;

    invoke-virtual {v0}, Lredis/clients/jedis/HostAndPort;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lredis/clients/jedis/HostAndPort;->getPort()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lredis/clients/jedis/Jedis;-><init>(Ljava/lang/String;I)V

    .line 41
    .local v1, "jedis":Lredis/clients/jedis/Jedis;
    if-eqz p3, :cond_3

    .line 42
    :try_start_0
    invoke-virtual {v1, p3}, Lredis/clients/jedis/Jedis;->auth(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    :cond_3
    if-eqz p4, :cond_4

    .line 45
    invoke-virtual {v1, p4}, Lredis/clients/jedis/Jedis;->clientSetname(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    :cond_4
    iget-object v3, p0, Lredis/clients/jedis/JedisClusterConnectionHandler;->cache:Lredis/clients/jedis/JedisClusterInfoCache;

    invoke-virtual {v3, v1}, Lredis/clients/jedis/JedisClusterInfoCache;->discoverClusterNodesAndSlots(Lredis/clients/jedis/Jedis;)V
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {v1}, Lredis/clients/jedis/Jedis;->close()V

    goto :goto_1

    .line 49
    :catch_0
    move-exception v3

    .line 52
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v1}, Lredis/clients/jedis/Jedis;->close()V

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v2

    .line 52
    if-eqz v1, :cond_5

    .line 53
    invoke-virtual {v1}, Lredis/clients/jedis/Jedis;->close()V

    .line 55
    :cond_5
    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lredis/clients/jedis/JedisClusterConnectionHandler;->cache:Lredis/clients/jedis/JedisClusterInfoCache;

    invoke-virtual {v0}, Lredis/clients/jedis/JedisClusterInfoCache;->reset()V

    .line 70
    return-void
.end method

.method abstract getConnection()Lredis/clients/jedis/Jedis;
.end method

.method public getConnectionFromNode(Lredis/clients/jedis/HostAndPort;)Lredis/clients/jedis/Jedis;
    .locals 1
    .param p1, "node"    # Lredis/clients/jedis/HostAndPort;

    .prologue
    .line 30
    iget-object v0, p0, Lredis/clients/jedis/JedisClusterConnectionHandler;->cache:Lredis/clients/jedis/JedisClusterInfoCache;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisClusterInfoCache;->setupNodeIfNotExist(Lredis/clients/jedis/HostAndPort;)Lredis/clients/jedis/JedisPool;

    move-result-object v0

    invoke-virtual {v0}, Lredis/clients/jedis/JedisPool;->getResource()Lredis/clients/jedis/Jedis;

    move-result-object v0

    return-object v0
.end method

.method abstract getConnectionFromSlot(I)Lredis/clients/jedis/Jedis;
.end method

.method public getNodes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/JedisPool;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lredis/clients/jedis/JedisClusterConnectionHandler;->cache:Lredis/clients/jedis/JedisClusterInfoCache;

    invoke-virtual {v0}, Lredis/clients/jedis/JedisClusterInfoCache;->getNodes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public renewSlotCache()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lredis/clients/jedis/JedisClusterConnectionHandler;->cache:Lredis/clients/jedis/JedisClusterInfoCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lredis/clients/jedis/JedisClusterInfoCache;->renewClusterSlots(Lredis/clients/jedis/Jedis;)V

    .line 61
    return-void
.end method

.method public renewSlotCache(Lredis/clients/jedis/Jedis;)V
    .locals 1
    .param p1, "jedis"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 64
    iget-object v0, p0, Lredis/clients/jedis/JedisClusterConnectionHandler;->cache:Lredis/clients/jedis/JedisClusterInfoCache;

    invoke-virtual {v0, p1}, Lredis/clients/jedis/JedisClusterInfoCache;->renewClusterSlots(Lredis/clients/jedis/Jedis;)V

    .line 65
    return-void
.end method
