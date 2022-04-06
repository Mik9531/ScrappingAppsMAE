.class public Lredis/clients/jedis/ShardedJedis;
.super Lredis/clients/jedis/BinaryShardedJedis;
.source "ShardedJedis.java"

# interfaces
.implements Lredis/clients/jedis/commands/JedisCommands;
.implements Ljava/io/Closeable;


# instance fields
.field protected dataSource:Lredis/clients/jedis/ShardedJedisPool;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/JedisShardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "shards":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/JedisShardInfo;>;"
    invoke-direct {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;-><init>(Ljava/util/List;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/ShardedJedis;->dataSource:Lredis/clients/jedis/ShardedJedisPool;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/regex/Pattern;)V
    .locals 1
    .param p2, "keyTagPattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/JedisShardInfo;",
            ">;",
            "Ljava/util/regex/Pattern;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "shards":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/JedisShardInfo;>;"
    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryShardedJedis;-><init>(Ljava/util/List;Ljava/util/regex/Pattern;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/ShardedJedis;->dataSource:Lredis/clients/jedis/ShardedJedisPool;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lredis/clients/util/Hashing;)V
    .locals 1
    .param p2, "algo"    # Lredis/clients/util/Hashing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/JedisShardInfo;",
            ">;",
            "Lredis/clients/util/Hashing;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "shards":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/JedisShardInfo;>;"
    invoke-direct {p0, p1, p2}, Lredis/clients/jedis/BinaryShardedJedis;-><init>(Ljava/util/List;Lredis/clients/util/Hashing;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/ShardedJedis;->dataSource:Lredis/clients/jedis/ShardedJedisPool;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lredis/clients/util/Hashing;Ljava/util/regex/Pattern;)V
    .locals 1
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
    .line 35
    .local p1, "shards":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/JedisShardInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Lredis/clients/jedis/BinaryShardedJedis;-><init>(Ljava/util/List;Lredis/clients/util/Hashing;Ljava/util/regex/Pattern;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lredis/clients/jedis/ShardedJedis;->dataSource:Lredis/clients/jedis/ShardedJedisPool;

    .line 36
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 219
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->append(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public bitcount(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 727
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 728
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->bitcount(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public bitcount(Ljava/lang/String;JJ)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 733
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 734
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->bitcount(Ljava/lang/String;JJ)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public varargs bitfield(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 896
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 897
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->bitfield(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public bitpos(Ljava/lang/String;Z)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 739
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 740
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->bitpos(Ljava/lang/String;Z)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public bitpos(Ljava/lang/String;ZLredis/clients/jedis/BitPosParams;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "params"    # Lredis/clients/jedis/BitPosParams;

    .prologue
    .line 745
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 746
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->bitpos(Ljava/lang/String;ZLredis/clients/jedis/BitPosParams;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public blpop(ILjava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "timeout"    # I
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0, p2}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 172
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->blpop(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blpop(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 166
    .local v0, "j":Lredis/clients/jedis/Jedis;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Jedis;->blpop([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public brpop(ILjava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "timeout"    # I
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0, p2}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 183
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->brpop(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public brpop(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 177
    .local v0, "j":Lredis/clients/jedis/Jedis;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Jedis;->brpop([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public close()V
    .locals 4

    .prologue
    .line 787
    iget-object v2, p0, Lredis/clients/jedis/ShardedJedis;->dataSource:Lredis/clients/jedis/ShardedJedisPool;

    if-eqz v2, :cond_3

    .line 788
    const/4 v0, 0x0

    .line 790
    .local v0, "broken":Z
    invoke-virtual {p0}, Lredis/clients/jedis/ShardedJedis;->getAllShards()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 797
    :goto_0
    if-eqz v0, :cond_2

    .line 798
    iget-object v2, p0, Lredis/clients/jedis/ShardedJedis;->dataSource:Lredis/clients/jedis/ShardedJedisPool;

    invoke-virtual {v2, p0}, Lredis/clients/jedis/ShardedJedisPool;->returnBrokenResource(Lredis/clients/jedis/ShardedJedis;)V

    .line 806
    .end local v0    # "broken":Z
    :goto_1
    return-void

    .line 790
    .restart local v0    # "broken":Z
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lredis/clients/jedis/Jedis;

    .line 791
    .local v1, "jedis":Lredis/clients/jedis/Jedis;
    invoke-virtual {v1}, Lredis/clients/jedis/Jedis;->getClient()Lredis/clients/jedis/Client;

    move-result-object v3

    invoke-virtual {v3}, Lredis/clients/jedis/Client;->isBroken()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 792
    const/4 v0, 0x1

    .line 793
    goto :goto_0

    .line 800
    .end local v1    # "jedis":Lredis/clients/jedis/Jedis;
    :cond_2
    iget-object v2, p0, Lredis/clients/jedis/ShardedJedis;->dataSource:Lredis/clients/jedis/ShardedJedisPool;

    invoke-virtual {v2, p0}, Lredis/clients/jedis/ShardedJedisPool;->returnResource(Lredis/clients/jedis/ShardedJedis;)V

    goto :goto_1

    .line 804
    .end local v0    # "broken":Z
    :cond_3
    invoke-virtual {p0}, Lredis/clients/jedis/ShardedJedis;->disconnect()V

    goto :goto_1
.end method

.method public decr(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 195
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->decr(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public decrBy(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "integer"    # J

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 189
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->decrBy(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public del(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 279
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->del(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public echo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 59
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->echo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public exists(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 65
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->exists(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public expire(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "seconds"    # I

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 77
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->expire(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public expireAt(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "unixTime"    # J

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 89
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->expireAt(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public geoadd(Ljava/lang/String;DDLjava/lang/String;)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "member"    # Ljava/lang/String;

    .prologue
    .line 832
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 833
    invoke-virtual/range {v0 .. v6}, Lredis/clients/jedis/Jedis;->geoadd(Ljava/lang/String;DDLjava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public geoadd(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 838
    .local p2, "memberCoordinateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lredis/clients/jedis/GeoCoordinate;>;"
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 839
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->geoadd(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member1"    # Ljava/lang/String;
    .param p3, "member2"    # Ljava/lang/String;

    .prologue
    .line 844
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 845
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/GeoUnit;)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member1"    # Ljava/lang/String;
    .param p3, "member2"    # Ljava/lang/String;
    .param p4, "unit"    # Lredis/clients/jedis/GeoUnit;

    .prologue
    .line 850
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 851
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/GeoUnit;)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public varargs geohash(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "members"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 856
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 857
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->geohash(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public varargs geopos(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "members"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 862
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 863
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->geopos(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;)Ljava/util/List;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "radius"    # D
    .param p8, "unit"    # Lredis/clients/jedis/GeoUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDD",
            "Lredis/clients/jedis/GeoUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 869
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    .line 870
    invoke-virtual/range {v0 .. v8}, Lredis/clients/jedis/Jedis;->georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "radius"    # D
    .param p8, "unit"    # Lredis/clients/jedis/GeoUnit;
    .param p9, "param"    # Lredis/clients/jedis/params/geo/GeoRadiusParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDD",
            "Lredis/clients/jedis/GeoUnit;",
            "Lredis/clients/jedis/params/geo/GeoRadiusParam;",
            ")",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 876
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 877
    invoke-virtual/range {v0 .. v9}, Lredis/clients/jedis/Jedis;->georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;)Ljava/util/List;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;
    .param p3, "radius"    # D
    .param p5, "unit"    # Lredis/clients/jedis/GeoUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Lredis/clients/jedis/GeoUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 883
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lredis/clients/jedis/Jedis;

    .local v1, "j":Lredis/clients/jedis/Jedis;
    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 884
    invoke-virtual/range {v1 .. v6}, Lredis/clients/jedis/Jedis;->georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;
    .param p3, "radius"    # D
    .param p5, "unit"    # Lredis/clients/jedis/GeoUnit;
    .param p6, "param"    # Lredis/clients/jedis/params/geo/GeoRadiusParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Lredis/clients/jedis/GeoUnit;",
            "Lredis/clients/jedis/params/geo/GeoRadiusParam;",
            ")",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 890
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lredis/clients/jedis/Jedis;

    .local v1, "j":Lredis/clients/jedis/Jedis;
    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 891
    invoke-virtual/range {v1 .. v7}, Lredis/clients/jedis/Jedis;->georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 53
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 143
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->getSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getbit(Ljava/lang/String;J)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 125
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->getbit(Ljava/lang/String;J)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public getrange(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "startOffset"    # J
    .param p4, "endOffset"    # J

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 137
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->getrange(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public varargs hdel(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fields"    # [Ljava/lang/String;

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 285
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->hdel(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public hexists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 273
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->hexists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public hget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 237
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->hget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hgetAll(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 309
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->hgetAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public hincrBy(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 261
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->hincrBy(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public hincrByFloat(Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/Double;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 267
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->hincrByFloat(Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public hkeys(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 297
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->hkeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public hlen(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 291
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->hlen(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public varargs hmget(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 255
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->hmget(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public hmset(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 248
    .local p2, "hash":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 249
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->hmset(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hscan(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/ScanResult;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 751
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 752
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->hscan(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/ScanResult;

    move-result-object v1

    return-object v1
.end method

.method public hscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cursor"    # Ljava/lang/String;
    .param p3, "params"    # Lredis/clients/jedis/ScanParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/ScanParams;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 757
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 758
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->hscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;

    move-result-object v1

    return-object v1
.end method

.method public hset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 231
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->hset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public hsetnx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 243
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->hsetnx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public hstrlen(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 902
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 903
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->hstrlen(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public hvals(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 303
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->hvals(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public incr(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 213
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->incr(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public incrBy(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "integer"    # J

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 201
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->incrBy(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public incrByFloat(Ljava/lang/String;D)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "integer"    # D

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 207
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->incrByFloat(Ljava/lang/String;D)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public lindex(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # J

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 375
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->lindex(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public linsert(Ljava/lang/String;Lredis/clients/jedis/BinaryClient$LIST_POSITION;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "where"    # Lredis/clients/jedis/BinaryClient$LIST_POSITION;
    .param p3, "pivot"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 721
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 722
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->linsert(Ljava/lang/String;Lredis/clients/jedis/BinaryClient$LIST_POSITION;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public llen(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 357
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->llen(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public lpop(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 393
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->lpop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public varargs lpush(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 321
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->lpush(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public varargs lpushx(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # [Ljava/lang/String;

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 327
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->lpushx(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public lrange(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 363
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->lrange(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public lrem(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 387
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->lrem(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public lset(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 381
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->lset(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public ltrim(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 369
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->ltrim(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public move(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dbIndex"    # I

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 339
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->move(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public persist(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 351
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->persist(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public pexpire(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "milliseconds"    # J

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 83
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->pexpire(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public pexpireAt(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "millisecondsTimestamp"    # J

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 95
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->pexpireAt(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public varargs pfadd(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "elements"    # [Ljava/lang/String;

    .prologue
    .line 820
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 821
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->pfadd(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public pfcount(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 826
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 827
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->pfcount(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public psetex(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "milliseconds"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 161
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->psetex(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public pttl(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 107
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->pttl(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public resetState()V
    .locals 3

    .prologue
    .line 813
    invoke-virtual {p0}, Lredis/clients/jedis/ShardedJedis;->getAllShards()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 816
    return-void

    .line 813
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 814
    .local v0, "jedis":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->resetState()V

    goto :goto_0
.end method

.method public rpop(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 399
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->rpop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public varargs rpush(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 315
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->rpush(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public varargs rpushx(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # [Ljava/lang/String;

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 345
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->rpushx(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public varargs sadd(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "members"    # [Ljava/lang/String;

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 405
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->sadd(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public scard(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 435
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->scard(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 41
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->set(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/params/set/SetParams;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "params"    # Lredis/clients/jedis/params/set/SetParams;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 47
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->set(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/params/set/SetParams;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setDataSource(Lredis/clients/jedis/ShardedJedisPool;)V
    .locals 0
    .param p1, "shardedJedisPool"    # Lredis/clients/jedis/ShardedJedisPool;

    .prologue
    .line 809
    iput-object p1, p0, Lredis/clients/jedis/ShardedJedis;->dataSource:Lredis/clients/jedis/ShardedJedisPool;

    .line 810
    return-void
.end method

.method public setbit(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 119
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->setbit(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public setbit(Ljava/lang/String;JZ)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "value"    # Z

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 113
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->setbit(Ljava/lang/String;JZ)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public setex(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "seconds"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 155
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->setex(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setnx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 149
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->setnx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public setrange(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 131
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->setrange(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public sismember(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 441
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->sismember(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public smembers(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 411
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->smembers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public sort(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 549
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->sort(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sortingParameters"    # Lredis/clients/jedis/SortingParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/SortingParams;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 554
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 555
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public spop(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 423
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->spop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public spop(Ljava/lang/String;J)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 429
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->spop(Ljava/lang/String;J)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public srandmember(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 447
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->srandmember(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public srandmember(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 453
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->srandmember(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public varargs srem(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "members"    # [Ljava/lang/String;

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 417
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->srem(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public sscan(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/ScanResult;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 763
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 764
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->sscan(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/ScanResult;

    move-result-object v1

    return-object v1
.end method

.method public sscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cursor"    # Ljava/lang/String;
    .param p3, "params"    # Lredis/clients/jedis/ScanParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/ScanParams;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 781
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 782
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->sscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;

    move-result-object v1

    return-object v1
.end method

.method public strlen(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 333
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->strlen(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public substr(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 225
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->substr(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public ttl(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 101
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->ttl(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public type(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 71
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->type(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public zadd(Ljava/lang/String;DLjava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;

    .prologue
    .line 458
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 459
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->zadd(Ljava/lang/String;DLjava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zadd(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZAddParams;

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 465
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zadd(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zadd(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 470
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 471
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->zadd(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zadd(Ljava/lang/String;Ljava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "params"    # Lredis/clients/jedis/params/sortedset/ZAddParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Lredis/clients/jedis/params/sortedset/ZAddParams;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 476
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 477
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zadd(Ljava/lang/String;Ljava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zcard(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 536
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 537
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->zcard(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zcount(Ljava/lang/String;DD)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D

    .prologue
    .line 560
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 561
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zcount(Ljava/lang/String;DD)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 567
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zincrby(Ljava/lang/String;DLjava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 495
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->zincrby(Ljava/lang/String;DLjava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public zincrby(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZIncrByParams;)Ljava/lang/Double;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # D
    .param p4, "member"    # Ljava/lang/String;
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZIncrByParams;

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 501
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zincrby(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZIncrByParams;)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public zlexcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;

    .prologue
    .line 690
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zlexcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zrange(Ljava/lang/String;JJ)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 483
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrange(Ljava/lang/String;JJ)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 695
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 701
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrangeByScore(Ljava/lang/String;DD)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 573
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrangeByScore(Ljava/lang/String;DD)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeByScore(Ljava/lang/String;DDII)Ljava/util/Set;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDII)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 584
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    .line 585
    invoke-virtual/range {v0 .. v7}, Lredis/clients/jedis/Jedis;->zrangeByScore(Ljava/lang/String;DDII)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 622
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 623
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 635
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;DD)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 597
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrangeByScoreWithScores(Ljava/lang/String;DD)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;DDII)Ljava/util/Set;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDII)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    .line 610
    invoke-virtual/range {v0 .. v7}, Lredis/clients/jedis/Jedis;->zrangeByScoreWithScores(Ljava/lang/String;DDII)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 646
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 647
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 660
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeWithScores(Ljava/lang/String;JJ)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 525
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrangeWithScores(Ljava/lang/String;JJ)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrank(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;

    .prologue
    .line 506
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 507
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->zrank(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public varargs zrem(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "members"    # [Ljava/lang/String;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 489
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->zrem(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zremrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "min"    # Ljava/lang/String;
    .param p3, "max"    # Ljava/lang/String;

    .prologue
    .line 716
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zremrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zremrangeByRank(Ljava/lang/String;JJ)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 672
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 673
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zremrangeByRank(Ljava/lang/String;JJ)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zremrangeByScore(Ljava/lang/String;DD)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # D
    .param p4, "end"    # D

    .prologue
    .line 678
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 679
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zremrangeByScore(Ljava/lang/String;DD)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zremrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;

    .prologue
    .line 684
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 685
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zremrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zrevrange(Ljava/lang/String;JJ)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 519
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrevrange(Ljava/lang/String;JJ)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 706
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 711
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zrevrangeByScore(Ljava/lang/String;DD)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # D
    .param p4, "min"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 579
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrevrangeByScore(Ljava/lang/String;DD)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeByScore(Ljava/lang/String;DDII)Ljava/util/Set;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # D
    .param p4, "min"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDII)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    .line 591
    invoke-virtual/range {v0 .. v7}, Lredis/clients/jedis/Jedis;->zrevrangeByScore(Ljava/lang/String;DDII)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 629
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 640
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 641
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;DD)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # D
    .param p4, "min"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 603
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrevrangeByScoreWithScores(Ljava/lang/String;DD)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;DDII)Ljava/util/Set;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # D
    .param p4, "min"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDII)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 616
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    .line 617
    invoke-virtual/range {v0 .. v7}, Lredis/clients/jedis/Jedis;->zrevrangeByScoreWithScores(Ljava/lang/String;DDII)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 652
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 653
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 666
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 667
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeWithScores(Ljava/lang/String;JJ)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 531
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrevrangeWithScores(Ljava/lang/String;JJ)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrank(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;

    .prologue
    .line 512
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 513
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->zrevrank(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zscan(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/ScanResult;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 769
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 770
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->zscan(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/ScanResult;

    move-result-object v1

    return-object v1
.end method

.method public zscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cursor"    # Ljava/lang/String;
    .param p3, "params"    # Lredis/clients/jedis/ScanParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/ScanParams;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 775
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 776
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;

    move-result-object v1

    return-object v1
.end method

.method public zscore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "member"    # Ljava/lang/String;

    .prologue
    .line 542
    invoke-virtual {p0, p1}, Lredis/clients/jedis/ShardedJedis;->getShard(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 543
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->zscore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method
