.class public final enum Lredis/clients/jedis/Protocol$Command;
.super Ljava/lang/Enum;
.source "Protocol.java"

# interfaces
.implements Lredis/clients/jedis/commands/ProtocolCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lredis/clients/jedis/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lredis/clients/jedis/Protocol$Command;",
        ">;",
        "Lredis/clients/jedis/commands/ProtocolCommand;"
    }
.end annotation


# static fields
.field public static final enum APPEND:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ASKING:Lredis/clients/jedis/Protocol$Command;

.field public static final enum AUTH:Lredis/clients/jedis/Protocol$Command;

.field public static final enum BGREWRITEAOF:Lredis/clients/jedis/Protocol$Command;

.field public static final enum BGSAVE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum BITCOUNT:Lredis/clients/jedis/Protocol$Command;

.field public static final enum BITFIELD:Lredis/clients/jedis/Protocol$Command;

.field public static final enum BITOP:Lredis/clients/jedis/Protocol$Command;

.field public static final enum BITPOS:Lredis/clients/jedis/Protocol$Command;

.field public static final enum BLPOP:Lredis/clients/jedis/Protocol$Command;

.field public static final enum BRPOP:Lredis/clients/jedis/Protocol$Command;

.field public static final enum BRPOPLPUSH:Lredis/clients/jedis/Protocol$Command;

.field public static final enum CLIENT:Lredis/clients/jedis/Protocol$Command;

.field public static final enum CLUSTER:Lredis/clients/jedis/Protocol$Command;

.field public static final enum CONFIG:Lredis/clients/jedis/Protocol$Command;

.field public static final enum DBSIZE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum DEBUG:Lredis/clients/jedis/Protocol$Command;

.field public static final enum DECR:Lredis/clients/jedis/Protocol$Command;

.field public static final enum DECRBY:Lredis/clients/jedis/Protocol$Command;

.field public static final enum DEL:Lredis/clients/jedis/Protocol$Command;

.field public static final enum DISCARD:Lredis/clients/jedis/Protocol$Command;

.field public static final enum DUMP:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ECHO:Lredis/clients/jedis/Protocol$Command;

