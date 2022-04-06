.class public interface abstract Lredis/clients/jedis/commands/Commands;
.super Ljava/lang/Object;
.source "Commands.java"


# virtual methods
.method public abstract append(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract bgrewriteaof()V
.end method

.method public abstract bgsave()V
.end method

.method public abstract bitcount(Ljava/lang/String;)V
.end method

.method public abstract bitcount(Ljava/lang/String;JJ)V
.end method

.method public varargs abstract bitfield(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public varargs abstract bitop(Lredis/clients/jedis/BitOP;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract blpop([Ljava/lang/String;)V
.end method

.method public abstract brpop([Ljava/lang/String;)V
.end method

.method public abstract brpoplpush(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract configGet(Ljava/lang/String;)V
.end method

.method public abstract configResetStat()V
.end method

.method public abstract configSet(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract decr(Ljava/lang/String;)V
.end method

.method public abstract decrBy(Ljava/lang/String;J)V
.end method

.method public varargs abstract del([Ljava/lang/String;)V
.end method

.method public abstract discard()V
.end method

.method public abstract echo(Ljava/lang/String;)V
.end method

.method public abstract exec()V
.end method

.method public abstract exists(Ljava/lang/String;)V
.end method

.method public varargs abstract exists([Ljava/lang/String;)V
.end method

.method public abstract expire(Ljava/lang/String;I)V
.end method

.method public abstract expireAt(Ljava/lang/String;J)V
.end method

.method public abstract get(Ljava/lang/String;)V
.end method

.method public abstract getSet(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getbit(Ljava/lang/String;J)V
.end method

.method public abstract getrange(Ljava/lang/String;JJ)V
.end method

.method public varargs abstract hdel(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract hexists(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract hget(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract hgetAll(Ljava/lang/String;)V
.end method

.method public abstract hincrBy(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract hincrByFloat(Ljava/lang/String;Ljava/lang/String;D)V
.end method

.method public abstract hkeys(Ljava/lang/String;)V
.end method

.method public abstract hlen(Ljava/lang/String;)V
.end method

.method public varargs abstract hmget(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract hmset(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)V
.end method

.method public abstract hset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract hsetnx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract hstrlen(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract hvals(Ljava/lang/String;)V
.end method

.method public abstract incr(Ljava/lang/String;)V
.end method

.method public abstract incrBy(Ljava/lang/String;J)V
.end method

.method public abstract incrByFloat(Ljava/lang/String;D)V
.end method

.method public abstract keys(Ljava/lang/String;)V
.end method

.method public abstract lastsave()V
.end method

.method public abstract lindex(Ljava/lang/String;J)V
.end method

.method public abstract linsert(Ljava/lang/String;Lredis/clients/jedis/BinaryClient$LIST_POSITION;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract llen(Ljava/lang/String;)V
.end method

.method public abstract lpop(Ljava/lang/String;)V
.end method

.method public varargs abstract lpush(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public varargs abstract lpushx(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract lrange(Ljava/lang/String;JJ)V
.end method

.method public abstract lrem(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract lset(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract ltrim(Ljava/lang/String;JJ)V
.end method

.method public varargs abstract mget([Ljava/lang/String;)V
.end method

.method public abstract move(Ljava/lang/String;I)V
.end method

.method public varargs abstract mset([Ljava/lang/String;)V
.end method

.method public varargs abstract msetnx([Ljava/lang/String;)V
.end method

.method public abstract multi()V
.end method

.method public abstract objectEncoding(Ljava/lang/String;)V
.end method

.method public abstract objectIdletime(Ljava/lang/String;)V
.end method

.method public abstract objectRefcount(Ljava/lang/String;)V
.end method

.method public abstract persist(Ljava/lang/String;)V
.end method

.method public abstract rename(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract renamenx(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract rpop(Ljava/lang/String;)V
.end method

.method public abstract rpoplpush(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public varargs abstract rpush(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public varargs abstract rpushx(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public varargs abstract sadd(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract save()V
.end method

.method public abstract scan(Ljava/lang/String;Lredis/clients/jedis/ScanParams;)V
.end method

.method public abstract scard(Ljava/lang/String;)V
.end method

.method public varargs abstract sdiff([Ljava/lang/String;)V
.end method

.method public varargs abstract sdiffstore(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/params/set/SetParams;)V
.end method

.method public abstract setbit(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract setbit(Ljava/lang/String;JZ)V
.end method

.method public abstract setex(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract setnx(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setrange(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public varargs abstract sinter([Ljava/lang/String;)V
.end method

.method public varargs abstract sinterstore(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract sismember(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract smembers(Ljava/lang/String;)V
.end method

.method public abstract smove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sort(Ljava/lang/String;)V
.end method

.method public abstract sort(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;)V
.end method

.method public abstract sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;Ljava/lang/String;)V
.end method

.method public abstract spop(Ljava/lang/String;)V
.end method

.method public abstract spop(Ljava/lang/String;J)V
.end method

.method public abstract srandmember(Ljava/lang/String;)V
.end method

.method public varargs abstract srem(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract sscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)V
.end method

.method public abstract strlen(Ljava/lang/String;)V
.end method

.method public abstract substr(Ljava/lang/String;II)V
.end method

.method public varargs abstract sunion([Ljava/lang/String;)V
.end method

.method public varargs abstract sunionstore(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract ttl(Ljava/lang/String;)V
.end method

.method public abstract type(Ljava/lang/String;)V
.end method

.method public abstract waitReplicas(IJ)V
.end method

.method public varargs abstract watch([Ljava/lang/String;)V
.end method

.method public abstract zadd(Ljava/lang/String;DLjava/lang/String;)V
.end method

.method public abstract zadd(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZAddParams;)V
.end method

.method public abstract zadd(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract zadd(Ljava/lang/String;Ljava/util/Map;Lredis/clients/jedis/params/sortedset/ZAddParams;)V
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
            ")V"
        }
    .end annotation
.end method

.method public abstract zcard(Ljava/lang/String;)V
.end method

.method public abstract zcount(Ljava/lang/String;DD)V
.end method

.method public abstract zcount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract zincrby(Ljava/lang/String;DLjava/lang/String;)V
.end method

.method public abstract zincrby(Ljava/lang/String;DLjava/lang/String;Lredis/clients/jedis/params/sortedset/ZIncrByParams;)V
.end method

.method public varargs abstract zinterstore(Ljava/lang/String;Lredis/clients/jedis/ZParams;[Ljava/lang/String;)V
.end method

.method public varargs abstract zinterstore(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract zrange(Ljava/lang/String;JJ)V
.end method

.method public abstract zrangeByScore(Ljava/lang/String;DD)V
.end method

.method public abstract zrangeByScore(Ljava/lang/String;DDII)V
.end method

.method public abstract zrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract zrangeByScoreWithScores(Ljava/lang/String;DD)V
.end method

.method public abstract zrangeByScoreWithScores(Ljava/lang/String;DDII)V
.end method

.method public abstract zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract zrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract zrangeWithScores(Ljava/lang/String;JJ)V
.end method

.method public abstract zrank(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public varargs abstract zrem(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract zremrangeByRank(Ljava/lang/String;JJ)V
.end method

.method public abstract zremrangeByScore(Ljava/lang/String;DD)V
.end method

.method public abstract zremrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract zrevrange(Ljava/lang/String;JJ)V
.end method

.method public abstract zrevrangeByScore(Ljava/lang/String;DD)V
.end method

.method public abstract zrevrangeByScore(Ljava/lang/String;DDII)V
.end method

.method public abstract zrevrangeByScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract zrevrangeByScoreWithScores(Ljava/lang/String;DD)V
.end method

.method public abstract zrevrangeByScoreWithScores(Ljava/lang/String;DDII)V
.end method

.method public abstract zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract zrevrangeByScoreWithScores(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract zrevrangeWithScores(Ljava/lang/String;JJ)V
.end method

.method public abstract zrevrank(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract zscan(Ljava/lang/String;Ljava/lang/String;Lredis/clients/jedis/ScanParams;)V
.end method

.method public abstract zscore(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public varargs abstract zunionstore(Ljava/lang/String;Lredis/clients/jedis/ZParams;[Ljava/lang/String;)V
.end method

.method public varargs abstract zunionstore(Ljava/lang/String;[Ljava/lang/String;)V
.end method
