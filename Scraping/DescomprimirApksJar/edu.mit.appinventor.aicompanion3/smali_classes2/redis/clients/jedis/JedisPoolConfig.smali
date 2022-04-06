.class public Lredis/clients/jedis/JedisPoolConfig;
.super Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
.source "JedisPoolConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;-><init>()V

    .line 8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lredis/clients/jedis/JedisPoolConfig;->setTestWhileIdle(Z)V

    .line 9
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/JedisPoolConfig;->setMinEvictableIdleTimeMillis(J)V

    .line 10
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Lredis/clients/jedis/JedisPoolConfig;->setTimeBetweenEvictionRunsMillis(J)V

    .line 11
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lredis/clients/jedis/JedisPoolConfig;->setNumTestsPerEvictionRun(I)V

    .line 12
    return-void
.end method
