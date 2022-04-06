.class public Lredis/clients/jedis/ShardedJedisPool;
.super Lredis/clients/util/Pool;
.source "ShardedJedisPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lredis/clients/jedis/ShardedJedisPool$ShardedJedisFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/util/Pool",
        "<",
        "Lredis/clients/jedis/ShardedJedis;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/util/List;)V
    .locals 1
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/JedisShardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "shards":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/JedisShardInfo;>;"
    sget-object v0, Lredis/clients/util/Hashing;->MURMUR_HASH:Lredis/clients/util/Hashing;

    invoke-direct {p0, p1, p2, v0}, Lredis/clients/jedis/ShardedJedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/util/List;Lredis/clients/util/Hashing;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/util/List;Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p3, "keyTagPattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/JedisShardInfo;",
            ">;",
            "Ljava/util/regex/Pattern;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "shards":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/JedisShardInfo;>;"
    sget-object v0, Lredis/clients/util/Hashing;->MURMUR_HASH:Lredis/clients/util/Hashing;

    invoke-direct {p0, p1, p2, v0, p3}, Lredis/clients/jedis/ShardedJedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/util/List;Lredis/clients/util/Hashing;Ljava/util/regex/Pattern;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/util/List;Lredis/clients/util/Hashing;)V
    .locals 1
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p3, "algo"    # Lredis/clients/util/Hashing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/JedisShardInfo;",
            ">;",
            "Lredis/clients/util/Hashing;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "shards":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/JedisShardInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lredis/clients/jedis/ShardedJedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/util/List;Lredis/clients/util/Hashing;Ljava/util/regex/Pattern;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/util/List;Lredis/clients/util/Hashing;Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .param p3, "algo"    # Lredis/clients/util/Hashing;
    .param p4, "keyTagPattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/JedisShardInfo;",
            ">;",
            "Lredis/clients/util/Hashing;",
            "Ljava/util/regex/Pattern;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "shards":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/JedisShardInfo;>;"
    new-instance v0, Lredis/clients/jedis/ShardedJedisPool$ShardedJedisFactory;

    invoke-direct {v0, p2, p3, p4}, Lredis/clients/jedis/ShardedJedisPool$ShardedJedisFactory;-><init>(Ljava/util/List;Lredis/clients/util/Hashing;Ljava/util/regex/Pattern;)V

    invoke-direct {p0, p1, v0}, Lredis/clients/util/Pool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Lorg/apache/commons/pool2/PooledObjectFactory;)V

    .line 32
    return-void
.end method


# virtual methods
.method public bridge synthetic getResource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lredis/clients/jedis/ShardedJedisPool;->getResource()Lredis/clients/jedis/ShardedJedis;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Lredis/clients/jedis/ShardedJedis;
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lredis/clients/util/Pool;->getResource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/ShardedJedis;

    .line 37
    .local v0, "jedis":Lredis/clients/jedis/ShardedJedis;
    invoke-virtual {v0, p0}, Lredis/clients/jedis/ShardedJedis;->setDataSource(Lredis/clients/jedis/ShardedJedisPool;)V

    .line 38
    return-object v0
.end method

.method protected bridge synthetic returnBrokenResource(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lredis/clients/jedis/ShardedJedis;

    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedisPool;->returnBrokenResource(Lredis/clients/jedis/ShardedJedis;)V

    return-void
.end method

.method protected returnBrokenResource(Lredis/clients/jedis/ShardedJedis;)V
    .locals 0
    .param p1, "resource"    # Lredis/clients/jedis/ShardedJedis;

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedisPool;->returnBrokenResourceObject(Ljava/lang/Object;)V

    .line 46
    :cond_0
    return-void
.end method

.method protected bridge synthetic returnResource(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lredis/clients/jedis/ShardedJedis;

    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedisPool;->returnResource(Lredis/clients/jedis/ShardedJedis;)V

    return-void
.end method

.method protected returnResource(Lredis/clients/jedis/ShardedJedis;)V
    .locals 0
    .param p1, "resource"    # Lredis/clients/jedis/ShardedJedis;

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Lredis/clients/jedis/ShardedJedis;->resetState()V

    .line 52
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedisPool;->returnResourceObject(Ljava/lang/Object;)V

    .line 54
    :cond_0
    return-void
.end method
