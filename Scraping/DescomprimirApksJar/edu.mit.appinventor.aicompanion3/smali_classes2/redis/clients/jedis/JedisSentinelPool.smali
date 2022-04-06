.class public Lredis/clients/jedis/JedisSentinelPool;
.super Lredis/clients/jedis/JedisPoolAbstract;
.source "JedisSentinelPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lredis/clients/jedis/JedisSentinelPool$MasterListener;
    }
.end annotation


# instance fields
.field protected clientName:Ljava/lang/String;

.field protected connectionTimeout:I

.field private volatile currentHostMaster:Lredis/clients/jedis/HostAndPort;

.field protected database:I

.field private volatile factory:Lredis/clients/jedis/JedisFactory;

.field protected log:Ljava/util/logging/Logger;

.field protected masterListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/JedisSentinelPool$MasterListener;",
            ">;"
        }
    .end annotation
.end field

.field protected password:Ljava/lang/String;

.field protected poolConfig:Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

.field protected soTimeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 7
    .param p1, "masterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "sentinels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    invoke-direct {v3}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;-><init>()V

    const/16 v4, 0x7d0

    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisSentinelPool;-><init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;ILjava/lang/String;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V
    .locals 6
    .param p1, "masterName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "sentinels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    invoke-direct {v3}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;-><init>()V

    const/16 v4, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisSentinelPool;-><init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;ILjava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;)V
    .locals 7
    .param p1, "masterName"    # Ljava/lang/String;
    .param p3, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "sentinels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v4, 0x7d0

    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisSentinelPool;-><init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;ILjava/lang/String;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;I)V
    .locals 7
    .param p1, "masterName"    # Ljava/lang/String;
    .param p3, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "sentinels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisSentinelPool;-><init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;ILjava/lang/String;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;IILjava/lang/String;I)V
    .locals 9
    .param p1, "masterName"    # Ljava/lang/String;
    .param p3, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p4, "timeout"    # I
    .param p5, "soTimeout"    # I
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "database"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "sentinels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/JedisSentinelPool;-><init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;IILjava/lang/String;ILjava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;IILjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "masterName"    # Ljava/lang/String;
    .param p3, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p4, "connectionTimeout"    # I
    .param p5, "soTimeout"    # I
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "database"    # I
    .param p8, "clientName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "sentinels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v1, 0x7d0

    .line 84
    invoke-direct {p0}, Lredis/clients/jedis/JedisPoolAbstract;-><init>()V

    .line 20
    iput v1, p0, Lredis/clients/jedis/JedisSentinelPool;->connectionTimeout:I

    .line 21
    iput v1, p0, Lredis/clients/jedis/JedisSentinelPool;->soTimeout:I

    .line 25
    const/4 v1, 0x0

    iput v1, p0, Lredis/clients/jedis/JedisSentinelPool;->database:I

    .line 29
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lredis/clients/jedis/JedisSentinelPool;->masterListeners:Ljava/util/Set;

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Lredis/clients/jedis/JedisSentinelPool;->log:Ljava/util/logging/Logger;

    .line 87
    iput-object p3, p0, Lredis/clients/jedis/JedisSentinelPool;->poolConfig:Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    .line 88
    iput p4, p0, Lredis/clients/jedis/JedisSentinelPool;->connectionTimeout:I

    .line 89
    iput p5, p0, Lredis/clients/jedis/JedisSentinelPool;->soTimeout:I

    .line 90
    iput-object p6, p0, Lredis/clients/jedis/JedisSentinelPool;->password:Ljava/lang/String;

    .line 91
    iput p7, p0, Lredis/clients/jedis/JedisSentinelPool;->database:I

    .line 92
    iput-object p8, p0, Lredis/clients/jedis/JedisSentinelPool;->clientName:Ljava/lang/String;

    .line 94
    invoke-direct {p0, p2, p1}, Lredis/clients/jedis/JedisSentinelPool;->initSentinels(Ljava/util/Set;Ljava/lang/String;)Lredis/clients/jedis/HostAndPort;

    move-result-object v0

    .line 95
    .local v0, "master":Lredis/clients/jedis/HostAndPort;
    invoke-direct {p0, v0}, Lredis/clients/jedis/JedisSentinelPool;->initPool(Lredis/clients/jedis/HostAndPort;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;ILjava/lang/String;)V
    .locals 7
    .param p1, "masterName"    # Ljava/lang/String;
    .param p3, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p4, "timeout"    # I
    .param p5, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "sentinels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lredis/clients/jedis/JedisSentinelPool;-><init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;ILjava/lang/String;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;ILjava/lang/String;I)V
    .locals 8
    .param p1, "masterName"    # Ljava/lang/String;
    .param p3, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p4, "timeout"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "database"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "sentinels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lredis/clients/jedis/JedisSentinelPool;-><init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;IILjava/lang/String;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;ILjava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "masterName"    # Ljava/lang/String;
    .param p3, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p4, "timeout"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "database"    # I
    .param p7, "clientName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "sentinels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lredis/clients/jedis/JedisSentinelPool;-><init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;IILjava/lang/String;ILjava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;)V
    .locals 6
    .param p1, "masterName"    # Ljava/lang/String;
    .param p3, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "sentinels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v4, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lredis/clients/jedis/JedisSentinelPool;-><init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;ILjava/lang/String;)V

    .line 64
    return-void
