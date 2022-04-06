.class public Lredis/clients/jedis/JedisPoolAbstract;
.super Lredis/clients/util/Pool;
.source "JedisPoolAbstract.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lredis/clients/util/Pool",
        "<",
        "Lredis/clients/jedis/Jedis;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lredis/clients/util/Pool;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Lorg/apache/commons/pool2/PooledObjectFactory;)V
    .locals 0
    .param p1, "poolConfig"    # Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;",
            "Lorg/apache/commons/pool2/PooledObjectFactory",
            "<",
            "Lredis/clients/jedis/Jedis;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "factory":Lorg/apache/commons/pool2/PooledObjectFactory;, "Lorg/apache/commons/pool2/PooledObjectFactory<Lredis/clients/jedis/Jedis;>;"
    invoke-direct {p0, p1, p2}, Lredis/clients/util/Pool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Lorg/apache/commons/pool2/PooledObjectFactory;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected bridge synthetic returnBrokenResource(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lredis/clients/jedis/Jedis;

    invoke-virtual {p0, p1}, Lredis/clients/jedis/JedisPoolAbstract;->returnBrokenResource(Lredis/clients/jedis/Jedis;)V

    return-void
.end method

.method protected returnBrokenResource(Lredis/clients/jedis/Jedis;)V
    .locals 0
    .param p1, "resource"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lredis/clients/util/Pool;->returnBrokenResource(Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method protected bridge synthetic returnResource(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lredis/clients/jedis/Jedis;

    invoke-virtual {p0, p1}, Lredis/clients/jedis/JedisPoolAbstract;->returnResource(Lredis/clients/jedis/Jedis;)V

    return-void
.end method

.method protected returnResource(Lredis/clients/jedis/Jedis;)V
    .locals 0
    .param p1, "resource"    # Lredis/clients/jedis/Jedis;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lredis/clients/util/Pool;->returnResource(Ljava/lang/Object;)V

    .line 26
    return-void
.end method
