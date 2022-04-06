.class public interface abstract Lredis/clients/jedis/commands/MultiKeyBinaryRedisPipeline;
.super Ljava/lang/Object;
.source "MultiKeyBinaryRedisPipeline.java"


# virtual methods
.method public varargs abstract bitop(Lredis/clients/jedis/BitOP;[B[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lredis/clients/jedis/BitOP;",
            "[B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract blpop([[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public varargs abstract brpop([[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public abstract brpoplpush([B[BI)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BI)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation
.end method

.method public varargs abstract del([[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract exists([[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract keys([B)Lredis/clients/jedis/Response;
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

.method public varargs abstract mget([[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public varargs abstract mset([[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract msetnx([[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract pfcount([[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract pfmerge([B[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract publish([B[B)Lredis/clients/jedis/Response;
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

.method public abstract randomKeyBinary()Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract rename([B[B)Lredis/clients/jedis/Response;
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

.method public abstract renamenx([B[B)Lredis/clients/jedis/Response;
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

.method public abstract rpoplpush([B[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lredis/clients/jedis/Response",
            "<[B>;"
        }
    .end annotation
.end method

.method public varargs abstract sdiff([[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public varargs abstract sdiffstore([B[[B)Lredis/clients/jedis/Response;
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

.method public varargs abstract sinter([[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public varargs abstract sinterstore([B[[B)Lredis/clients/jedis/Response;
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

.method public abstract smove([B[B[B)Lredis/clients/jedis/Response;
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

.method public abstract sort([BLredis/clients/jedis/SortingParams;[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lredis/clients/jedis/SortingParams;",
            "[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sort([B[B)Lredis/clients/jedis/Response;
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

.method public varargs abstract sunion([[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/Set",
            "<[B>;>;"
        }
    .end annotation
.end method

.method public varargs abstract sunionstore([B[[B)Lredis/clients/jedis/Response;
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

.method public varargs abstract watch([[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract zinterstore([BLredis/clients/jedis/ZParams;[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lredis/clients/jedis/ZParams;",
            "[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract zinterstore([B[[B)Lredis/clients/jedis/Response;
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

.method public varargs abstract zunionstore([BLredis/clients/jedis/ZParams;[[B)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lredis/clients/jedis/ZParams;",
            "[[B)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract zunionstore([B[[B)Lredis/clients/jedis/Response;
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
