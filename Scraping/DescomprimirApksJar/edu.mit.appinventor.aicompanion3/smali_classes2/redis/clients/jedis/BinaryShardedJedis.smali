.class public Lredis/clients/jedis/BinaryShardedJedis;
.super Lredis/clients/util/Sharded;
.source "BinaryShardedJedis.java"

# interfaces
.implements Lredis/clients/jedis/commands/BinaryJedisCommands;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/util/Sharded",
        "<",
        "Lredis/clients/jedis/Jedis;",
        "Lredis/clients/jedis/JedisShardInfo;",
        ">;",
        "Lredis/clients/jedis/commands/BinaryJedisCommands;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
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
    .line 22
    .local p1, "shards":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/JedisShardInfo;>;"
    invoke-direct {p0, p1}, Lredis/clients/util/Sharded;-><init>(Ljava/util/List;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/regex/Pattern;)V
    .locals 0
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
    .line 30
    .local p1, "shards":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/JedisShardInfo;>;"
    invoke-direct {p0, p1, p2}, Lredis/clients/util/Sharded;-><init>(Ljava/util/List;Ljava/util/regex/Pattern;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lredis/clients/util/Hashing;)V
    .locals 0
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
    .line 26
    .local p1, "shards":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/JedisShardInfo;>;"
    invoke-direct {p0, p1, p2}, Lredis/clients/util/Sharded;-><init>(Ljava/util/List;Lredis/clients/util/Hashing;)V

    .line 27
    return-void
.end method

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
    .line 34
    .local p1, "shards":Ljava/util/List;, "Ljava/util/List<Lredis/clients/jedis/JedisShardInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Lredis/clients/util/Sharded;-><init>(Ljava/util/List;Lredis/clients/util/Hashing;Ljava/util/regex/Pattern;)V

    .line 35
    return-void
.end method


