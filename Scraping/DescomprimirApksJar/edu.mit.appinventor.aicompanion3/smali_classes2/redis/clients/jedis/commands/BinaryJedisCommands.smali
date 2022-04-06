.class public interface abstract Lredis/clients/jedis/commands/BinaryJedisCommands;
.super Ljava/lang/Object;
.source "BinaryJedisCommands.java"


# virtual methods
.method public abstract append([B[B)Ljava/lang/Long;
.end method

.method public abstract bitcount([B)Ljava/lang/Long;
.end method

.method public abstract bitcount([BJJ)Ljava/lang/Long;
.end method

.method public varargs abstract bitfield([B[[B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract decr([B)Ljava/lang/Long;
.end method

.method public abstract decrBy([BJ)Ljava/lang/Long;
.end method

.method public abstract del([B)Ljava/lang/Long;
.end method

.method public abstract echo([B)[B
.end method

.method public abstract exists([B)Ljava/lang/Boolean;
.end method

.method public abstract expire([BI)Ljava/lang/Long;
.end method

.method public abstract expireAt([BJ)Ljava/lang/Long;
.end method

.method public abstract geoadd([BDD[B)Ljava/lang/Long;
.end method

.method public abstract geoadd([BLjava/util/Map;)Ljava/lang/Long;
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
.end method

.method public abstract geodist([B[B[B)Ljava/lang/Double;
.end method

.method public abstract geodist([B[B[BLredis/clients/jedis/GeoUnit;)Ljava/lang/Double;
.end method

.method public varargs abstract geohash([B[[B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end method

.method public varargs abstract geopos([B[[B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract georadius([BDDDLredis/clients/jedis/GeoUnit;)Ljava/util/List;
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
.end method

.method public abstract georadius([BDDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;
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
.end method

.method public abstract georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;)Ljava/util/List;
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
.end method

.method public abstract georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;
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
.end method

.method public abstract get([B)[B
.end method

.method public abstract getSet([B[B)[B
.end method

.method public abstract getbit([BJ)Ljava/lang/Boolean;
.end method

.method public abstract getrange([BJJ)[B
.end method

.method public varargs abstract hdel([B[[B)Ljava/lang/Long;
.end method

.method public abstract hexists([B[B)Ljava/lang/Boolean;
.end method

.method public abstract hget([B[B)[B
.end method

.method public abstract hgetAll([B)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<[B[B>;"
        }
    .end annotation
.end method

.method public abstract hincrBy([B[BJ)Ljava/lang/Long;
.end method

.method public abstract hincrByFloat([B[BD)Ljava/lang/Double;
.end method

.method public abstract hkeys([B)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract hlen([B)Ljava/lang/Long;
.end method

.method public varargs abstract hmget([B[[B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract hmset([BLjava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract hscan([B[B)Lredis/clients/jedis/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation
.end method

.method public abstract hscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
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
.end method

.method public abstract hset([B[B[B)Ljava/lang/Long;
.end method

.method public abstract hsetnx([B[B[B)Ljava/lang/Long;
.end method

.method public abstract hstrlen([B[B)Ljava/lang/Long;
.end method

.method public abstract hvals([B)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract incr([B)Ljava/lang/Long;
.end method

.method public abstract incrBy([BJ)Ljava/lang/Long;
.end method

.method public abstract incrByFloat([BD)Ljava/lang/Double;
.end method

.method public abstract lindex([BJ)[B
.end method

.method public abstract linsert([BLredis/clients/jedis/BinaryClient$LIST_POSITION;[B[B)Ljava/lang/Long;
.end method

.method public abstract llen([B)Ljava/lang/Long;
.end method

.method public abstract lpop([B)[B
.end method

.method public varargs abstract lpush([B[[B)Ljava/lang/Long;
.end method

.method public varargs abstract lpushx([B[[B)Ljava/lang/Long;
.end method

.method public abstract lrange([BJJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract lrem([BJ[B)Ljava/lang/Long;
.end method

.method public abstract lset([BJ[B)Ljava/lang/String;
.end method

.method public abstract ltrim([BJJ)Ljava/lang/String;
.end method

.method public abstract move([BI)Ljava/lang/Long;
.end method

.method public abstract persist([B)Ljava/lang/Long;
.end method

.method public abstract pexpire([BJ)Ljava/lang/Long;
.end method

.method public abstract pexpireAt([BJ)Ljava/lang/Long;
.end method

.method public varargs abstract pfadd([B[[B)Ljava/lang/Long;
.end method

.method public abstract pfcount([B)J
.end method

.method public abstract rpop([B)[B
.end method

.method public varargs abstract rpush([B[[B)Ljava/lang/Long;
.end method

.method public varargs abstract rpushx([B[[B)Ljava/lang/Long;
.end method

.method public varargs abstract sadd([B[[B)Ljava/lang/Long;
.end method

.method public abstract scard([B)Ljava/lang/Long;
.end method

.method public abstract set([B[B)Ljava/lang/String;
.end method

.method public abstract set([B[BLredis/clients/jedis/params/set/SetParams;)Ljava/lang/String;
.end method

.method public abstract setbit([BJZ)Ljava/lang/Boolean;
.end method

.method public abstract setbit([BJ[B)Ljava/lang/Boolean;
.end method

.method public abstract setex([BI[B)Ljava/lang/String;
.end method

.method public abstract setnx([B[B)Ljava/lang/Long;
.end method

.method public abstract setrange([BJ[B)Ljava/lang/Long;
.end method

.method public abstract sismember([B[B)Ljava/lang/Boolean;
.end method

.method public abstract smembers([B)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract sort([B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract sort([BLredis/clients/jedis/SortingParams;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lredis/clients/jedis/SortingParams;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract spop([BJ)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract spop([B)[B
.end method

.method public abstract srandmember([BI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract srandmember([B)[B
.end method

.method public varargs abstract srem([B[[B)Ljava/lang/Long;
.end method

.method public abstract sscan([B[B)Lredis/clients/jedis/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/ScanResult",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract sscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Lredis/clients/jedis/ScanParams;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract strlen([B)Ljava/lang/Long;
.end method

.method public abstract substr([BII)[B
.end method

.method public abstract ttl([B)Ljava/lang/Long;
.end method

.method public abstract type([B)Ljava/lang/String;
.end method

.method public abstract zadd([BD[B)Ljava/lang/Long;
.end method

.method public abstract zadd([BD[BLredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;
.end method

.method public abstract zadd([BLjava/util/Map;)Ljava/lang/Long;
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
.end method

.method public abstract zadd([BLjava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;
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
.end method

.method public abstract zcard([B)Ljava/lang/Long;
.end method

.method public abstract zcount([BDD)Ljava/lang/Long;
.end method

.method public abstract zcount([B[B[B)Ljava/lang/Long;
.end method

.method public abstract zincrby([BD[B)Ljava/lang/Double;
.end method

.method public abstract zincrby([BD[BLredis/clients/jedis/params/sortedset/ZIncrByParams;)Ljava/lang/Double;
.end method

.method public abstract zlexcount([B[B[B)Ljava/lang/Long;
.end method

.method public abstract zrange([BJJ)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract zrangeByLex([B[B[B)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract zrangeByLex([B[B[BII)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract zrangeByScore([BDD)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract zrangeByScore([BDDII)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract zrangeByScore([B[B[B)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract zrangeByScore([B[B[BII)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract zrangeByScoreWithScores([BDD)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zrangeByScoreWithScores([BDDII)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zrangeByScoreWithScores([B[B[B)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zrangeByScoreWithScores([B[B[BII)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zrangeWithScores([BJJ)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zrank([B[B)Ljava/lang/Long;
.end method

.method public varargs abstract zrem([B[[B)Ljava/lang/Long;
.end method

.method public abstract zremrangeByLex([B[B[B)Ljava/lang/Long;
.end method

.method public abstract zremrangeByRank([BJJ)Ljava/lang/Long;
.end method

.method public abstract zremrangeByScore([BDD)Ljava/lang/Long;
.end method

.method public abstract zremrangeByScore([B[B[B)Ljava/lang/Long;
.end method

.method public abstract zrevrange([BJJ)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByLex([B[B[B)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByLex([B[B[BII)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScore([BDD)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScore([BDDII)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScore([B[B[B)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScore([B[B[BII)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScoreWithScores([BDD)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScoreWithScores([BDDII)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScoreWithScores([B[B[B)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScoreWithScores([B[B[BII)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zrevrangeWithScores([BJJ)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zrevrank([B[B)Ljava/lang/Long;
.end method

.method public abstract zscan([B[B)Lredis/clients/jedis/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zscan([B[BLredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
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
.end method

.method public abstract zscore([B[B)Ljava/lang/Double;
.end method
