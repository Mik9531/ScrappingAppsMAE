.class public interface abstract Lredis/clients/jedis/commands/MultiKeyJedisClusterCommands;
.super Ljava/lang/Object;
.source "MultiKeyJedisClusterCommands.java"


# virtual methods
.method public varargs abstract bitop(Lredis/clients/jedis/BitOP;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public varargs abstract blpop(I[Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract brpop(I[Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract brpoplpush(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public varargs abstract del([Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public varargs abstract exists([Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public varargs abstract mget([Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract mset([Ljava/lang/String;)Ljava/lang/String;
.end method

.method public varargs abstract msetnx([Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public varargs abstract pfcount([Ljava/lang/String;)J
.end method

.method public varargs abstract pfmerge(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end method

.method public varargs abstract psubscribe(Lredis/clients/jedis/JedisPubSub;[Ljava/lang/String;)V
.end method

.method public abstract publish(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract rename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract renamenx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract rpoplpush(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract scan(Ljava/lang/String;Lredis/clients/jedis/ScanParams;)Lredis/clients/jedis/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lredis/clients/jedis/ScanParams;",
            ")",
            "Lredis/clients/jedis/ScanResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract sdiff([Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract sdiffstore(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public varargs abstract sinter([Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract sinterstore(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract smove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract sort(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract sort(Ljava/lang/String;Lredis/clients/jedis/SortingParams;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public varargs abstract subscribe(Lredis/clients/jedis/JedisPubSub;[Ljava/lang/String;)V
.end method

.method public varargs abstract sunion([Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract sunionstore(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public varargs abstract zinterstore(Ljava/lang/String;Lredis/clients/jedis/ZParams;[Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public varargs abstract zinterstore(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public varargs abstract zunionstore(Ljava/lang/String;Lredis/clients/jedis/ZParams;[Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public varargs abstract zunionstore(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
.end method
