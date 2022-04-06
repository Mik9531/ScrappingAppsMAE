.class Lredis/clients/jedis/ShardedJedisPool$ShardedJedisFactory;
.super Ljava/lang/Object;
.source "ShardedJedisPool.java"

# interfaces
.implements Lorg/apache/commons/pool2/PooledObjectFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lredis/clients/jedis/ShardedJedisPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShardedJedisFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool2/PooledObjectFactory",
        "<",
        "Lredis/clients/jedis/ShardedJedis;",
        ">;"
    }
.end annotation


# instance fields
.field private algo:Lredis/clients/util/Hashing;

.field private keyTagPattern:Ljava/util/regex/Pattern;

.field private shards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/JedisShardInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lredis/clients/util/Hashing;Ljava/util/regex/Pattern;)V
    .locals 0
    .param p2, "algo"    # Lredis/clients/util/Hashing;
    .param p3, "keyTagPattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 64
    .local p1, "shards":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/JedisShardInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lredis/clients/jedis/ShardedJedisPool$ShardedJedisFactory;->shards:Ljava/util/List;

    .line 66
    iput-object p2, p0, Lredis/clients/jedis/ShardedJedisPool$ShardedJedisFactory;->algo:Lredis/clients/util/Hashing;

    .line 67
    iput-object p3, p0, Lredis/clients/jedis/ShardedJedisPool$ShardedJedisFactory;->keyTagPattern:Ljava/util/regex/Pattern;

    .line 68
    return-void
.end method


# virtual methods
.method public activateObject(Lorg/apache/commons/pool2/PooledObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObject",
            "<",
            "Lredis/clients/jedis/ShardedJedis;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<Lredis/clients/jedis/ShardedJedis;>;"
    return-void
.end method

.method public destroyObject(Lorg/apache/commons/pool2/PooledObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObject",
            "<",
            "Lredis/clients/jedis/ShardedJedis;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "pooledShardedJedis":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<Lredis/clients/jedis/ShardedJedis;>;"
    invoke-interface {p1}, Lorg/apache/commons/pool2/PooledObject;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lredis/clients/jedis/ShardedJedis;

    .line 79
    .local v1, "shardedJedis":Lredis/clients/jedis/ShardedJedis;
    invoke-virtual {v1}, Lredis/clients/jedis/ShardedJedis;->getAllShards()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    return-void

    .line 79
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 82
    .local v0, "jedis":Lredis/clients/jedis/Jedis;
    :try_start_0
    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->quit()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v3

    goto :goto_0

    .line 83
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public makeObject()Lorg/apache/commons/pool2/PooledObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool2/PooledObject",
            "<",
            "Lredis/clients/jedis/ShardedJedis;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lredis/clients/jedis/ShardedJedis;

    iget-object v1, p0, Lredis/clients/jedis/ShardedJedisPool$ShardedJedisFactory;->shards:Ljava/util/List;

    iget-object v2, p0, Lredis/clients/jedis/ShardedJedisPool$ShardedJedisFactory;->algo:Lredis/clients/util/Hashing;

    iget-object v3, p0, Lredis/clients/jedis/ShardedJedisPool$ShardedJedisFactory;->keyTagPattern:Ljava/util/regex/Pattern;

    invoke-direct {v0, v1, v2, v3}, Lredis/clients/jedis/ShardedJedis;-><init>(Ljava/util/List;Lredis/clients/util/Hashing;Ljava/util/regex/Pattern;)V

    .line 73
    .local v0, "jedis":Lredis/clients/jedis/ShardedJedis;
    new-instance v1, Lorg/apache/commons/pool2/impl/DefaultPooledObject;

    invoke-direct {v1, v0}, Lorg/apache/commons/pool2/impl/DefaultPooledObject;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public passivateObject(Lorg/apache/commons/pool2/PooledObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObject",
            "<",
            "Lredis/clients/jedis/ShardedJedis;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<Lredis/clients/jedis/ShardedJedis;>;"
    return-void
.end method

.method public validateObject(Lorg/apache/commons/pool2/PooledObject;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObject",
            "<",
            "Lredis/clients/jedis/ShardedJedis;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "pooledShardedJedis":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<Lredis/clients/jedis/ShardedJedis;>;"
    const/4 v3, 0x0

    .line 96
    :try_start_0
    invoke-interface {p1}, Lorg/apache/commons/pool2/PooledObject;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lredis/clients/jedis/ShardedJedis;

    .line 97
    .local v1, "jedis":Lredis/clients/jedis/ShardedJedis;
    invoke-virtual {v1}, Lredis/clients/jedis/ShardedJedis;->getAllShards()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 102
    const/4 v3, 0x1

    .line 104
    .end local v1    # "jedis":Lredis/clients/jedis/ShardedJedis;
    :goto_0
    return v3

    .line 97
    .restart local v1    # "jedis":Lredis/clients/jedis/ShardedJedis;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lredis/clients/jedis/Jedis;

    .line 98
    .local v2, "shard":Lredis/clients/jedis/Jedis;
    invoke-virtual {v2}, Lredis/clients/jedis/Jedis;->ping()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PONG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 103
    .end local v1    # "jedis":Lredis/clients/jedis/ShardedJedis;
    .end local v2    # "shard":Lredis/clients/jedis/Jedis;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method
