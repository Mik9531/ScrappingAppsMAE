.class public interface abstract Lredis/clients/jedis/commands/MultiKeyBinaryJedisClusterCommands;
.super Ljava/lang/Object;
.source "MultiKeyBinaryJedisClusterCommands.java"


# virtual methods
.method public varargs abstract bitop(Lredis/clients/jedis/BitOP;[B[[B)Ljava/lang/Long;
.end method

.method public varargs abstract blpop(I[[B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end method

.method public varargs abstract brpop(I[[B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract brpoplpush([B[BI)[B
.end method

.method public varargs abstract del([[B)Ljava/lang/Long;
.end method

.method public varargs abstract exists([[B)Ljava/lang/Long;
.end method

.method public varargs abstract mget([[B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end method

.method public varargs abstract mset([[B)Ljava/lang/String;
.end method

.method public varargs abstract msetnx([[B)Ljava/lang/Long;
.end method

.method public varargs abstract pfcount([[B)Ljava/lang/Long;
.end method

.method public varargs abstract pfmerge([B[[B)Ljava/lang/String;
.end method

.method public varargs abstract psubscribe(Lredis/clients/jedis/BinaryJedisPubSub;[[B)V
.end method

.method public abstract publish([B[B)Ljava/lang/Long;
.end method

.method public abstract rename([B[B)Ljava/lang/String;
.end method

.method public abstract renamenx([B[B)Ljava/lang/Long;
.end method

.method public abstract rpoplpush([B[B)[B
.end method

.method public varargs abstract sdiff([[B)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public varargs abstract sdiffstore([B[[B)Ljava/lang/Long;
.end method

.method public varargs abstract sinter([[B)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public varargs abstract sinterstore([B[[B)Ljava/lang/Long;
.end method

.method public abstract smove([B[B[B)Ljava/lang/Long;
.end method

.method public abstract sort([BLredis/clients/jedis/SortingParams;[B)Ljava/lang/Long;
.end method

.method public abstract sort([B[B)Ljava/lang/Long;
.end method

.method public varargs abstract subscribe(Lredis/clients/jedis/BinaryJedisPubSub;[[B)V
.end method

.method public varargs abstract sunion([[B)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end method

.method public varargs abstract sunionstore([B[[B)Ljava/lang/Long;
.end method

.method public varargs abstract zinterstore([BLredis/clients/jedis/ZParams;[[B)Ljava/lang/Long;
.end method

.method public varargs abstract zinterstore([B[[B)Ljava/lang/Long;
.end method

.method public varargs abstract zunionstore([BLredis/clients/jedis/ZParams;[[B)Ljava/lang/Long;
.end method

.method public varargs abstract zunionstore([B[[B)Ljava/lang/Long;
.end method
