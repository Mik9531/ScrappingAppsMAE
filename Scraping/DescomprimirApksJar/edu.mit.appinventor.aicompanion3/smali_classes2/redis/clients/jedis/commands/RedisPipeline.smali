.class public interface abstract Lredis/clients/jedis/commands/RedisPipeline;
.super Ljava/lang/Object;
.source "RedisPipeline.java"


# virtual methods
.method public abstract append(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract bitcount(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract bitcount(Ljava/lang/String;JJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract bitfield(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract blpop(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract brpop(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract decr(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract decrBy(Ljava/lang/String;J)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract del(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract echo(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract exists(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract expire(Ljava/lang/String;I)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract expireAt(Ljava/lang/String;J)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract geoadd(Ljava/lang/String;DDLjava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract geoadd(Ljava/lang/String;Ljava/util/Map;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public abstract geodist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/GeoUnit;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/GeoUnit;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract geohash(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public varargs abstract geopos(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDD",
            "Lredis/clients/jedis/GeoUnit;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract georadius(Ljava/lang/String;DDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDD",
            "Lredis/clients/jedis/GeoUnit;",
            "Lredis/clients/jedis/params/geo/GeoRadiusParam;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Lredis/clients/jedis/GeoUnit;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract georadiusByMember(Ljava/lang/String;Ljava/lang/String;DLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Lredis/clients/jedis/GeoUnit;",
            "Lredis/clients/jedis/params/geo/GeoRadiusParam;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoRadiusResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSet(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getbit(Ljava/lang/String;J)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getrange(Ljava/lang/String;JJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract hdel(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hexists(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hget(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hgetAll(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract hincrBy(Ljava/lang/String;Ljava/lang/String;J)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hkeys(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract hlen(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract hmget(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract hmset(Ljava/lang/String;Ljava/util/Map;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hsetnx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hstrlen(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hvals(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract incr(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract incrBy(Ljava/lang/String;J)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lindex(Ljava/lang/String;J)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract linsert(Ljava/lang/String;Lredis/clients/jedis/BinaryClient$LIST_POSITION;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/BinaryClient$LIST_POSITION;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract llen(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lpop(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract lpush(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract lpushx(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lrange(Ljava/lang/String;JJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract lrem(Ljava/lang/String;JLjava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lset(Ljava/lang/String;JLjava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract ltrim(Ljava/lang/String;JJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract move(Ljava/lang/String;I)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract persist(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pexpire(Ljava/lang/String;J)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pexpireAt(Ljava/lang/String;J)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract pfadd(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pfcount(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract rpop(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract rpush(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract rpushx(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract sadd(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract scard(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setbit(Ljava/lang/String;JZ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setex(Ljava/lang/String;ILjava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setnx(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setrange(Ljava/lang/String;JLjava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sismember(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract smembers(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract sort(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/SortingParams;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract spop(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract spop(Ljava/lang/String;J)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract srandmember(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract srem(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract strlen(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract substr(Ljava/lang/String;II)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract ttl(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract type(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zadd(Ljava/lang/String;DLjava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zadd(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZAddParams;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/params/sortedset/ZAddParams;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zadd(Ljava/lang/String;Ljava/util/Map;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zadd(Ljava/lang/String;Ljava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)Lredis/clients/jedis/Response;
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
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zcard(Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zcount(Ljava/lang/String;DD)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zincrby(Ljava/lang/String;DLjava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zincrby(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZIncrByParams;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/params/sortedset/ZIncrByParams;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zlexcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zrange(Ljava/lang/String;JJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrangeByScore(Ljava/lang/String;DD)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrangeByScore(Ljava/lang/String;DDII)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrangeByScoreWithScores(Ljava/lang/String;DD)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrangeByScoreWithScores(Ljava/lang/String;DDII)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrangeWithScores(Ljava/lang/String;JJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrank(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract zrem(Ljava/lang/String;[Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zremrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zremrangeByRank(Ljava/lang/String;JJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zremrangeByScore(Ljava/lang/String;DD)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zrevrange(Ljava/lang/String;JJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByLex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScore(Ljava/lang/String;DD)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScore(Ljava/lang/String;DDII)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScoreWithScores(Ljava/lang/String;DD)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScoreWithScores(Ljava/lang/String;DDII)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeWithScores(Ljava/lang/String;JJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrevrank(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zscore(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method
