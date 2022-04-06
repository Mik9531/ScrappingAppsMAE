.class public interface abstract Lredis/clients/jedis/commands/JedisClusterCommands;
.super Ljava/lang/Object;
.source "JedisClusterCommands.java"


# virtual methods
.method public abstract append(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract bitcount(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract bitcount(Ljava/lang/String;JJ)Ljava/lang/Long;
.end method

.method public varargs abstract bitfield(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract blpop(ILjava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract brpop(ILjava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract decr(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract decrBy(Ljava/lang/String;J)Ljava/lang/Long;
.end method

.method public abstract del(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract echo(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract exists(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract expire(Ljava/lang/String;I)Ljava/lang/Long;
.end method

.method public abstract expireAt(Ljava/lang/String;J)Ljava/lang/Long;
.end method

.method public abstract geoadd(Ljava/lang/String;DDLjava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract geoadd(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;
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
.end method

.method public abstract geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
.end method

.method public abstract geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/GeoUnit;)Ljava/lang/Double;
.end method

.method public varargs abstract geohash(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public varargs abstract geopos(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;)Ljava/util/List;
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
.end method

.method public abstract georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;
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
.end method

.method public abstract georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;)Ljava/util/List;
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
.end method

.method public abstract georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Ljava/util/List;
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
.end method

.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getbit(Ljava/lang/String;J)Ljava/lang/Boolean;
.end method

.method public abstract getrange(Ljava/lang/String;JJ)Ljava/lang/String;
.end method

.method public varargs abstract hdel(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract hexists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract hget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hgetAll(Ljava/lang/String;)Ljava/util/Map;
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
.end method

.method public abstract hincrBy(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Long;
.end method

.method public abstract hkeys(Ljava/lang/String;)Ljava/util/Set;
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
.end method

.method public abstract hlen(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public varargs abstract hmget(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract hmset(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
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
.end method

.method public abstract hscan(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/ScanResult;
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
.end method

.method public abstract hset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract hsetnx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract hstrlen(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract hvals(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract incr(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract incrBy(Ljava/lang/String;J)Ljava/lang/Long;
.end method

.method public abstract incrByFloat(Ljava/lang/String;D)Ljava/lang/Double;
.end method

.method public abstract lindex(Ljava/lang/String;J)Ljava/lang/String;
.end method

.method public abstract linsert(Ljava/lang/String;Lredis/clients/jedis/BinaryClient$LIST_POSITION;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract llen(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract lpop(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public varargs abstract lpush(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public varargs abstract lpushx(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract lrange(Ljava/lang/String;JJ)Ljava/util/List;
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
.end method

.method public abstract lrem(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract lset(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract ltrim(Ljava/lang/String;JJ)Ljava/lang/String;
.end method

.method public abstract persist(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract pexpire(Ljava/lang/String;J)Ljava/lang/Long;
.end method

.method public abstract pexpireAt(Ljava/lang/String;J)Ljava/lang/Long;
.end method

.method public varargs abstract pfadd(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract pfcount(Ljava/lang/String;)J
.end method

.method public abstract rpop(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public varargs abstract rpush(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public varargs abstract rpushx(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public varargs abstract sadd(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract scard(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/params/set/SetParams;)Ljava/lang/String;
.end method

.method public abstract setbit(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract setbit(Ljava/lang/String;JZ)Ljava/lang/Boolean;
.end method

.method public abstract setex(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setnx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract setrange(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract sismember(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract smembers(Ljava/lang/String;)Ljava/util/Set;
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
.end method

.method public abstract sort(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;)Ljava/util/List;
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
.end method

.method public abstract spop(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract spop(Ljava/lang/String;J)Ljava/util/Set;
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
.end method

.method public abstract srandmember(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract srandmember(Ljava/lang/String;I)Ljava/util/List;
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
.end method

.method public varargs abstract srem(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract sscan(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/ScanResult;
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
.end method

.method public abstract strlen(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract substr(Ljava/lang/String;II)Ljava/lang/String;
.end method

.method public abstract ttl(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract type(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract zadd(Ljava/lang/String;DLjava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract zadd(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;
.end method

.method public abstract zadd(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;
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
.end method

.method public abstract zadd(Ljava/lang/String;Ljava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)Ljava/lang/Long;
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
.end method

.method public abstract zcard(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract zcount(Ljava/lang/String;DD)Ljava/lang/Long;
.end method

.method public abstract zcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract zincrby(Ljava/lang/String;DLjava/lang/String;)Ljava/lang/Double;
.end method

.method public abstract zincrby(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZIncrByParams;)Ljava/lang/Double;
.end method

.method public abstract zlexcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract zrange(Ljava/lang/String;JJ)Ljava/util/Set;
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
.end method

.method public abstract zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
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
.end method

.method public abstract zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
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
.end method

.method public abstract zrangeByScore(Ljava/lang/String;DD)Ljava/util/Set;
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
.end method

.method public abstract zrangeByScore(Ljava/lang/String;DDII)Ljava/util/Set;
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
.end method

.method public abstract zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
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
.end method

.method public abstract zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
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
.end method

.method public abstract zrangeByScoreWithScores(Ljava/lang/String;DD)Ljava/util/Set;
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
.end method

.method public abstract zrangeByScoreWithScores(Ljava/lang/String;DDII)Ljava/util/Set;
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
.end method

.method public abstract zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
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
.end method

.method public abstract zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
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
.end method

.method public abstract zrangeWithScores(Ljava/lang/String;JJ)Ljava/util/Set;
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
.end method

.method public abstract zrank(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public varargs abstract zrem(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract zremrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract zremrangeByRank(Ljava/lang/String;JJ)Ljava/lang/Long;
.end method

.method public abstract zremrangeByScore(Ljava/lang/String;DD)Ljava/lang/Long;
.end method

.method public abstract zremrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract zrevrange(Ljava/lang/String;JJ)Ljava/util/Set;
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
.end method

.method public abstract zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
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
.end method

.method public abstract zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
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
.end method

.method public abstract zrevrangeByScore(Ljava/lang/String;DD)Ljava/util/Set;
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
.end method

.method public abstract zrevrangeByScore(Ljava/lang/String;DDII)Ljava/util/Set;
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
.end method

.method public abstract zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
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
.end method

.method public abstract zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
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
.end method

.method public abstract zrevrangeByScoreWithScores(Ljava/lang/String;DD)Ljava/util/Set;
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
.end method

.method public abstract zrevrangeByScoreWithScores(Ljava/lang/String;DDII)Ljava/util/Set;
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
.end method

.method public abstract zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
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
.end method

.method public abstract zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Set;
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
.end method

.method public abstract zrevrangeWithScores(Ljava/lang/String;JJ)Ljava/util/Set;
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
.end method

.method public abstract zrevrank(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract zscan(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/ScanResult;
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
.end method

.method public abstract zscore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
.end method