# virtual methods
.method public append([B[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 173
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->append([B[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public bitcount([B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 748
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 749
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->bitcount([B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public bitcount([BJJ)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 754
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 755
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->bitcount([BJJ)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public varargs bitfield([B[[B)Ljava/util/List;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "arguments"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 872
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 873
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->bitfield([B[[B)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blpop([B)Ljava/util/List;
    .locals 3
    .param p1, "arg"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 742
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 743
    .local v0, "j":Lredis/clients/jedis/Jedis;
    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Jedis;->blpop([[B)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public brpop([B)Ljava/util/List;
    .locals 3
    .param p1, "arg"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 737
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 738
    .local v0, "j":Lredis/clients/jedis/Jedis;
    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Jedis;->brpop([[B)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected create(Lredis/clients/jedis/JedisShardInfo;)Lredis/clients/jedis/Jedis;
    .locals 1
    .param p1, "shard"    # Lredis/clients/jedis/JedisShardInfo;

    .prologue
    .line 53
    new-instance v0, Lredis/clients/jedis/Jedis;

    invoke-direct {v0, p1}, Lredis/clients/jedis/Jedis;-><init>(Lredis/clients/jedis/JedisShardInfo;)V

    return-object v0
.end method

.method public decr([B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 143
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->decr([B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public decrBy([BJ)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "integer"    # J

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 137
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->decrBy([BJ)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public del([B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 149
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->del([B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lredis/clients/jedis/BinaryShardedJedis;->getAllShards()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    return-void

    .line 38
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 40
    .local v0, "jedis":Lredis/clients/jedis/Jedis;
    :try_start_0
    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->quit()Ljava/lang/String;
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisConnectionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->disconnect()V
    :try_end_1
    .catch Lredis/clients/jedis/exceptions/JedisConnectionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v2

    goto :goto_0

    .line 41
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public echo([B)[B
    .locals 2
    .param p1, "arg"    # [B

    .prologue
    .line 732
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 733
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->echo([B)[B

    move-result-object v1

    return-object v1
.end method

.method public exists([B)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 77
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->exists([B)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public expire([BI)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "seconds"    # I

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 89
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->expire([BI)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public expireAt([BJ)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "unixTime"    # J

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 101
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->expireAt([BJ)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public geoadd([BDD[B)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "member"    # [B

    .prologue
    .line 772
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 773
    invoke-virtual/range {v0 .. v6}, Lredis/clients/jedis/Jedis;->geoadd([BDD[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public geoadd([BLjava/util/Map;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 778
    .local p2, "memberCoordinateMap":Ljava/util/Map;, "Ljava/util/Map<[BLredis/clients/jedis/GeoCoordinate;>;"
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 779
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->geoadd([BLjava/util/Map;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public geodist([B[B[B)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "member1"    # [B
    .param p3, "member2"    # [B

    .prologue
    .line 784
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 785
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->geodist([B[B[B)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public geodist([B[B[BLredis/clients/jedis/GeoUnit;)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "member1"    # [B
    .param p3, "member2"    # [B
    .param p4, "unit"    # Lredis/clients/jedis/GeoUnit;

    .prologue
    .line 790
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 791
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->geodist([B[B[BLredis/clients/jedis/GeoUnit;)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public varargs geohash([B[[B)Ljava/util/List;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "members"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 796
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 797
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->geohash([B[[B)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public varargs geopos([B[[B)Ljava/util/List;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "members"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 802
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 803
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->geopos([B[[B)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public georadius([BDDDLredis/clients/jedis/GeoUnit;)Ljava/util/List;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "radius"    # D
    .param p8, "unit"    # Lredis/clients/jedis/GeoUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDD",
            "Lredis/clients/jedis/GeoUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 809
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    .line 810
    invoke-virtual/range {v0 .. v8}, Lredis/clients/jedis/Jedis;->georadius([BDDDLredis/clients/jedis/GeoUnit;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public georadius([BDDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "longitude"    # D
    .param p4, "latitude"    # D
    .param p6, "radius"    # D
    .param p8, "unit"    # Lredis/clients/jedis/GeoUnit;
    .param p9, "param"    # Lredis/clients/jedis/params/geo/GeoRadiusParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDD",
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
    .line 816
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 817
    invoke-virtual/range {v0 .. v9}, Lredis/clients/jedis/Jedis;->georadius([BDDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;)Ljava/util/List;
    .locals 7
    .param p1, "key"    # [B
    .param p2, "member"    # [B
    .param p3, "radius"    # D
    .param p5, "unit"    # Lredis/clients/jedis/GeoUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BD",
            "Lredis/clients/jedis/GeoUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 823
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lredis/clients/jedis/Jedis;

    .local v1, "j":Lredis/clients/jedis/Jedis;
    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 824
    invoke-virtual/range {v1 .. v6}, Lredis/clients/jedis/Jedis;->georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;
    .locals 9
    .param p1, "key"    # [B
    .param p2, "member"    # [B
    .param p3, "radius"    # D
    .param p5, "unit"    # Lredis/clients/jedis/GeoUnit;
    .param p6, "param"    # Lredis/clients/jedis/params/geo/GeoRadiusParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BD",
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
    .line 830
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lredis/clients/jedis/Jedis;

    .local v1, "j":Lredis/clients/jedis/Jedis;
    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 831
    invoke-virtual/range {v1 .. v7}, Lredis/clients/jedis/Jedis;->georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get([B)[B
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 71
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->get([B)[B

    move-result-object v1

    return-object v1
.end method

.method public getSet([B[B)[B
    .locals 2
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 119
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->getSet([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public getbit([BJ)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "offset"    # J

    .prologue
    .line 708
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 709
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->getbit([BJ)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public getrange([BJJ)[B
    .locals 6
    .param p1, "key"    # [B
    .param p2, "startOffset"    # J
    .param p4, "endOffset"    # J

    .prologue
    .line 720
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 721
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->getrange([BJJ)[B

    move-result-object v1

    return-object v1
.end method

.method public varargs hdel([B[[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "fields"    # [[B

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 233
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->hdel([B[[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public hexists([B[B)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "field"    # [B

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 227
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->hexists([B[B)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public hget([B[B)[B
    .locals 2
    .param p1, "key"    # [B
    .param p2, "field"    # [B

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 191
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->hget([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public hgetAll([B)Ljava/util/Map;
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 257
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->hgetAll([B)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public hincrBy([B[BJ)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "value"    # J

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 215
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->hincrBy([B[BJ)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public hincrByFloat([B[BD)Ljava/lang/Double;
    .locals 3
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "value"    # D

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 221
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->hincrByFloat([B[BD)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public hkeys([B)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 245
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->hkeys([B)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public hlen([B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 239
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->hlen([B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public varargs hmget([B[[B)Ljava/util/List;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "fields"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 209
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->hmget([B[[B)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public hmset([BLjava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 202
    .local p2, "hash":Ljava/util/Map;, "Ljava/util/Map<[B[B>;"
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 203
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->hmset([BLjava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hscan([B[B)Lredis/clients/jedis/ScanResult;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "cursor"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation

    .prologue
    .line 836
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 837
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->hscan([B[B)Lredis/clients/jedis/ScanResult;

    move-result-object v1

    return-object v1
.end method

.method public hscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "cursor"    # [B
    .param p3, "params"    # Lredis/clients/jedis/ScanParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Lredis/clients/jedis/ScanParams;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation

    .prologue
    .line 842
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 843
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->hscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;

    move-result-object v1

    return-object v1
.end method

.method public hset([B[B[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "value"    # [B

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 185
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->hset([B[B[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public hsetnx([B[B[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "field"    # [B
    .param p3, "value"    # [B

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 197
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->hsetnx([B[B[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public hstrlen([B[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "field"    # [B

    .prologue
    .line 878
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 879
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->hstrlen([B[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public hvals([B)Ljava/util/Collection;
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 251
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->hvals([B)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public incr([B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 167
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->incr([B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public incrBy([BJ)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "integer"    # J

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 155
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->incrBy([BJ)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public incrByFloat([BD)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "integer"    # D

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 161
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->incrByFloat([BD)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public lindex([BJ)[B
    .locals 2
    .param p1, "key"    # [B
    .param p2, "index"    # J

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 317
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->lindex([BJ)[B

    move-result-object v1

    return-object v1
.end method

.method public linsert([BLredis/clients/jedis/BinaryClient$LIST_POSITION;[B[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "where"    # Lredis/clients/jedis/BinaryClient$LIST_POSITION;
    .param p3, "pivot"    # [B
    .param p4, "value"    # [B

    .prologue
    .line 669
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 670
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->linsert([BLredis/clients/jedis/BinaryClient$LIST_POSITION;[B[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public llen([B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 299
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->llen([B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public lpop([B)[B
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 335
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->lpop([B)[B

    move-result-object v1

    return-object v1
.end method

.method public varargs lpush([B[[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "strings"    # [[B

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 269
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->lpush([B[[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public varargs lpushx([B[[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "string"    # [[B

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 281
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->lpushx([B[[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public lrange([BJJ)Ljava/util/List;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 305
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->lrange([BJJ)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public lrem([BJ[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "count"    # J
    .param p4, "value"    # [B

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 329
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->lrem([BJ[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public lset([BJ[B)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "index"    # J
    .param p4, "value"    # [B

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 323
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->lset([BJ[B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public ltrim([BJJ)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 311
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->ltrim([BJJ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public move([BI)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "dbIndex"    # I

    .prologue
    .line 726
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 727
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->move([BI)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public objectEncoding([B)[B
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 685
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 686
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->objectEncoding([B)[B

    move-result-object v1

    return-object v1
.end method

.method public objectIdletime([B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 690
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 691
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->objectIdletime([B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public objectRefcount([B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 680
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 681
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->objectRefcount([B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public persist([B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 287
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->persist([B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public pexpire([BJ)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "milliseconds"    # J

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 95
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->pexpire([BJ)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public pexpireAt([BJ)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "millisecondsTimestamp"    # J

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 107
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->pexpireAt([BJ)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public varargs pfadd([B[[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "elements"    # [[B

    .prologue
    .line 760
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 761
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->pfadd([B[[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public pfcount([B)J
    .locals 4
    .param p1, "key"    # [B

    .prologue
    .line 766
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 767
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->pfcount([B)J

    move-result-wide v2

    return-wide v2
.end method

.method public pipelined()Lredis/clients/jedis/ShardedJedisPipeline;
    .locals 1

    .prologue
    .line 674
    new-instance v0, Lredis/clients/jedis/ShardedJedisPipeline;

    invoke-direct {v0}, Lredis/clients/jedis/ShardedJedisPipeline;-><init>()V

    .line 675
    .local v0, "pipeline":Lredis/clients/jedis/ShardedJedisPipeline;
    invoke-virtual {v0, p0}, Lredis/clients/jedis/ShardedJedisPipeline;->setShardedJedis(Lredis/clients/jedis/BinaryShardedJedis;)V

    .line 676
    return-object v0
.end method

.method public rpop([B)[B
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 341
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->rpop([B)[B

    move-result-object v1

    return-object v1
.end method

.method public varargs rpush([B[[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "strings"    # [[B

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 263
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->rpush([B[[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public varargs rpushx([B[[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "string"    # [[B

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 293
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->rpushx([B[[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public varargs sadd([B[[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "members"    # [[B

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 347
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->sadd([B[[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public scard([B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 376
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 377
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->scard([B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public set([B[B)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 59
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->set([B[B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public set([B[BLredis/clients/jedis/params/set/SetParams;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "value"    # [B
    .param p3, "params"    # Lredis/clients/jedis/params/set/SetParams;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 65
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->set([B[BLredis/clients/jedis/params/set/SetParams;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setbit([BJZ)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "offset"    # J
    .param p4, "value"    # Z

    .prologue
    .line 696
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 697
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->setbit([BJZ)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public setbit([BJ[B)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "offset"    # J
    .param p4, "value"    # [B

    .prologue
    .line 702
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 703
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->setbit([BJ[B)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public setex([BI[B)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "seconds"    # I
    .param p3, "value"    # [B

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 131
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->setex([BI[B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setnx([B[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "value"    # [B

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 125
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->setnx([B[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public setrange([BJ[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "offset"    # J
    .param p4, "value"    # [B

    .prologue
    .line 714
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 715
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->setrange([BJ[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public sismember([B[B)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "member"    # [B

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 383
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->sismember([B[B)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public smembers([B)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 353
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->smembers([B)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public sort([B)Ljava/util/List;
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 491
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->sort([B)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public sort([BLredis/clients/jedis/SortingParams;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "sortingParameters"    # Lredis/clients/jedis/SortingParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lredis/clients/jedis/SortingParams;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 497
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->sort([BLredis/clients/jedis/SortingParams;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public spop([BJ)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 371
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->spop([BJ)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public spop([B)[B
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 365
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->spop([B)[B

    move-result-object v1

    return-object v1
.end method

.method public srandmember([BI)Ljava/util/List;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "count"    # I

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 395
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->srandmember([BI)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public srandmember([B)[B
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 388
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 389
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->srandmember([B)[B

    move-result-object v1

    return-object v1
.end method

.method public varargs srem([B[[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "members"    # [[B

    .prologue
    .line 358
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 359
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->srem([B[[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public sscan([B[B)Lredis/clients/jedis/ScanResult;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "cursor"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/ScanResult",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 848
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 849
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->sscan([B[B)Lredis/clients/jedis/ScanResult;

    move-result-object v1

    return-object v1
.end method

.method public sscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "cursor"    # [B
    .param p3, "params"    # Lredis/clients/jedis/ScanParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Lredis/clients/jedis/ScanParams;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 854
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 855
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->sscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;

    move-result-object v1

    return-object v1
.end method

.method public strlen([B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 275
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->strlen([B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public substr([BII)[B
    .locals 2
    .param p1, "key"    # [B
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 179
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->substr([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public ttl([B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 113
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->ttl([B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public type([B)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 83
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->type([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public zadd([BD[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 401
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->zadd([BD[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zadd([BD[BLredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZAddParams;

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 407
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zadd([BD[BLredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zadd([BLjava/util/Map;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 412
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<[BLjava/lang/Double;>;"
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 413
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->zadd([BLjava/util/Map;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zadd([BLjava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p3, "params"    # Lredis/clients/jedis/params/sortedset/ZAddParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B",
            "Ljava/lang/Double;",
            ">;",
            "Lredis/clients/jedis/params/sortedset/ZAddParams;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 418
    .local p2, "scoreMembers":Ljava/util/Map;, "Ljava/util/Map<[BLjava/lang/Double;>;"
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 419
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zadd([BLjava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zcard([B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 479
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->zcard([B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zcount([BDD)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D

    .prologue
    .line 502
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 503
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zcount([BDD)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zcount([B[B[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 509
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zcount([B[B[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zincrby([BD[B)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 437
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3, p4}, Lredis/clients/jedis/Jedis;->zincrby([BD[B)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public zincrby([BD[BLredis/clients/jedis/params/sortedset/ZIncrByParams;)Ljava/lang/Double;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "score"    # D
    .param p4, "member"    # [B
    .param p5, "params"    # Lredis/clients/jedis/params/sortedset/ZIncrByParams;

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 443
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zincrby([BD[BLredis/clients/jedis/params/sortedset/ZIncrByParams;)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public zlexcount([B[B[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B

    .prologue
    .line 632
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 633
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zlexcount([B[B[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zrange([BJJ)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 424
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 425
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrange([BJJ)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeByLex([B[B[B)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 639
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zrangeByLex([B[B[B)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeByLex([B[B[BII)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 645
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 646
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrangeByLex([B[B[BII)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeByScore([BDD)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 514
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 515
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrangeByScore([BDD)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeByScore([BDDII)Ljava/util/Set;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 520
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    .line 521
    invoke-virtual/range {v0 .. v7}, Lredis/clients/jedis/Jedis;->zrangeByScore([BDDII)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeByScore([B[B[B)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 540
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zrangeByScore([B[B[B)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeByScore([B[B[BII)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 559
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrangeByScore([B[B[BII)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeByScoreWithScores([BDD)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 527
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrangeByScoreWithScores([BDD)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeByScoreWithScores([BDDII)Ljava/util/Set;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "min"    # D
    .param p4, "max"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    .line 534
    invoke-virtual/range {v0 .. v7}, Lredis/clients/jedis/Jedis;->zrangeByScoreWithScores([BDDII)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeByScoreWithScores([B[B[B)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 546
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zrangeByScoreWithScores([B[B[B)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeByScoreWithScores([B[B[BII)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 553
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrangeByScoreWithScores([B[B[BII)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrangeWithScores([BJJ)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 467
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrangeWithScores([BJJ)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrank([B[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "member"    # [B

    .prologue
    .line 448
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 449
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->zrank([B[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public varargs zrem([B[[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "members"    # [[B

    .prologue
    .line 430
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 431
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->zrem([B[[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zremrangeByLex([B[B[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "min"    # [B
    .param p3, "max"    # [B

    .prologue
    .line 663
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 664
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zremrangeByLex([B[B[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zremrangeByRank([BJJ)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 615
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zremrangeByRank([BJJ)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zremrangeByScore([BDD)Ljava/lang/Long;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # D
    .param p4, "end"    # D

    .prologue
    .line 620
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 621
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zremrangeByScore([BDD)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zremrangeByScore([B[B[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "start"    # [B
    .param p3, "end"    # [B

    .prologue
    .line 626
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 627
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zremrangeByScore([B[B[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zrevrange([BJJ)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 461
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrevrange([BJJ)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeByLex([B[B[B)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 651
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 652
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zrevrangeByLex([B[B[B)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeByLex([B[B[BII)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 657
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 658
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrevrangeByLex([B[B[BII)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeByScore([BDD)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "max"    # D
    .param p4, "min"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 564
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 565
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrevrangeByScore([BDD)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeByScore([BDDII)Ljava/util/Set;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "max"    # D
    .param p4, "min"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    .line 571
    invoke-virtual/range {v0 .. v7}, Lredis/clients/jedis/Jedis;->zrevrangeByScore([BDDII)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeByScore([B[B[B)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 590
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zrevrangeByScore([B[B[B)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeByScore([B[B[BII)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 595
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 596
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrevrangeByScore([B[B[BII)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeByScoreWithScores([BDD)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "max"    # D
    .param p4, "min"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 577
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrevrangeByScoreWithScores([BDD)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeByScoreWithScores([BDDII)Ljava/util/Set;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "max"    # D
    .param p4, "min"    # D
    .param p6, "offset"    # I
    .param p7, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    .line 584
    invoke-virtual/range {v0 .. v7}, Lredis/clients/jedis/Jedis;->zrevrangeByScoreWithScores([BDDII)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeByScoreWithScores([B[B[B)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 602
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zrevrangeByScoreWithScores([B[B[B)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeByScoreWithScores([B[B[BII)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "max"    # [B
    .param p3, "min"    # [B
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 609
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrevrangeByScoreWithScores([B[B[BII)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrangeWithScores([BJJ)Ljava/util/Set;
    .locals 6
    .param p1, "key"    # [B
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .local v0, "j":Lredis/clients/jedis/Jedis;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 473
    invoke-virtual/range {v0 .. v5}, Lredis/clients/jedis/Jedis;->zrevrangeWithScores([BJJ)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public zrevrank([B[B)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "member"    # [B

    .prologue
    .line 454
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 455
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->zrevrank([B[B)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public zscan([B[B)Lredis/clients/jedis/ScanResult;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "cursor"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 860
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 861
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->zscan([B[B)Lredis/clients/jedis/ScanResult;

    move-result-object v1

    return-object v1
.end method

.method public zscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "cursor"    # [B
    .param p3, "params"    # Lredis/clients/jedis/ScanParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Lredis/clients/jedis/ScanParams;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 866
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 867
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2, p3}, Lredis/clients/jedis/Jedis;->zscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;

    move-result-object v1

    return-object v1
.end method

.method public zscore([B[B)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # [B
    .param p2, "member"    # [B

    .prologue
    .line 484
    invoke-virtual {p0, p1}, Lredis/clients/jedis/BinaryShardedJedis;->getShard([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Jedis;

    .line 485
    .local v0, "j":Lredis/clients/jedis/Jedis;
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->zscore([B[B)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method
