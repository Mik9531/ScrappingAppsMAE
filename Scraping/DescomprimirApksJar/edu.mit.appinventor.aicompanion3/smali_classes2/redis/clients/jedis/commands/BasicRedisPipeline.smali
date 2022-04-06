.class public interface abstract Lredis/clients/jedis/commands/BasicRedisPipeline;
.super Ljava/lang/Object;
.source "BasicRedisPipeline.java"


# virtual methods
.method public abstract bgrewriteaof()Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract bgsave()Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract configGet(Ljava/lang/String;)Lredis/clients/jedis/Response;
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

.method public abstract configResetStat()Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract configSet(Ljava/lang/String;Ljava/lang/String;)Lredis/clients/jedis/Response;
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

.method public abstract dbSize()Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract flushAll()Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract flushDB()Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract info()Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lastsave()Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract moduleList()Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lredis/clients/jedis/Module;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract moduleLoad(Ljava/lang/String;)Lredis/clients/jedis/Response;
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

.method public abstract moduleUnload(Ljava/lang/String;)Lredis/clients/jedis/Response;
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

.method public abstract ping()Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract save()Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract select(I)Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract shutdown()Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract time()Lredis/clients/jedis/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lredis/clients/jedis/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method