.end method

.method static synthetic access$1(Lredis/clients/jedis/JedisSentinelPool;Ljava/util/List;)Lredis/clients/jedis/HostAndPort;
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lredis/clients/jedis/JedisSentinelPool;->toHostAndPort(Ljava/util/List;)Lredis/clients/jedis/HostAndPort;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lredis/clients/jedis/JedisSentinelPool;Lredis/clients/jedis/HostAndPort;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lredis/clients/jedis/JedisSentinelPool;->initPool(Lredis/clients/jedis/HostAndPort;)V

    return-void
.end method

.method private initPool(Lredis/clients/jedis/HostAndPort;)V
    .locals 12
    .param p1, "master"    # Lredis/clients/jedis/HostAndPort;

    .prologue
    const/4 v9, 0x0

    .line 111
    iget-object v0, p0, Lredis/clients/jedis/JedisSentinelPool;->currentHostMaster:Lredis/clients/jedis/HostAndPort;

    invoke-virtual {p1, v0}, Lredis/clients/jedis/HostAndPort;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iput-object p1, p0, Lredis/clients/jedis/JedisSentinelPool;->currentHostMaster:Lredis/clients/jedis/HostAndPort;

    .line 113
    iget-object v0, p0, Lredis/clients/jedis/JedisSentinelPool;->factory:Lredis/clients/jedis/JedisFactory;

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Lredis/clients/jedis/JedisFactory;

    invoke-virtual {p1}, Lredis/clients/jedis/HostAndPort;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lredis/clients/jedis/HostAndPort;->getPort()I

    move-result v2

    iget v3, p0, Lredis/clients/jedis/JedisSentinelPool;->connectionTimeout:I

    .line 115
    iget v4, p0, Lredis/clients/jedis/JedisSentinelPool;->soTimeout:I

    iget-object v5, p0, Lredis/clients/jedis/JedisSentinelPool;->password:Ljava/lang/String;

    iget v6, p0, Lredis/clients/jedis/JedisSentinelPool;->database:I

    iget-object v7, p0, Lredis/clients/jedis/JedisSentinelPool;->clientName:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v10, v9

    move-object v11, v9

    invoke-direct/range {v0 .. v11}, Lredis/clients/jedis/JedisFactory;-><init>(Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    .line 114
    iput-object v0, p0, Lredis/clients/jedis/JedisSentinelPool;->factory:Lredis/clients/jedis/JedisFactory;

    .line 116
    iget-object v0, p0, Lredis/clients/jedis/JedisSentinelPool;->poolConfig:Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    iget-object v1, p0, Lredis/clients/jedis/JedisSentinelPool;->factory:Lredis/clients/jedis/JedisFactory;

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/JedisSentinelPool;->initPool(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Lorg/apache/commons/pool2/PooledObjectFactory;)V

    .line 126
    :goto_0
    iget-object v0, p0, Lredis/clients/jedis/JedisSentinelPool;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Created JedisPool to master at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lredis/clients/jedis/JedisSentinelPool;->factory:Lredis/clients/jedis/JedisFactory;

    iget-object v1, p0, Lredis/clients/jedis/JedisSentinelPool;->currentHostMaster:Lredis/clients/jedis/HostAndPort;

    invoke-virtual {v0, v1}, Lredis/clients/jedis/JedisFactory;->setHostAndPort(Lredis/clients/jedis/HostAndPort;)V

    .line 123
    iget-object v0, p0, Lredis/clients/jedis/JedisSentinelPool;->internalPool:Lorg/apache/commons/pool2/impl/GenericObjectPool;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/GenericObjectPool;->clear()V

    goto :goto_0
.end method

.method private initSentinels(Ljava/util/Set;Ljava/lang/String;)Lredis/clients/jedis/HostAndPort;
    .locals 13
    .param p2, "masterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/HostAndPort;"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "sentinels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 133
    .local v4, "master":Lredis/clients/jedis/HostAndPort;
    const/4 v8, 0x0

    .line 135
    .local v8, "sentinelAvailable":Z
    iget-object v9, p0, Lredis/clients/jedis/JedisSentinelPool;->log:Ljava/util/logging/Logger;

    const-string v10, "Trying to find master from available Sentinels..."

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 137
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 172
    :cond_1
    :goto_1
    if-nez v4, :cond_7

    .line 173
    if-eqz v8, :cond_6

    .line 176
    new-instance v9, Lredis/clients/jedis/exceptions/JedisException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Can connect to sentinel, but "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 177
    const-string v11, " seems to be not monitored..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 176
    invoke-direct {v9, v10}, Lredis/clients/jedis/exceptions/JedisException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 137
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 138
    .local v7, "sentinel":Ljava/lang/String;
    invoke-static {v7}, Lredis/clients/jedis/HostAndPort;->parseString(Ljava/lang/String;)Lredis/clients/jedis/HostAndPort;

    move-result-object v1

    .line 140
    .local v1, "hap":Lredis/clients/jedis/HostAndPort;
    iget-object v10, p0, Lredis/clients/jedis/JedisSentinelPool;->log:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Connecting to Sentinel "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 142
    const/4 v2, 0x0

    .line 144
    .local v2, "jedis":Lredis/clients/jedis/Jedis;
    :try_start_0
    new-instance v3, Lredis/clients/jedis/Jedis;

    invoke-virtual {v1}, Lredis/clients/jedis/HostAndPort;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lredis/clients/jedis/HostAndPort;->getPort()I

    move-result v11

    invoke-direct {v3, v10, v11}, Lredis/clients/jedis/Jedis;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v2    # "jedis":Lredis/clients/jedis/Jedis;
    .local v3, "jedis":Lredis/clients/jedis/Jedis;
    :try_start_1
    invoke-virtual {v3, p2}, Lredis/clients/jedis/Jedis;->sentinelGetMasterAddrByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 149
    .local v5, "masterAddr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 151
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    .line 152
    :cond_3
    iget-object v10, p0, Lredis/clients/jedis/JedisSentinelPool;->log:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Can not get master addr, master name: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Sentinel: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 153
    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 152
    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 166
    if-eqz v3, :cond_0

    .line 167
    invoke-virtual {v3}, Lredis/clients/jedis/Jedis;->close()V

    goto/16 :goto_0

    .line 157
    :cond_4
    :try_start_2
    invoke-direct {p0, v5}, Lredis/clients/jedis/JedisSentinelPool;->toHostAndPort(Ljava/util/List;)Lredis/clients/jedis/HostAndPort;

    move-result-object v4

    .line 158
    iget-object v10, p0, Lredis/clients/jedis/JedisSentinelPool;->log:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Found Redis master at "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    if-eqz v3, :cond_1

    .line 167
    invoke-virtual {v3}, Lredis/clients/jedis/Jedis;->close()V

    goto/16 :goto_1

    .line 160
    .end local v3    # "jedis":Lredis/clients/jedis/Jedis;
    .end local v5    # "masterAddr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "jedis":Lredis/clients/jedis/Jedis;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Lredis/clients/jedis/exceptions/JedisException;
    :goto_2
    :try_start_3
    iget-object v10, p0, Lredis/clients/jedis/JedisSentinelPool;->log:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Cannot get master address from sentinel running @ "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 164
    const-string v12, ". Trying next one."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 163
    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {v2}, Lredis/clients/jedis/Jedis;->close()V

    goto/16 :goto_0

    .line 165
    .end local v0    # "e":Lredis/clients/jedis/exceptions/JedisException;
    :catchall_0
    move-exception v9

    .line 166
    :goto_3
    if-eqz v2, :cond_5

    .line 167
    invoke-virtual {v2}, Lredis/clients/jedis/Jedis;->close()V

    .line 169
    :cond_5
    throw v9

    .line 179
    .end local v1    # "hap":Lredis/clients/jedis/HostAndPort;
    .end local v2    # "jedis":Lredis/clients/jedis/Jedis;
    .end local v7    # "sentinel":Ljava/lang/String;
    :cond_6
    new-instance v9, Lredis/clients/jedis/exceptions/JedisConnectionException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "All sentinels down, cannot determine where is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " master is running..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 179
    invoke-direct {v9, v10}, Lredis/clients/jedis/exceptions/JedisConnectionException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 184
    :cond_7
    iget-object v9, p0, Lredis/clients/jedis/JedisSentinelPool;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Redis master running at "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", starting Sentinel listeners..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 186
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_8

    .line 195
    return-object v4

    .line 186
    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 187
    .restart local v7    # "sentinel":Ljava/lang/String;
    invoke-static {v7}, Lredis/clients/jedis/HostAndPort;->parseString(Ljava/lang/String;)Lredis/clients/jedis/HostAndPort;

    move-result-object v1

    .line 188
    .restart local v1    # "hap":Lredis/clients/jedis/HostAndPort;
    new-instance v6, Lredis/clients/jedis/JedisSentinelPool$MasterListener;

    invoke-virtual {v1}, Lredis/clients/jedis/HostAndPort;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lredis/clients/jedis/HostAndPort;->getPort()I

    move-result v11

    invoke-direct {v6, p0, p2, v10, v11}, Lredis/clients/jedis/JedisSentinelPool$MasterListener;-><init>(Lredis/clients/jedis/JedisSentinelPool;Ljava/lang/String;Ljava/lang/String;I)V

    .line 190
    .local v6, "masterListener":Lredis/clients/jedis/JedisSentinelPool$MasterListener;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->setDaemon(Z)V

    .line 191
    iget-object v10, p0, Lredis/clients/jedis/JedisSentinelPool;->masterListeners:Ljava/util/Set;

    invoke-interface {v10, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {v6}, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->start()V

    goto :goto_4

    .line 165
    .end local v6    # "masterListener":Lredis/clients/jedis/JedisSentinelPool$MasterListener;
    .restart local v3    # "jedis":Lredis/clients/jedis/Jedis;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "jedis":Lredis/clients/jedis/Jedis;
    .restart local v2    # "jedis":Lredis/clients/jedis/Jedis;
    goto :goto_3

    .line 160
    .end local v2    # "jedis":Lredis/clients/jedis/Jedis;
    .restart local v3    # "jedis":Lredis/clients/jedis/Jedis;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jedis":Lredis/clients/jedis/Jedis;
    .restart local v2    # "jedis":Lredis/clients/jedis/Jedis;
    goto/16 :goto_2
.end method

.method private toHostAndPort(Ljava/util/List;)Lredis/clients/jedis/HostAndPort;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lredis/clients/jedis/HostAndPort;"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "getMasterAddrByNameResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    .local v0, "host":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 202
    .local v1, "port":I
    new-instance v2, Lredis/clients/jedis/HostAndPort;

    invoke-direct {v2, v0, v1}, Lredis/clients/jedis/HostAndPort;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lredis/clients/jedis/JedisSentinelPool;->masterListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    invoke-super {p0}, Lredis/clients/jedis/JedisPoolAbstract;->destroy()V

    .line 104
    return-void

    .line 99
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/JedisSentinelPool$MasterListener;

    .line 100
    .local v0, "m":Lredis/clients/jedis/JedisSentinelPool$MasterListener;
    invoke-virtual {v0}, Lredis/clients/jedis/JedisSentinelPool$MasterListener;->shutdown()V

    goto :goto_0
.end method

.method public getCurrentHostMaster()Lredis/clients/jedis/HostAndPort;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lredis/clients/jedis/JedisSentinelPool;->currentHostMaster:Lredis/clients/jedis/HostAndPort;

    return-object v0
.end method

.method public bridge synthetic getResource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lredis/clients/jedis/JedisSentinelPool;->getResource()Lredis/clients/jedis/Jedis;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Lredis/clients/jedis/Jedis;
    .locals 5

    .prologue
    .line 208
    :goto_0
    invoke-super {p0}, Lredis/clients/jedis/JedisPoolAbstract;->getResource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lredis/clients/jedis/Jedis;

    .line 209
    .local v1, "jedis":Lredis/clients/jedis/Jedis;
    invoke-virtual {v1, p0}, Lredis/clients/jedis/Jedis;->setDataSource(Lredis/clients/jedis/JedisPoolAbstract;)V

    .line 212
    iget-object v2, p0, Lredis/clients/jedis/JedisSentinelPool;->currentHostMaster:Lredis/clients/jedis/HostAndPort;

    .line 213
    .local v2, "master":Lredis/clients/jedis/HostAndPort;
    new-instance v0, Lredis/clients/jedis/HostAndPort;

    invoke-virtual {v1}, Lredis/clients/jedis/Jedis;->getClient()Lredis/clients/jedis/Client;

    move-result-object v3

    invoke-virtual {v3}, Lredis/clients/jedis/Client;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lredis/clients/jedis/Jedis;->getClient()Lredis/clients/jedis/Client;

    move-result-object v4

    .line 214
    invoke-virtual {v4}, Lredis/clients/jedis/Client;->getPort()I

    move-result v4

    .line 213
    invoke-direct {v0, v3, v4}, Lredis/clients/jedis/HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 216
    .local v0, "connection":Lredis/clients/jedis/HostAndPort;
    invoke-virtual {v2, v0}, Lredis/clients/jedis/HostAndPort;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    return-object v1

    .line 220
    :cond_0
    invoke-virtual {p0, v1}, Lredis/clients/jedis/JedisSentinelPool;->returnBrokenResource(Lredis/clients/jedis/Jedis;)V

    goto :goto_0
.end method

.method protected returnBrokenResource(Lredis/clients/jedis/Jedis;)V
    .locals 0
    .param p1, "resource"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p0, p1}, Lredis/clients/jedis/JedisSentinelPool;->returnBrokenResourceObject(Ljava/lang/Object;)V

    .line 229
    :cond_0
    return-void
.end method

.method protected returnResource(Lredis/clients/jedis/Jedis;)V
    .locals 0
    .param p1, "resource"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 232
    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Lredis/clients/jedis/Jedis;->resetState()V

    .line 234
    invoke-virtual {p0, p1}, Lredis/clients/jedis/JedisSentinelPool;->returnResourceObject(Ljava/lang/Object;)V

    .line 236
    :cond_0
    return-void
.end method