.field private static final synthetic ENUM$VALUES:[Lredis/clients/jedis/Protocol$Command;

.field public static final enum EVAL:Lredis/clients/jedis/Protocol$Command;

.field public static final enum EVALSHA:Lredis/clients/jedis/Protocol$Command;

.field public static final enum EXEC:Lredis/clients/jedis/Protocol$Command;

.field public static final enum EXISTS:Lredis/clients/jedis/Protocol$Command;

.field public static final enum EXPIRE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum EXPIREAT:Lredis/clients/jedis/Protocol$Command;

.field public static final enum FLUSHALL:Lredis/clients/jedis/Protocol$Command;

.field public static final enum FLUSHDB:Lredis/clients/jedis/Protocol$Command;

.field public static final enum GEOADD:Lredis/clients/jedis/Protocol$Command;

.field public static final enum GEODIST:Lredis/clients/jedis/Protocol$Command;

.field public static final enum GEOHASH:Lredis/clients/jedis/Protocol$Command;

.field public static final enum GEOPOS:Lredis/clients/jedis/Protocol$Command;

.field public static final enum GEORADIUS:Lredis/clients/jedis/Protocol$Command;

.field public static final enum GEORADIUSBYMEMBER:Lredis/clients/jedis/Protocol$Command;

.field public static final enum GET:Lredis/clients/jedis/Protocol$Command;

.field public static final enum GETBIT:Lredis/clients/jedis/Protocol$Command;

.field public static final enum GETRANGE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum GETSET:Lredis/clients/jedis/Protocol$Command;

.field public static final enum HDEL:Lredis/clients/jedis/Protocol$Command;

.field public static final enum HEXISTS:Lredis/clients/jedis/Protocol$Command;

.field public static final enum HGET:Lredis/clients/jedis/Protocol$Command;

.field public static final enum HGETALL:Lredis/clients/jedis/Protocol$Command;

.field public static final enum HINCRBY:Lredis/clients/jedis/Protocol$Command;

.field public static final enum HINCRBYFLOAT:Lredis/clients/jedis/Protocol$Command;

.field public static final enum HKEYS:Lredis/clients/jedis/Protocol$Command;

.field public static final enum HLEN:Lredis/clients/jedis/Protocol$Command;

.field public static final enum HMGET:Lredis/clients/jedis/Protocol$Command;

.field public static final enum HMSET:Lredis/clients/jedis/Protocol$Command;

.field public static final enum HSCAN:Lredis/clients/jedis/Protocol$Command;

.field public static final enum HSET:Lredis/clients/jedis/Protocol$Command;

.field public static final enum HSETNX:Lredis/clients/jedis/Protocol$Command;

.field public static final enum HSTRLEN:Lredis/clients/jedis/Protocol$Command;

.field public static final enum HVALS:Lredis/clients/jedis/Protocol$Command;

.field public static final enum INCR:Lredis/clients/jedis/Protocol$Command;

.field public static final enum INCRBY:Lredis/clients/jedis/Protocol$Command;

.field public static final enum INCRBYFLOAT:Lredis/clients/jedis/Protocol$Command;

.field public static final enum INFO:Lredis/clients/jedis/Protocol$Command;

.field public static final enum KEYS:Lredis/clients/jedis/Protocol$Command;

.field public static final enum LASTSAVE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum LINDEX:Lredis/clients/jedis/Protocol$Command;

.field public static final enum LINSERT:Lredis/clients/jedis/Protocol$Command;

.field public static final enum LLEN:Lredis/clients/jedis/Protocol$Command;

.field public static final enum LPOP:Lredis/clients/jedis/Protocol$Command;

.field public static final enum LPUSH:Lredis/clients/jedis/Protocol$Command;

.field public static final enum LPUSHX:Lredis/clients/jedis/Protocol$Command;

.field public static final enum LRANGE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum LREM:Lredis/clients/jedis/Protocol$Command;

.field public static final enum LSET:Lredis/clients/jedis/Protocol$Command;

.field public static final enum LTRIM:Lredis/clients/jedis/Protocol$Command;

.field public static final enum MGET:Lredis/clients/jedis/Protocol$Command;

.field public static final enum MIGRATE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum MODULE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum MONITOR:Lredis/clients/jedis/Protocol$Command;

.field public static final enum MOVE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum MSET:Lredis/clients/jedis/Protocol$Command;

.field public static final enum MSETNX:Lredis/clients/jedis/Protocol$Command;

.field public static final enum MULTI:Lredis/clients/jedis/Protocol$Command;

.field public static final enum OBJECT:Lredis/clients/jedis/Protocol$Command;

.field public static final enum PERSIST:Lredis/clients/jedis/Protocol$Command;

.field public static final enum PEXPIRE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum PEXPIREAT:Lredis/clients/jedis/Protocol$Command;

.field public static final enum PFADD:Lredis/clients/jedis/Protocol$Command;

.field public static final enum PFCOUNT:Lredis/clients/jedis/Protocol$Command;

.field public static final enum PFMERGE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum PING:Lredis/clients/jedis/Protocol$Command;

.field public static final enum PSETEX:Lredis/clients/jedis/Protocol$Command;

.field public static final enum PSUBSCRIBE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum PTTL:Lredis/clients/jedis/Protocol$Command;

.field public static final enum PUBLISH:Lredis/clients/jedis/Protocol$Command;

.field public static final enum PUBSUB:Lredis/clients/jedis/Protocol$Command;

.field public static final enum PUNSUBSCRIBE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum QUIT:Lredis/clients/jedis/Protocol$Command;

.field public static final enum RANDOMKEY:Lredis/clients/jedis/Protocol$Command;

.field public static final enum READONLY:Lredis/clients/jedis/Protocol$Command;

.field public static final enum RENAME:Lredis/clients/jedis/Protocol$Command;

.field public static final enum RENAMENX:Lredis/clients/jedis/Protocol$Command;

.field public static final enum RENAMEX:Lredis/clients/jedis/Protocol$Command;

.field public static final enum RESTORE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum RPOP:Lredis/clients/jedis/Protocol$Command;

.field public static final enum RPOPLPUSH:Lredis/clients/jedis/Protocol$Command;

.field public static final enum RPUSH:Lredis/clients/jedis/Protocol$Command;

.field public static final enum RPUSHX:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SADD:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SAVE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SCAN:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SCARD:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SCRIPT:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SDIFF:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SDIFFSTORE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SELECT:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SENTINEL:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SET:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SETBIT:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SETEX:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SETNX:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SETRANGE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SHUTDOWN:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SINTER:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SINTERSTORE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SISMEMBER:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SLAVEOF:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SLOWLOG:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SMEMBERS:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SMOVE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SORT:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SPOP:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SRANDMEMBER:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SREM:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SSCAN:Lredis/clients/jedis/Protocol$Command;

.field public static final enum STRLEN:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SUBSCRIBE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SUBSTR:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SUNION:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SUNIONSTORE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum SYNC:Lredis/clients/jedis/Protocol$Command;

.field public static final enum TIME:Lredis/clients/jedis/Protocol$Command;

.field public static final enum TTL:Lredis/clients/jedis/Protocol$Command;

.field public static final enum TYPE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum UNSUBSCRIBE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum UNWATCH:Lredis/clients/jedis/Protocol$Command;

.field public static final enum WAIT:Lredis/clients/jedis/Protocol$Command;

.field public static final enum WATCH:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZADD:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZCARD:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZCOUNT:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZINCRBY:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZINTERSTORE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZLEXCOUNT:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZRANGE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZRANGEBYLEX:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZRANK:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZREM:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZREMRANGEBYLEX:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZREMRANGEBYRANK:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZREMRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZREVRANGE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZREVRANGEBYLEX:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZREVRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZREVRANK:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZSCAN:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZSCORE:Lredis/clients/jedis/Protocol$Command;

.field public static final enum ZUNIONSTORE:Lredis/clients/jedis/Protocol$Command;


# instance fields
.field private final raw:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 239
    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "PING"

    invoke-direct {v0, v1, v3}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->PING:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SET"

    invoke-direct {v0, v1, v4}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SET:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "GET"

    invoke-direct {v0, v1, v5}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->GET:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "QUIT"

    invoke-direct {v0, v1, v6}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->QUIT:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "EXISTS"

    invoke-direct {v0, v1, v7}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->EXISTS:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "DEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->DEL:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "TYPE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->TYPE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "FLUSHDB"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->FLUSHDB:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "KEYS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->KEYS:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "RANDOMKEY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->RANDOMKEY:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "RENAME"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->RENAME:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "RENAMENX"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->RENAMENX:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "RENAMEX"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->RENAMEX:Lredis/clients/jedis/Protocol$Command;

    .line 240
    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "DBSIZE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->DBSIZE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "EXPIRE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->EXPIRE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "EXPIREAT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->EXPIREAT:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "TTL"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->TTL:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SELECT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SELECT:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "MOVE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->MOVE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "FLUSHALL"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->FLUSHALL:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "GETSET"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->GETSET:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "MGET"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->MGET:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SETNX"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SETNX:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SETEX"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SETEX:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "MSET"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->MSET:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "MSETNX"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->MSETNX:Lredis/clients/jedis/Protocol$Command;

    .line 241
    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "DECRBY"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->DECRBY:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "DECR"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->DECR:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "INCRBY"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->INCRBY:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "INCR"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->INCR:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "APPEND"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->APPEND:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SUBSTR"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SUBSTR:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "HSET"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->HSET:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "HGET"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->HGET:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "HSETNX"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->HSETNX:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "HMSET"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->HMSET:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "HMGET"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->HMGET:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "HINCRBY"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->HINCRBY:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "HEXISTS"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->HEXISTS:Lredis/clients/jedis/Protocol$Command;

    .line 242
    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "HDEL"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->HDEL:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "HLEN"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->HLEN:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "HKEYS"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->HKEYS:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "HVALS"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->HVALS:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "HGETALL"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->HGETALL:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "RPUSH"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->RPUSH:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "LPUSH"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->LPUSH:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "LLEN"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->LLEN:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "LRANGE"

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->LRANGE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "LTRIM"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->LTRIM:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "LINDEX"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->LINDEX:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "LSET"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->LSET:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "LREM"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->LREM:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "LPOP"

    const/16 v2, 0x34

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->LPOP:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "RPOP"

    const/16 v2, 0x35

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->RPOP:Lredis/clients/jedis/Protocol$Command;

    .line 243
    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "RPOPLPUSH"

    const/16 v2, 0x36

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->RPOPLPUSH:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SADD"

    const/16 v2, 0x37

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SADD:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SMEMBERS"

    const/16 v2, 0x38

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SMEMBERS:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SREM"

    const/16 v2, 0x39

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SREM:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SPOP"

    const/16 v2, 0x3a

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SPOP:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SMOVE"

    const/16 v2, 0x3b

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SMOVE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SCARD"

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SCARD:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SISMEMBER"

    const/16 v2, 0x3d

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SISMEMBER:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SINTER"

    const/16 v2, 0x3e

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SINTER:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SINTERSTORE"

    const/16 v2, 0x3f

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SINTERSTORE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SUNION"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SUNION:Lredis/clients/jedis/Protocol$Command;

    .line 244
    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SUNIONSTORE"

    const/16 v2, 0x41

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SUNIONSTORE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SDIFF"

    const/16 v2, 0x42

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SDIFF:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SDIFFSTORE"

    const/16 v2, 0x43

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SDIFFSTORE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SRANDMEMBER"

    const/16 v2, 0x44

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SRANDMEMBER:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZADD"

    const/16 v2, 0x45

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZADD:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZRANGE"

    const/16 v2, 0x46

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZREM"

    const/16 v2, 0x47

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZREM:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZINCRBY"

    const/16 v2, 0x48

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZINCRBY:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZRANK"

    const/16 v2, 0x49

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANK:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZREVRANK"

    const/16 v2, 0x4a

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANK:Lredis/clients/jedis/Protocol$Command;

    .line 245
    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZREVRANGE"

    const/16 v2, 0x4b

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZCARD"

    const/16 v2, 0x4c

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZCARD:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZSCORE"

    const/16 v2, 0x4d

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZSCORE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "MULTI"

    const/16 v2, 0x4e

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->MULTI:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "DISCARD"

    const/16 v2, 0x4f

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->DISCARD:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "EXEC"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->EXEC:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "WATCH"

    const/16 v2, 0x51

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->WATCH:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "UNWATCH"

    const/16 v2, 0x52

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->UNWATCH:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SORT"

    const/16 v2, 0x53

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SORT:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "BLPOP"

    const/16 v2, 0x54

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->BLPOP:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "BRPOP"

    const/16 v2, 0x55

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->BRPOP:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "AUTH"

    const/16 v2, 0x56

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->AUTH:Lredis/clients/jedis/Protocol$Command;

    .line 246
    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SUBSCRIBE"

    const/16 v2, 0x57

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SUBSCRIBE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "PUBLISH"

    const/16 v2, 0x58

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->PUBLISH:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "UNSUBSCRIBE"

    const/16 v2, 0x59

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->UNSUBSCRIBE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "PSUBSCRIBE"

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->PSUBSCRIBE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "PUNSUBSCRIBE"

    const/16 v2, 0x5b

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->PUNSUBSCRIBE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "PUBSUB"

    const/16 v2, 0x5c

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->PUBSUB:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZCOUNT"

    const/16 v2, 0x5d

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZCOUNT:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZRANGEBYSCORE"

    const/16 v2, 0x5e

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    .line 247
    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZREVRANGEBYSCORE"

    const/16 v2, 0x5f

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZREMRANGEBYRANK"

    const/16 v2, 0x60

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZREMRANGEBYRANK:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZREMRANGEBYSCORE"

    const/16 v2, 0x61

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZREMRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZUNIONSTORE"

    const/16 v2, 0x62

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZUNIONSTORE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZINTERSTORE"

    const/16 v2, 0x63

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZINTERSTORE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZLEXCOUNT"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZLEXCOUNT:Lredis/clients/jedis/Protocol$Command;

    .line 248
    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZRANGEBYLEX"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZRANGEBYLEX:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZREVRANGEBYLEX"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZREVRANGEBYLEX:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZREMRANGEBYLEX"

    const/16 v2, 0x67

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZREMRANGEBYLEX:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SAVE"

    const/16 v2, 0x68

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SAVE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "BGSAVE"

    const/16 v2, 0x69

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->BGSAVE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "BGREWRITEAOF"

    const/16 v2, 0x6a

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->BGREWRITEAOF:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "LASTSAVE"

    const/16 v2, 0x6b

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->LASTSAVE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SHUTDOWN"

    const/16 v2, 0x6c

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SHUTDOWN:Lredis/clients/jedis/Protocol$Command;

    .line 249
    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "INFO"

    const/16 v2, 0x6d

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->INFO:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "MONITOR"

    const/16 v2, 0x6e

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->MONITOR:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SLAVEOF"

    const/16 v2, 0x6f

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SLAVEOF:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "CONFIG"

    const/16 v2, 0x70

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->CONFIG:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "STRLEN"

    const/16 v2, 0x71

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->STRLEN:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SYNC"

    const/16 v2, 0x72

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SYNC:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "LPUSHX"

    const/16 v2, 0x73

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->LPUSHX:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "PERSIST"

    const/16 v2, 0x74

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->PERSIST:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "RPUSHX"

    const/16 v2, 0x75

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->RPUSHX:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ECHO"

    const/16 v2, 0x76

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ECHO:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "LINSERT"

    const/16 v2, 0x77

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->LINSERT:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "DEBUG"

    const/16 v2, 0x78

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->DEBUG:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "BRPOPLPUSH"

    const/16 v2, 0x79

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->BRPOPLPUSH:Lredis/clients/jedis/Protocol$Command;

    .line 250
    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SETBIT"

    const/16 v2, 0x7a

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SETBIT:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "GETBIT"

    const/16 v2, 0x7b

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->GETBIT:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "BITPOS"

    const/16 v2, 0x7c

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->BITPOS:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SETRANGE"

    const/16 v2, 0x7d

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SETRANGE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "GETRANGE"

    const/16 v2, 0x7e

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->GETRANGE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "EVAL"

    const/16 v2, 0x7f

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->EVAL:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "EVALSHA"

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->EVALSHA:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SCRIPT"

    const/16 v2, 0x81

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SCRIPT:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SLOWLOG"

    const/16 v2, 0x82

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SLOWLOG:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "OBJECT"

    const/16 v2, 0x83

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->OBJECT:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "BITCOUNT"

    const/16 v2, 0x84

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->BITCOUNT:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "BITOP"

    const/16 v2, 0x85

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->BITOP:Lredis/clients/jedis/Protocol$Command;

    .line 251
    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SENTINEL"

    const/16 v2, 0x86

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SENTINEL:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "DUMP"

    const/16 v2, 0x87

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->DUMP:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "RESTORE"

    const/16 v2, 0x88

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->RESTORE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "PEXPIRE"

    const/16 v2, 0x89

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->PEXPIRE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "PEXPIREAT"

    const/16 v2, 0x8a

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->PEXPIREAT:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "PTTL"

    const/16 v2, 0x8b

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->PTTL:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "INCRBYFLOAT"

    const/16 v2, 0x8c

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->INCRBYFLOAT:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "PSETEX"

    const/16 v2, 0x8d

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->PSETEX:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "CLIENT"

    const/16 v2, 0x8e

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->CLIENT:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "TIME"

    const/16 v2, 0x8f

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->TIME:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "MIGRATE"

    const/16 v2, 0x90

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->MIGRATE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "HINCRBYFLOAT"

    const/16 v2, 0x91

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->HINCRBYFLOAT:Lredis/clients/jedis/Protocol$Command;

    .line 252
    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SCAN"

    const/16 v2, 0x92

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SCAN:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "HSCAN"

    const/16 v2, 0x93

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->HSCAN:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "SSCAN"

    const/16 v2, 0x94

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->SSCAN:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ZSCAN"

    const/16 v2, 0x95

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ZSCAN:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "WAIT"

    const/16 v2, 0x96

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->WAIT:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "CLUSTER"

    const/16 v2, 0x97

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->CLUSTER:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "ASKING"

    const/16 v2, 0x98

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ASKING:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "PFADD"

    const/16 v2, 0x99

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->PFADD:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "PFCOUNT"

    const/16 v2, 0x9a

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->PFCOUNT:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "PFMERGE"

    const/16 v2, 0x9b

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->PFMERGE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "READONLY"

    const/16 v2, 0x9c

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->READONLY:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "GEOADD"

    const/16 v2, 0x9d

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->GEOADD:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "GEODIST"

    const/16 v2, 0x9e

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->GEODIST:Lredis/clients/jedis/Protocol$Command;

    .line 253
    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "GEOHASH"

    const/16 v2, 0x9f

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->GEOHASH:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "GEOPOS"

    const/16 v2, 0xa0

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->GEOPOS:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "GEORADIUS"

    const/16 v2, 0xa1

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->GEORADIUS:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "GEORADIUSBYMEMBER"

    const/16 v2, 0xa2

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->GEORADIUSBYMEMBER:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "MODULE"

    const/16 v2, 0xa3

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->MODULE:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "BITFIELD"

    const/16 v2, 0xa4

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->BITFIELD:Lredis/clients/jedis/Protocol$Command;

    new-instance v0, Lredis/clients/jedis/Protocol$Command;

    const-string v1, "HSTRLEN"

    const/16 v2, 0xa5

    invoke-direct {v0, v1, v2}, Lredis/clients/jedis/Protocol$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->HSTRLEN:Lredis/clients/jedis/Protocol$Command;

    .line 238
    const/16 v0, 0xa6

    new-array v0, v0, [Lredis/clients/jedis/Protocol$Command;

    sget-object v1, Lredis/clients/jedis/Protocol$Command;->PING:Lredis/clients/jedis/Protocol$Command;

    aput-object v1, v0, v3

    sget-object v1, Lredis/clients/jedis/Protocol$Command;->SET:Lredis/clients/jedis/Protocol$Command;

    aput-object v1, v0, v4

    sget-object v1, Lredis/clients/jedis/Protocol$Command;->GET:Lredis/clients/jedis/Protocol$Command;

    aput-object v1, v0, v5

    sget-object v1, Lredis/clients/jedis/Protocol$Command;->QUIT:Lredis/clients/jedis/Protocol$Command;

    aput-object v1, v0, v6

    sget-object v1, Lredis/clients/jedis/Protocol$Command;->EXISTS:Lredis/clients/jedis/Protocol$Command;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->DEL:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->TYPE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->FLUSHDB:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->KEYS:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->RANDOMKEY:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->RENAME:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->RENAMENX:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->RENAMEX:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->DBSIZE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->EXPIRE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->EXPIREAT:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->TTL:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SELECT:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->MOVE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->FLUSHALL:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->GETSET:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->MGET:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SETNX:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SETEX:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->MSET:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->MSETNX:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->DECRBY:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->DECR:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->INCRBY:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->INCR:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->APPEND:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SUBSTR:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->HSET:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->HGET:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->HSETNX:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->HMSET:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->HMGET:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->HINCRBY:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->HEXISTS:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->HDEL:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->HLEN:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->HKEYS:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->HVALS:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->HGETALL:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->RPUSH:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->LPUSH:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->LLEN:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->LRANGE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->LTRIM:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->LINDEX:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->LSET:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->LREM:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->LPOP:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->RPOP:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->RPOPLPUSH:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SADD:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SMEMBERS:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SREM:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SPOP:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SMOVE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SCARD:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SISMEMBER:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SINTER:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SINTERSTORE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x40

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SUNION:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x41

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SUNIONSTORE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x42

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SDIFF:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x43

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SDIFFSTORE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x44

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SRANDMEMBER:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x45

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZADD:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x46

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZRANGE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x47

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZREM:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x48

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZINCRBY:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x49

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZRANK:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZREVRANK:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZREVRANGE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZCARD:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZSCORE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->MULTI:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->DISCARD:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x50

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->EXEC:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x51

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->WATCH:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x52

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->UNWATCH:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x53

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SORT:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x54

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->BLPOP:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x55

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->BRPOP:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x56

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->AUTH:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x57

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SUBSCRIBE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x58

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->PUBLISH:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x59

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->UNSUBSCRIBE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->PSUBSCRIBE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->PUNSUBSCRIBE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->PUBSUB:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZCOUNT:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZREVRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x60

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZREMRANGEBYRANK:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x61

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZREMRANGEBYSCORE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x62

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZUNIONSTORE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x63

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZINTERSTORE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x64

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZLEXCOUNT:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x65

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZRANGEBYLEX:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x66

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZREVRANGEBYLEX:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x67

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZREMRANGEBYLEX:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x68

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SAVE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x69

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->BGSAVE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->BGREWRITEAOF:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->LASTSAVE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SHUTDOWN:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->INFO:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->MONITOR:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SLAVEOF:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x70

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->CONFIG:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x71

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->STRLEN:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x72

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SYNC:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x73

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->LPUSHX:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x74

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->PERSIST:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x75

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->RPUSHX:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x76

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ECHO:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x77

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->LINSERT:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x78

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->DEBUG:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x79

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->BRPOPLPUSH:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SETBIT:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->GETBIT:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->BITPOS:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SETRANGE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->GETRANGE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->EVAL:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x80

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->EVALSHA:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x81

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SCRIPT:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x82

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SLOWLOG:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x83

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->OBJECT:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x84

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->BITCOUNT:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x85

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->BITOP:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x86

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SENTINEL:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x87

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->DUMP:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x88

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->RESTORE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x89

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->PEXPIRE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->PEXPIREAT:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->PTTL:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->INCRBYFLOAT:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->PSETEX:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->CLIENT:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->TIME:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x90

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->MIGRATE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x91

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->HINCRBYFLOAT:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x92

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SCAN:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x93

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->HSCAN:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x94

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->SSCAN:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x95

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ZSCAN:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x96

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->WAIT:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x97

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->CLUSTER:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x98

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->ASKING:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x99

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->PFADD:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->PFCOUNT:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->PFMERGE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->READONLY:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->GEOADD:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->GEODIST:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->GEOHASH:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->GEOPOS:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->GEORADIUS:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->GEORADIUSBYMEMBER:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->MODULE:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->BITFIELD:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    sget-object v2, Lredis/clients/jedis/Protocol$Command;->HSTRLEN:Lredis/clients/jedis/Protocol$Command;

    aput-object v2, v0, v1

    sput-object v0, Lredis/clients/jedis/Protocol$Command;->ENUM$VALUES:[Lredis/clients/jedis/Protocol$Command;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 257
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 258
    invoke-virtual {p0}, Lredis/clients/jedis/Protocol$Command;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lredis/clients/util/SafeEncoder;->encode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lredis/clients/jedis/Protocol$Command;->raw:[B

    .line 259
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lredis/clients/jedis/Protocol$Command;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lredis/clients/jedis/Protocol$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lredis/clients/jedis/Protocol$Command;

    return-object v0
.end method

.method public static values()[Lredis/clients/jedis/Protocol$Command;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lredis/clients/jedis/Protocol$Command;->ENUM$VALUES:[Lredis/clients/jedis/Protocol$Command;

    array-length v1, v0

    new-array v2, v1, [Lredis/clients/jedis/Protocol$Command;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getRaw()[B
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lredis/clients/jedis/Protocol$Command;->raw:[B

    return-object v0
.end method
