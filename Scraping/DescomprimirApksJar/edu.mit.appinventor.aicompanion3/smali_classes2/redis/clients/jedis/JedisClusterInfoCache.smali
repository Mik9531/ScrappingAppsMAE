.class public Lredis/clients/jedis/JedisClusterInfoCache;
.super Ljava/lang/Object;
.source "JedisClusterInfoCache.java"


# static fields
.field private static final MASTER_NODE_INDEX:I = 0x2


# instance fields
.field private clientName:Ljava/lang/String;

.field private connectionTimeout:I

.field private final nodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/JedisPool;",
            ">;"
        }
    .end annotation
.end field

.field private password:Ljava/lang/String;

.field private final poolConfig:Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

.field private final r:Ljava/util/concurrent/locks/Lock;

.field private volatile rediscovering:Z

.field private final rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final slots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lredis/clients/jedis/JedisPool;",
            ">;"
        }
    .end annotation
.end field

.field private soTimeout:I

.field private final w:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;I)V
    .locals 6
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "timeout"    # I

    .prologue
    const/4 v4, 0x0

    .line 39
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisClusterInfoCache;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;IILjava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p2, "connectionTimeout"    # I
    .param p3, "soTimeout"    # I
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "clientName"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lredis/clients/jedis/JedisClusterInfoCache;->nodes:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lredis/clients/jedis/JedisClusterInfoCache;->slots:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lredis/clients/jedis/JedisClusterInfoCache;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 26
    iget-object v0, p0, Lredis/clients/jedis/JedisClusterInfoCache;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lredis/clients/jedis/JedisClusterInfoCache;->r:Ljava/util/concurrent/locks/Lock;

    .line 27
    iget-object v0, p0, Lredis/clients/jedis/JedisClusterInfoCache;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    .line 44
    iput-object p1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->poolConfig:Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    .line 45
    iput p2, p0, Lredis/clients/jedis/JedisClusterInfoCache;->connectionTimeout:I

    .line 46
    iput p3, p0, Lredis/clients/jedis/JedisClusterInfoCache;->soTimeout:I

    .line 47
    iput-object p4, p0, Lredis/clients/jedis/JedisClusterInfoCache;->password:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lredis/clients/jedis/JedisClusterInfoCache;->clientName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private discoverClusterSlots(Lredis/clients/jedis/Jedis;)V
    .locals 9
    .param p1, "jedis"    # Lredis/clients/jedis/Jedis;

    .prologue
    const/4 v8, 0x2

    .line 124
    invoke-virtual {p1}, Lredis/clients/jedis/Jedis;->clusterSlots()Ljava/util/List;

    move-result-object v4

    .line 125
    .local v4, "slots":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v6, p0, Lredis/clients/jedis/JedisClusterInfoCache;->slots:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 127
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 146
    return-void

    .line 127
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "slotInfoObj":Ljava/lang/Object;
    move-object v1, v2

    .line 128
    check-cast v1, Ljava/util/List;

    .line 130
    .local v1, "slotInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v8, :cond_0

    .line 134
    invoke-direct {p0, v1}, Lredis/clients/jedis/JedisClusterInfoCache;->getAssignedSlotArray(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 137
    .local v3, "slotNums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 138
    .local v0, "hostInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 143
    invoke-direct {p0, v0}, Lredis/clients/jedis/JedisClusterInfoCache;->generateHostAndPort(Ljava/util/List;)Lredis/clients/jedis/HostAndPort;

    move-result-object v5

    .line 144
    .local v5, "targetNode":Lredis/clients/jedis/HostAndPort;
    invoke-virtual {p0, v3, v5}, Lredis/clients/jedis/JedisClusterInfoCache;->assignSlotsToNode(Ljava/util/List;Lredis/clients/jedis/HostAndPort;)V

    goto :goto_0
.end method

.method private generateHostAndPort(Ljava/util/List;)Lredis/clients/jedis/HostAndPort;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lredis/clients/jedis/HostAndPort;"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "hostInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Lredis/clients/jedis/HostAndPort;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode([B)Ljava/lang/String;

    move-result-object v2

    .line 150
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 149
    invoke-direct {v1, v2, v0}, Lredis/clients/jedis/HostAndPort;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method private getAssignedSlotArray(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "slotInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v1, "slotNums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v0

    .local v0, "slot":I
    :goto_0
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 300
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    .line 299
    if-le v0, v2, :cond_0

    .line 303
    return-object v1

    .line 301
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getNodeKey(Lredis/clients/jedis/Client;)Ljava/lang/String;
    .locals 2
    .param p0, "client"    # Lredis/clients/jedis/Client;

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lredis/clients/jedis/Client;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lredis/clients/jedis/Client;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNodeKey(Lredis/clients/jedis/HostAndPort;)Ljava/lang/String;
    .locals 2
    .param p0, "hnp"    # Lredis/clients/jedis/HostAndPort;

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lredis/clients/jedis/HostAndPort;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lredis/clients/jedis/HostAndPort;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNodeKey(Lredis/clients/jedis/Jedis;)Ljava/lang/String;
    .locals 1
    .param p0, "jedis"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 294
    invoke-virtual {p0}, Lredis/clients/jedis/Jedis;->getClient()Lredis/clients/jedis/Client;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/jedis/JedisClusterInfoCache;->getNodeKey(Lredis/clients/jedis/Client;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public assignSlotToNode(ILredis/clients/jedis/HostAndPort;)V
    .locals 3
    .param p1, "slot"    # I
    .param p2, "targetNode"    # Lredis/clients/jedis/HostAndPort;

    .prologue
    .line 204
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 206
    :try_start_0
    invoke-virtual {p0, p2}, Lredis/clients/jedis/JedisClusterInfoCache;->setupNodeIfNotExist(Lredis/clients/jedis/HostAndPort;)Lredis/clients/jedis/JedisPool;

    move-result-object v0

    .line 207
    .local v0, "targetPool":Lredis/clients/jedis/JedisPool;
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->slots:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 211
    return-void

    .line 208
    .end local v0    # "targetPool":Lredis/clients/jedis/JedisPool;
    :catchall_0
    move-exception v1

    .line 209
    iget-object v2, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 210
    throw v1
.end method

.method public assignSlotsToNode(Ljava/util/List;Lredis/clients/jedis/HostAndPort;)V
    .locals 4
    .param p2, "targetNode"    # Lredis/clients/jedis/HostAndPort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lredis/clients/jedis/HostAndPort;",
            ")V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "targetSlots":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 216
    :try_start_0
    invoke-virtual {p0, p2}, Lredis/clients/jedis/JedisClusterInfoCache;->setupNodeIfNotExist(Lredis/clients/jedis/HostAndPort;)Lredis/clients/jedis/JedisPool;

    move-result-object v1

    .line 217
    .local v1, "targetPool":Lredis/clients/jedis/JedisPool;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 221
    iget-object v2, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 223
    return-void

    .line 217
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 218
    .local v0, "slot":Ljava/lang/Integer;
    iget-object v3, p0, Lredis/clients/jedis/JedisClusterInfoCache;->slots:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    .end local v0    # "slot":Ljava/lang/Integer;
    .end local v1    # "targetPool":Lredis/clients/jedis/JedisPool;
    :catchall_0
    move-exception v2

    .line 221
    iget-object v3, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 222
    throw v2
.end method

.method public discoverClusterNodesAndSlots(Lredis/clients/jedis/Jedis;)V
    .locals 12
    .param p1, "jedis"    # Lredis/clients/jedis/Jedis;

    .prologue
    const/4 v11, 0x2

    .line 52
    iget-object v9, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lredis/clients/jedis/JedisClusterInfoCache;->reset()V

    .line 56
    invoke-virtual {p1}, Lredis/clients/jedis/Jedis;->clusterSlots()Ljava/util/List;

    move-result-object v7

    .line 58
    .local v7, "slots":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_1

    .line 83
    iget-object v9, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 85
    return-void

    .line 58
    :cond_1
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 59
    .local v5, "slotInfoObj":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 61
    .local v4, "slotInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v11, :cond_0

    .line 65
    invoke-direct {p0, v4}, Lredis/clients/jedis/JedisClusterInfoCache;->getAssignedSlotArray(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 68
    .local v6, "slotNums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 69
    .local v3, "size":I
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 70
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 71
    .local v1, "hostInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_3

    .line 69
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_3
    invoke-direct {p0, v1}, Lredis/clients/jedis/JedisClusterInfoCache;->generateHostAndPort(Ljava/util/List;)Lredis/clients/jedis/HostAndPort;

    move-result-object v8

    .line 76
    .local v8, "targetNode":Lredis/clients/jedis/HostAndPort;
    invoke-virtual {p0, v8}, Lredis/clients/jedis/JedisClusterInfoCache;->setupNodeIfNotExist(Lredis/clients/jedis/HostAndPort;)Lredis/clients/jedis/JedisPool;

    .line 77
    if-ne v2, v11, :cond_2

    .line 78
    invoke-virtual {p0, v6, v8}, Lredis/clients/jedis/JedisClusterInfoCache;->assignSlotsToNode(Ljava/util/List;Lredis/clients/jedis/HostAndPort;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 82
    .end local v1    # "hostInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "slotInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "slotInfoObj":Ljava/lang/Object;
    .end local v6    # "slotNums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "slots":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v8    # "targetNode":Lredis/clients/jedis/HostAndPort;
    :catchall_0
    move-exception v9

    .line 83
    iget-object v10, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 84
    throw v9
.end method

.method public getNode(Ljava/lang/String;)Lredis/clients/jedis/JedisPool;
    .locals 2
    .param p1, "nodeKey"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lredis/clients/jedis/JedisClusterInfoCache;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 228
    :try_start_0
    iget-object v0, p0, Lredis/clients/jedis/JedisClusterInfoCache;->nodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/JedisPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 228
    return-object v0

    .line 229
    :catchall_0
    move-exception v0

    .line 230
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 231
    throw v0
.end method

.method public getNodes()Ljava/util/Map;
    .locals 2
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
    .line 244
    iget-object v0, p0, Lredis/clients/jedis/JedisClusterInfoCache;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 246
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->nodes:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 246
    return-object v0

    .line 247
    :catchall_0
    move-exception v0

    .line 248
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 249
    throw v0
.end method

.method public getShuffledNodesPool()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/JedisPool;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 255
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->nodes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 256
    .local v0, "pools":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/JedisPool;>;"
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 257
    return-object v0

    .line 258
    .end local v0    # "pools":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/JedisPool;>;"
    :catchall_0
    move-exception v1

    .line 259
    iget-object v2, p0, Lredis/clients/jedis/JedisClusterInfoCache;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 260
    throw v1
.end method

.method public getSlotPool(I)Lredis/clients/jedis/JedisPool;
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lredis/clients/jedis/JedisClusterInfoCache;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 237
    :try_start_0
    iget-object v0, p0, Lredis/clients/jedis/JedisClusterInfoCache;->slots:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/JedisPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 237
    return-object v0

    .line 238
    :catchall_0
    move-exception v0

    .line 239
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 240
    throw v0
.end method

.method public renewClusterSlots(Lredis/clients/jedis/Jedis;)V
    .locals 4
    .param p1, "jedis"    # Lredis/clients/jedis/Jedis;

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-boolean v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->rediscovering:Z

    if-nez v1, :cond_0

    .line 91
    :try_start_0
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->rediscovering:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    if-eqz p1, :cond_1

    .line 96
    :try_start_1
    invoke-direct {p0, p1}, Lredis/clients/jedis/JedisClusterInfoCache;->discoverClusterSlots(Lredis/clients/jedis/Jedis;)V
    :try_end_1
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    iput-boolean v3, p0, Lredis/clients/jedis/JedisClusterInfoCache;->rediscovering:Z

    .line 118
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v1

    .line 103
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lredis/clients/jedis/JedisClusterInfoCache;->getShuffledNodesPool()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 117
    iput-boolean v3, p0, Lredis/clients/jedis/JedisClusterInfoCache;->rediscovering:Z

    .line 118
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 103
    :cond_3
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/JedisPool;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    .local v0, "jp":Lredis/clients/jedis/JedisPool;
    :try_start_4
    invoke-virtual {v0}, Lredis/clients/jedis/JedisPool;->getResource()Lredis/clients/jedis/Jedis;

    move-result-object p1

    .line 106
    invoke-direct {p0, p1}, Lredis/clients/jedis/JedisClusterInfoCache;->discoverClusterSlots(Lredis/clients/jedis/Jedis;)V
    :try_end_4
    .catch Lredis/clients/jedis/exceptions/JedisConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    if-eqz p1, :cond_4

    .line 112
    :try_start_5
    invoke-virtual {p1}, Lredis/clients/jedis/Jedis;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 117
    :cond_4
    iput-boolean v3, p0, Lredis/clients/jedis/JedisClusterInfoCache;->rediscovering:Z

    .line 118
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 108
    :catch_1
    move-exception v2

    .line 111
    if-eqz p1, :cond_2

    .line 112
    :try_start_6
    invoke-virtual {p1}, Lredis/clients/jedis/Jedis;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 116
    .end local v0    # "jp":Lredis/clients/jedis/JedisPool;
    :catchall_0
    move-exception v1

    .line 117
    iput-boolean v3, p0, Lredis/clients/jedis/JedisClusterInfoCache;->rediscovering:Z

    .line 118
    iget-object v2, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 119
    throw v1

    .line 110
    .restart local v0    # "jp":Lredis/clients/jedis/JedisPool;
    :catchall_1
    move-exception v1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    :try_start_7
    invoke-virtual {p1}, Lredis/clients/jedis/Jedis;->close()V

    .line 114
    :cond_5
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 267
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 269
    :try_start_0
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->nodes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 278
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->nodes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 279
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->slots:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 283
    return-void

    .line 269
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/JedisPool;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    .local v0, "pool":Lredis/clients/jedis/JedisPool;
    if-eqz v0, :cond_0

    .line 272
    :try_start_2
    invoke-virtual {v0}, Lredis/clients/jedis/JedisPool;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v2

    goto :goto_0

    .line 280
    .end local v0    # "pool":Lredis/clients/jedis/JedisPool;
    :catchall_0
    move-exception v1

    .line 281
    iget-object v2, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 282
    throw v1
.end method

.method public setupNodeIfNotExist(Lredis/clients/jedis/HostAndPort;)Lredis/clients/jedis/JedisPool;
    .locals 15
    .param p1, "node"    # Lredis/clients/jedis/HostAndPort;

    .prologue
    .line 154
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 156
    :try_start_0
    invoke-static/range {p1 .. p1}, Lredis/clients/jedis/JedisClusterInfoCache;->getNodeKey(Lredis/clients/jedis/HostAndPort;)Ljava/lang/String;

    move-result-object v14

    .line 157
    .local v14, "nodeKey":Ljava/lang/String;
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->nodes:Ljava/util/Map;

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lredis/clients/jedis/JedisPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .local v13, "existingPool":Lredis/clients/jedis/JedisPool;
    if-eqz v13, :cond_0

    .line 165
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .end local v13    # "existingPool":Lredis/clients/jedis/JedisPool;
    :goto_0
    return-object v13

    .line 160
    .restart local v13    # "existingPool":Lredis/clients/jedis/JedisPool;
    :cond_0
    :try_start_1
    new-instance v0, Lredis/clients/jedis/JedisPool;

    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->poolConfig:Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    invoke-virtual/range {p1 .. p1}, Lredis/clients/jedis/HostAndPort;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lredis/clients/jedis/HostAndPort;->getPort()I

    move-result v3

    .line 161
    iget v4, p0, Lredis/clients/jedis/JedisClusterInfoCache;->connectionTimeout:I

    iget v5, p0, Lredis/clients/jedis/JedisClusterInfoCache;->soTimeout:I

    iget-object v6, p0, Lredis/clients/jedis/JedisClusterInfoCache;->password:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lredis/clients/jedis/JedisClusterInfoCache;->clientName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 160
    invoke-direct/range {v0 .. v12}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 162
    .local v0, "nodePool":Lredis/clients/jedis/JedisPool;
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->nodes:Ljava/util/Map;

    invoke-interface {v1, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v13, v0

    .line 163
    goto :goto_0

    .line 164
    .end local v0    # "nodePool":Lredis/clients/jedis/JedisPool;
    .end local v13    # "existingPool":Lredis/clients/jedis/JedisPool;
    .end local v14    # "nodeKey":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 165
    iget-object v2, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 166
    throw v1
.end method

.method public setupNodeIfNotExist(Lredis/clients/jedis/HostAndPort;Z)Lredis/clients/jedis/JedisPool;
    .locals 15
    .param p1, "node"    # Lredis/clients/jedis/HostAndPort;
    .param p2, "ssl"    # Z

    .prologue
    .line 170
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 172
    :try_start_0
    invoke-static/range {p1 .. p1}, Lredis/clients/jedis/JedisClusterInfoCache;->getNodeKey(Lredis/clients/jedis/HostAndPort;)Ljava/lang/String;

    move-result-object v14

    .line 173
    .local v14, "nodeKey":Ljava/lang/String;
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->nodes:Ljava/util/Map;

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lredis/clients/jedis/JedisPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .local v13, "existingPool":Lredis/clients/jedis/JedisPool;
    if-eqz v13, :cond_0

    .line 181
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .end local v13    # "existingPool":Lredis/clients/jedis/JedisPool;
    :goto_0
    return-object v13

    .line 176
    .restart local v13    # "existingPool":Lredis/clients/jedis/JedisPool;
    :cond_0
    :try_start_1
    new-instance v0, Lredis/clients/jedis/JedisPool;

    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->poolConfig:Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    invoke-virtual/range {p1 .. p1}, Lredis/clients/jedis/HostAndPort;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lredis/clients/jedis/HostAndPort;->getPort()I

    move-result v3

    .line 177
    iget v4, p0, Lredis/clients/jedis/JedisClusterInfoCache;->connectionTimeout:I

    iget v5, p0, Lredis/clients/jedis/JedisClusterInfoCache;->soTimeout:I

    iget-object v6, p0, Lredis/clients/jedis/JedisClusterInfoCache;->password:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v9, p2

    .line 176
    invoke-direct/range {v0 .. v12}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 178
    .local v0, "nodePool":Lredis/clients/jedis/JedisPool;
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->nodes:Ljava/util/Map;

    invoke-interface {v1, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v13, v0

    .line 179
    goto :goto_0

    .line 180
    .end local v0    # "nodePool":Lredis/clients/jedis/JedisPool;
    .end local v13    # "existingPool":Lredis/clients/jedis/JedisPool;
    .end local v14    # "nodeKey":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 181
    iget-object v2, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 182
    throw v1
.end method

.method public setupNodeIfNotExist(Lredis/clients/jedis/HostAndPort;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)Lredis/clients/jedis/JedisPool;
    .locals 15
    .param p1, "node"    # Lredis/clients/jedis/HostAndPort;
    .param p2, "ssl"    # Z
    .param p3, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p4, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p5, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 187
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 189
    :try_start_0
    invoke-static/range {p1 .. p1}, Lredis/clients/jedis/JedisClusterInfoCache;->getNodeKey(Lredis/clients/jedis/HostAndPort;)Ljava/lang/String;

    move-result-object v14

    .line 190
    .local v14, "nodeKey":Ljava/lang/String;
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->nodes:Ljava/util/Map;

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lredis/clients/jedis/JedisPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .local v13, "existingPool":Lredis/clients/jedis/JedisPool;
    if-eqz v13, :cond_0

    .line 199
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .end local v13    # "existingPool":Lredis/clients/jedis/JedisPool;
    :goto_0
    return-object v13

    .line 193
    .restart local v13    # "existingPool":Lredis/clients/jedis/JedisPool;
    :cond_0
    :try_start_1
    new-instance v0, Lredis/clients/jedis/JedisPool;

    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->poolConfig:Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    invoke-virtual/range {p1 .. p1}, Lredis/clients/jedis/HostAndPort;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lredis/clients/jedis/HostAndPort;->getPort()I

    move-result v3

    .line 194
    iget v4, p0, Lredis/clients/jedis/JedisClusterInfoCache;->connectionTimeout:I

    iget v5, p0, Lredis/clients/jedis/JedisClusterInfoCache;->soTimeout:I

    iget-object v6, p0, Lredis/clients/jedis/JedisClusterInfoCache;->password:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    .line 193
    invoke-direct/range {v0 .. v12}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 196
    .local v0, "nodePool":Lredis/clients/jedis/JedisPool;
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->nodes:Ljava/util/Map;

    invoke-interface {v1, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    iget-object v1, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v13, v0

    .line 197
    goto :goto_0

    .line 198
    .end local v0    # "nodePool":Lredis/clients/jedis/JedisPool;
    .end local v13    # "existingPool":Lredis/clients/jedis/JedisPool;
    .end local v14    # "nodeKey":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 199
    iget-object v2, p0, Lredis/clients/jedis/JedisClusterInfoCache;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 200
    throw v1
.end method
