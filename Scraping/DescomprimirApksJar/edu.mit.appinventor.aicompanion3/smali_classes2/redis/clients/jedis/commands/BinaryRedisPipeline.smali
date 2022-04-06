.class public interface abstract Lredis/clients/jedis/commands/BinaryRedisPipeline;
.super Ljava/lang/Object;
.source "BinaryRedisPipeline.java"


# virtual methods
.method public abstract append([B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract bitcount([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract bitcount([BJJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract bitfield([B[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract blpop([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract brpop([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract decr([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract decrBy([BJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract del([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract echo([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract exists([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract expire([BI)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract expireAt([BJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract geoadd([BDD[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract geoadd([BLjava/util/Map;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract geodist([B[B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public abstract geodist([B[B[BLredis/clients/jedis/GeoUnit;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B",
            "Lredis/clients/jedis/GeoUnit;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract geohash([B[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public varargs abstract geopos([B[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/GeoCoordinate;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract georadius([BDDDLredis/clients/jedis/GeoUnit;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDD",
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

.method public abstract georadius([BDDDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDD",
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

.method public abstract georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BD",
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

.method public abstract georadiusByMember([B[BDLredis/clients/jedis/GeoUnit;Lredis/clients/jedis/params/geo/GeoRadiusParam;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BD",
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

.method public abstract get([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract getSet([B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract getbit([BJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getrange([BJJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation
.end method

.method public varargs abstract hdel([B[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hexists([B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hget([B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract hgetAll([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Map",
            "<[B[B>;>;"
        }
    .end annotation
.end method

.method public abstract hincrBy([B[BJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hkeys([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract hlen([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract hmget([B[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract hmset([BLjava/util/Map;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B[B>;)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hset([B[B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hsetnx([B[B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hstrlen([B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hvals([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract incr([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract incrBy([BJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lindex([BJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract linsert([BLredis/clients/jedis/BinaryClient$LIST_POSITION;[B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lredis/clients/jedis/BinaryClient$LIST_POSITION;",
            "[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract llen([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lpop([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation
.end method

.method public varargs abstract lpush([B[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract lpushx([B[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lrange([BJJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract lrem([BJ[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lset([BJ[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract ltrim([BJJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract move([BI)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract persist([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pexpire([BJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pexpireAt([BJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract pfadd([B[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pfcount([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract rpop([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation
.end method

.method public varargs abstract rpush([B[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract rpushx([B[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract sadd([B[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract scard([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract set([B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setbit([BJ[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setex([BI[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setnx([B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
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

.method public abstract setrange([BJ[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sismember([B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract smembers([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract sort([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract sort([BLredis/clients/jedis/SortingParams;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lredis/clients/jedis/SortingParams;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract spop([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract spop([BJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract srandmember([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation
.end method

.method public varargs abstract srem([B[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract strlen([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract substr([BII)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract ttl([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract type([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zadd([BD[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BD[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zadd([BD[BLredis/clients/jedis/params/sortedset/ZAddParams;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BD[B",
            "Lredis/clients/jedis/params/sortedset/ZAddParams;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zadd([BLjava/util/Map;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B",
            "Ljava/lang/Double;",
            ">;)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zadd([BLjava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<[B",
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

.method public abstract zcard([B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zcount([BDD)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zincrby([BD[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BD[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zincrby([BD[BLredis/clients/jedis/params/sortedset/ZIncrByParams;)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BD[B",
            "Lredis/clients/jedis/params/sortedset/ZIncrByParams;",
            ")",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zlexcount([B[B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zrange([BJJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract zrangeByLex([B[B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract zrangeByLex([B[B[BII)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract zrangeByScore([BDD)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract zrangeByScore([BDDII)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract zrangeByScore([B[B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract zrangeByScore([B[B[BII)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract zrangeByScoreWithScores([BDD)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrangeByScoreWithScores([BDDII)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrangeByScoreWithScores([B[B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrangeByScoreWithScores([B[B[BII)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrangeWithScores([BJJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrank([B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract zrem([B[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zremrangeByLex([B[B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zremrangeByRank([BJJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zremrangeByScore([BDD)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zremrangeByScore([B[B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zrevrange([BJJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByLex([B[B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByLex([B[B[BII)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScore([BDD)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScore([BDDII)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScore([B[B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScore([B[B[BII)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScoreWithScores([BDD)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDD)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScoreWithScores([BDDII)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BDDII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScoreWithScores([B[B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeByScoreWithScores([B[B[BII)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BII)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrevrangeWithScores([BJJ)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJJ)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<",
            "Lredis/clients/jedis/Tuple;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract zrevrank([B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zscore([B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method
